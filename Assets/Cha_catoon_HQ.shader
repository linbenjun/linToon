Shader "4th/Cha/Cha_catoon_HQ"
{
    Properties
    {
        _MainTex("基本颜色贴图", 2D) = "white" {}
        _BaseColor("基本颜色偏向", Color) = (1,1,1,1)
        [HDR] _EnvColor("环境颜色，控制暗部颜色", Color) = (1,1,1,1)
        _BumpMap("法线贴图", 2D) = "bump" {}
        _LimTex("通道贴图，R为光滑度，G为眼睛遮罩，B为金属度，A为头发的流光遮罩", 2D) = "black" {}
        _Smoothness("光滑度", Range(0.0, 5.0)) = 0.5
        [Space(20)]
        _Tint("二分边缘硬度控制", float) = 1
        _RimColor("边缘光颜色", Color) = (1, 1, 1, 1)
        _RimPower("边缘光软硬", Float) = 3
        _RimIntensity("边缘光强度", Float) = 10
        [Space(20)]
        _AnisoMap("头发扭曲贴图",2D) ="black"{}
        _SpecIntensity("头发高光强度",Range(0,10)) = 2
        _SpecPOW("头发高光硬度",Range(1,10)) = 2
        _brdfSpecularTermIntensity("镜面反射强度",float) = 10
        _indirectSpecular("整体反射强度",float)= 2
        _EyesIntensity("眼睛反射强度",float)= 2
        _EyeHDR("眼睛HDR清晰度",Range(0,9)) = 0
        [Space(20)]        
        _EmissionMap("自发光贴图", 2D) = "black" {}
        [HDR] _EmissionColor("自发光颜色", Color) = (0,0,0)

    }
    SubShader
    {
        //主要显示
        Tags{ "RenderPipeline" = "UniversalPipeline" "Queue" = "Geometry" "RenderType" = "Opaque" }
        Pass {
            Tags { "LightMode" = "UniversalForward" }

            AlphaToMask Off
            Blend Off
            ColorMask RGBA
            Cull Back
            Offset 0, 0
            ZTest LEqual
            ZWrite On

            HLSLPROGRAM
            #pragma target 3.0
            #pragma multi_compile_instancing
            #pragma multi_compile_fog
            #pragma multi_compile _ _MAIN_LIGHT_SHADOWS
            #pragma multi_compile _ _MAIN_LIGHT_SHADOWS_CASCADE
            #pragma multi_compile _ _ADDITIONAL_LIGHTS_VERTEX _ADDITIONAL_LIGHTS
            #pragma multi_compile_fragment _ _ADDITIONAL_LIGHT_SHADOWS
            #pragma multi_compile_fragment _ _SHADOWS_SOFT

            #pragma vertex LitPassVertex
            #pragma fragment LitPassFragment
            
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"

            CBUFFER_START(UnityPerMaterial)
                float4 _MainTex_ST;
                half4 _BaseColor;
                half _Smoothness;
                half4 _EmissionColor;
                float _OneOverFadeDist;
                float _MinusStartFade;
                float _Tint;
                half3 _RimColor;
                float _RimIntensity;
                float _RimPower;
                half3 _EnvColor;
                half _SpecIntensity;
                half _brdfSpecularTermIntensity;
                half _indirectSpecular;
                half _EyesIntensity;
                half _EyeHDR;
                half4 _AnisoMap_ST;
                half _SpecPOW;
            CBUFFER_END

            TEXTURE2D(_MainTex);
            SAMPLER(sampler_MainTex);
            TEXTURE2D(_LimTex);
            SAMPLER(sampler_LimTex);
            TEXTURE2D(_BumpMap);
            SAMPLER(sampler_BumpMap);
            TEXTURE2D(_EmissionMap);
            SAMPLER(sampler_EmissionMap);
            TEXTURE2D(_AnisoMap);
            SAMPLER(sampler_AnisoMap);



            inline float3 ACES_Tonemapping(float3 x)
            {
                float a = 2.51f;
                float b = 0.03f;
                float c = 2.43f;
                float d = 0.59f;
                float e = 0.14f;
                float3 encode_color = saturate((x*(a*x + b)) / (x*(c*x + d) + e));
                return encode_color;
            };

            struct Attributes
            {
                float4 positionOS    : POSITION;
                float3 normalOS      : NORMAL;
                float4 tangentOS     : TANGENT;
                float2 texcoord      : TEXCOORD0;
                UNITY_VERTEX_INPUT_INSTANCE_ID
            };

            struct Varyings
            {
                float2 uv                       : TEXCOORD0;

                half3 vertexSH  : TEXCOORD1;
                float3 positionWS               : TEXCOORD2;
                float3 normalWS                 : TEXCOORD3;
                float4 tangentWS                : TEXCOORD4;    // xyz: tangent, w: sign
                float3 viewDirWS                : TEXCOORD5;
                half4 fogFactorAndVertexLight   : TEXCOORD6; // x: fogFactor, yzw: vertex light
                float3 binormalWS               : TEXCOORD8;//负法线
                #if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
                    float4 shadowCoord          : TEXCOORD7;
                #endif
                float4 positionCS               : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                UNITY_VERTEX_OUTPUT_STEREO
            };

            half Rim (float3 positionWS, float3 normalWS)
            {
                float3 ViewDirection = normalize(_WorldSpaceCameraPos.xyz - positionWS.xyz);
                half Rim = 1.0 - saturate(dot(normalize(ViewDirection), normalWS));
                return Rim;
            }

            Varyings LitPassVertex(Attributes input) //顶点shader
            {
                Varyings output = (Varyings)0;

                UNITY_SETUP_INSTANCE_ID(input);
                UNITY_TRANSFER_INSTANCE_ID(input, output);
                UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

                VertexPositionInputs vertexInput = GetVertexPositionInputs(input.positionOS.xyz);
                VertexNormalInputs normalInput = GetVertexNormalInputs(input.normalOS, input.tangentOS);

                output.uv = TRANSFORM_TEX(input.texcoord, _MainTex);
                output.positionWS = vertexInput.positionWS;
                output.normalWS = normalInput.normalWS;
                output.vertexSH.xyz = SampleSHVertex(output.normalWS.xyz);
                real sign = input.tangentOS.w * GetOddNegativeScale();
                output.tangentWS = half4(normalInput.tangentWS.xyz, sign);
                output.binormalWS = normalize(cross(output.normalWS,output.tangentWS) * input.tangentOS.w);//获取负法线
                output.viewDirWS = GetWorldSpaceViewDir(vertexInput.positionWS);;
                half3 vertexLight = VertexLighting(vertexInput.positionWS, normalInput.normalWS);
                half fogFactor = ComputeFogFactor(vertexInput.positionCS.z);
                output.fogFactorAndVertexLight = half4(fogFactor, vertexLight);
                #if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
                    output.shadowCoord = GetShadowCoord(vertexInput);
                #endif
                output.positionCS = vertexInput.positionCS;
                return output;
            }

            half4 LitPassFragment(Varyings input) : SV_Target //片源shader
            {
                UNITY_SETUP_INSTANCE_ID(input);
                UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(input);

                //基本参数
                float2 uv = input.uv;
                half4 albedoAlpha = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, uv);
                half3 albedo = albedoAlpha.rgb * _BaseColor.rgb;
                half alpha = albedoAlpha.a * _BaseColor.a;
                half4 specGloss = SAMPLE_TEXTURE2D(_LimTex, sampler_LimTex, uv);
                specGloss.r *= _Smoothness; //光滑度是越来越黯淡的
                half metallic = specGloss.b;//通道贴图的B通道为金属度
                half smoothness = specGloss.r;//通道贴图的R通道为光滑度
                half Eyes = specGloss.g;//通道贴图的G通道为眼睛区域的反光遮罩
                half scpe_mask = specGloss.a;//通道贴图的A通道为头发的流光贴图
                half3 normalTS = UnpackNormal(SAMPLE_TEXTURE2D(_BumpMap, sampler_BumpMap, uv));
                half3 emission = SAMPLE_TEXTURE2D(_EmissionMap, sampler_EmissionMap, uv).rgb * _EmissionColor.rgb;//自发光贴图和自发光颜色
                float3 bitangent = input.tangentWS.w * cross(input.normalWS.xyz, input.tangentWS.xyz);
                half3 normalWS = TransformTangentToWorld(normalTS, half3x3(input.tangentWS.xyz, bitangent.xyz, input.normalWS.xyz));
                normalWS = NormalizeNormalPerPixel(normalWS);
                half3 viewDirectionWS = SafeNormalize(input.viewDirWS);
                #if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
                    float4 shadowCoord = input.shadowCoord;
                #elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
                    float4 shadowCoord = TransformWorldToShadowCoord(input.positionWS);
                #else
                    float4 shadowCoord = float4(0, 0, 0, 0);
                #endif
                half4 shadowMask = unity_ProbesOcclusion;
                half3 bakedGI = _EnvColor;

                //BRDF计算
                BRDFData brdfData;
                half oneMinusReflectivity = kDielectricSpec.a - metallic * kDielectricSpec.a;
                brdfData.diffuse = albedo * oneMinusReflectivity;
                brdfData.specular = lerp(kDielectricSpec.rgb, albedo, metallic);
                brdfData.reflectivity = 1.0 - oneMinusReflectivity;
                brdfData.perceptualRoughness = PerceptualSmoothnessToPerceptualRoughness(smoothness);
                brdfData.roughness = max(PerceptualRoughnessToRoughness(brdfData.perceptualRoughness), HALF_MIN_SQRT);
                brdfData.roughness2 = max(brdfData.roughness * brdfData.roughness, HALF_MIN);
                brdfData.grazingTerm = saturate(smoothness + brdfData.reflectivity);
                brdfData.normalizationTerm = brdfData.roughness * 4.0h + 2.0h;
                brdfData.roughness2MinusOne = brdfData.roughness2 - 1.0h;
                Light mainLight = GetMainLight(shadowCoord, input.positionWS, shadowMask);

                //*具体计算
                half4 color = half4(0,0,0,0);
                half NdotL = saturate(dot(normalWS, mainLight.direction));
                half NdotL_2 = saturate(min(1,NdotL * _Tint)); //控制二分的硬度
                half3 LightColor_1 = lerp(mainLight.color,half3(1,1,1),0.7);

                //计算全局照明
                half3 reflectVector = reflect(-viewDirectionWS, normalWS);
                half NoV = saturate(dot(normalWS, viewDirectionWS));
                half fresnelTerm = Pow4(1.0 - NoV);
                half3 indirectDiffuse = bakedGI * LightColor_1 * (1 - NdotL_2) ; //让亮部不受到环境光影响
                half3 giDiffuse = indirectDiffuse * brdfData.diffuse;
                half mip = PerceptualRoughnessToMipmapLevel(brdfData.perceptualRoughness);

                //原版的HDR 贴图
                half4 encodedIrradiance = SAMPLE_TEXTURECUBE_LOD(unity_SpecCube0, samplerunity_SpecCube0, reflectVector, mip);
                half3 indirectSpecular = DecodeHDREnvironment(encodedIrradiance, unity_SpecCube0_HDR) * _indirectSpecular; //HDR效果
                //眼睛单独的HDR贴图
                half4 EyeEncodedIrradiance = SAMPLE_TEXTURECUBE_LOD(unity_SpecCube0, samplerunity_SpecCube0, reflectVector, _EyeHDR);
                half3 EyeIndirectSpecular = DecodeHDREnvironment(EyeEncodedIrradiance, unity_SpecCube0_HDR) * _indirectSpecular; //HDR效果
                //普通的镜面反射
                half surfaceReduction = 1.0 / (brdfData.roughness2 + 1.0);
                half3 brdfSpecularTerm = surfaceReduction * lerp(brdfData.specular, brdfData.grazingTerm, fresnelTerm) * _brdfSpecularTermIntensity; 
                half3 giSpecular = indirectSpecular * brdfSpecularTerm ;
                //眼睛单独的镜面反射
                half3 EyesGiSpecular = lerp(half3(0,0,0), EyeIndirectSpecular *brdfSpecularTerm * _EyesIntensity,Eyes);
                color.rgb = giDiffuse + ((giSpecular + EyesGiSpecular) *  specGloss.r * min(1,(metallic*specGloss.r)));
                color.rgb = ACES_Tonemapping(color.rgb); //ACES颜色矫正

                //边缘光
                half3 RimColor = Rim(input.positionWS, normalWS);
                half3 RimColorMix = min (0.8,( pow( RimColor,_RimPower) *_RimIntensity *  _RimColor.rgb)) * (1-NdotL);

                //BRDF数据混合
                half3 radianceCartoon = LightColor_1* NdotL_2;//主要光源颜色的二分
                half3 brdf = brdfData.diffuse + brdfData.specular * DirectBRDFSpecular(brdfData, normalWS, mainLight.direction, viewDirectionWS);

                //头发各向异性高光
                half2 UVaniso = uv * _AnisoMap_ST.xy + _AnisoMap_ST.zw;
                half aniso_noise = SAMPLE_TEXTURE2D(_AnisoMap, sampler_AnisoMap, UVaniso).r -0.5;
                half3 BinormalWS = normalize(input.binormalWS + normalWS * aniso_noise);
                half NdotV = max(0.0,dot(normalWS,viewDirectionWS));
                half3 H = normalize(mainLight.direction + viewDirectionWS);//半角向量
                half NdotH = dot(normalWS,H);
                half TdotH = dot(input.tangentWS.xyz,H);
                half BdotH = dot(BinormalWS,H) / 0.1;
                half spec_term = exp(-(TdotH * TdotH + BdotH * BdotH)/(1.0 + NdotH));//各向异性高光的算法
                half half_lambert = (NdotL + 1.0) * 0.5; //半兰伯特
                half spec_atten = saturate(sqrt(max(0.0, half_lambert / NdotH)));//各向异性高光衰减的公式
                half final_spec = saturate(pow((spec_term * spec_atten * scpe_mask),_SpecPOW)) * _SpecIntensity;
                half3 final_spec_Color = final_spec * brdf;

                //增加额外光源
                #ifdef _ADDITIONAL_LIGHTS
                    uint pixelLightCount = GetAdditionalLightsCount();
                    for (uint lightIndex = 0u; lightIndex < pixelLightCount; ++lightIndex)
                    {
                        Light light = GetAdditionalLight(lightIndex, input.positionWS, shadowMask);
                        NdotL = saturate(dot(normalWS, light.direction));
                        half3 radiance = light.color * (light.distanceAttenuation * light.shadowAttenuation * NdotL);
                        brdf = brdfData.diffuse + brdfData.specular * DirectBRDFSpecular(brdfData, normalWS, light.direction, viewDirectionWS);

                        color.rgb += brdf * radiance;
                    }
                #endif
                
                //最终混合
                color.rgb += brdf * radianceCartoon + final_spec_Color;
                //color.rgb += input.fogFactorAndVertexLight.yzw * brdfData.diffuse;
                color.rgb += RimColorMix;
                color.rgb += emission;
                //color.rgb = MixFog(color.rgb, input.fogFactorAndVertexLight.x);
                color.a = 1;
                return color;
                //return half4(LightColor_1,1);

            }

            ENDHLSL
        }
        
        Pass
        {
            //角色投影
            Tags{"LightMode" = "ShadowCaster"}

            ZWrite On
            ZTest LEqual
            ColorMask 0
            Cull Back

            HLSLPROGRAM
            
            #pragma target 3.0

            #pragma multi_compile_instancing

            #pragma vertex ShadowPassVertex
            #pragma fragment ShadowPassFragment

            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/CommonMaterial.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Shadows.hlsl"

            CBUFFER_START(UnityPerMaterial)
                float4 _MainTex_ST;
                half4 _BaseColor;
                half _Smoothness;
                half4 _EmissionColor;
                float4 _Offset1;
                float4 _Offset2;
                float _OneOverFadeDist;
                float _MinusStartFade;
            CBUFFER_END

            struct Attributes
            {
                float4 positionOS   : POSITION;
                float3 normalOS     : NORMAL;
                UNITY_VERTEX_INPUT_INSTANCE_ID
            };

            struct Varyings
            {
                float4 positionCS   : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID          
                UNITY_VERTEX_OUTPUT_STEREO
            };

            Varyings ShadowPassVertex(Attributes input)
            {
                Varyings output = (Varyings)0;

                UNITY_SETUP_INSTANCE_ID(input);
                UNITY_TRANSFER_INSTANCE_ID(input, output);
                UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

                float3 positionWS = TransformObjectToWorld(input.positionOS.xyz);
                float3 normalWS = TransformObjectToWorldNormal(input.normalOS);
                output.positionCS = TransformWorldToHClip(ApplyShadowBias(positionWS, normalWS, _MainLightPosition.xyz));

                return output;
            }

            half4 ShadowPassFragment(Varyings input) : SV_TARGET
            {
                UNITY_SETUP_INSTANCE_ID(input);
                UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(input);
                return 0;
            }

            ENDHLSL
        }

    }
    
}
