// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "4th/Cha/Cha_catoon"
{
	Properties
	{
		[HideInInspector] _AlphaCutoff("Alpha Cutoff ", Range(0, 1)) = 0.5
		[HideInInspector] _EmissionColor("Emission Color", Color) = (1,1,1,1)
		[ASEBegin]_Outlinewidth("Outline width", Range( 0 , 0.1)) = 0.004
		_MainTex("MainTex", 2D) = "white" {}
		_SSSTex("SSSTex", 2D) = "white" {}
		_LimTex("LimTex", 2D) = "white" {}
		[HDR]_Outlinecolor("Outline color", Color) = (0.5019608,0.5019608,0.5019608,0)
		_FirstShadowThre("FirstShadowThre", Range( 0 , 1)) = 1
		_RimColor("RimColor", Color) = (0.6415094,0.6415094,0.6415094,0)
		_RimScale("RimScale", Range( 0.01 , 1)) = 0.2
		_Rimoffset("Rimoffset", Range( 0 , 1)) = 0.9
		[HDR]_Emissioncolor("Emissioncolor", Color) = (0,0,0,0)
		_EmissionTime("EmissionTime", Float) = 0.2
		[ASEEnd]_SpecMulti("SpecMulti", Range( 0 , 10)) = 6
		[HideInInspector] _texcoord( "", 2D ) = "white" {}

		//_TessPhongStrength( "Tess Phong Strength", Range( 0, 1 ) ) = 0.5
		//_TessValue( "Tess Max Tessellation", Range( 1, 32 ) ) = 16
		//_TessMin( "Tess Min Distance", Float ) = 10
		//_TessMax( "Tess Max Distance", Float ) = 25
		//_TessEdgeLength ( "Tess Edge length", Range( 2, 50 ) ) = 16
		//_TessMaxDisp( "Tess Max Displacement", Float ) = 25
	}

	SubShader
	{
		LOD 0

		
		Tags { "RenderPipeline"="UniversalPipeline" "RenderType"="Opaque" "Queue"="Geometry" }
		
		Cull Back
		AlphaToMask Off
		HLSLINCLUDE
		#pragma target 3.0

		#ifndef ASE_TESS_FUNCS
		#define ASE_TESS_FUNCS
		float4 FixedTess( float tessValue )
		{
			return tessValue;
		}
		
		float CalcDistanceTessFactor (float4 vertex, float minDist, float maxDist, float tess, float4x4 o2w, float3 cameraPos )
		{
			float3 wpos = mul(o2w,vertex).xyz;
			float dist = distance (wpos, cameraPos);
			float f = clamp(1.0 - (dist - minDist) / (maxDist - minDist), 0.01, 1.0) * tess;
			return f;
		}

		float4 CalcTriEdgeTessFactors (float3 triVertexFactors)
		{
			float4 tess;
			tess.x = 0.5 * (triVertexFactors.y + triVertexFactors.z);
			tess.y = 0.5 * (triVertexFactors.x + triVertexFactors.z);
			tess.z = 0.5 * (triVertexFactors.x + triVertexFactors.y);
			tess.w = (triVertexFactors.x + triVertexFactors.y + triVertexFactors.z) / 3.0f;
			return tess;
		}

		float CalcEdgeTessFactor (float3 wpos0, float3 wpos1, float edgeLen, float3 cameraPos, float4 scParams )
		{
			float dist = distance (0.5 * (wpos0+wpos1), cameraPos);
			float len = distance(wpos0, wpos1);
			float f = max(len * scParams.y / (edgeLen * dist), 1.0);
			return f;
		}

		float DistanceFromPlane (float3 pos, float4 plane)
		{
			float d = dot (float4(pos,1.0f), plane);
			return d;
		}

		bool WorldViewFrustumCull (float3 wpos0, float3 wpos1, float3 wpos2, float cullEps, float4 planes[6] )
		{
			float4 planeTest;
			planeTest.x = (( DistanceFromPlane(wpos0, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos1, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos2, planes[0]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.y = (( DistanceFromPlane(wpos0, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos1, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos2, planes[1]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.z = (( DistanceFromPlane(wpos0, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos1, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos2, planes[2]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.w = (( DistanceFromPlane(wpos0, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos1, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos2, planes[3]) > -cullEps) ? 1.0f : 0.0f );
			return !all (planeTest);
		}

		float4 DistanceBasedTess( float4 v0, float4 v1, float4 v2, float tess, float minDist, float maxDist, float4x4 o2w, float3 cameraPos )
		{
			float3 f;
			f.x = CalcDistanceTessFactor (v0,minDist,maxDist,tess,o2w,cameraPos);
			f.y = CalcDistanceTessFactor (v1,minDist,maxDist,tess,o2w,cameraPos);
			f.z = CalcDistanceTessFactor (v2,minDist,maxDist,tess,o2w,cameraPos);

			return CalcTriEdgeTessFactors (f);
		}

		float4 EdgeLengthBasedTess( float4 v0, float4 v1, float4 v2, float edgeLength, float4x4 o2w, float3 cameraPos, float4 scParams )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;
			tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
			tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
			tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
			tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			return tess;
		}

		float4 EdgeLengthBasedTessCull( float4 v0, float4 v1, float4 v2, float edgeLength, float maxDisplacement, float4x4 o2w, float3 cameraPos, float4 scParams, float4 planes[6] )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;

			if (WorldViewFrustumCull(pos0, pos1, pos2, maxDisplacement, planes))
			{
				tess = 0.0f;
			}
			else
			{
				tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
				tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
				tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
				tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			}
			return tess;
		}
		#endif //ASE_TESS_FUNCS

		ENDHLSL

		
		Pass
		{
			Name "ExtraPrePass"
			
			
			Blend One Zero
			Cull Back
			ZWrite Off
			ZTest LEqual
			Offset 0 , 0
			ColorMask RGBA
			

			HLSLPROGRAM
			#define _RECEIVE_SHADOWS_OFF 1
			#define ASE_SRP_VERSION 999999

			#pragma prefer_hlslcc gles
			#pragma exclude_renderers d3d11_9x

			#pragma vertex vert
			#pragma fragment frag

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/UnityInstancing.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#if ASE_SRP_VERSION <= 70108
			#define REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR
			#endif

			#define ASE_NEEDS_VERT_POSITION


			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 ase_tangent : TANGENT;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 worldPos : TEXCOORD0;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
				float4 shadowCoord : TEXCOORD1;
				#endif
				#ifdef ASE_FOG
				float fogFactor : TEXCOORD2;
				#endif
				float4 ase_texcoord3 : TEXCOORD3;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _MainTex_ST;
			float4 _Outlinecolor;
			float4 _SSSTex_ST;
			float4 _LimTex_ST;
			half4 _RimColor;
			float4 _Emissioncolor;
			half _Outlinewidth;
			half _FirstShadowThre;
			half _SpecMulti;
			half _Rimoffset;
			half _RimScale;
			half _EmissionTime;
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			sampler2D _MainTex;


			
			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float4 unityObjectToClipPos45 = TransformWorldToHClip(TransformObjectToWorld(v.vertex.xyz));
				float2 uv_MainTex = v.ase_texcoord.xy * _MainTex_ST.xy + _MainTex_ST.zw;
				float4 tex2DNode40 = tex2Dlod( _MainTex, float4( uv_MainTex, 0, 0.0) );
				half OutlineMask81 = tex2DNode40.a;
				
				o.ase_texcoord3.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord3.zw = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = ( v.ase_tangent.xyz * _Outlinewidth * min( unityObjectToClipPos45.w , 0.7 ) * OutlineMask81 );
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif
				v.ase_normal = v.ase_normal;

				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );
				float4 positionCS = TransformWorldToHClip( positionWS );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				o.worldPos = positionWS;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
				VertexPositionInputs vertexInput = (VertexPositionInputs)0;
				vertexInput.positionWS = positionWS;
				vertexInput.positionCS = positionCS;
				o.shadowCoord = GetShadowCoord( vertexInput );
				#endif
				#ifdef ASE_FOG
				o.fogFactor = ComputeFogFactor( positionCS.z );
				#endif
				o.clipPos = positionCS;
				return o;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				float4 ase_tangent : TANGENT;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				o.ase_tangent = v.ase_tangent;
				o.ase_texcoord = v.ase_texcoord;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				o.ase_tangent = patch[0].ase_tangent * bary.x + patch[1].ase_tangent * bary.y + patch[2].ase_tangent * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag ( VertexOutput IN  ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 WorldPosition = IN.worldPos;
				#endif
				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif
				float2 uv_MainTex = IN.ase_texcoord3.xy * _MainTex_ST.xy + _MainTex_ST.zw;
				float4 tex2DNode40 = tex2D( _MainTex, uv_MainTex );
				half4 Highlight87 = tex2DNode40;
				float4 break316 = Highlight87;
				half maxComponent321 = ( max( max( break316.r , break316.g ) , break316.b ) - 0.004 );
				float4 temp_cast_0 = (maxComponent321).xxxx;
				half4 saturatedColor338 = ( step( temp_cast_0 , Highlight87 ) * Highlight87 );
				float4 lerpResult339 = lerp( Highlight87 , saturatedColor338 , 0.6);
				float4 temp_output_347_0 = ( 0.8 * lerpResult339 * Highlight87 );
				
				float3 Color = ( temp_output_347_0 * _Outlinecolor ).rgb;
				float Alpha = 1;
				float AlphaClipThreshold = 0.5;

				#ifdef _ALPHATEST_ON
					clip( Alpha - AlphaClipThreshold );
				#endif

				#ifdef LOD_FADE_CROSSFADE
					LODDitheringTransition( IN.clipPos.xyz, unity_LODFade.x );
				#endif

				#ifdef ASE_FOG
					Color = MixFog( Color, IN.fogFactor );
				#endif

				return half4( Color, Alpha );
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "Forward"
			Tags { "LightMode"="UniversalForward" }
			
			Blend One Zero, One Zero
			ZWrite On
			ZTest LEqual
			Offset 0 , 0
			ColorMask RGBA
			

			HLSLPROGRAM
			#define _RECEIVE_SHADOWS_OFF 1
			#define ASE_SRP_VERSION 999999

			#pragma prefer_hlslcc gles
			#pragma exclude_renderers d3d11_9x

			#pragma vertex vert
			#pragma fragment frag

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/UnityInstancing.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#if ASE_SRP_VERSION <= 70108
			#define REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR
			#endif

			#include "Packages/com.unity.shadergraph/ShaderGraphLibrary/Functions.hlsl"
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_POSITION


			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 worldPos : TEXCOORD0;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
				float4 shadowCoord : TEXCOORD1;
				#endif
				#ifdef ASE_FOG
				float fogFactor : TEXCOORD2;
				#endif
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _MainTex_ST;
			float4 _Outlinecolor;
			float4 _SSSTex_ST;
			float4 _LimTex_ST;
			half4 _RimColor;
			float4 _Emissioncolor;
			half _Outlinewidth;
			half _FirstShadowThre;
			half _SpecMulti;
			half _Rimoffset;
			half _RimScale;
			half _EmissionTime;
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			sampler2D _SSSTex;
			sampler2D _MainTex;
			sampler2D _LimTex;
			half _LerpTime;


			float3 AdditionalLightsFlat( float3 WorldPosition )
			{
				float3 Color = 0;
				#ifdef _ADDITIONAL_LIGHTS
				int numLights = GetAdditionalLightsCount();
				for(int i = 0; i<numLights;i++)
				{
					Light light = GetAdditionalLight(i, WorldPosition);
					Color += light.color *(light.distanceAttenuation * light.shadowAttenuation);
					
				}
				#endif
				return Color;
			}
			
			
			float4 SampleGradient( Gradient gradient, float time )
			{
				float3 color = gradient.colors[0].rgb;
				UNITY_UNROLL
				for (int c = 1; c < 8; c++)
				{
				float colorPos = saturate((time - gradient.colors[c-1].w) / ( 0.00001 + (gradient.colors[c].w - gradient.colors[c-1].w)) * step(c, gradient.colorsLength-1));
				color = lerp(color, gradient.colors[c].rgb, lerp(colorPos, step(0.01, colorPos), gradient.type));
				}
				#ifndef UNITY_COLORSPACE_GAMMA
				color = SRGBToLinear(color);
				#endif
				float alpha = gradient.alphas[0].x;
				UNITY_UNROLL
				for (int a = 1; a < 8; a++)
				{
				float alphaPos = saturate((time - gradient.alphas[a-1].y) / ( 0.00001 + (gradient.alphas[a].y - gradient.alphas[a-1].y)) * step(a, gradient.alphasLength-1));
				alpha = lerp(alpha, gradient.alphas[a].x, lerp(alphaPos, step(0.01, alphaPos), gradient.type));
				}
				return float4(color, alpha);
			}
			
			float3 ASEBakedGI( float3 normalWS, float2 uvStaticLightmap, bool applyScaling )
			{
			#ifdef LIGHTMAP_ON
				if( applyScaling )
					uvStaticLightmap = uvStaticLightmap * unity_LightmapST.xy + unity_LightmapST.zw;
				return SampleLightmap( uvStaticLightmap, normalWS );
			#else
				return SampleSH(normalWS);
			#endif
			}
			
			
			VertexOutput VertexFunction ( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float3 ase_worldNormal = TransformObjectToWorldNormal(v.ase_normal);
				o.ase_texcoord4.xyz = ase_worldNormal;
				
				o.ase_texcoord3.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord3.zw = 0;
				o.ase_texcoord4.w = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = defaultVertexValue;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif
				v.ase_normal = v.ase_normal;

				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );
				float4 positionCS = TransformWorldToHClip( positionWS );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				o.worldPos = positionWS;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
				VertexPositionInputs vertexInput = (VertexPositionInputs)0;
				vertexInput.positionWS = positionWS;
				vertexInput.positionCS = positionCS;
				o.shadowCoord = GetShadowCoord( vertexInput );
				#endif
				#ifdef ASE_FOG
				o.fogFactor = ComputeFogFactor( positionCS.z );
				#endif
				o.clipPos = positionCS;
				return o;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				o.ase_texcoord = v.ase_texcoord;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag ( VertexOutput IN  ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 WorldPosition = IN.worldPos;
				#endif
				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif
				float2 uv_SSSTex = IN.ase_texcoord3.xy * _SSSTex_ST.xy + _SSSTex_ST.zw;
				float4 tex2DNode44 = tex2D( _SSSTex, uv_SSSTex );
				half4 Shadow82 = tex2DNode44;
				float2 uv_MainTex = IN.ase_texcoord3.xy * _MainTex_ST.xy + _MainTex_ST.zw;
				float4 tex2DNode40 = tex2D( _MainTex, uv_MainTex );
				half4 Highlight87 = tex2DNode40;
				float3 ase_worldNormal = IN.ase_texcoord4.xyz;
				float dotResult148 = dot( ase_worldNormal , _MainLightPosition.xyz );
				float3 WorldPosition410 = WorldPosition;
				float3 localAdditionalLightsFlat410 = AdditionalLightsFlat( WorldPosition410 );
				float3 break122 = localAdditionalLightsFlat410;
				half AdditionalLight112 = max( max( break122.x , break122.y ) , break122.z );
				float2 uv_LimTex = IN.ase_texcoord3.xy * _LimTex_ST.xy + _LimTex_ST.zw;
				float4 tex2DNode105 = tex2D( _LimTex, uv_LimTex );
				half ShadowMask_R443 = tex2DNode105.r;
				float myVarName1324 = step( 0.8 , ( 1.0 - ShadowMask_R443 ) );
				half halflambert77 = ( ( (dotResult148*0.5 + 0.5) + AdditionalLight112 ) * myVarName1324 );
				half ShadowMask_G445 = tex2DNode105.g;
				half ShadowMask79 = ( AdditionalLight112 + ShadowMask_G445 );
				float smoothstepResult91 = smoothstep( _FirstShadowThre , ( _FirstShadowThre + 0.02 ) , ( ( halflambert77 + ShadowMask79 ) * 0.5 ));
				float4 lerpResult116 = lerp( Shadow82 , Highlight87 , smoothstepResult91);
				float4 lerpResult31 = lerp( Shadow82 , lerpResult116 , step( 0.09 , ShadowMask79 ));
				half3 AdditionalColor145 = localAdditionalLightsFlat410;
				Gradient gradient620 = NewGradient( 0, 4, 2, float4( 0.4056604, 0.4056604, 0.4056604, 0.5000076 ), float4( 0.6886792, 0.6886792, 0.6886792, 0.5606775 ), float4( 0.6901961, 0.6901961, 0.6901961, 0.8980545 ), float4( 1, 1, 1, 0.9174792 ), 0, 0, 0, 0, float2( 1, 0.07524224 ), float2( 1, 0.9102007 ), 0, 0, 0, 0, 0, 0 );
				float3 ase_worldViewDir = ( _WorldSpaceCameraPos.xyz - WorldPosition );
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 normalizeResult146 = normalize( ( ase_worldViewDir + _MainLightPosition.xyz ) );
				float dotResult131 = dot( normalizeResult146 , ase_worldNormal );
				float saferPower58 = max( dotResult131 , 0.0001 );
				float temp_output_58_0 = pow( saferPower58 , 3.3 );
				half ShadowMask_B447 = tex2DNode105.b;
				half4 HightLightSpec449 = ( ShadowMask_R443 * Highlight87 * _SpecMulti * ( SampleGradient( gradient620, temp_output_58_0 ).r * step( ( 1.0 - ShadowMask_B447 ) , temp_output_58_0 ) ) );
				float4 temp_output_143_0 = ( lerpResult31 + ( Highlight87 * float4( AdditionalColor145 , 0.0 ) ) + HightLightSpec449 );
				half3 AttenuationandAmbient169 = _MainLightColor.rgb;
				half3 DirectioalLight421 = saturate( ( 0.45 + AttenuationandAmbient169 ) );
				half3 _Vector0 = half3(0,0,0);
				float3 temp_cast_2 = (_Vector0.x).xxx;
				float2 temp_cast_3 = (1.0).xx;
				float2 temp_cast_4 = (2.0).xx;
				float3 bakedGI472 = ASEBakedGI( temp_cast_2, temp_cast_3, true);
				half3 Baker_Gi491 = bakedGI472;
				half3 GI_light519 = saturate( ( 0.8 + Baker_Gi491 ) );
				float dotResult94 = dot( ase_worldViewDir , ase_worldNormal );
				half RimMask149 = tex2DNode44.a;
				half4 Rim451 = ( pow( ( 1.0 - saturate( ( dotResult94 + ( _Rimoffset + ( 1.0 - RimMask149 ) ) ) ) ) , _RimScale ) * _RimColor * halflambert77 * Highlight87 );
				half3 GI_night426 = saturate( ( Baker_Gi491 + 0.45 ) );
				half3 DirectioalNight527 = saturate( ( AttenuationandAmbient169 + 0.8 ) );
				float4 lerpResult419 = lerp( ( ( temp_output_143_0 * float4( DirectioalLight421 , 0.0 ) * float4( GI_light519 , 0.0 ) ) + Rim451 ) , ( ( temp_output_143_0 * float4( GI_night426 , 0.0 ) * float4( DirectioalNight527 , 0.0 ) ) + ( Rim451 * float4( ( Baker_Gi491 * 2.5 ) , 0.0 ) ) ) , _LerpTime);
				half ShadowMask_A404 = tex2DNode105.a;
				float mulTime637 = _TimeParameters.x * _EmissionTime;
				half4 Emission453 = ( Highlight87 * ShadowMask_A404 * _Emissioncolor * abs( ( ( frac( mulTime637 ) - 0.5 ) * 2.0 ) ) );
				float4 temp_output_140_0 = ( lerpResult419 + Emission453 );
				
				float3 BakedAlbedo = 0;
				float3 BakedEmission = 0;
				float3 Color = temp_output_140_0.rgb;
				float Alpha = 1;
				float AlphaClipThreshold = 0.5;
				float AlphaClipThresholdShadow = 0.5;

				#ifdef _ALPHATEST_ON
					clip( Alpha - AlphaClipThreshold );
				#endif

				#ifdef LOD_FADE_CROSSFADE
					LODDitheringTransition( IN.clipPos.xyz, unity_LODFade.x );
				#endif

				#ifdef ASE_FOG
					Color = MixFog( Color, IN.fogFactor );
				#endif

				return half4( Color, Alpha );
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "ShadowCaster"
			Tags { "LightMode"="ShadowCaster" }

			ZWrite On
			ZTest LEqual
			AlphaToMask Off

			HLSLPROGRAM
			#define _RECEIVE_SHADOWS_OFF 1
			#define ASE_SRP_VERSION 999999

			#pragma prefer_hlslcc gles
			#pragma exclude_renderers d3d11_9x

			#pragma vertex vert
			#pragma fragment frag

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"

			

			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 worldPos : TEXCOORD0;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
				float4 shadowCoord : TEXCOORD1;
				#endif
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _MainTex_ST;
			float4 _Outlinecolor;
			float4 _SSSTex_ST;
			float4 _LimTex_ST;
			half4 _RimColor;
			float4 _Emissioncolor;
			half _Outlinewidth;
			half _FirstShadowThre;
			half _SpecMulti;
			half _Rimoffset;
			half _RimScale;
			half _EmissionTime;
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			

			
			float3 _LightDirection;

			VertexOutput VertexFunction( VertexInput v )
			{
				VertexOutput o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );

				
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = defaultVertexValue;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif

				v.ase_normal = v.ase_normal;

				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				o.worldPos = positionWS;
				#endif

				float3 normalWS = TransformObjectToWorldDir( v.ase_normal );

				float4 clipPos = TransformWorldToHClip( ApplyShadowBias( positionWS, normalWS, _LightDirection ) );

				#if UNITY_REVERSED_Z
					clipPos.z = min(clipPos.z, clipPos.w * UNITY_NEAR_CLIP_VALUE);
				#else
					clipPos.z = max(clipPos.z, clipPos.w * UNITY_NEAR_CLIP_VALUE);
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					VertexPositionInputs vertexInput = (VertexPositionInputs)0;
					vertexInput.positionWS = positionWS;
					vertexInput.positionCS = clipPos;
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif
				o.clipPos = clipPos;

				return o;
			}
			
			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag(VertexOutput IN  ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 WorldPosition = IN.worldPos;
				#endif
				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				
				float Alpha = 1;
				float AlphaClipThreshold = 0.5;
				float AlphaClipThresholdShadow = 0.5;

				#ifdef _ALPHATEST_ON
					#ifdef _ALPHATEST_SHADOW_ON
						clip(Alpha - AlphaClipThresholdShadow);
					#else
						clip(Alpha - AlphaClipThreshold);
					#endif
				#endif

				#ifdef LOD_FADE_CROSSFADE
					LODDitheringTransition( IN.clipPos.xyz, unity_LODFade.x );
				#endif
				return 0;
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "DepthOnly"
			Tags { "LightMode"="DepthOnly" }

			ZWrite On
			ColorMask 0
			AlphaToMask Off

			HLSLPROGRAM
			#define _RECEIVE_SHADOWS_OFF 1
			#define ASE_SRP_VERSION 999999

			#pragma prefer_hlslcc gles
			#pragma exclude_renderers d3d11_9x

			#pragma vertex vert
			#pragma fragment frag

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"

			

			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 worldPos : TEXCOORD0;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
				float4 shadowCoord : TEXCOORD1;
				#endif
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _MainTex_ST;
			float4 _Outlinecolor;
			float4 _SSSTex_ST;
			float4 _LimTex_ST;
			half4 _RimColor;
			float4 _Emissioncolor;
			half _Outlinewidth;
			half _FirstShadowThre;
			half _SpecMulti;
			half _Rimoffset;
			half _RimScale;
			half _EmissionTime;
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			

			
			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = defaultVertexValue;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif

				v.ase_normal = v.ase_normal;

				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				o.worldPos = positionWS;
				#endif

				o.clipPos = TransformWorldToHClip( positionWS );
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					VertexPositionInputs vertexInput = (VertexPositionInputs)0;
					vertexInput.positionWS = positionWS;
					vertexInput.positionCS = clipPos;
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif
				return o;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag(VertexOutput IN  ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 WorldPosition = IN.worldPos;
				#endif
				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				
				float Alpha = 1;
				float AlphaClipThreshold = 0.5;

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				#ifdef LOD_FADE_CROSSFADE
					LODDitheringTransition( IN.clipPos.xyz, unity_LODFade.x );
				#endif
				return 0;
			}
			ENDHLSL
		}

	
	}
	CustomEditor "UnityEditor.ShaderGraph.PBRMasterGUI"
	Fallback "Hidden/InternalErrorShader"
	
}
/*ASEBEGIN
Version=18900
0;0;1920;1019;2633.425;1711.026;4.497504;True;True
Node;AmplifyShaderEditor.CommentaryNode;483;-5664.84,325.1636;Inherit;False;977.2585;566.7482;GI;5;479;472;473;478;600;GI;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;424;-3636.838,337.0802;Inherit;False;1024.256;568.8535;环境色影响;9;496;520;521;355;522;356;354;601;602;环境色影响;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;24;-3515.536,947.7343;Inherit;False;2795.28;974.2686;边缘光Rim;20;451;96;60;132;123;400;72;94;59;101;50;85;401;118;100;607;608;613;309;1133;边缘光Rim;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1135;-4398.917,2666.415;Inherit;False;854.8545;389.4607;specular;5;1208;1203;1202;1201;1190;specular;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;402;-2135.588,-831.9131;Inherit;False;1304.591;664.6075;自发光;13;626;651;650;648;644;627;637;407;453;406;405;403;640;自发光;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1150;-5371.141,2694.17;Inherit;False;914.6328;455.6265;oneMinusReflectivity;5;1272;1264;1258;1253;1220;oneMinusReflectivity;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;437;-2125.029,-105.2349;Inherit;False;1002.802;412.9848;Comment;5;467;466;144;422;523;贴图*GI*直射光颜色+边缘光（白天）;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1151;-4390.284,4347.383;Inherit;False;850.9258;346.7902;grazingTerm;5;1286;1268;1250;1238;1210;grazingTerm;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1146;-1379.284,5559.875;Inherit;False;719.7461;533.1406;DirectBRDF;4;1263;1252;1235;1230;DirectBRDF;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;29;-4596.589,-834.079;Inherit;False;1630.714;651.0691;非固定阴影：亮部or第一层阴影颜色;13;91;84;53;54;104;116;103;133;120;43;61;41;83;非固定阴影：亮部or第一层阴影颜色;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;25;-5791.319,-149.7676;Inherit;False;1276.514;391.3353;;7;112;63;90;122;145;410;411;点光照强度和颜色;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;602;-2921.067,661.0716;Inherit;False;257;113;Comment;1;426;;1,0,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1149;-3432.558,2613.349;Inherit;False;2218.561;1418.232;GI;30;1311;1310;1308;1306;1303;1302;1301;1300;1299;1298;1297;1296;1295;1293;1289;1287;1285;1284;1283;1282;1281;1278;1277;1275;1274;1273;1269;1237;1229;1200;GI;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1141;-2201.925,4892.875;Inherit;False;842.4365;469.9849;normalizationTerm;6;1294;1292;1288;1280;1276;1195;normalizationTerm;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1152;-5148.391,3201.245;Inherit;False;666;323;Reflectivity;3;1222;1219;1173;Reflectivity;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;600;-5071.951,452.8976;Inherit;False;257;113;Comment;1;491;;1,0,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;30;-6102.109,955.4962;Inherit;False;2536.67;954.6665;高光spec;19;80;131;108;146;106;62;137;444;115;86;99;126;620;621;128;448;58;625;449;高光spec;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;438;-2574.995,409.1284;Inherit;False;1574.646;511.329;贴图*环境光强度;10;490;492;427;452;462;489;460;487;512;528;贴图*环境光强度+2.5*GI色+边缘光（夜晚）;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;21;-6531.061,-843.0145;Inherit;False;1894.062;632.9747;半兰伯特漫反射;8;102;148;147;35;78;77;150;1326;半兰伯特漫反射;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;420;-4651.588,335.6828;Inherit;False;993.0061;561.0667;直射光颜色影响;9;526;421;362;527;525;360;524;361;363;直射光颜色影响;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;26;-3534.947,-71.43367;Inherit;False;520;279;;3;67;65;38;附加光颜色*亮部贴图;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1139;-4398.537,3160.011;Inherit;False;854.0415;324.2188;perceptualRoughness;3;1182;1177;1176;perceptualRoughness;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1145;-4688.618,5482.464;Inherit;False;1173.932;510.0671;LdotH;9;1271;1270;1248;1246;1245;1236;1211;1206;1194;LdotH;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;22;-777.4453,-852.1212;Inherit;False;1392.933;706.2886;;8;129;119;117;109;107;49;45;42;Outline;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1140;-4392.47,3542.926;Inherit;False;839.541;358.7422;Roughness;5;1243;1239;1191;1185;1181;Roughness;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;168;-6443.967,-104.9022;Inherit;False;557.6423;290.4994;;2;169;64;直射光颜色;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;19;-7553.55,-827.5688;Inherit;False;969.415;296.5497;亮部;3;81;87;40;亮部;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;28;-4415.473,-76.36816;Inherit;False;623.8353;319.923;;4;79;446;98;47;附加光对固定阴影的影响;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1142;-3428.116,4884.743;Inherit;False;1093.921;515.1486;D;12;1309;1262;1261;1260;1257;1256;1244;1224;1218;1196;1192;1174;D;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1143;-6076.28,4783.744;Inherit;False;1300.53;569.6182;LColor(Ldir.N);7;1307;1266;1213;1209;1162;1160;1159;LColor(Ldir.N);1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1144;-4400.316,2207.553;Inherit;False;865.0986;374.2814;diffuse;4;1231;1228;1199;1187;diffuse;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;23;-7557.532,-508.6241;Inherit;False;976.3098;285.0252;阴影颜色;3;44;149;82;阴影颜色;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1138;-2715.402,5553.403;Inherit;False;1288.143;615.3589;specularTerm;10;1291;1255;1254;1247;1221;1216;1215;1197;1189;1180;specularTerm;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;352;-1530.46,-1859.628;Inherit;False;2153.74;963.7548;Comment;23;560;323;341;316;349;340;324;337;348;339;338;317;315;345;318;320;334;319;321;342;350;347;569;Outlinecolor;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;18;-2930.729,-820.8878;Inherit;False;730.2162;609.6853;;5;37;32;46;31;36;固定阴影;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;613;-2250.273,1278.157;Inherit;False;294.8105;123.2611;;1;606;半兰伯特遮罩;1,0,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1136;-3423.655,4269.622;Inherit;False;1111.888;504.5831;surfaceReduction;5;1290;1279;1265;1207;1183;surfaceReduction;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;20;-7555.046,-164.8429;Inherit;False;982.7581;361.3854;ShadowMask;5;443;445;447;404;105;阴影遮罩ShadowMask;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1147;-4390.439,3961.95;Inherit;False;837.2524;325.6699;Roughness2;5;1259;1241;1226;1184;1175;Roughness2;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1137;-4713.262,4759.252;Inherit;False;1188.337;641.0118;NdotH;12;1267;1249;1234;1233;1227;1223;1212;1204;1198;1193;1186;1179;NdotH;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;601;-2923.503,466.9055;Inherit;False;257;113;Comment;1;519;;1,0,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1134;-3443.634,5617.742;Inherit;False;536;445;LoH2;3;1242;1240;1188;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;129;-761.2792,-339.7427;Half;False;Constant;_DistanceCutoff;Distance Cutoff;5;0;Create;True;0;0;0;False;0;False;0.7;0.7;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;354;-3278.39,702.5882;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;625;-4185.743,1505.43;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1172;-6163.36,4209.012;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;520;-3101.793,499.8937;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SaturateNode;100;-2305.367,1005.706;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;462;-2564.808,835.4901;Inherit;False;Constant;_2indirectDiffuse;2*indirectDiffuse;18;0;Create;True;0;0;0;False;0;False;2.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;494;-205.4207,411.3423;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;144;-1882.817,-69.44485;Inherit;True;3;3;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;406;-1217.879,-698.8094;Inherit;False;4;4;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;427;-1850.168,510.0532;Inherit;False;426;GI_night;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;149;-6817.945,-361.9339;Half;False;RimMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;490;-1206.496,599.39;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;318;-875.876,-1759.65;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1308;-2913.265,3701.74;Inherit;False;1210;grazingTerm;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;104;-4577.775,-794.6495;Inherit;False;82;Shadow;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;1303;-3102.788,3381.085;Inherit;True;Property;_beverlyHills_sun_probe_FINAL;beverlyHills_sun_probe_FINAL;19;0;Create;True;0;0;0;False;0;False;-1;62d23e77517a9c542bd5874eef08e3da;62d23e77517a9c542bd5874eef08e3da;True;0;False;white;Auto;False;Object;-1;Auto;Cube;8;0;SAMPLERCUBE;;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;62;-6069.971,1163.348;Float;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SamplerNode;44;-7512.68,-459.4652;Inherit;True;Property;_SSSTex;SSSTex;8;0;Create;True;0;0;0;False;0;False;-1;None;984f9783277ec1345a6c07e08b95c6be;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;403;-1937.612,-788.5409;Inherit;False;87;Highlight;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;446;-4406.691,62.88348;Inherit;False;445;ShadowMask_G;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;43;-4344.664,-381.2127;Half;False;Property;_FirstShadowThre;FirstShadowThre;14;0;Create;True;0;0;0;False;0;False;1;0.608;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;133;-4019.629,-308.6359;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;525;-4179.257,630.5479;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1231;-4374.659,2257.009;Inherit;False;1155;Albedo;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;405;-1939.222,-705.1676;Inherit;False;404;ShadowMask_A;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;321;-466.0321,-1730.316;Half;False;maxComponent;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;447;-6898.515,32.16394;Half;False;ShadowMask_B;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;478;-5560.833,637.5937;Half;False;Constant;_Float5;Float 5;18;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;569;349.4163,-1329.358;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GradientSampleNode;621;-4806.095,1407.693;Inherit;True;2;0;OBJECT;;False;1;FLOAT;0;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.PowerNode;1255;-2411.337,5662.959;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;526;-4636.542,648.1949;Inherit;False;Constant;skylight3;夜晚直射光色影响;15;0;Create;False;0;0;0;False;0;False;0.8;0.45;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;527;-3903.908,625.8145;Half;False;DirectioalNight;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;426;-2896.175,696.3058;Half;False;GI_night;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1310;-2064.497,2889.166;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.UnityObjToClipPosHlpNode;45;-548.7741,-564.4282;Inherit;False;1;0;FLOAT3;0,0,0;False;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector3Node;473;-5564.84,465.6437;Half;False;Constant;_Vector0;Vector 0;18;0;Create;True;0;0;0;False;0;False;0,0,0;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;651;-1919.272,-246.9081;Half;False;Constant;_Float12;Float 12;12;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1265;-3400.671,4557.543;Inherit;False;1175;Roughness2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;36;-2919.667,-784.5034;Inherit;False;82;Shadow;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;487;-1858.803,596.5877;Inherit;False;527;DirectioalNight;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;99;-3908.787,1116.156;Inherit;True;4;4;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.OneMinusNode;128;-4656.432,1603.423;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1250;-4340.728,4517.696;Inherit;False;1171;smoothness;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;46;-2915.776,-425.2272;Half;False;Constant;_Float2;Float 2;8;0;Create;True;0;0;0;False;0;False;0.09;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;106;-5819.341,1233.951;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.PosVertexDataNode;107;-756.2173,-567.5285;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;606;-2170.29,1311.102;Inherit;False;77;halflambert;1;0;OBJECT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1302;-1712.203,3361.392;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1246;-4183.157,5728.639;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;31;-2577.701,-768.941;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;47;-4405.406,-21.35143;Inherit;False;112;AdditionalLight;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;342;-952.7811,-1147.605;Half;False;Constant;_Float1;Float 1;19;0;Create;True;0;0;0;False;0;False;0.6;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1154;-6518.94,3450.068;Inherit;True;Property;_Metallic;Metallic;7;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;1158;-6486.68,4321.457;Half;False;Constant;_Color0;Color 0;11;0;Create;True;0;0;0;False;0;False;1,1,1,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;523;-2108.665,124.9599;Inherit;False;519;GI_light;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;422;-2113.309,-6.172486;Inherit;False;421;DirectioalLight;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1273;-2834.286,3060.37;Inherit;False;1156;Occlusion;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.WorldNormalVector;108;-5778.186,1394.121;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleAddOpNode;140;1108.885,271.926;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;347;5.811932,-1404.291;Inherit;True;3;3;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.DotProductOpNode;1160;-5713.76,5016.363;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1153;-6495.07,4133.71;Inherit;True;Property;_Occlusion;Occlusion;22;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;440;425.2375,356.3837;Half;False;Global;_LerpTime;_LerpTime;18;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;122;-5268.885,25.95926;Inherit;False;FLOAT3;1;0;FLOAT3;0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.RegisterLocalVarNode;443;-6892.272,-126.8342;Half;False;ShadowMask_R;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;334;-1073.756,-1465.65;Inherit;False;87;Highlight;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.WorldNormalVector;147;-6504.134,-795.652;Inherit;True;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RegisterLocalVarNode;421;-3903.256,476.5724;Half;False;DirectioalLight;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;644;-1633.486,-409.396;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;338;-267.6206,-1581.872;Half;False;saturatedColor;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;492;-1497.941,522.1234;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1247;-2181.962,5790.892;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;560;284.5389,-1660.082;Half;False;boundary;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1356;-6718.448,-1279.876;Inherit;True;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;453;-1027.048,-785.2679;Half;False;Emission;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1213;-5526.2,5018.162;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1169;-141.1006,5669.587;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode;137;-6069.971,1323.345;Inherit;False;False;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RegisterLocalVarNode;1309;-2556.885,5132.074;Half;False;D;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;524;-4332.179,630.1108;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;404;-6897.908,116.2128;Half;False;ShadowMask_A;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1290;-3139.485,4522.24;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;118;-2144.864,1004.496;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;49;-471.9691,-270.23;Inherit;False;81;OutlineMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1292;-1783.58,5118.43;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;521;-3296.176,504.3054;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1253;-5116.99,2938.046;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleAndOffsetNode;102;-5690.263,-771.6955;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0.5;False;2;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;444;-4445.224,1015.254;Inherit;False;443;ShadowMask_R;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;356;-3622.61,718.7934;Half;False;Constant;skylight; 夜晚环境色影响;13;0;Create;False;0;0;0;False;0;False;0.45;0.45;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1314;-6794.353,3669.328;Inherit;False;443;ShadowMask_R;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;340;-983.8241,-1358.457;Inherit;False;87;Highlight;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;105;-7502.65,-87.27343;Inherit;True;Property;_LimTex;LimTex;9;0;Create;True;0;0;0;False;0;False;-1;None;f0d7bf5909673f54580215d6b4114f93;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SaturateNode;355;-3112.175,701.3058;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1325;-5205.222,-984.8773;Inherit;False;1324;myVarName;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;337;-471.1579,-1576.411;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.BakedGINode;472;-5345.278,470.4061;Inherit;False;True;4;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1174;-3328.949,5044.952;Half;False;Constant;_Float13;Float 13;8;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;40;-7523.61,-784.2524;Inherit;True;Property;_MainTex;MainTex;6;0;Create;True;0;0;0;False;0;False;-1;None;eb959f336e2c54c4c938ce05e54a3357;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1323;146.9578,4153.312;Inherit;False;Constant;_Float22;Float 22;20;0;Create;True;0;0;0;False;0;False;0.8;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;79;-4019.79,-19.67149;Half;False;ShadowMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;87;-6823.531,-780.2396;Half;False;Highlight;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;120;-4189.876,-566.8101;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DotProductOpNode;94;-3105.111,1010.486;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;90;-5093.872,24.90134;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;467;-1264.903,-62.91755;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1166;-6157.391,3641.254;Half;False;Metallic;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1324;396.2711,3881.226;Inherit;False;myVarName;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FractNode;627;-1770.417,-409.5002;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;116;-3290.321,-754.6122;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1316;-6716.918,3936.313;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DotProductOpNode;131;-5491.692,1254.114;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1321;97.23363,4250.339;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StepOpNode;1322;372.0427,4142.651;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1328;1105.853,4086.558;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;1360;546.4796,-1108.56;Inherit;False;Property;_Color2;Color 2;12;1;[HDR];Create;True;0;0;0;False;0;False;0.5019608,0.5019608,0.5019608,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WireNode;608;-1546.427,1341.594;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LightColorNode;64;-6430.18,-39.38854;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.RangedFloatNode;117;-754.6633,-652.5768;Half;False;Property;_Outlinewidth;Outline width;4;0;Create;True;0;0;0;False;0;False;0.004;0.0067;0;0.1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;466;-1676.09,5.20307;Inherit;False;451;Rim;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1357;-6340.49,-1174.89;Inherit;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMinOpNode;109;-282.9978,-462.8712;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;123;-1299.414,995.8978;Inherit;True;4;4;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1320;1360.635,4483.564;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LuminanceNode;1354;-6970.728,-1341.905;Inherit;True;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;41;-4584.449,-278.0676;Half;False;Constant;_FirstShadowSmoothoffset;FirstShadowSmoothoffset;5;0;Create;True;0;0;0;False;0;False;0.02;0.02;0.001;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;309;-1813.035,1451.047;Inherit;False;87;Highlight;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;360;-4635.426,558.6918;Inherit;False;169;AttenuationandAmbient;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;362;-4335.944,479.3783;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldNormalVector;85;-3489.05,1163.035;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1326;-4880.141,-772.983;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;101;-2941.258,1180.403;Half;False;Property;_Rimoffset;Rimoffset;21;0;Create;True;0;0;0;False;0;False;0.9;0.727;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.NormalizeNode;1248;-4384.086,5551.14;Inherit;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BreakToComponentsNode;316;-1200.988,-1783.693;Inherit;False;COLOR;1;0;COLOR;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.AbsOpNode;626;-1323.785,-412.5382;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;324;-1418.873,-1572.452;Inherit;True;321;maxComponent;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;528;-1306.474,774.2959;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;1261;-2935.672,5122.892;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;512;-2565.999,753.6926;Inherit;False;491;Baker_Gi;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1311;-1971.937,3003.445;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;81;-6828.808,-669.3953;Half;False;OutlineMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;1240;-3198.204,5816.893;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;1297;-3400.444,3804.994;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1252;-1134.064,5716.375;Inherit;False;1187;diffuse;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;78;-5429.119,-330.4247;Inherit;False;112;AdditionalLight;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.DotProductOpNode;1249;-4023.675,4838.578;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1298;-2366.976,3221.506;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.FresnelNode;1269;-3157.973,3791.069;Inherit;True;Standard;WorldNormal;ViewDir;False;False;5;0;FLOAT3;0,0,1;False;4;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;4;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;640;-2119.015,-413.6828;Half;False;Property;_EmissionTime;EmissionTime;25;0;Create;True;0;0;0;False;0;False;0.2;0.2;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleTimeNode;637;-1961.455,-410.3246;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;454;804.9424,325.0131;Inherit;False;453;Emission;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;479;-5558.887,725.533;Half;False;Constant;_Float6;Float 6;18;0;Create;True;0;0;0;False;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;61;-4581.552,-432.6617;Half;False;Constant;_Float3;Float 3;8;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1278;-3366.888,3082.892;Inherit;False;Constant;_Float20;Float 20;8;0;Create;True;0;0;0;False;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1333;-2340.456,-183.7669;Inherit;False;asdasd;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;319;-698.1577,-1720.392;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;451;-1002.918,997.7289;Half;False;Rim;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1254;-1952.43,5772.039;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1216;-1625.571,5761.93;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1315;-6986.918,3956.313;Inherit;True;447;ShadowMask_B;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;407;-1954.09,-620.0867;Inherit;False;Property;_Emissioncolor;Emissioncolor;24;1;[HDR];Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1327;819.0443,4234.195;Inherit;True;1324;myVarName;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;169;-6111.357,-64.90539;Half;False;AttenuationandAmbient;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode;349;24.39341,-1156.369;Inherit;False;Property;_Outlinecolor;Outline color;13;1;[HDR];Create;True;0;0;0;False;0;False;0.5019608,0.5019608,0.5019608,0;0.5019608,0.5019608,0.5019608,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode;150;-6496,-576;Inherit;False;False;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldNormalVector;1162;-6041.95,4990.758;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.StepOpNode;126;-4438.697,1648.728;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1218;-2712.634,5133.937;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1359;-5794.568,-1156.15;Inherit;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.DotProductOpNode;148;-5824,-768;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;84;-4583.417,-516.7369;Inherit;False;79;ShadowMask;1;0;OBJECT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;53;-4581.978,-609.2369;Inherit;False;77;halflambert;1;0;OBJECT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1260;-3333.462,5135.862;Inherit;False;1179;NdotH;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;607;-1508.648,1325.9;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;348;-257.3059,-1303.041;Inherit;False;87;Highlight;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.StepOpNode;323;-705.9157,-1571.349;Inherit;False;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1224;-2870.634,5235.936;Half;False;Constant;_Float17;Float 17;8;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;400;-2784.604,1255.063;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1189;-2652.152,5683.358;Half;False;Constant;_Float15;Float 15;8;0;Create;True;0;0;0;False;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1199;-4379.622,2339.845;Inherit;False;1264;oneMinuseReflectivity;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;1289;-3377.888,2847.893;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RegisterLocalVarNode;82;-6784.817,-457.6046;Half;False;Shadow;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;83;-4373.752,-602.0526;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;63;-4896.5,50.15528;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalizeNode;1245;-4396.717,5750.333;Inherit;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;42;415.5254,-784.2281;Inherit;False;4;4;0;FLOAT3;0,0,0;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;115;-4362.039,1253.127;Half;False;Property;_SpecMulti;SpecMulti;26;0;Create;True;0;0;0;False;0;False;6;3.1;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.NormalizeNode;1204;-4231.675,4838.578;Inherit;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;72;-3489.114,1005.28;Float;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.StepOpNode;32;-2702.975,-402.2383;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1282;-3385.041,3325.239;Inherit;False;1156;Occlusion;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;50;-2454.274,1007.77;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;489;-2124.262,747.2767;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1312;-6699.887,2947.456;Inherit;False;87;Highlight;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;661;-2229.562,309.886;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;496;-3619.537,605.6532;Inherit;False;491;Baker_Gi;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;54;-4576,-704;Inherit;False;87;Highlight;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1196;-3322.625,5226.936;Half;False;Constant;_Float10;Float 10;8;0;Create;True;0;0;0;False;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1226;-4146.505,4025.706;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;648;-1487.506,-408.2744;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1256;-2937.672,5015.892;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1208;-4060.921,2745.984;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;339;-516.7179,-1375.094;Inherit;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;320;-1039.031,-1651.316;Half;False;Constant;_Float0;Float 0;19;0;Create;True;0;0;0;False;0;False;0.004;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1280;-2137.068,5153.623;Half;False;Constant;_Float18;Float 18;8;0;Create;True;0;0;0;False;0;False;4;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1187;-3861.763,2264.238;Half;False;diffuse;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1220;-5329.09,2957.044;Inherit;False;1166;Metallic;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;1193;-4697.005,4835.203;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;460;-2337.552,768.3637;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1229;-1538.428,3359.338;Half;False;GlobalIllumination;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;522;-3622.86,496.032;Half;False;Constant;skylight2;白天环境色影响;12;0;Create;False;0;0;0;False;0;False;0.8;0.8;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;58;-5161.809,1664.135;Inherit;True;True;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1274;-2509.412,2847.472;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;60;-1695.243,1078.716;Half;False;Property;_RimColor;RimColor;16;0;Create;True;0;0;0;False;0;False;0.6415094,0.6415094,0.6415094,0;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMaxOpNode;1227;-3860.712,4836.792;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0.001;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;86;-4448.714,1160.215;Inherit;False;87;Highlight;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1235;-941.215,5839.379;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;1221;-2470.228,5792.164;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;519;-2897.318,494.8243;Half;False;GI_light;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalVertexDataNode;119;-754.2773,-803.8054;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.PowerNode;1243;-3999.285,3619.755;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1212;-4252.445,5066.854;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.IndirectSpecularLight;1283;-3104.502,3154.038;Inherit;True;World;3;0;FLOAT3;0,0,1;False;1;FLOAT;1;False;2;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1259;-4364.564,4020.553;Inherit;False;1171;smoothness;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;1234;-4680.513,5175.145;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1185;-4374.339,3615.402;Inherit;False;1171;smoothness;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1191;-3847.517,3617.629;Half;False;Roughness;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;143;-2460.384,-65.72674;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode;1159;-6048.95,5170.758;Inherit;False;False;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RegisterLocalVarNode;1183;-2716.618,4366.522;Inherit;False;surfaceReduction;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector3Node;1201;-4375.62,2713.561;Half;False;Constant;_Vector1;Vector 1;9;0;Create;True;0;0;0;False;0;False;0.04,0.04,0.04;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1202;-4369.932,2889.429;Inherit;False;1155;Albedo;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.BakedGINode;1200;-3051.702,2842.438;Inherit;False;True;4;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1207;-3401.475,4359.502;Half;False;Constant;_Float29;Float 29;9;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.NormalizeNode;1233;-4458.445,5183.854;Inherit;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode;146;-5681.151,1233.326;Inherit;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GradientNode;620;-5151.229,1401.055;Inherit;False;0;4;2;0.4056604,0.4056604,0.4056604,0.5000076;0.6886792,0.6886792,0.6886792,0.5606775;0.6901961,0.6901961,0.6901961,0.8980545;1,1,1,0.9174792;1,0.07524224;1,0.9102007;0;1;OBJECT;0
Node;AmplifyShaderEditor.RangedFloatNode;1272;-5295.29,2797.569;Half;False;Constant;_Float8;Float 8;13;0;Create;True;0;0;0;False;0;False;0.96;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.WorldPosInputsNode;411;-5742.533,58.30948;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.PowerNode;132;-1960.08,1002.324;Inherit;True;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode;1186;-4688.051,5004.066;Inherit;False;False;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.PowerNode;1241;-3935.505,4027.706;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1288;-1958.58,5199.429;Half;False;Constant;_Float19;Float 19;8;0;Create;True;0;0;0;False;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1188;-3388.006,5879.71;Half;False;Constant;_Float14;Float 14;8;0;Create;True;0;0;0;False;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1223;-3810.532,5108.482;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1190;-4371.025,2976.167;Inherit;False;1166;Metallic;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;96;-2400.092,1112.222;Half;False;Property;_RimScale;RimScale;18;0;Create;True;0;0;0;False;0;False;0.2;0.01;0.01;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1168;-6899.98,4256.997;Inherit;False;Property;_smoothness1;smoothness1;15;0;Create;True;0;0;0;False;0;False;0;0.91;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1301;-3216.803,3687.206;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1195;-1614.6,5112.723;Half;False;normalizationTerm;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;38;-3517.169,-2.448705;Inherit;False;87;Highlight;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1281;-1996.437,3386.256;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1262;-2896.634,5106.937;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1230;-1360.859,5709.828;Inherit;False;1203;specular;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1210;-3782.828,4435.165;Half;False;grazingTerm;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1192;-3107.672,4967.892;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1275;-2618.601,3145.526;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1184;-4147.567,4169.273;Half;False;Constant;_Float7;Float 7;7;0;Create;True;0;0;0;False;0;False;4;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1222;-4851.908,3285.834;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1179;-3734.82,4833.54;Half;False;NdotH;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1180;-1854.6,5655.5;Inherit;False;1175;Roughness2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1215;-2173.404,5673.149;Inherit;False;1195;normalizationTerm;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1276;-2162.051,5033.784;Inherit;False;1191;Roughness;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;452;-2338.481,684.1551;Inherit;False;451;Rim;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1167;-442.9747,5815.103;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;37;-2915.804,-346.9852;Inherit;False;79;ShadowMask;1;0;OBJECT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SmoothstepOpNode;91;-3741.698,-555.2623;Inherit;True;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1203;-3869.484,2761.185;Half;True;specular;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1300;-3366.888,3003.892;Inherit;False;Constant;_Float21;Float 21;8;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.WorldReflectionVector;1295;-3380.62,3401.013;Inherit;False;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.ColorNode;1165;-6492.84,3040.465;Half;False;Property;_Color1;Color 1;17;0;Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1296;-3411.842,3169.723;Inherit;False;Property;_Float32;Float 32;20;0;Create;True;0;0;0;False;0;False;0.929768;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1287;-2756.946,2967.344;Inherit;False;1156;Occlusion;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;145;-5249.787,-97.61513;Half;False;AdditionalColor;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;315;-1421.916,-1789.754;Inherit;False;87;Highlight;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;80;-5425.465,1679.185;Half;False;Constant;_Specgloss;Specgloss;11;0;Create;True;0;0;0;False;0;False;3.3;3.3;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;317;-1037.868,-1782.75;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LightColorNode;1209;-5457.53,4835.21;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleDivideOpNode;1279;-2908.858,4367.109;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1155;-6172.79,3045.581;Half;False;Albedo;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;650;-1711.078,-242.8191;Half;False;Constant;_Float11;Float 11;12;0;Create;True;0;0;0;False;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;350;-533.5844,-1457.829;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.NormalizeNode;1198;-4130.832,5064.812;Inherit;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SaturateNode;1268;-3964.049,4439.921;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;363;-4632.778,472.6116;Inherit;False;Constant;skylight1;直射光色影响;15;0;Create;False;0;0;0;False;0;False;0.45;0.45;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;98;-4166.398,-15.87251;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1176;-4369.402,3251.136;Inherit;False;1171;smoothness;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1161;-645.4366,5737.253;Inherit;False;1307;LightColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.PowerNode;1244;-3107.634,5130.937;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1258;-4929.834,2799.156;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1285;-3389.691,3249.975;Inherit;False;1171;smoothness;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;449;-3758.837,996.314;Half;False;HightLightSpec;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;345;-236.4745,-1432.121;Half;False;Constant;_Float4;Float 4;19;0;Create;True;0;0;0;False;0;False;0.8;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1211;-3721.849,5533.123;Half;False;LdotH;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1157;-6506.79,3219.526;Inherit;True;Property;_Albedo;Albedo;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;103;-3303.264,-518.0554;Float;True;shadowwithoutHlight;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;1270;-3866.048,5540.549;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0.001;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;419;634.4616,-43.20103;Inherit;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;112;-4780.068,-70.08865;Half;False;AdditionalLight;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;1194;-4659.516,5744.552;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SaturateNode;361;-4183.023,479.8154;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;401;-2613.902,1170.908;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1170;-6505.33,3777.7;Inherit;True;Property;_Smoothness;Smoothness;10;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1277;-2265.685,3012.564;Inherit;False;1187;diffuse;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1266;-5241.18,4992.482;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1319;-86.1319,4723.466;Inherit;True;443;ShadowMask_R;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;35;-5171.907,-739.3453;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1294;-1957.068,5047.624;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;448;-4856.08,1599.483;Inherit;False;447;ShadowMask_B;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1156;-5978.63,4196.774;Half;False;Occlusion;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;491;-5060.162,469.8288;Half;False;Baker_Gi;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1182;-3909.258,3246.199;Half;False;perceptualRoughness;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1242;-3388.56,5758.633;Inherit;False;1211;LdotH;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;450;-2923.158,32.60251;Inherit;False;449;HightLightSpec;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;59;-3262.497,1257.335;Inherit;False;149;RimMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1257;-3329.336,4937.967;Inherit;False;1175;Roughness2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1239;-4184.309,3617.755;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;410;-5524.717,-89.7264;Inherit;False;float3 Color = 0@$#ifdef _ADDITIONAL_LIGHTS$int numLights = GetAdditionalLightsCount()@$for(int i = 0@ i<numLights@i++)${$	Light light = GetAdditionalLight(i, WorldPosition)@$	Color += light.color *(light.distanceAttenuation * light.shadowAttenuation)@$	$}$#endif$return Color@;3;False;1;True;WorldPosition;FLOAT3;0,0,0;In;;Float;False;AdditionalLightsFlat;False;False;0;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;1271;-4042.888,5541.922;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1306;-2604.033,3706.044;Inherit;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;65;-3209.957,-35.29076;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;1335;-3885.184,-1296.933;Inherit;False;Detail Albedo;0;;1;29e5a290b15a7884983e27c8f1afaa8c;0;3;12;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;9;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;662;-1630.042,351.5169;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1237;-2684.345,3313.344;Inherit;False;1183;surfaceReduction;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1197;-2653.965,5783.638;Half;False;Constant;_Float16;Float 16;8;0;Create;True;0;0;0;False;0;False;0.1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1236;-3687.666,5750.972;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1177;-4108.136,3253.263;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1299;-2909.905,3611.315;Inherit;False;1203;specular;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1358;-6653.968,-958.4608;Inherit;False;Property;_Float23;Float 23;23;0;Create;True;0;0;0;False;0;False;0;0.2635526;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;1284;-3403.355,3647.34;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1219;-5110.771,3283.83;Inherit;False;1264;oneMinuseReflectivity;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1175;-3769.25,4017.489;Half;False;Roughness2;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1163;-465.0738,5597.783;Inherit;False;1229;GlobalIllumination;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1228;-4070.932,2260.434;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1171;-6147.11,4005.02;Half;False;smoothness;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1238;-4342.325,4437.001;Inherit;False;1173;Reflectivity;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;77;-4826.743,-492.2751;Half;True;halflambert;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TangentVertexDataNode;1362;-448.2521,-929.0153;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;445;-6890.376,-56.6263;Half;False;ShadowMask_G;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1263;-1165.362,5866.019;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.NormalizeNode;1267;-4437.844,5019.907;Inherit;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1133;-1400.961,1419.701;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1307;-5019.68,5126.288;Inherit;False;LightColor;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1291;-2648.885,5606.074;Inherit;False;1309;D;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;341;-990.7012,-1244.509;Inherit;False;338;saturatedColor;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1264;-4700.354,2801.814;Half;False;oneMinuseReflectivity;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1173;-4704.253,3280.918;Half;False;Reflectivity;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode;1206;-4669.609,5545.152;Inherit;False;False;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;1181;-4178.309,3740.436;Half;False;Constant;_Float9;Float 9;7;0;Create;True;0;0;0;False;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1334;-6424.168,2901.515;Inherit;False;1333;asdasd;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.WorldPosInputsNode;1293;-3386.887,2690.892;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1363;601.2637,4826.577;Inherit;True;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;67;-3521.181,112.4755;Inherit;False;145;AdditionalColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1164;-7021.311,3639.052;Half;False;Property;_Metallic1;Metallic1;11;0;Create;True;0;0;0;False;0;False;0.3105933;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1286;-4099.168,4441.078;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1098;-8171.694,2847.973;Float;False;False;-1;2;UnityEditor.ShaderGraph.PBRMasterGUI;0;3;New Amplify Shader;2992e84f91cbeb14eab234972e07ea9d;True;ShadowCaster;0;2;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;0;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;-1;True;3;False;-1;False;True;1;LightMode=ShadowCaster;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1100;-8171.694,2847.973;Float;False;False;-1;2;UnityEditor.ShaderGraph.PBRMasterGUI;0;3;New Amplify Shader;2992e84f91cbeb14eab234972e07ea9d;True;Meta;0;4;Meta;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;0;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Meta;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1096;998.1354,-1029.243;Float;False;False;-1;2;UnityEditor.ShaderGraph.PBRMasterGUI;0;3;New Amplify Shader;2992e84f91cbeb14eab234972e07ea9d;True;ExtraPrePass;0;0;ExtraPrePass;5;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;0;0;False;True;1;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;True;True;0;False;-1;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;True;2;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;0;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1099;-8171.694,2847.973;Float;False;False;-1;2;UnityEditor.ShaderGraph.PBRMasterGUI;0;3;New Amplify Shader;2992e84f91cbeb14eab234972e07ea9d;True;DepthOnly;0;3;DepthOnly;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;0;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;False;False;True;False;False;False;False;0;False;-1;False;False;False;False;False;False;False;False;False;True;1;False;-1;False;False;True;1;LightMode=DepthOnly;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1097;1923.579,109.0019;Float;False;True;-1;2;UnityEditor.ShaderGraph.PBRMasterGUI;0;3;4th/Cha/Cha_catoon;2992e84f91cbeb14eab234972e07ea9d;True;Forward;0;1;Forward;8;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;True;True;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;0;False;True;1;1;False;-1;0;False;-1;1;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=UniversalForward;False;0;Hidden/InternalErrorShader;0;0;Standard;22;Surface;0;  Blend;0;Two Sided;1;Cast Shadows;1;  Use Shadow Threshold;0;Receive Shadows;0;GPU Instancing;0;LOD CrossFade;0;Built-in Fog;0;DOTS Instancing;0;Meta Pass;0;Extra Pre Pass;1;Tessellation;0;  Phong;0;  Strength;0.5,False,-1;  Type;0;  Tess;16,False,-1;  Min;10,False,-1;  Max;25,False,-1;  Edge Length;16,False,-1;  Max Displacement;25,False,-1;Vertex Position,InvertActionOnDeselection;1;0;5;True;True;True;True;False;False;;False;0
WireConnection;354;0;496;0
WireConnection;354;1;356;0
WireConnection;625;0;621;1
WireConnection;625;1;126;0
WireConnection;1172;0;1153;0
WireConnection;1172;1;1158;0
WireConnection;520;0;521;0
WireConnection;100;0;50;0
WireConnection;494;0;490;0
WireConnection;144;0;143;0
WireConnection;144;1;422;0
WireConnection;144;2;523;0
WireConnection;406;0;403;0
WireConnection;406;1;405;0
WireConnection;406;2;407;0
WireConnection;406;3;626;0
WireConnection;149;0;44;4
WireConnection;490;0;492;0
WireConnection;490;1;528;0
WireConnection;318;0;317;0
WireConnection;318;1;316;2
WireConnection;1303;1;1295;0
WireConnection;133;0;43;0
WireConnection;133;1;41;0
WireConnection;525;0;524;0
WireConnection;321;0;319;0
WireConnection;447;0;105;3
WireConnection;569;0;347;0
WireConnection;569;1;349;0
WireConnection;621;0;620;0
WireConnection;621;1;58;0
WireConnection;1255;0;1291;0
WireConnection;1255;1;1189;0
WireConnection;527;0;525;0
WireConnection;426;0;355;0
WireConnection;1310;0;1274;0
WireConnection;45;0;107;0
WireConnection;99;0;444;0
WireConnection;99;1;86;0
WireConnection;99;2;115;0
WireConnection;99;3;625;0
WireConnection;128;0;448;0
WireConnection;106;0;62;0
WireConnection;106;1;137;0
WireConnection;1302;0;1311;0
WireConnection;1302;1;1281;0
WireConnection;1246;0;1248;0
WireConnection;1246;1;1245;0
WireConnection;31;0;36;0
WireConnection;31;1;116;0
WireConnection;31;2;32;0
WireConnection;140;0;419;0
WireConnection;140;1;454;0
WireConnection;347;0;345;0
WireConnection;347;1;339;0
WireConnection;347;2;348;0
WireConnection;1160;0;1162;0
WireConnection;1160;1;1159;0
WireConnection;122;0;410;0
WireConnection;443;0;105;1
WireConnection;421;0;361;0
WireConnection;644;0;627;0
WireConnection;644;1;651;0
WireConnection;338;0;337;0
WireConnection;492;0;662;0
WireConnection;492;1;427;0
WireConnection;492;2;487;0
WireConnection;1247;0;1255;0
WireConnection;1247;1;1221;0
WireConnection;560;0;347;0
WireConnection;1356;0;40;0
WireConnection;1356;1;1354;0
WireConnection;453;0;406;0
WireConnection;1213;0;1160;0
WireConnection;1169;0;1163;0
WireConnection;1169;1;1167;0
WireConnection;1309;0;1218;0
WireConnection;524;0;360;0
WireConnection;524;1;526;0
WireConnection;404;0;105;4
WireConnection;1290;0;1207;0
WireConnection;1290;1;1265;0
WireConnection;118;0;100;0
WireConnection;1292;0;1294;0
WireConnection;1292;1;1288;0
WireConnection;521;0;522;0
WireConnection;521;1;496;0
WireConnection;1253;0;1272;0
WireConnection;1253;1;1220;0
WireConnection;102;0;148;0
WireConnection;355;0;354;0
WireConnection;337;0;323;0
WireConnection;337;1;350;0
WireConnection;472;0;473;0
WireConnection;472;1;473;1
WireConnection;472;2;478;0
WireConnection;472;3;479;0
WireConnection;79;0;98;0
WireConnection;87;0;40;0
WireConnection;120;0;83;0
WireConnection;120;1;61;0
WireConnection;94;0;72;0
WireConnection;94;1;85;0
WireConnection;90;0;122;0
WireConnection;90;1;122;1
WireConnection;467;0;144;0
WireConnection;467;1;466;0
WireConnection;1166;0;1164;0
WireConnection;1324;0;1322;0
WireConnection;627;0;637;0
WireConnection;116;0;104;0
WireConnection;116;1;54;0
WireConnection;116;2;91;0
WireConnection;1316;0;1315;0
WireConnection;1316;1;1168;0
WireConnection;131;0;146;0
WireConnection;131;1;108;0
WireConnection;1321;0;1319;0
WireConnection;1322;0;1323;0
WireConnection;1322;1;1321;0
WireConnection;1328;0;140;0
WireConnection;1328;1;1327;0
WireConnection;608;0;606;0
WireConnection;1357;0;1356;0
WireConnection;1357;1;1354;0
WireConnection;1357;2;1358;0
WireConnection;109;0;45;4
WireConnection;109;1;129;0
WireConnection;123;0;132;0
WireConnection;123;1;60;0
WireConnection;123;2;607;0
WireConnection;123;3;1133;0
WireConnection;1320;0;1328;0
WireConnection;1320;1;1363;0
WireConnection;1354;0;40;0
WireConnection;362;0;363;0
WireConnection;362;1;360;0
WireConnection;1326;0;35;0
WireConnection;1326;1;1325;0
WireConnection;1248;0;1206;0
WireConnection;316;0;315;0
WireConnection;626;0;648;0
WireConnection;528;0;489;0
WireConnection;1261;0;1256;0
WireConnection;1311;0;1310;0
WireConnection;1311;1;1277;0
WireConnection;81;0;40;4
WireConnection;1240;0;1242;0
WireConnection;1240;1;1188;0
WireConnection;1249;0;1204;0
WireConnection;1249;1;1198;0
WireConnection;1298;0;1275;0
WireConnection;1298;1;1237;0
WireConnection;1269;0;1301;0
WireConnection;1269;4;1297;0
WireConnection;637;0;640;0
WireConnection;1333;0;143;0
WireConnection;319;0;318;0
WireConnection;319;1;320;0
WireConnection;451;0;123;0
WireConnection;1254;0;1215;0
WireConnection;1254;1;1247;0
WireConnection;1216;0;1180;0
WireConnection;1216;1;1254;0
WireConnection;169;0;64;1
WireConnection;126;0;128;0
WireConnection;126;1;58;0
WireConnection;1218;0;1262;0
WireConnection;1218;1;1224;0
WireConnection;1359;0;1357;0
WireConnection;1359;1;40;0
WireConnection;1359;2;1358;0
WireConnection;148;0;147;0
WireConnection;148;1;150;0
WireConnection;607;0;608;0
WireConnection;323;0;324;0
WireConnection;323;1;334;0
WireConnection;400;0;59;0
WireConnection;82;0;44;0
WireConnection;83;0;53;0
WireConnection;83;1;84;0
WireConnection;63;0;90;0
WireConnection;63;1;122;2
WireConnection;1245;0;1194;0
WireConnection;42;0;1362;0
WireConnection;42;1;117;0
WireConnection;42;2;109;0
WireConnection;42;3;49;0
WireConnection;1204;0;1193;0
WireConnection;32;0;46;0
WireConnection;32;1;37;0
WireConnection;50;0;94;0
WireConnection;50;1;401;0
WireConnection;489;0;452;0
WireConnection;489;1;460;0
WireConnection;661;0;143;0
WireConnection;1226;0;1259;0
WireConnection;648;0;644;0
WireConnection;648;1;650;0
WireConnection;1256;0;1192;0
WireConnection;1208;0;1201;0
WireConnection;1208;1;1202;0
WireConnection;1208;2;1190;0
WireConnection;339;0;340;0
WireConnection;339;1;341;0
WireConnection;339;2;342;0
WireConnection;1187;0;1228;0
WireConnection;460;0;512;0
WireConnection;460;1;462;0
WireConnection;1229;0;1302;0
WireConnection;58;0;131;0
WireConnection;58;1;80;0
WireConnection;1274;0;1200;0
WireConnection;1274;1;1287;0
WireConnection;1227;0;1249;0
WireConnection;1235;0;1252;0
WireConnection;1235;1;1263;0
WireConnection;1221;0;1197;0
WireConnection;1221;1;1240;0
WireConnection;519;0;520;0
WireConnection;1243;0;1239;0
WireConnection;1243;1;1181;0
WireConnection;1212;0;1267;0
WireConnection;1212;1;1233;0
WireConnection;1283;0;1289;0
WireConnection;1283;1;1285;0
WireConnection;1283;2;1282;0
WireConnection;1191;0;1243;0
WireConnection;143;0;31;0
WireConnection;143;1;65;0
WireConnection;143;2;450;0
WireConnection;1183;0;1279;0
WireConnection;1200;0;1293;0
WireConnection;1200;1;1289;0
WireConnection;1200;2;1300;0
WireConnection;1200;3;1278;0
WireConnection;1233;0;1234;0
WireConnection;146;0;106;0
WireConnection;132;0;118;0
WireConnection;132;1;96;0
WireConnection;1241;0;1226;0
WireConnection;1241;1;1184;0
WireConnection;1301;0;1284;0
WireConnection;1195;0;1292;0
WireConnection;1281;0;1298;0
WireConnection;1281;1;1306;0
WireConnection;1262;0;1261;0
WireConnection;1262;1;1244;0
WireConnection;1210;0;1268;0
WireConnection;1192;0;1257;0
WireConnection;1192;1;1174;0
WireConnection;1275;0;1273;0
WireConnection;1275;1;1283;0
WireConnection;1222;0;1219;0
WireConnection;1179;0;1227;0
WireConnection;1167;0;1161;0
WireConnection;1167;1;1235;0
WireConnection;91;0;120;0
WireConnection;91;1;43;0
WireConnection;91;2;133;0
WireConnection;1203;0;1208;0
WireConnection;145;0;410;0
WireConnection;317;0;316;0
WireConnection;317;1;316;1
WireConnection;1279;0;1207;0
WireConnection;1279;1;1290;0
WireConnection;1155;0;1334;0
WireConnection;350;0;334;0
WireConnection;1198;0;1212;0
WireConnection;1268;0;1286;0
WireConnection;98;0;47;0
WireConnection;98;1;446;0
WireConnection;1244;0;1260;0
WireConnection;1244;1;1196;0
WireConnection;1258;0;1272;0
WireConnection;1258;1;1253;0
WireConnection;449;0;99;0
WireConnection;1211;0;1270;0
WireConnection;103;0;91;0
WireConnection;1270;0;1271;0
WireConnection;419;0;467;0
WireConnection;419;1;494;0
WireConnection;419;2;440;0
WireConnection;112;0;63;0
WireConnection;361;0;362;0
WireConnection;401;0;101;0
WireConnection;401;1;400;0
WireConnection;1266;0;1209;1
WireConnection;1266;1;1213;0
WireConnection;35;0;102;0
WireConnection;35;1;78;0
WireConnection;1294;0;1276;0
WireConnection;1294;1;1280;0
WireConnection;1156;0;1172;0
WireConnection;491;0;472;0
WireConnection;1182;0;1177;0
WireConnection;1239;0;1185;0
WireConnection;410;0;411;0
WireConnection;1271;0;1248;0
WireConnection;1271;1;1246;0
WireConnection;1306;0;1299;0
WireConnection;1306;1;1308;0
WireConnection;1306;2;1269;0
WireConnection;65;0;38;0
WireConnection;65;1;67;0
WireConnection;662;0;661;0
WireConnection;1177;0;1176;0
WireConnection;1175;0;1241;0
WireConnection;1228;0;1231;0
WireConnection;1228;1;1199;0
WireConnection;1171;0;1168;0
WireConnection;77;0;1326;0
WireConnection;445;0;105;2
WireConnection;1263;0;1230;0
WireConnection;1263;1;1216;0
WireConnection;1267;0;1186;0
WireConnection;1133;0;309;0
WireConnection;1307;0;1266;0
WireConnection;1264;0;1258;0
WireConnection;1173;0;1222;0
WireConnection;1363;0;1319;0
WireConnection;1363;1;1169;0
WireConnection;1286;0;1238;0
WireConnection;1286;1;1250;0
WireConnection;1096;0;569;0
WireConnection;1096;3;42;0
WireConnection;1097;2;140;0
ASEEND*/
//CHKSM=487355F39E9FC6FA2C5AE4A5D19732703565E0D6