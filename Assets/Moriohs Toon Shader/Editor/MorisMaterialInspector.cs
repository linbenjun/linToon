#region
using System;
using System.Reflection;
using MoriShader;
using UnityEditor;
using UnityEngine;
using UnityEngine.UI;
#endregion
// ---DISCLAIMER--- THIS CODE IS BASED OFF OF "SYNQARK"'s ARKTOON-SHADERS AND "XIEXE"'s UNITY-SHADERS. FOR MORE INFORMATION PLEASE REFER TO THE ORIGINAL BASE WRITER "https://github.com/synqark", "https://github.com/synqark/Arktoon-Shaders" or "https://github.com/Xiexe", "https://github.com/Xiexe/Xiexes-Unity-Shaders"
public class MorisMaterialInspector : ShaderGUI
{
    private readonly MaterialProperty _ShaderOptimizerEnabled = null;
    //UV Switches
    private readonly MaterialProperty _OutlineMaskUVSwitch = null;
    private readonly MaterialProperty _DitherMaskUVSwitch = null;
    private readonly MaterialProperty _EmissionScrollMaskUVSwitch = null;
    private readonly MaterialProperty _EmissionUVSwitch = null;
    private readonly MaterialProperty _MainTexUVSwitch = null;
    private readonly MaterialProperty _DissolvePatternUVSwitch = null;
    private readonly MaterialProperty _EmissionscrollUVSwitch = null;
    private readonly MaterialProperty _NoiseTextureUVSwitch = null;
    private readonly MaterialProperty _ReflectionMaskUVSwitch = null;
    private readonly MaterialProperty _ReflectionMaskMatcapUVSwitch = null;
    private readonly MaterialProperty _NormalMapUVSwitch = null;
    private readonly MaterialProperty _SecondaryNormalMaskUVSwitch = null;
    private readonly MaterialProperty _SecondaryNormalUVSwitch = null;
    private readonly MaterialProperty _RimMaskUVSwitch = null;
    private readonly MaterialProperty _SSSThicknessMapUVSwitch = null;
    private readonly MaterialProperty _AnisoDirUVSwitch = null;
    private readonly MaterialProperty _SpecularMapUVSwitch = null;
    private readonly MaterialProperty _HueMaskUVSwitch = null;
    //Render Options
    private readonly MaterialProperty _RenderingMode = null;
    private readonly MaterialProperty _CullMode = null;
    private readonly MaterialProperty _SourceBlendRGB = null;
    private readonly MaterialProperty _DestinationBlendRGB = null;
    private readonly MaterialProperty _BlendOpRGB = null;
    private readonly MaterialProperty _SourceBlendAlpha = null;
    private readonly MaterialProperty _DestinationBlendAlpha = null;
    private readonly MaterialProperty _BlendOpAlpha = null;
    private readonly MaterialProperty _MaskClipValue = null;
    private readonly MaterialProperty _AlphatoCoverage = null;
    private readonly MaterialProperty _ColorMask = null;
    private readonly MaterialProperty _StencilBufferReference = null;
    private readonly MaterialProperty _StencilBufferReadMask = null;
    private readonly MaterialProperty _StencilBufferWriteMask = null;
    private readonly MaterialProperty _StencilBufferComparison = null;
    private readonly MaterialProperty _StencilBufferPassFront = null;
    private readonly MaterialProperty _StencilBufferFailFront = null;
    private readonly MaterialProperty _StencilBufferZFailFront = null;
    private readonly MaterialProperty _ZWriteMode = null;
    private readonly MaterialProperty _ZTestMode = null;
    private readonly MaterialProperty _DepthOffsetFactor = null;
    private readonly MaterialProperty _DepthOffsetUnits = null;
    // Keyword Properties
    private readonly MaterialProperty _COLORADDSUBDIFF = null;
    private readonly MaterialProperty _COLORCOLOR = null;
    // Hue Shift
    private readonly MaterialProperty _HueMaskinverter = null;
    private readonly MaterialProperty _HueShiftblend = null;
    private readonly MaterialProperty _HueShiftSpeed = null;
    private readonly MaterialProperty _HueShiftRandomizer = null;
    private readonly MaterialProperty _HueMask = null;
    private readonly MaterialProperty _ToggleHueTexforSpeed = null;
    //Dither
    private readonly MaterialProperty _StartDitheringFade = null;
    private readonly MaterialProperty _EndDitheringFade = null;
    private readonly MaterialProperty _DitherTextureToggle = null;
    private readonly MaterialProperty _DitherTexture = null;
    private readonly MaterialProperty _DitherTextureTiling = null;
    private readonly MaterialProperty _DitherAlphaToggle = null;
    private readonly MaterialProperty _DitherMask = null;
    //Dissolve
    private readonly MaterialProperty _MaterializeVertexColor = null;
    private readonly MaterialProperty _DissolvePattern = null;
    private readonly MaterialProperty _DissolveMask = null;
    private readonly MaterialProperty _MaterializeTex = null;
    private readonly MaterialProperty _DissolveDensity = null;
    private readonly MaterialProperty _DissolveModifier = null;
    private readonly MaterialProperty _MaterializeR = null;
    private readonly MaterialProperty _MaterializeG = null;
    private readonly MaterialProperty _MaterializeB = null;
    private readonly MaterialProperty _MaterializeA = null;
    private readonly MaterialProperty _ToggleDissolveDirInv = null;
    private readonly MaterialProperty _ToggleMaterializeDirInv = null;
    private readonly MaterialProperty _ToggleDissolveEmission = null;
    private readonly MaterialProperty _ToggleDissolveVertexOffset = null;
    private readonly MaterialProperty _DissolveVertexMultiplier = null;
    private readonly MaterialProperty _EmissiveDissolveColor = null;
    private readonly MaterialProperty _MaterializeColorLayerR = null;
    private readonly MaterialProperty _MaterializeColorLayerG = null;
    private readonly MaterialProperty _MaterializeColorLayerB = null;
    private readonly MaterialProperty _MaterializeColorLayerA = null;
    private readonly MaterialProperty _MaterializeLayerModeR = null;
    private readonly MaterialProperty _MaterializeLayerModeG = null;
    private readonly MaterialProperty _MaterializeLayerModeB = null;
    private readonly MaterialProperty _MaterializeLayerModeA = null;
    private readonly MaterialProperty _DissolveRemapMin = null;
    private readonly MaterialProperty _DissolveRemapMax = null;
    //
    private readonly MaterialProperty _Saturation = null;
    private readonly MaterialProperty _MainColor = null;
    private readonly MaterialProperty _MainTex = null;
    private readonly MaterialProperty _OcclusionMap = null;
    private readonly MaterialProperty _Occlusion = null;
    private readonly MaterialProperty _Steps = null;
    private readonly MaterialProperty _NdLHalfingControl = null;
    private readonly MaterialProperty _ColoringPointLights = null;
    private readonly MaterialProperty _ColoringDirectEnvLights = null;
    private readonly MaterialProperty _ToggleMonochromePixelLight = null;
    private readonly MaterialProperty _AmbientBoost = null;
    private readonly MaterialProperty _ToggleMonochromeEnv = null;
    private readonly MaterialProperty _RimColor = null;
    private readonly MaterialProperty _ShadowMask = null;
    private readonly MaterialProperty _ShadowMaskinvert = null;
    private readonly MaterialProperty _ShadowMaskStrength = null;
    private readonly MaterialProperty _ShadowColorMap = null;
    private readonly MaterialProperty _ShadowColorMapStrength = null;
    private readonly MaterialProperty _ToonRamp = null;
    private readonly MaterialProperty _RampColor = null;
    private readonly MaterialProperty _RampOffset = null;
    private readonly MaterialProperty _RimLightMaskinv = null;
    private readonly MaterialProperty _RimMask = null;
    private readonly MaterialProperty _RimTint = null;
    private readonly MaterialProperty _RimOpacity = null;
    private readonly MaterialProperty _RimPower = null;
    private readonly MaterialProperty _RimOffset = null;
    private readonly MaterialProperty _RimDirectionToggle = null;
    private readonly MaterialProperty _RimFresnelBias = null;
    private readonly MaterialProperty _RimFresnelScale = null;
    private readonly MaterialProperty _RimFresnelPower = null;
    private readonly MaterialProperty _RimSpecLightsmoothness = null;
    private readonly MaterialProperty _RimFaceCulling = null;
    private readonly MaterialProperty _DirectShadowIntensity = null;
    private readonly MaterialProperty _PointSpotShadowIntensity = null;
    private readonly MaterialProperty _IndirectShadowIntensity = null;
    private readonly MaterialProperty _SelfCastShadows = null; //everytime im working on stuff like my Lightingsystem at 3AM stuff like this happens.. Its for the Shadow caster.
    private readonly MaterialProperty _MaxLightDirect = null;
    private readonly MaterialProperty _ExperimentalToggle = null;
    private readonly MaterialProperty _RimSwitch = null;
    private readonly MaterialProperty _RimHueSpeed = null;
    private readonly MaterialProperty _ShadowRimOpacity = null;
    private readonly MaterialProperty _ShadowRimRange = null;
    private readonly MaterialProperty _ShadowRimSharpness = null;
    private readonly MaterialProperty _EmissiveRimColor = null;
    private readonly MaterialProperty _HighlightOffset = null;
    private readonly MaterialProperty _HighlightSmoothness = null;
    private readonly MaterialProperty _EnableGSAA = null;
    private readonly MaterialProperty _GSAAVariance = null;
    private readonly MaterialProperty _GSAAThreshold = null;
    private readonly MaterialProperty _SpecularTint = null;
    private readonly MaterialProperty _SpecularMap = null;
    private readonly MaterialProperty _AnisoDir = null;
    private readonly MaterialProperty _AnisoScale = null;
    private readonly MaterialProperty _AnisoSharpening = null;
    private readonly MaterialProperty _BlinntoAniso = null;
    private readonly MaterialProperty _Anisotropy = null;
    private readonly MaterialProperty _AnisoF0Reflectance = null;
    private readonly MaterialProperty _AnisoFlickerFix = null;
    private readonly MaterialProperty _SpecularColor = null;
    private readonly MaterialProperty _SpecularSetting = null;
    private readonly MaterialProperty _SpecShadowMaskVar = null;
    private readonly MaterialProperty _SpecShadowMaskPower = null;
    private readonly MaterialProperty _EmissionColor = null;
    private readonly MaterialProperty _Emission = null;
    private readonly MaterialProperty _EmissionLightscale = null;
    private readonly MaterialProperty _Metallic = null;
    private readonly MaterialProperty _CubemapIntensity = null;
    private readonly MaterialProperty _Cubemap = null;
    private readonly MaterialProperty _Cubemapsmoothness = null;
    private readonly MaterialProperty _MetallicMap = null;
    private readonly MaterialProperty _CubemapSpecularToggle = null;
    private readonly MaterialProperty _IgnoreNormalsCubemap = null;
    private readonly MaterialProperty _ESVoronoiScale = null;
    private readonly MaterialProperty _ESVoronoiSpeed = null;
    private readonly MaterialProperty _EmissionscrollTint = null;
    private readonly MaterialProperty _EmissionscrollColor = null;
    private readonly MaterialProperty _Emissionscroll = null;
    private readonly MaterialProperty _Emiossionscrollspeed = null;
    private readonly MaterialProperty _ESScrollOffset = null;
    private readonly MaterialProperty _NoiseTexture = null;
    private readonly MaterialProperty _NoiseSpeed = null;
    private readonly MaterialProperty _NoiseVectorXY = null;
    private readonly MaterialProperty _ReflectionMask = null;
    private readonly MaterialProperty _WorkflowSwitch = null;
    private readonly MaterialProperty _ESRenderMethod = null;
    private readonly MaterialProperty _EmissionScrollMask = null;
    private readonly MaterialProperty _VectorXY = null;
    private readonly MaterialProperty _IgnoreNormalsESv2 = null;
    //Audio
    private readonly MaterialProperty _AudioBandIntensity = null;
    private readonly MaterialProperty _AudioHueSpeed = null;
    private readonly MaterialProperty _WaveformCoordinates = null;
    private readonly MaterialProperty _WaveformRotation = null;
    private readonly MaterialProperty _AudioLinkSwitch = null;
    private readonly MaterialProperty _AudioLinkColor = null;
    private readonly MaterialProperty _AudioLinkTooltip = null;
    private readonly MaterialProperty _AudioLinkBandHistory = null;
    private readonly MaterialProperty _AudioLinkWaveformMirrorToggle = null;
    private readonly MaterialProperty _WaveformThickness = null;
    //end Audio
    private readonly MaterialProperty _ESSpeed = null;
    private readonly MaterialProperty _ESCoordinates = null;
    private readonly MaterialProperty _ESSize = null;
    private readonly MaterialProperty _ESSharpness = null;
    private readonly MaterialProperty _ESLevelOffset = null;
    private readonly MaterialProperty _EmissionTint = null;
    private readonly MaterialProperty _NormalMap = null;
    private readonly MaterialProperty _NormalScale = null;
    private readonly MaterialProperty _SecondaryNormal = null;
    private readonly MaterialProperty _SecondaryNormalScale = null;
    private readonly MaterialProperty _SecondaryNormalMask = null;
    private readonly MaterialProperty _SubsurfaceDistortionModifier = null;
    private readonly MaterialProperty _SSSPower = null;
    private readonly MaterialProperty _SSSSetting = null;
    private readonly MaterialProperty _SSSScale = null;
    private readonly MaterialProperty _SSSColor = null;
    private readonly MaterialProperty _SSSTint = null;
    private readonly MaterialProperty _SSSThicknessMap = null;
    private readonly MaterialProperty _SSSThicknessinv = null;
    private readonly MaterialProperty _SSSMapMode = null;
    private readonly MaterialProperty _Flipbook = null;
    private readonly MaterialProperty _Columns = null;
    private readonly MaterialProperty _Rows = null;
    private readonly MaterialProperty _Speed = null;
    private readonly MaterialProperty _MaxFrames = null;
    private readonly MaterialProperty _FlipbookColor = null;
    private readonly MaterialProperty _RotateFlipbook = null;
    private readonly MaterialProperty _FlipbookToggle = null;
    private readonly MaterialProperty _FlipbookTint = null;
    private readonly MaterialProperty _SSSToggle = null;
    private readonly MaterialProperty _SpecularToggle = null;
    private readonly MaterialProperty _RimToggle = null;
    private readonly MaterialProperty _RimSpecToggle = null;
    private readonly MaterialProperty _EmissionScrollToggle = null;
    private readonly MaterialProperty _ToggleSteps = null;
    private readonly MaterialProperty _Cutout = null;
    private readonly MaterialProperty _OutlineMode = null;
    private readonly MaterialProperty _OutlineHueSpeed = null;
    private readonly MaterialProperty _OutlineColor = null;
    private readonly MaterialProperty _OutlineWidth = null;
    private readonly MaterialProperty _OutlineDepthFadeDistance = null;
    private readonly MaterialProperty _OutlineDistancethickening = null;
    private readonly MaterialProperty _OutlineTint = null;
    private readonly MaterialProperty _OutlineMask = null;
    //Inspector defined settings
    private readonly MaterialProperty _AdvancedExperimentalToggle = null;
    private readonly MaterialProperty _IgnoreProjector = null;
    //MATCAP
    private readonly MaterialProperty _MatcapR1 = null;
    private readonly MaterialProperty _MatcapG2 = null;
    private readonly MaterialProperty _MatcapB3 = null;
    private readonly MaterialProperty _MatcapA4 = null;
    private readonly MaterialProperty _MatcapR1Toggle = null;
    private readonly MaterialProperty _MatcapG2Toggle = null;
    private readonly MaterialProperty _MatcapB3Toggle = null;
    private readonly MaterialProperty _MatcapA4Toggle = null;
    private readonly MaterialProperty _IgnoreNormalsMatcap = null;
    private readonly MaterialProperty _MatcapR1Mode = null;
    private readonly MaterialProperty _MatcapG2Mode = null;
    private readonly MaterialProperty _MatcapB3Mode = null;
    private readonly MaterialProperty _MatcapA4Mode = null;
    private readonly MaterialProperty _MatcapR1Blending = null;
    private readonly MaterialProperty _MatcapG2Blending = null;
    private readonly MaterialProperty _MatcapB3Blending = null;
    private readonly MaterialProperty _MatcapA4Blending = null;
    private readonly MaterialProperty _ReflectionR1Intensity = null;
    private readonly MaterialProperty _ReflectionG2Intensity = null;
    private readonly MaterialProperty _ReflectionB3Intensity = null;
    private readonly MaterialProperty _ReflectionA4Intensity = null;
    private readonly MaterialProperty _MatcapR1smoothness = null;
    private readonly MaterialProperty _MatcapG2smoothness = null;
    private readonly MaterialProperty _MatcapB3smoothness = null;
    private readonly MaterialProperty _MatcapA4smoothness = null;
    private readonly MaterialProperty _MatcapR1Color = null;
    private readonly MaterialProperty _MatcapG2Color = null;
    private readonly MaterialProperty _MatcapB3Color = null;
    private readonly MaterialProperty _MatcapA4Color = null;
    private readonly MaterialProperty _ReflectionR1Tint = null;
    private readonly MaterialProperty _ReflectionG2Tint = null;
    private readonly MaterialProperty _ReflectionB3Tint = null;
    private readonly MaterialProperty _ReflectionA4Tint = null;
    private readonly MaterialProperty _ReflectionMaskMatcap = null;
    private readonly MaterialProperty _MatcapViewDir = null;
    // ANIMATED PROPERTIES FOR KAJ OPTIMIZER
    // private readonly MaterialProperty _LockTooltip = null;
    static bool showMainSettings = true;
    static bool showShadowSettings = true;
    static bool showDither = false;
    static bool showDissolve = false;
    static bool showShadowEmissiveRim = false;
    static bool showSpecular = false;
    static bool showRimlight = false;
    static bool showReflections = false;
    static bool showMatcapR1 = false;
    static bool showMatcapG2 = false;
    static bool showMatcapB3 = false;
    static bool showMatcapA4 = false;
    static bool showEmission = false;
    static bool showEmissionScroll = false;
    static bool showNormals = false;
    static bool showFlipbook = false;
    static bool showSSS = false;
    static bool showOutlines = false;
    static bool showMiscellaneous = false;
    static bool showMainTexHueShift = false;
    static bool showRenderingOptions = false;

    private readonly BindingFlags bindingFlags = BindingFlags.Public |
    BindingFlags.NonPublic |
    BindingFlags.Instance |
    BindingFlags.Static;

    private bool isCutout;
    private bool isOutlined;
    private bool isTransparent;
    private bool isOpaque;
    public bool isLocked;
    
    // on Shader Variant switch
    public override void AssignNewShaderToMaterial(Material material, Shader oldShader, Shader newShader)
    {
        base.AssignNewShaderToMaterial(material, oldShader, newShader);
        if (newShader.name.Contains("Opaque") || newShader.name.Contains("Cutout") || newShader.name.Contains("Outlined"))
        {
            material.SetFloat("_RenderingMode", 0f);
            material.SetFloat("_SourceBlendRGB", 1f);
            material.SetFloat("_DestinationBlendRGB", 0f);
            material.SetFloat("_BlendOpRGB", 0f);
            material.SetFloat("_SourceBlendAlpha", 1f);
            material.SetFloat("_DestinationBlendAlpha", 0f);
            material.SetFloat("_BlendOpAlpha", 0f);
            material.SetFloat("_ZWriteMode", 1f);
        }
        else if (newShader.name.Contains("Transparent"))
        {
            material.SetFloat("_RenderingMode", 1f);
            material.SetFloat("_SourceBlendRGB", 1f);
            material.SetFloat("_DestinationBlendRGB", 10f);
            material.SetFloat("_BlendOpRGB", 0f);
            material.SetFloat("_SourceBlendAlpha", 1f);
            material.SetFloat("_DestinationBlendAlpha", 10f);
            material.SetFloat("_BlendOpAlpha", 0f);
            material.SetFloat("_ZWriteMode", 1f);
        }
    }
    public override void OnGUI(MaterialEditor materialEditor, MaterialProperty[] props)
    {
        Material material = materialEditor.target as Material;
        Shader shader = material.shader;
        isOpaque = shader.name.Contains("Opaque");
        isCutout = shader.name.Contains("Cutout");
        isOutlined = shader.name.Contains("Outlined");
        isTransparent = shader.name.Contains("Transparent");
        // Catchblock
        foreach (var property in GetType().GetFields(bindingFlags))
        {
            if (property.FieldType == typeof(MaterialProperty))
            {
                try { property.SetValue(this, FindProperty(property.Name, props)); } catch { }
            }
        }
        //
        EditorGUI.BeginChangeCheck();
        {
            Moristyles.ShurikenHeaderCentered(Moristyles.ver);
            ShaderOptimizerButton(_ShaderOptimizerEnabled, materialEditor);
            isLocked = _ShaderOptimizerEnabled.floatValue == 1;
            using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
            {
                //materialEditor.ShaderProperty(_LockTooltip, new GUIContent("ALWAYS LOCK YOUR MATERIALS BEFORE ASSET BUILD", ""));
                materialEditor.ShaderProperty(_AdvancedExperimentalToggle, new GUIContent("Settings Level", "Hides a certain amount of settings for the User which are mostly just Texture Tiling options and things you might not change on your daily basis to have the GUI cleaned up a little."));
                materialEditor.ShaderProperty(_COLORCOLOR, new GUIContent("Toggle Advanced", "Toggles between a Basic and Advanced version of the Shader."));
            }
            showMainSettings = Moristyles.ShurikenFoldout("Main Settings", showMainSettings);
                if (showMainSettings)
                {
                    if (isTransparent)
                    {
                        materialEditor.TexturePropertySingleLine(new GUIContent("Main Texture", "This is where the main texture for the material goes. By changing the (Main Color), the (Main Tex) will change its Color depending on the settings you make"), _MainTex, _MainColor);
                    }
                    else
                    {
                        ShaderPropertyOptimizer(_MainTex, _MainColor, "Main Texture", "This is where the main texture for the material goes. By changing the (Main Color), the (Main Tex) will change its Color depending on the settings you make");
                    }
                    ShaderPropertyOptimizer(_MainTexUVSwitch, null, "UV", "Switches the UV Channel on the upper Texture sample");
                    ShaderPropertyOptimizer(_Saturation, null, "MainTex Saturation", "Controls saturation of the final output from the shader.");
                    if (isCutout || isOutlined || isTransparent)
                    {
                        ShaderPropertyOptimizer(_Cutout, null, "Cutout", "The Cutoff Amount, default value is 0.0001 for Outline and Transparent Shader");
                    }
                }
                showShadowSettings = Moristyles.ShurikenFoldout("Shadow and Light", showShadowSettings);
            if (showShadowSettings)
            {
                ShaderPropertyOptimizer(_ToggleSteps, null, "Toggle SCS", "Toggles the Step based Cel Shading system: Removes the Toon Ramp and replaces it with a Step system");
                ShaderPropertyOptimizer(_ShadowMask, _ShadowMaskStrength, "Shadow Mask", "Texture = Black levels remove Shadows, White parts will leave Shadows as is. \nRed Channel for Pixel Lights\nGreen Channel for Indirect Baked Light \nSlider = Strength \nToggle = Texture inverter");
                ShaderPropertyOptimizer(_ShadowMaskinvert, null, "Invert Shadow Mask", "Inverts Shadow Mask");
                using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                {
                    materialEditor.TexturePropertySingleLine(new GUIContent("Occlusion", "Occlusion Mapping (The occlusion map is used to provide information about which areas of the model should receive high or low indirect lighting, including Cubemap Reflections)"), _OcclusionMap, _Occlusion);
                }
                
                Moristyles.PartingLine();
                
                if (_ToggleSteps.floatValue == 0)
                {
                    ShaderPropertyOptimizer(_ToonRamp, _RampOffset, "Shadow Ramp", "Toon Ramp, Dark to Light should be Left to Right, or Down to Up. Shadow Color is used via the Colors (Alpha) value.");
                }
                if (_ToggleSteps.floatValue == 1)
                {
                    ShaderPropertyOptimizer(_Steps, null, "Amount of Steps", "Set the amount of Steps in Int range");
                    ShaderPropertyOptimizer(_RampOffset, null, "Shadow Offset", "Offsets the Shadows");
                }
                ShaderPropertyOptimizer(_NdLHalfingControl, null, "Shadow Squeeze", "Squeezes NdL to bring the shadow more to the middle");
                
                Moristyles.PartingLine();
                
                ShaderPropertyOptimizer(_RampColor, null, "Shadow Color", "Change the Color of the casted Shadows on your Mesh");
                ShaderPropertyOptimizer(_ShadowColorMap, _ShadowColorMapStrength, "Shadow Color Map", "Texture used to define parts of your Mesh Shadows to be a different Color");
                ShaderPropertyOptimizer(_ColoringPointLights, null, "Color Strength Point/Spot Lights", "This Setting will apply the Shadow Color for Point/Spot Lights \nYou probably want to keep this setting fairly low since Point and Spot Lights do still over brighten with the Light Limiter being active\nThis setting will affect ALL Point/Spot Lights which are set to either 'Not Important' or 'Important'");
                ShaderPropertyOptimizer(_ColoringDirectEnvLights, null, "Color Strength Direct/Ambient Lights", "This Setting will apply the Shadow Color for Directional Lights and Enviromental/Ambient Lighting\nThis also counts for Directional Lights which are set to 'Not Important' since those will just contribute to the Enviromental/Ambient Lighting");
                if (_AdvancedExperimentalToggle.floatValue == 1 || _AdvancedExperimentalToggle.floatValue == 2)
                {
                    Moristyles.PartingLine();
                    
                    ShaderPropertyOptimizer(_DirectShadowIntensity, null, "Direct Shadow Intensity", "Controls the Opacity of the Shadows which are casted on the Mesh from Directional Light Sources. \nYou probably want to scale this property equally to the (Shadow Caster Intensity) since it will first of all have the same Intensity and it will fix the Problem with the Shadow Casters Shadow producing edge artifacts on its own in most cases.");
                    ShaderPropertyOptimizer(_SelfCastShadows, null, "Shadow Caster Intensity", "Controls the Opacity of the Shadows which are casted on the Mesh from other Meshes in between your Mesh and Directional Light Sources which are set to 'Important'. \nYou can also deactivate these Receiving shadows from the Shadow Caster by disabling them in your Mesh Renderer. \nYou probably want to scale this property equally with the (Direct Shadow Intensity)!\nNOTE that this setting will have no effect on Pointlights with activated Shadow casting!");
                    ShaderPropertyOptimizer(_PointSpotShadowIntensity, null, "Point/Spot Shadow Intensity", "Controls the Opacity of Point and Spot Lights that are either set to 'Important' or 'Not Important'.");
                    ShaderPropertyOptimizer(_IndirectShadowIntensity, null, "Indirect Shadow Intensity", "Controls the Opacity of the Shadows which are casted on the Mesh from Indirect Light Sources such as Baked Lightprobes Skybox/Ambient/Environment Light and Directional Lights that are set to 'Not Important'.");
                    
                    Moristyles.PartingLine();
                    
                    ShaderPropertyOptimizer(_ExperimentalToggle, null, "Light Limiter", "This Toggle will ''Clamp'' the overall impacting Light for calculating the Base Lightingmodel.\nThis also includes Flipbooks\nExcluded from the ''clamping'' inside the Base Lighting model are Point/Spotlights");
                    if (_AdvancedExperimentalToggle.floatValue == 1 || _AdvancedExperimentalToggle.floatValue == 2)
                    {
                        ShaderPropertyOptimizer(_MaxLightDirect, null, "Maximum Light Multiplier", "This value will reduce the overall impacting Light for the Base Lightingmodel and Flipbooks.\n(IT IS NOT RECOMMENDED TO TOUCH THIS VALUE UNLESS YOU KNOW WHAT YOU ARE DOING. !!!USE WITH CAUTION!!!)");
                        ShaderPropertyOptimizer(_AmbientBoost, null, "Ambient Light Boost", "This value will increase low frequency Ambient Light.\nA value of 1 will represent pure default Ambient light, it scales linearly upon pure Ambient Light from boosted value towards pure Ambient Light till it reaches 1");
                        ShaderPropertyOptimizer(_ToggleMonochromePixelLight, null, "Monochrome Direct/Point/Spot Lights", "This Toggle will convert any Directional(set to 'important')/Point/Spot Lights color information into Monochrome Color Data");
                        ShaderPropertyOptimizer(_ToggleMonochromeEnv, null, "Monochrome Ambient Light", "This Toggle will convert Enviromental/Ambient Color information into Monochrome Color Data\nThis also applies to Directional Lights that are set to 'Not Important'");
                    }
                }
            }
            if (isOutlined)
            {
                showOutlines = Moristyles.ShurikenFoldout("Outlines", showOutlines);
                if (showOutlines)
                {
                    ShaderPropertyOptimizer(_OutlineMode, null, "Outline Mode", "Controls the Outline whether it should be Light scaled or Emissive");
                    ShaderPropertyOptimizer(_OutlineWidth, null, "Outline Width", "Controls the Width of the Outlines");
                    ShaderPropertyOptimizer(_OutlineColor, null, "Outline Color", "Controls the Color of the Outlines");
                    
                    Moristyles.PartingLine();
                    
                    ShaderPropertyOptimizer(_OutlineTint, null, "Outline Tint", "Multiplies the Outline Color with the Main Texture");
                    ShaderPropertyOptimizer(_OutlineHueSpeed, null, "Hue Speed", "If the Outline Color is increased, the Hue Shift becomes visible. \nThis Setting will be deactivated entirely when set to 0.");
                    ShaderPropertyOptimizer(_OutlineDepthFadeDistance, null, "Distance Fade", "Fades out at a set Distance to remove the Outline when it gets too pixelated \nThis Setting will be deactivated entirely when set to 0");
                    ShaderPropertyOptimizer(_OutlineDistancethickening, null, "Distance Thickening", "Sizes the Outlines according to the distance of the Clip Position \nThis Setting will be deactivated entirely when set to 0");
                    using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                    {
                        materialEditor.TexturePropertySingleLine(new GUIContent("Outline Mask", "Mask the Parts that you dont want to get affected by the Outline"), _OutlineMask);
                    }
                    if (_AdvancedExperimentalToggle.floatValue == 1 || _AdvancedExperimentalToggle.floatValue == 2)
                    {
                        ShaderPropertyOptimizer(_OutlineMaskUVSwitch, null, "UV", "Switches the UV Channel on the upper Texture sample");
                        using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                        {
                            materialEditor.TextureScaleOffsetProperty(_OutlineMask);
                        }
                    }
                }
            }
            showNormals = Moristyles.ShurikenFoldout("Normals", showNormals);
                if (showNormals)
                {
                    ShaderPropertyOptimizer(_NormalMap, _NormalScale, "Normal Map", "Texture Slot for the Normal Map");
                    ShaderPropertyOptimizer(_NormalMapUVSwitch, null, "UV", "Switches the UV Channel on the upper Texture sample");
                    using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                    {
                        materialEditor.TextureScaleOffsetProperty(_NormalMap);
                    }
                    
                    Moristyles.PartingLine();
                    
                    ShaderPropertyOptimizer(_SecondaryNormal, _SecondaryNormalScale, "Secondary Normal Map", "Texture Slot for the Secondary Normal Map");
                    ShaderPropertyOptimizer(_SecondaryNormalUVSwitch, null, "UV", "Switches the UV Channel on the upper Texture sample");
                    using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                    {
                        materialEditor.TextureScaleOffsetProperty(_SecondaryNormal);
                    }
                    
                    Moristyles.PartingLine();
                    
                    materialEditor.TexturePropertySingleLine(new GUIContent("Normal Mask", "Mask the Parts that you dont want to get affected by the Secondary Normal Map.\nGreen Channel for Secondary Normals \nAlpha Channel for Base Normals"), _SecondaryNormalMask);
                    ShaderPropertyOptimizer(_SecondaryNormalMaskUVSwitch, null, "UV", "Switches the UV Channel on the upper Texture sample");
                    using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                    {
                        materialEditor.TextureScaleOffsetProperty(_SecondaryNormalMask);
                    }
                }
            showEmission = Moristyles.ShurikenFoldout("Emission", showEmission);
                if (showEmission)
                {
                    ShaderPropertyOptimizer(_EmissionLightscale, null, "Toggle Light Scale", "This Toggle will make the Emission scale of the opposite way of the impacting light \ni.e. The less Light will impact your Mesh the brighter the Emission gets (No Light means full Brightness).");
                    ShaderPropertyOptimizer(_Emission, _EmissionColor, "Emission Texture", "Texture Slot is a basic Emission Slot for any sort of Texture you want to have lighten up even in the dark.(Note: Black Values in the Texture do not get rendered)");
                    ShaderPropertyOptimizer(_EmissionTint, null, "Emission Tint", "Controls the Tint to Emission by multiplying the emission with the maintexture");
                    ShaderPropertyOptimizer(_EmissionUVSwitch, null, "UV", "Switches the UV Channel on the upper Texture sample");
                    using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                    {
                        materialEditor.TextureScaleOffsetProperty(_Emission);
                    }
                }
            //For Advanced version of the Shader
            if (_COLORCOLOR.floatValue == 1)
            {
                showReflections = Moristyles.ShurikenFoldout("Reflections", showReflections); ;
                if (showReflections)
                {
                        ShaderPropertyOptimizer(_COLORADDSUBDIFF, null, "Toggle Cubemap", "Toggles the Cubemap on or off");
                        if (_COLORADDSUBDIFF.floatValue == 1) // CUBEMAP
                        {
                            ShaderPropertyOptimizer(_WorkflowSwitch, null, "Workflow Switch", "Switches the used Workflow depending on what you want to use. The Dynamic Workflow gives you the best of both Workflows and will switch automatically to a selected Baked Cubemap when the Shader wont find any Reflection Probes nearby which happens in realtime");
                            ShaderPropertyOptimizer(_IgnoreNormalsCubemap, null, "Ignore Normal Maps", "Forces the Cubemap to Ignore Normal Maps for a smooth surface reflection");
                            if (_CubemapSpecularToggle.floatValue == 0)
                            {
                                ShaderPropertyOptimizer(_CubemapSpecularToggle, null, "Specular Highlights", "Enables or Disables the Specular Highlights in all Workflows");
                            }
                            else if(_CubemapSpecularToggle.floatValue == 1)
                            {
                                Moristyles.PartingLine();
                                
                                ShaderPropertyOptimizer(_CubemapSpecularToggle, null, "Specular Highlights", "Enables or Disables the Specular Highlights in all Workflows");
                                ShaderPropertyOptimizer(_SpecShadowMaskVar, null, "Shadow Masking Variant", "Switches the Shadow masking Style or even deactivates the Shadow contribution");
                                if (_SpecShadowMaskVar.floatValue == 2)
                                {
                                    ShaderPropertyOptimizer(_SpecShadowMaskPower, null, "Shadow Masking Power", "Controls how much the Shadow will contribute to the Specular Highlights");
                                }
                                if (_CubemapSpecularToggle.floatValue == 1 && _EnableGSAA.floatValue == 0)
                                {
                                    Moristyles.PartingLine();
                                    
                                }
                            }
                            if (_EnableGSAA.floatValue == 0)
                            {
                                ShaderPropertyOptimizer(_EnableGSAA, null, "Enable GSAA", "Enables or Disables the Geometric Specular Anti Aliasing Feature /nTHIS FEATURE HAS A PROFOUND VISUAL IMPACT");
                            }
                            else if (_EnableGSAA.floatValue == 1)
                            {
                                Moristyles.PartingLine();
                                
                                ShaderPropertyOptimizer(_EnableGSAA, null, "Enable GSAA", "Enables or Disables the Geometric Specular Anti Aliasing Feature /nTHIS FEATURE HAS A PROFOUND VISUAL IMPACT");
                                ShaderPropertyOptimizer(_GSAAVariance, null, "GSAA Variance", "Increases or lowers the Variance of the GSAA effect");
                                ShaderPropertyOptimizer(_GSAAThreshold, null, "GSAA Threshold", "Increases or lowers the Threshold of the GSAA effect");
                            }
                            
                            Moristyles.PartingLine();
                            
                            using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                            {
                                materialEditor.TexturePropertySingleLine(new GUIContent("Baked Cubemap", "Baked Cubemap."), _Cubemap);
                            }
                            ShaderPropertyOptimizer(_MetallicMap, _Metallic, "Metallic", "Metallic Map and Modifier.");
                            ShaderPropertyOptimizer(_CubemapIntensity, null, "Cubemap Intensity", "controls the Cubemap Intensity");
                            ShaderPropertyOptimizer(_Cubemapsmoothness, null, "Smoothness", "Cubemap smoothness, blurs the Cubemap");
                            using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                            {
                                materialEditor.TexturePropertySingleLine(new GUIContent("Reflection Mask", "Mask the Parts that you dont want to get affected by the Reflection."), _ReflectionMask);
                            }
                            if (_AdvancedExperimentalToggle.floatValue == 1 || _AdvancedExperimentalToggle.floatValue == 2)
                            {
                                ShaderPropertyOptimizer(_ReflectionMaskUVSwitch, null, "UV", "Switches the UV Channel on the upper Texture sample");
                                using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                                {
                                    materialEditor.TextureScaleOffsetProperty(_ReflectionMask);
                                }
                            }
                        }
                        Moristyles.PartingLine();
                        
                        showMatcapR1 = Moristyles.ShurikenCenterTextFoldout("Matcap1 <color=#ff0000ff> [Mask = Red Channel] </color>", showMatcapR1);
                    if (showMatcapR1)
                    {
                        ShaderPropertyOptimizer(_MatcapR1Toggle, null, "Matcap Toggle", "Toggles the Matcap on or off");
                        if (_MatcapR1Toggle.floatValue == 1) // ON
                        {
                            ShaderPropertyOptimizer(_MatcapR1Mode, null, "Matcap Blending Mode", "Matcap Blending Mode");
                            ShaderPropertyOptimizer(_MatcapViewDir, null, "Matcap Projection", "Changes the Matcap Projection to either Xiexes Singularity or d4rkpl4y3rs Orthographic Projection Method, both have its pros and cons and neither is perfect so choose the one you like the best basically");
                            if (_MatcapR1Mode.floatValue == 0) // Matcap Multiply
                            {
                                material.SetFloat("_ReflectionR1Tint", 0f);
                                ShaderPropertyOptimizer(_IgnoreNormalsMatcap, null, "Ignore Normal Maps", "Forces the Matcap to Ignore Normal Maps for a smooth surface reflection");
                                ShaderPropertyOptimizer(_MatcapR1, _MatcapR1Color, "Matcap", "Matcap Texture");
                                ShaderPropertyOptimizer(_MatcapR1Blending, null, "Matcap Blending", "Matcap Blending, ");
                                ShaderPropertyOptimizer(_ReflectionR1Intensity, null, "Reflection Intensity", "controls the Intensity of the chosen Reflectiontype");
                                ShaderPropertyOptimizer(_MatcapR1smoothness, null, "Matcap smoothness", "Matcap smoothness, blurs the Matcap");
                                using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                                {
                                    materialEditor.TexturePropertySingleLine(new GUIContent("Reflection Mask", "Mask the Parts that you dont want to get affected by the Reflection."), _ReflectionMaskMatcap);
                                }
                                if (_AdvancedExperimentalToggle.floatValue == 1 || _AdvancedExperimentalToggle.floatValue == 2)
                                {
                                    ShaderPropertyOptimizer(_ReflectionMaskMatcapUVSwitch, null, "UV", "Switches the UV Channel on the upper Texture sample");
                                    using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                                    {
                                        materialEditor.TextureScaleOffsetProperty(_ReflectionMaskMatcap);
                                    }
                                }
                            }
                            else if (_MatcapR1Mode.floatValue != 0) // Matcap Add/Subtract
                            {
                                ShaderPropertyOptimizer(_IgnoreNormalsMatcap, null, "Ignore Normal Maps", "Forces the Matcap to Ignore Normal Maps for a smooth surface reflection");
                                ShaderPropertyOptimizer(_MatcapR1, _MatcapR1Color, "Matcap", "Matcap Texture");
                                ShaderPropertyOptimizer(_MatcapR1Blending, null, "Matcap Blending", "Matcap Blending, ");
                                ShaderPropertyOptimizer(_ReflectionR1Intensity, null, "Reflection Intensity", "controls the Intensity of the chosen Reflectiontype");
                                ShaderPropertyOptimizer(_ReflectionR1Tint, null, "Reflection Tint", "Reflection Tint to Main Texture");
                                ShaderPropertyOptimizer(_MatcapR1smoothness, null, "Matcap smoothness", "Matcap smoothness, blurs the Matcap");
                                using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                                {
                                    materialEditor.TexturePropertySingleLine(new GUIContent("Reflection Mask", "Mask the Parts that you dont want to get affected by the Reflection."), _ReflectionMaskMatcap);
                                }
                                if (_AdvancedExperimentalToggle.floatValue == 1 || _AdvancedExperimentalToggle.floatValue == 2)
                                {
                                    ShaderPropertyOptimizer(_ReflectionMaskMatcapUVSwitch, null, "UV", "Switches the UV Channel on the upper Texture sample");
                                    using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                                    {
                                        materialEditor.TextureScaleOffsetProperty(_ReflectionMaskMatcap);
                                    }
                                }
                            }
                        }
                    }
                    showMatcapG2 = Moristyles.ShurikenCenterTextFoldout("Matcap2 <color=#00ff00ff> [Mask = Green Channel] </color>", showMatcapG2);
                    if (showMatcapG2)
                    {
                        ShaderPropertyOptimizer(_MatcapG2Toggle, null, "Matcap Toggle", "Toggles the Matcap on or off");
                        if (_MatcapG2Toggle.floatValue == 1) // ON
                        {
                            ShaderPropertyOptimizer(_MatcapG2Mode, null, "Matcap Blending Mode", "Matcap Blending Mode");
                            ShaderPropertyOptimizer(_MatcapViewDir, null, "Matcap Projection", "Changes the Matcap Projection to either Xiexes Singularity or d4rkpl4y3rs Orthographic Projection Method, both have its pros and cons and neither is perfect so choose the one you like the best basically");
                            if (_MatcapG2Mode.floatValue == 0) // Matcap Multiply
                            {
                                material.SetFloat("_ReflectionG2Tint", 0f);
                                ShaderPropertyOptimizer(_IgnoreNormalsMatcap, null, "Ignore Normal Maps", "Forces the Matcap to Ignore Normal Maps for a smooth surface reflection");
                                ShaderPropertyOptimizer(_MatcapG2, _MatcapG2Color, "Matcap", "Matcap Texture");
                                ShaderPropertyOptimizer(_MatcapG2Blending, null, "Matcap Blending", "Matcap Blending");
                                ShaderPropertyOptimizer(_ReflectionG2Intensity, null, "Reflection Intensity", "controls the Intensity of the chosen Reflection Type");
                                ShaderPropertyOptimizer(_MatcapG2smoothness, null, "Matcap smoothness", "Matcap smoothness, blurs the Matcap");
                                using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                                {
                                    materialEditor.TexturePropertySingleLine(new GUIContent("Reflection Mask", "Mask the Parts that you dont want to get affected by the Reflection."), _ReflectionMaskMatcap);
                                }
                                if (_AdvancedExperimentalToggle.floatValue == 1 || _AdvancedExperimentalToggle.floatValue == 2)
                                {
                                    ShaderPropertyOptimizer(_ReflectionMaskMatcapUVSwitch, null, "UV", "Switches the UV Channel on the upper Texture sample");
                                    using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                                    {
                                        materialEditor.TextureScaleOffsetProperty(_ReflectionMaskMatcap);
                                    }
                                }
                            }
                            else if (_MatcapG2Mode.floatValue != 0) // Matcap Add/Subtract
                            {
                                ShaderPropertyOptimizer(_IgnoreNormalsMatcap, null, "Ignore Normal Maps", "Forces the Matcap to Ignore Normal Maps for a smooth surface reflection");
                                ShaderPropertyOptimizer(_MatcapG2, _MatcapG2Color, "Matcap", "Matcap Texture");
                                ShaderPropertyOptimizer(_MatcapG2Blending, null, "Matcap Blending", "Matcap Blending, ");
                                ShaderPropertyOptimizer(_ReflectionG2Intensity, null, "Reflection Intensity", "controls the Intensity of the chosen Reflectiontype");
                                ShaderPropertyOptimizer(_ReflectionG2Tint, null, "Reflection Tint", "Reflection Tint to Main Texture");
                                ShaderPropertyOptimizer(_MatcapG2smoothness, null, "Matcap smoothness", "Matcap smoothness, blurs the Matcap");
                                using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                                {
                                    materialEditor.TexturePropertySingleLine(new GUIContent("Reflection Mask", "Mask the Parts that you dont want to get affected by the Reflection."), _ReflectionMaskMatcap);
                                }
                                if (_AdvancedExperimentalToggle.floatValue == 1 || _AdvancedExperimentalToggle.floatValue == 2)
                                {
                                    ShaderPropertyOptimizer(_ReflectionMaskMatcapUVSwitch, null, "UV", "Switches the UV Channel on the upper Texture sample");
                                    using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                                    {
                                        materialEditor.TextureScaleOffsetProperty(_ReflectionMaskMatcap);
                                    }
                                }
                            }
                        }
                    }
                    showMatcapB3 = Moristyles.ShurikenCenterTextFoldout("Matcap3 <color=#0000ffff> [Mask = Blue Channel] </color>", showMatcapB3);
                    if (showMatcapB3)
                    {
                        ShaderPropertyOptimizer(_MatcapB3Toggle, null, "Matcap Toggle", "Toggles the Matcap on or off");
                        if (_MatcapB3Toggle.floatValue == 1) // ON
                        {
                            ShaderPropertyOptimizer(_MatcapB3Mode, null, "Matcap Blending Mode", "Matcap Blending Mode");
                            ShaderPropertyOptimizer(_MatcapViewDir, null, "Matcap Projection", "Changes the Matcap Projection to either Xiexes Singularity or d4rkpl4y3rs Orthographic Projection Method, both have its pros and cons and neither is perfect so choose the one you like the best basically");
                            if (_MatcapB3Mode.floatValue == 0) // Matcap Multiply
                            {
                                material.SetFloat("_ReflectionB3Tint", 0f);
                                ShaderPropertyOptimizer(_IgnoreNormalsMatcap, null, "Ignore Normal Maps", "Forces the Matcap to Ignore Normal Maps for a smooth surface reflection");
                                ShaderPropertyOptimizer(_MatcapB3, _MatcapB3Color, "Matcap", "Matcap Texture");
                                ShaderPropertyOptimizer(_MatcapB3Blending, null, "Matcap Blending", "Matcap Blending, ");
                                ShaderPropertyOptimizer(_ReflectionB3Intensity, null, "Reflection Intensity", "controls the Intensity of the chosen Reflectiontype");
                                ShaderPropertyOptimizer(_MatcapB3smoothness, null, "Matcap smoothness", "Matcap smoothness, blurs the Matcap");
                                using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                                {
                                    materialEditor.TexturePropertySingleLine(new GUIContent("Reflection Mask", "Mask the Parts that you dont want to get affected by the Reflection."), _ReflectionMaskMatcap);
                                }
                                if (_AdvancedExperimentalToggle.floatValue == 1 || _AdvancedExperimentalToggle.floatValue == 2)
                                {
                                    ShaderPropertyOptimizer(_ReflectionMaskMatcapUVSwitch, null, "UV", "Switches the UV Channel on the upper Texture sample");
                                    using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                                    {
                                        materialEditor.TextureScaleOffsetProperty(_ReflectionMaskMatcap);
                                    }
                                }
                            }
                            else if (_MatcapB3Mode.floatValue != 0) // Matcap Add/Subtract
                            {
                                ShaderPropertyOptimizer(_IgnoreNormalsMatcap, null, "Ignore Normal Maps", "Forces the Matcap to Ignore Normal Maps for a smooth surface reflection");
                                ShaderPropertyOptimizer(_MatcapB3, _MatcapB3Color, "Matcap", "Matcap Texture");
                                ShaderPropertyOptimizer(_MatcapB3Blending, null, "Matcap Blending", "Matcap Blending, ");
                                ShaderPropertyOptimizer(_ReflectionB3Intensity, null, "Reflection Intensity", "controls the Intensity of the chosen Reflectiontype");
                                ShaderPropertyOptimizer(_ReflectionB3Tint, null, "Reflection Tint", "Reflection Tint to Main Texture");
                                ShaderPropertyOptimizer(_MatcapB3smoothness, null, "Matcap smoothness", "Matcap smoothness, blurs the Matcap");
                                using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                                {
                                    materialEditor.TexturePropertySingleLine(new GUIContent("Reflection Mask", "Mask the Parts that you dont want to get affected by the Reflection."), _ReflectionMaskMatcap);
                                }
                                if (_AdvancedExperimentalToggle.floatValue == 1 || _AdvancedExperimentalToggle.floatValue == 2)
                                {
                                    ShaderPropertyOptimizer(_ReflectionMaskMatcapUVSwitch, null, "UV", "Switches the UV Channel on the upper Texture sample");
                                    using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                                    {
                                        materialEditor.TextureScaleOffsetProperty(_ReflectionMaskMatcap);
                                    }
                                }
                            }
                        }
                    }
                    showMatcapA4 = Moristyles.ShurikenCenterTextFoldout("Matcap4 <color=#ffffffff> [Mask = Alpha Channel] </color>", showMatcapA4);
                    if (showMatcapA4)
                    {
                        ShaderPropertyOptimizer(_MatcapA4Toggle, null, "Matcap Toggle", "Toggles the Matcap on or off");
                        if (_MatcapA4Toggle.floatValue == 1) // ON
                        {
                            ShaderPropertyOptimizer(_MatcapA4Mode, null, "Matcap Blending Mode", "Matcap Blending Mode");
                            ShaderPropertyOptimizer(_MatcapViewDir, null, "Matcap Projection", "Changes the Matcap Projection to either Xiexes Singularity or d4rkpl4y3rs Orthographic Projection Method, both have its pros and cons and neither is perfect so choose the one you like the best basically");
                            if (_MatcapA4Mode.floatValue == 0) // Matcap Multiply
                            {
                                material.SetFloat("_ReflectionA4Tint", 0f);
                                ShaderPropertyOptimizer(_IgnoreNormalsMatcap, null, "Ignore Normal Maps", "Forces the Matcap to Ignore Normal Maps for a smooth surface reflection");
                                ShaderPropertyOptimizer(_MatcapA4, _MatcapA4Color, "Matcap", "Matcap Texture");
                                ShaderPropertyOptimizer(_MatcapA4Blending, null, "Matcap Blending", "Matcap Blending, ");
                                ShaderPropertyOptimizer(_ReflectionA4Intensity, null, "Reflection Intensity", "controls the Intensity of the chosen Reflectiontype");
                                ShaderPropertyOptimizer(_MatcapA4smoothness, null, "Matcap smoothness", "Matcap smoothness, blurs the Matcap");
                                using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                                {
                                    materialEditor.TexturePropertySingleLine(new GUIContent("Reflection Mask", "Mask the Parts that you dont want to get affected by the Reflection."), _ReflectionMaskMatcap);
                                }
                                if (_AdvancedExperimentalToggle.floatValue == 1 || _AdvancedExperimentalToggle.floatValue == 2)
                                {
                                    ShaderPropertyOptimizer(_ReflectionMaskMatcapUVSwitch, null, "UV", "Switches the UV Channel on the upper Texture sample");
                                    using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                                    {
                                        materialEditor.TextureScaleOffsetProperty(_ReflectionMaskMatcap);
                                    }
                                }
                            }
                            else if (_MatcapA4Mode.floatValue != 0) // Matcap Add/Subtract
                            {
                                ShaderPropertyOptimizer(_IgnoreNormalsMatcap, null, "Ignore Normal Maps", "Forces the Matcap to Ignore Normal Maps for a smooth surface reflection");
                                ShaderPropertyOptimizer(_MatcapA4, _MatcapA4Color, "Matcap", "Matcap Texture");
                                ShaderPropertyOptimizer(_MatcapA4Blending, null, "Matcap Blending", "Matcap Blending, ");
                                ShaderPropertyOptimizer(_ReflectionA4Intensity, null, "Reflection Intensity", "controls the Intensity of the chosen Reflectiontype");
                                ShaderPropertyOptimizer(_ReflectionA4Tint, null, "Reflection Tint", "Reflection Tint to Main Texture");
                                ShaderPropertyOptimizer(_MatcapA4smoothness, null, "Matcap smoothness", "Matcap smoothness, blurs the Matcap");
                                using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                                {
                                    materialEditor.TexturePropertySingleLine(new GUIContent("Reflection Mask", "Mask the Parts that you dont want to get affected by the Reflection."), _ReflectionMaskMatcap);
                                }
                                if (_AdvancedExperimentalToggle.floatValue == 1 || _AdvancedExperimentalToggle.floatValue == 2)
                                {
                                    ShaderPropertyOptimizer(_ReflectionMaskMatcapUVSwitch, null, "UV", "Switches the UV Channel on the upper Texture sample");
                                    using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                                    {
                                        materialEditor.TextureScaleOffsetProperty(_ReflectionMaskMatcap);
                                    }
                                }
                            }
                        }
                    }
                    
                    Moristyles.PartingLine();
                    
                }
                showSpecular = Moristyles.ShurikenFoldout("Specular Highlights", showSpecular);
                    if (showSpecular)
                    {
                        ShaderPropertyOptimizer(_SpecularToggle, null, "Toggle Specular", "Specular On, Off");
                        if (_SpecularToggle.floatValue == 1) // On
                        {
                            ShaderPropertyOptimizer(_SpecularSetting, null, "Specular Control", "Toon, GGX or Anisotropic Specular");
                            ShaderPropertyOptimizer(_SpecShadowMaskVar, null, "Shadow Masking Variant", "Switches the Shadow masking Style or even deactivates the Shadow contribution");
                            if (_SpecShadowMaskVar.floatValue == 2)
                            {
                                ShaderPropertyOptimizer(_SpecShadowMaskPower, null, "Shadow Masking Power", "Controls how much the Shadow will contribute to the Specular Highlights");
                            }
                            if (_EnableGSAA.floatValue == 0)
                            {
                                ShaderPropertyOptimizer(_EnableGSAA, null, "Enable GSAA", "Enables or Disables the Geometric Specular Anti Aliasing Feature /nTHIS FEATURE HAS A PROFOUND VISUAL IMPACT");
                            }
                            if (_EnableGSAA.floatValue == 1)
                            {
                                
                                Moristyles.PartingLine();
                                
                                ShaderPropertyOptimizer(_EnableGSAA, null, "Enable GSAA", "Enables or Disables the Geometric Specular Anti Aliasing Feature /nTHIS FEATURE HAS A PROFOUND VISUAL IMPACT");
                                ShaderPropertyOptimizer(_GSAAVariance, null, "GSAA Variance", "Increases or lowers the Variance of the GSAA effect");
                                ShaderPropertyOptimizer(_GSAAThreshold, null, "GSAA Threshold", "Increases or lowers the Threshold of the GSAA effect");
                            }
                            
                            Moristyles.PartingLine();
                            
                            if (_SpecularSetting.floatValue == 0) // Toon
                            {
                                ShaderPropertyOptimizer(_SpecularMap, _SpecularColor, "Specular Map", "The Texture that tells the Specular Highlights where to render and where it shouldnt");
                                ShaderPropertyOptimizer(_SpecularTint, null, "Specular Tint", "Controls the Tint from Specular to Maintexture by multiplying the Speculars Color with the maintexture");
                                ShaderPropertyOptimizer(_HighlightOffset, null, "Specular Offset", "Offsets the Specular Range.");
                                ShaderPropertyOptimizer(_HighlightSmoothness, null, "Specular Smoothness", "Controls the smoothness factor of the Specular Highlight");
                                if (_AdvancedExperimentalToggle.floatValue == 1 || _AdvancedExperimentalToggle.floatValue == 2)
                                {
                                    
                                    Moristyles.PartingLine();
                                    
                                    ShaderPropertyOptimizer(_SpecularMapUVSwitch, null, "UV", "Switches the UV Channel on the upper Texture sample");
                                    using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                                    {
                                    }
                                }
                            }
                            else if (_SpecularSetting.floatValue == 1) // Standard
                            {
                                ShaderPropertyOptimizer(_SpecularMap, _SpecularColor, "Specular Map", "The Texture that tells the Specular Highlights where to render and where it shouldnt");
                                ShaderPropertyOptimizer(_SpecularTint, null, "Specular Tint", "Controls the Tint from Specular to Maintexture by multiplying the Speculars Color with the maintexture");
                                ShaderPropertyOptimizer(_HighlightSmoothness, null, "Specular Smoothness", "Controls the smoothness factor of the Specular Highlight");
                                if (_AdvancedExperimentalToggle.floatValue == 1 || _AdvancedExperimentalToggle.floatValue == 2)
                                {
                                    
                                    Moristyles.PartingLine();
                                    
                                    ShaderPropertyOptimizer(_SpecularMapUVSwitch, null, "UV", "Switches the UV Channel on the upper Texture sample");
                                    using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                                    {
                                        materialEditor.TextureScaleOffsetProperty(_SpecularMap);}
                                }
                            }
                            else if (_SpecularSetting.floatValue == 2) // Anisotropic by james Ohare
                            {
                                ShaderPropertyOptimizer(_SpecularMap, _SpecularColor, "Specular Map", "The Texture that tells the Specular Highlights where to render and where it shouldnt");
                                ShaderPropertyOptimizer(_AnisoSharpening, null, "Specular Sharpening", "This Toggle imitates a Toon Style.");
                                ShaderPropertyOptimizer(_SpecularTint, null, "Specular Tint", "Controls the Tint from Specular to Maintexture by multiplying the Speculars Color with the maintexture");
                                ShaderPropertyOptimizer(_AnisoScale, null, "Specular Scale", "Offsets the Anisotropic Specular Range. \nDefault settings for Anisotropic Hightlights is 0.5");
                                ShaderPropertyOptimizer(_HighlightOffset, null, "Specular Offset", "Offsets the Specular Range.");
                                ShaderPropertyOptimizer(_BlinntoAniso, null, "Blinn to Aniso", "if there is no Specular Map defined it will blend between blinn highlights and anisotropic highlights. Can be used to push the highlight towards or away from the centre point. \nDefault settings for Anisotropic Hightlights is 0.25");
                                if (_AdvancedExperimentalToggle.floatValue == 1 || _AdvancedExperimentalToggle.floatValue == 2)
                                {
                                    
                                    Moristyles.PartingLine();
                                    
                                    ShaderPropertyOptimizer(_SpecularMapUVSwitch, null, "UV", "Switches the UV Channel on the upper Texture sample");
                                    using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                                    {
                                        materialEditor.TextureScaleOffsetProperty(_SpecularMap);
                                    }
                                    
                                    Moristyles.PartingLine();
                                    
                                }
                                using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                                {
                                    materialEditor.TexturePropertySingleLine(new GUIContent("Aniso Direction", "Direction of the surface highlight. Follows the same directional values as a tangent space normal map."), _AnisoDir);
                                }
                                if (_AdvancedExperimentalToggle.floatValue == 1 || _AdvancedExperimentalToggle.floatValue == 2)
                                {
                                    ShaderPropertyOptimizer(_AnisoDirUVSwitch, null, "UV", "Switches the UV Channel on the upper Texture sample");
                                    using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                                    {
                                        materialEditor.TextureScaleOffsetProperty(_AnisoDir);
                                    }
                                }
                            }
                            else if (_SpecularSetting.floatValue == 3) // GGX Anisotropic
                            {
                                ShaderPropertyOptimizer(_SpecularMap, _SpecularColor, "Specular Map", "The Texture that tells the Specular Highlights where to render and where it shouldnt");
                                ShaderPropertyOptimizer(_AnisoF0Reflectance, null, "Metallic", "f0 reflectance = Metallic, increase this value to 1 if your Material is Metallic");
                                ShaderPropertyOptimizer(_HighlightSmoothness, null, "Specular Smoothness", "Controls the smoothness factor of the Specular Highlight");
                                ShaderPropertyOptimizer(_Anisotropy, null, "Anisotropy", "Offsets the Specular Range. \nDefault settings for Anisotropic Hightlights is -0.2");
                                ShaderPropertyOptimizer(_SpecularTint, null, "Specular Tint", "Controls the Tint from Specular to Maintexture by multiplying the Speculars Color with the maintexture");
                                ShaderPropertyOptimizer(_AnisoSharpening, null, "Specular Sharpening", "This Toggle imitates a Toon Style.");
                                ShaderPropertyOptimizer(_AnisoFlickerFix, null, "Flicker Fix", "This Property tries to fix the flickering issue on bad topology \n!!ONLY USE WHEN NEEDED!!");
                                if (_AdvancedExperimentalToggle.floatValue == 1 || _AdvancedExperimentalToggle.floatValue == 2)
                                {
                                    
                                    Moristyles.PartingLine();
                                    
                                    ShaderPropertyOptimizer(_SpecularMapUVSwitch, null, "UV", "Switches the UV Channel on the upper Texture sample");
                                    using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                                    {
                                        materialEditor.TextureScaleOffsetProperty(_SpecularMap);
                                    }
                                }
                            }
                        }
                    }
                showRimlight = Moristyles.ShurikenFoldout("Rimlight", showRimlight);
                {
                    if (showRimlight)
                    {
                        ShaderPropertyOptimizer(_RimToggle, null, "Toggle Rimlight", "Rimlight On, Off");
                        if (_RimToggle.floatValue == 1) // On
                        {
                            ShaderPropertyOptimizer(_RimDirectionToggle, null, "Toggle Direction", "Toggle for using either a Light based Direction or a Standard Fresnel Effect");
                            ShaderPropertyOptimizer(_RimFaceCulling, null, "Face Rendering", "Choose which Face to Render the Rim Light for");
                            ShaderPropertyOptimizer(_RimSpecToggle, null, "Indirect Spec Light", "Adds Indirect Specular Light into the Mix");
                            if (_RimSpecToggle.floatValue == 1)
                            {
                                ShaderPropertyOptimizer(_RimSpecLightsmoothness, null, "Indirect Spec Light smoothness", "makes you able to smoothen the Indirect Specular Light");
                                ShaderPropertyOptimizer(_RimOpacity, null, "Indirect Spec Strength", "Indirect Spec Light strength, Increases the strength of the Indirect Specular Light");
                            }
                            if (_RimDirectionToggle.floatValue == 1)
                            {
                                ShaderPropertyOptimizer(_RimFresnelBias, null, "Fresnel Bias", "This Value controls the Bias of the Fresnel Effect");
                                ShaderPropertyOptimizer(_RimFresnelScale, null, "Fresnel Scale", "This Value controls the Scale of the Fresnel Effect");
                                ShaderPropertyOptimizer(_RimFresnelPower, null, "Fresnel Power", "This Value controls the Power of the Fresnel Effect");
                            }
                            
                            Moristyles.PartingLine();
                            
                            ShaderPropertyOptimizer(_RimColor, null, "Color", "Rimlight Color");
                            using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                            {
                                materialEditor.TexturePropertySingleLine(new GUIContent("Rim Map", "The Texture that tells the Rim Light where to render and where it shouldnt"), _RimMask);
                            }
                            ShaderPropertyOptimizer(_RimLightMaskinv, null, "Invert Rim Map", "Inverts the Rim Light Map");
                            ShaderPropertyOptimizer(_RimTint, null, "Tint to Albedo", "Will multiply the Rimlight with the Maintexture");
                            if (_RimDirectionToggle.floatValue == 0)
                            {
                                ShaderPropertyOptimizer(_RimOffset, null, "Rim Offset", "Range of the Rim");
                                ShaderPropertyOptimizer(_RimPower, null, "Rim Power", "Threshold of the Rim");
                            }
                            if (_AdvancedExperimentalToggle.floatValue == 1 ||
                                _AdvancedExperimentalToggle.floatValue == 2)
                            {
                                
                                Moristyles.PartingLine();
                                
                                ShaderPropertyOptimizer(_RimMaskUVSwitch, null, "UV", "Switches the UV Channel on the upper Texture sample");
                                using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                                {
                                    materialEditor.TextureScaleOffsetProperty(_RimMask);
                                }
                            }
                        }
                    }
                }
                showSSS = Moristyles.ShurikenFoldout("Subsurface Scattering", showSSS);
                    if (showSSS)
                    {
                        ShaderPropertyOptimizer(_SSSToggle, null, "Toggle SSS", "Intensity of SSS (usually 0-1)");
                        if (_SSSToggle.floatValue == 1) // On
                        {
                            ShaderPropertyOptimizer(_SSSSetting, null, "SSS Control", "Light Controlled or Color Controlled");
                            if (_SSSSetting.floatValue != 0) // Color Based
                            {
                                ShaderPropertyOptimizer(_SSSColor, null, "Color", "SSS Color");
                            }
                            using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                            {
                                materialEditor.TexturePropertySingleLine(new GUIContent("SSS Map", "Specifies the thickness of the SSS and tells the Feature how much it should pass through on which point of the Mesh"), _SSSThicknessMap);
                            }
                            ShaderPropertyOptimizer(_SSSMapMode, null, "SSS Map Mode", "Switches the SSS Map from Color Information to Modification Data which means that the following Channel will be multiplied with the SSS properties \nRed Channel: Intensity\nGreen Channel: Power\nBlue Channel: Distortion");
                            ShaderPropertyOptimizer(_SSSThicknessinv, null, "Invert SSS Map", "Inverts the SSS Map");
                            ShaderPropertyOptimizer(_SSSTint, null, "Tint to Diffuse", "Tints/Multiplys the Subsurface Scattering effect with the Main Texture");
                            ShaderPropertyOptimizer(_SSSScale, null, "Intensity", "Intensity of SSS (usually 0-1)");
                            ShaderPropertyOptimizer(_SSSPower, null, "Power", "Threshold of SSS");
                            ShaderPropertyOptimizer(_SubsurfaceDistortionModifier, null, "Distortion", "Distortion Modifier of SSS (usually 0 for inlined or 1 for outlined");
                            if (_AdvancedExperimentalToggle.floatValue == 1 || _AdvancedExperimentalToggle.floatValue == 2)
                            {
                                
                                Moristyles.PartingLine();
                                
                                ShaderPropertyOptimizer(_SSSThicknessMapUVSwitch, null, "UV", "Switches the UV Channel on the upper Texture sample");
                                using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                                {
                                    materialEditor.TextureScaleOffsetProperty(_SSSThicknessMap);
                                }
                            }
                        }
                    }
            }
            
            Moristyles.PartingLine();
            
            showMiscellaneous = Moristyles.ShurikenFoldout("<color=#ffffffff>Miscellaneous</color>", showMiscellaneous);
            if (showMiscellaneous)
            {
                showMainTexHueShift = Moristyles.ShurikenCenterTextFoldout("Main Texture <color=#AA0000>H</color><color=#00AA00>U</color><color=#0000AA>E</color> Shift", showMainTexHueShift);
                    if (showMainTexHueShift)
                    {
                        ShaderPropertyOptimizer(_ToggleHueTexforSpeed, null, "Tex G Channel Speed", "makes you able to use the Hue Masks Green Channel for Speed, keep in mind that your Texture needs to be pin point correct or you will get artifacts ! meaning that your Texture should not have unexpected gradients nor will be affected by any sort of texture compression");
                        using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                        {
                            materialEditor.TexturePropertySingleLine(new GUIContent("Hue Mask", "Texture Mask for the Hue Effect (will only affect the Hue and not the Main Texture)"), _HueMask);
                        }
                        ShaderPropertyOptimizer(_HueMaskinverter, null, "Hue Mask inverter", "Inverts the Hue Mask");
                        ShaderPropertyOptimizer(_HueShiftblend, null, "Hue Shift blend", "Controls the Blending of the Main Texture to the Shift Operation");
                        ShaderPropertyOptimizer(_HueShiftSpeed, null, "Hue Shift Speed", "Controls the speed of the shift Operation");
                        ShaderPropertyOptimizer(_HueShiftRandomizer, null, "Hue Shift Offset", "Offsets Time by the given Value");
                        if (_AdvancedExperimentalToggle.floatValue == 1 || _AdvancedExperimentalToggle.floatValue == 2)
                        {
                            
                            Moristyles.PartingLine();
                            
                            ShaderPropertyOptimizer(_HueMaskUVSwitch, null, "UV", "Switches the UV Channel on the upper Texture sample");
                            using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                            {
                                materialEditor.TextureScaleOffsetProperty(_HueMask);
                            }
                        }
                    }
                    showShadowEmissiveRim = Moristyles.ShurikenCenterTextFoldout("Shadow / Emissive Rim", showShadowEmissiveRim);
                    if (showShadowEmissiveRim)
                    {
                        ShaderPropertyOptimizer(_RimSwitch, null, "Rim Mode", "Switches between a Shadow Rim and Emissive Rim Mode");
                        if (_RimSwitch.floatValue == 0)
                        {
                            ShaderPropertyOptimizer(_ShadowRimOpacity, null, "Rim Intensity", "Controls the amount of the Shadow Rim.");
                        }
                        else if (_RimSwitch.floatValue == 1)
                        {
                            material.SetFloat("_ShadowRimOpacity", 1f);
                            ShaderPropertyOptimizer(_EmissiveRimColor, null, "Rim Color", "The Color of the Emissive Rim");
                            ShaderPropertyOptimizer(_RimHueSpeed, null, "Hue Speed", "If the Rim Color is increased, the Hue Shift becomes visible. When the Hue Speed is at 0 then it becomes pure white so that the Hue Shift is disabled");
                        }
                        ShaderPropertyOptimizer(_ShadowRimRange, null, "Rim Range", "Controls the Range of the Shadow Rim.");
                        ShaderPropertyOptimizer(_ShadowRimSharpness, null, "Rim Sharpness", "Controls the sharpness/smoothness of the Shadow Rim.");
                    }
                showDither = Moristyles.ShurikenCenterTextFoldout("Dither", showDither);
                    if (showDither)
                    {
                        ShaderPropertyOptimizer(_DitherAlphaToggle, null, "Dither Method", "Switch between Surface Depth or Diffuse(MainTex) Alpha as source");
                        ShaderPropertyOptimizer(_DitherTextureToggle, null, "Activates a Texture Slot for you to use a Texture as Pattern for the Dither Effect", "Tooltip");
                        if (_DitherTextureToggle.floatValue == 1)
                        {
                            materialEditor.TexturePropertySingleLine(new GUIContent("Dither Pattern", "Lets you use a Texture Pattern for the Dither Effect"), _DitherTexture);
                            ShaderPropertyOptimizer(_DitherTextureTiling, null, "Texture Tiling", "Tiles the Dither Texture");
                        }
                        ShaderPropertyOptimizer(_StartDitheringFade, null, "Start Dithering Fade", "Controls the Dither Range from where to Start to Dither, so by setting this value to 1 the effect will start after having the Camera 1 Meter away from the Mesh");
                        ShaderPropertyOptimizer(_EndDitheringFade, null, "End Dithering Fade", "Controls the Dither Range from where to End to Dither, so by setting this value to 1 the effect will start before/inside a Camera Range between 0 and 1 apart from the Mesh");
                        if (_DitherAlphaToggle.floatValue == 0)
                        {
                            using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                            {
                                materialEditor.TexturePropertySingleLine(new GUIContent("Dither Mask", "Lets you use decide where to draw(value = 1) or not to draw(value = 0) the Dither Effect"), _DitherMask);
                            }
                            if (_AdvancedExperimentalToggle.floatValue == 1 || _AdvancedExperimentalToggle.floatValue == 2)
                            {
                                
                                Moristyles.PartingLine();
                                
                                ShaderPropertyOptimizer(_DitherMaskUVSwitch, null, "UV", "Switches the UV Channel on the upper Texture sample");
                                using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                                {
                                    materialEditor.TextureScaleOffsetProperty(_DitherMask);
                                }
                            }
                        }
                    }
                showDissolve = Moristyles.ShurikenCenterTextFoldout("Dissolve", showDissolve);
                if (showDissolve)
                {
                    ShaderPropertyOptimizer(_DissolveModifier, null, "Dissolve Modifier", "This is the actual Dissolving effect which will dissolve the parts that are defined in the (Main Dissolve Mask or via Vertex Colors) keep in mind that the Colors strength needs to be above the Mask Clip Value which is 0.5 so everything with a Color strength under 50% will not be visible and everything above 50% will be visible.\nLOWERING THIS SETTING ONCE BELOW 1 WILL ACTIVATE THE IGNOREPROJECTOR TAG IN THE RENDERING OPTIONS SECTION AND WILL NOT AUTOMATICALLY SWITCH BACK TO DEFAULT STATE AFTERWARDS");
                    if (_DissolveModifier.floatValue == -1)
                    {
                        ShaderPropertyOptimizer(_DissolveRemapMin, null, "Remap Min", "Remaps the boundaries for the Dissolve and Materialize effect. \nSet this Value to the point where you cannot see your mesh anymore + a little extra");
                    }
                    else if (_DissolveModifier.floatValue == 1)
                    {
                        ShaderPropertyOptimizer(_DissolveRemapMax, null, "Remap Max", "Remaps the boundaries for the Dissolve and Materialize effect. \nSet this Value to the point where you can see your entire Mesh + a little extra");
                    }
                    if (_MaterializeVertexColor.floatValue == 0)
                    {
                        using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                        {
                            materialEditor.TexturePropertySingleLine(new GUIContent("Main Dissolve Mask", "This is The Base Texture which defines the main parts and can be used to dissolve certain parts of your model or your entire model(by default when there is no texture defined)"), _DissolveMask);
                        }
                    }
                    
                    Moristyles.PartingLine();
                    
                    ShaderPropertyOptimizer(_DissolveDensity, null, "Effect Density", "Lets you choose how dense the effect of the Pattern will be. The lower the Value the more dense the effect will be");
                    using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                    {
                        materialEditor.TexturePropertySingleLine(new GUIContent("Effect Pattern", "Lets you use a Texture Pattern for the Dissolve/Materialize Effect"), _DissolvePattern);
                    }
                    ShaderPropertyOptimizer(_DissolvePatternUVSwitch, null, "UV", "Switches the UV Channel on the upper Texture sample");
                    using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                    {
                        materialEditor.TextureScaleOffsetProperty(_DissolvePattern);
                    }
                    
                    Moristyles.PartingLine();
                    
                    ShaderPropertyOptimizer(_MaterializeLayerModeR, null, "Layer Mode Red", "This controls how the Color Layers interact with each other \nSeparate = each Layer Separated \nMerged = Merge from 0 - 100 \nReverse Merged = Merge from 100 - 0");
                    ShaderPropertyOptimizer(_MaterializeColorLayerR, null, "Color Layer Red", "This setting will change the Layer you are working on, depending on the Color Intensity. \nFor Example if you paint an Object with .65% Red then you can switch to Layer 65 and work with it there. (Max = 100)");
                    ShaderPropertyOptimizer(_MaterializeR, null, "Materialize R", "This is the Materialize Slider which lets you reappear parts of your Mesh which are defined in the \n(Materialize Texture RED CHANNEL)");
                    
                    Moristyles.PartingLine();
                    
                    ShaderPropertyOptimizer(_MaterializeLayerModeG, null, "Layer Mode Green", "This controls how the Color Layers interact with each other \nSeparate = each Layer Separated \nMerged = Merge from 0 - 100 \nReverse Merged = Merge from 100 - 0");
                    ShaderPropertyOptimizer(_MaterializeColorLayerG, null, "Color Layer Green", "This setting will change the Layer you are working on, depending on the Color Intensity. \nFor Example if you paint an Object with .65% Red then you can switch to Layer 65 and work with it there. (Max = 100)");
                    ShaderPropertyOptimizer(_MaterializeG, null, "Materialize G", "This is the Materialize Slider which lets you reappear parts of your Mesh which are defined in the \n(Materialize Texture GREEN CHANNEL)");
                    
                    Moristyles.PartingLine();
                    
                    ShaderPropertyOptimizer(_MaterializeLayerModeB, null, "Layer Mode Blue", "This controls how the Color Layers interact with each other \nSeparate = each Layer Separated \nMerged = Merge from 0 - 100 \nReverse Merged = Merge from 100 - 0");
                    ShaderPropertyOptimizer(_MaterializeColorLayerB, null, "Color Layer Blue", "This setting will change the Layer you are working on, depending on the Color Intensity. \nFor Example if you paint an Object with .65% Red then you can switch to Layer 65 and work with it there. (Max = 100)");
                    ShaderPropertyOptimizer(_MaterializeB, null, "Materialize B", "This is the Materialize Slider which lets you reappear parts of your Mesh which are defined in the \n(Materialize Texture BLUE CHANNEL)");
                    
                    Moristyles.PartingLine();
                    
                    ShaderPropertyOptimizer(_MaterializeLayerModeA, null, "Layer Mode Alpha", "This controls how the Color Layers interact with each other \nSeparate = each Layer Separated \nMerged = Merge from 0 - 100 \nReverse Merged = Merge from 100 - 0");
                    ShaderPropertyOptimizer(_MaterializeColorLayerA, null, "Color Layer Alpha", "This setting will change the Layer you are working on, depending on the Color Intensity. \nFor Example if you paint an Object with .65% Red then you can switch to Layer 65 and work with it there. (Max = 100)");
                    ShaderPropertyOptimizer(_MaterializeA, null, "Materialize A", "This is the Materialize Slider which lets you reappear parts of your Mesh which are defined in the \n(Materialize Texture ALPHA CHANNEL)");
                    if (_MaterializeVertexColor.floatValue == 0)
                    {
                        using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                        {
                            materialEditor.TexturePropertySingleLine(new GUIContent("Materialize Texture", "This is The Materialize Texture which defines the secondary parts to lerp to which is separated in R, G, B Channels and there Sliders"), _MaterializeTex);
                        }
                    }
                    Moristyles.PartingLine();
                    
                    ShaderPropertyOptimizer(_ToggleDissolveDirInv, null, "Dissolve direction inverter", "This lets you invert the direction for the \n(Main Dissolve Mask)");
                    ShaderPropertyOptimizer(_ToggleMaterializeDirInv, null, "Materialize direction inverter", "This lets you invert the direction for the \n(Materialize Texture R,G,B CHANNEL)");
                    
                    Moristyles.PartingLine();
                    
                    ShaderPropertyOptimizer(_MaterializeVertexColor, null, "Use Vertex Colors", "Replaces the Materialize Texture and the Main Dissolve Mask with Vertex Colors. \nIN ADDITION TO THE MAIN DISSOLVE MASK YOU CAN DEFINE PARTS THAT SHOULD NOT BE DISSOLVED BY PAINTING THEM PURE WHITE RGB(1, 1, 1)");
                    ShaderPropertyOptimizer(_ToggleDissolveEmission, null, "Toggle Emissive Effect", "Activates a Emissive Effect for Dissolve and Materializing");
                    if (_ToggleDissolveEmission.floatValue == 1)
                    {
                        ShaderPropertyOptimizer(_EmissiveDissolveColor, null, "Emissive Color", "The Color for the Emissive Effect");
                    }
                    ShaderPropertyOptimizer(_ToggleDissolveVertexOffset, null, "Toggle Vertex Effect", "Activates a Vertex Offset Effect for Dissolve and Materializing");
                    if (_ToggleDissolveVertexOffset.floatValue == 1)
                    {
                        ShaderPropertyOptimizer(_DissolveVertexMultiplier, null, "Vertex Multiplier", "Increases the effect of the Vertex Normal multiplication");
                    }
                }
                // FOR ADVANCED ONLY
                if (_COLORCOLOR.floatValue == 1)
                {
                    showEmissionScroll = Moristyles.ShurikenCenterTextFoldout("EmissionScroll", showEmissionScroll);
                    if (showEmissionScroll)
                    {
                        ShaderPropertyOptimizer(_EmissionScrollToggle, null, "Toggle EmissionScroll", "Emission Scroll On, Off");
                        if (_EmissionScrollToggle.floatValue == 1) // V1
                        {
                            ShaderPropertyOptimizer(_Emissionscroll, _EmissionscrollColor, "Emission Scroll Texture", "The Main Texture for the Emission Scroll system");
                            ShaderPropertyOptimizer(_EmissionscrollUVSwitch, null, "UV", "Switches the UV Channel on the upper Texture sample");
                            using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                            {
                                materialEditor.TextureScaleOffsetProperty(_Emissionscroll);
                            }
                            ShaderPropertyOptimizer(_Emiossionscrollspeed, null, "Scroll speed", "Controls the scroll speed of the Emission Scroll Texture");
                            ShaderPropertyOptimizer(_VectorXY, null, "Vector X,Y", "The Vector for the Scroll Texture");
                            
                            Moristyles.PartingLine();
                            
                            using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                            {
                                materialEditor.TexturePropertySingleLine(new GUIContent("Noise Texture", "The Noise Texture for the Emission Scroll system"), _NoiseTexture);
                            }
                            ShaderPropertyOptimizer(_NoiseTextureUVSwitch, null, "UV", "Switches the UV Channel on the upper Texture sample");
                            using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                            {
                                materialEditor.TextureScaleOffsetProperty(_NoiseTexture);
                            }
                            ShaderPropertyOptimizer(_NoiseSpeed, null, "Noise speed", "Controls the scrolling speed of the Noise Texture");
                            ShaderPropertyOptimizer(_NoiseVectorXY, null, "Noise Vector X,Y", "The Vector for the Noise Texture");
                            
                            Moristyles.PartingLine();
                            
                            using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                            {
                                materialEditor.TexturePropertySingleLine(new GUIContent("Mask", "Mask the Parts that you dont want to get affected by the Emission Scroll Texture."), _EmissionScrollMask);
                            }
                            ShaderPropertyOptimizer(_EmissionScrollMaskUVSwitch, null, "UV", "Switches the UV Channel on the upper Texture sample");
                            using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                            {
                                materialEditor.TextureScaleOffsetProperty(_EmissionScrollMask);
                            }
                        }
                        else if (_EmissionScrollToggle.floatValue == 2) // V2
                        {
                            if (_AudioLinkSwitch.floatValue > 0) //AudioLInk Tooltip
                            {
                                materialEditor.ShaderProperty(_AudioLinkTooltip, new GUIContent("Info: Some Properties from ESV2 wont work for AudioLink\nProperties for AudioLink:\nTint\nScroll speed\nScroll Offset\nCoordinates X,Y\nMask Red Channel = Bands\nMask Green Channel = Waveform", ""));
                            }
                            ShaderPropertyOptimizer(_IgnoreNormalsESv2, null, "Ignore Normal Maps", "Forces the Emission Scroll to Ignore Normal Maps for a smooth outcome");
                            using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                            {
                                materialEditor.ShaderProperty(_ESRenderMethod, new GUIContent("Render Method", "Controls the Rendermethod the Lines are rendered on Screen")); // this property causes Voronoi to break in Animated state so there is none for it.
                            }
                            material.SetInt("_ESRenderMethodAnimated", 1); // this property causes Voronoi to break in Animated state so there is none for it.
                            if (_ESRenderMethod.floatValue == 3)
                            {
                                ShaderPropertyOptimizer(_ESVoronoiScale, null, "Voronoi Scale", "Controls the Size of the lines");
                                ShaderPropertyOptimizer(_ESVoronoiSpeed, null, "Voronoi Speed", "Controls the Speed of the lines");
                            }
                            ShaderPropertyOptimizer(_AudioLinkSwitch, null, "AudioLink Mode", "Uses a Global _AudioTexture which can be provided by a World to synchronise with your Mesh");
                            if (_AudioLinkSwitch.floatValue > 0) //AudioLink General
                            {
                                ShaderPropertyOptimizer(_AudioHueSpeed, null, "Audio Hue Speed", "Controls the speed of the Hue shift Operation");
                                ShaderPropertyOptimizer(_AudioLinkColor, null, "Audio Color", "Controls the Color of the AudioLink effect");
                            }
                            if (_AudioLinkSwitch.floatValue == 1 || _AudioLinkSwitch.floatValue == 3) // AudioLink Bands
                            {
                                ShaderPropertyOptimizer(_AudioLinkBandHistory, null, "Audio Band History", "Since AudioLink v2 has a max History of 128 texels but v1 just 32 you could just use 32 here(only controls v2) and have v1 and v2 being seemingly equal, otherwise you can just go up to 128 for Worlds that support v2 instead of v1");
                                ShaderPropertyOptimizer(_AudioBandIntensity, null, "Audio Band Intensity 0,1,2,3", "gives you control over each Band to set its Intensity starting from low(Bass) to higher frequencies. The way the _AudioTexture is used here is by laying each channel on top of each other instead of sampling each channel separately next to each other");
                            }
                            if (_AudioLinkSwitch.floatValue == 2 || _AudioLinkSwitch.floatValue == 3) //AudioLink Waveform
                            {
                                ShaderPropertyOptimizer(_AudioLinkWaveformMirrorToggle, null, "Audio Waveform Mode", "Mirrors the Waveform");
                                if (_AudioLinkWaveformMirrorToggle.floatValue < 2)
                                {
                                    ShaderPropertyOptimizer(_WaveformThickness, null, "Waveform Thickness", "thickens or makes the Waveform thinner");
                                }
                                ShaderPropertyOptimizer(_WaveformRotation, null, "Audio Waveform Rotation", "Rotates the Waveform");
                                ShaderPropertyOptimizer(_WaveformCoordinates, null, "Audio Waveform Tiling Offset", ".xy = Tiling\n.zw = Offset");
                            }
                            if (_AudioLinkSwitch.floatValue > 0)
                            {
                                
                                Moristyles.PartingLine();
                                
                            }
                            ShaderPropertyOptimizer(_EmissionscrollTint, null, "Tint", "Controls the tint to Maintex of the Emissionscroll V2 lines");
                            ShaderPropertyOptimizer(_EmissionscrollColor, null, "Color", "Controls the Color of the Emissionscroll V2 lines\nNOTE that this property does not affect AudioLink and will solely drive the Emissionscroll effect");
                            ShaderPropertyOptimizer(_ESSize, null, "Size", "Controls the size of the lines\nNOTE that this property does not affect AudioLink and will solely drive the Emissionscroll effect");
                            ShaderPropertyOptimizer(_ESSharpness, null, "Sharpness", "Controls the sharpness of the lines\nNOTE that this property does not affect AudioLink and will solely drive the Emissionscroll effect");
                            ShaderPropertyOptimizer(_ESLevelOffset, null, "Level Offset", "Offsets the Lines slightly\nThis property should theoretically not be lowered below 0 but its left in for if you want to have a pulse only effect when set to -1");
                            ShaderPropertyOptimizer(_ESSpeed, null, "Scroll speed", "Controls the scroll speed of the Emission Scroll lines");
                            //note might need to have a animated???
                            using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                            {
                                materialEditor.ShaderProperty(_ESScrollOffset, new GUIContent("Scroll Offset", "Offsets the Lines"));
                            }
                            ShaderPropertyOptimizer(_ESCoordinates, null, "Coordinates X,Y", "Controls the coordinates of the scrolling lines");
                            using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                            {
                                materialEditor.TexturePropertySingleLine(new GUIContent("Mask", "Mask the Parts that you dont want to get affected by the Emission Scroll Texture."), _EmissionScrollMask);
                            }
                            ShaderPropertyOptimizer(_EmissionScrollMaskUVSwitch, null, "UV", "Switches the UV Channel on the upper Texture sample");
                            using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                            {
                                materialEditor.TextureScaleOffsetProperty(_EmissionScrollMask);
                            }
                        }
                    }
                    showFlipbook = Moristyles.ShurikenCenterTextFoldout("Flipbook", showFlipbook);
                        if (showFlipbook)
                        {
                            ShaderPropertyOptimizer(_FlipbookToggle, null, "Toggle Flipbook", "Flipbook On, Off");
                            if (_FlipbookToggle.floatValue == 1) // On
                            {
                                ShaderPropertyOptimizer(_Flipbook, _FlipbookColor, "Flipbook", "The Texture for the Flipbook. Sprite Sheets are normally used for that");
                                using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                                {
                                    materialEditor.TextureScaleOffsetProperty(_Flipbook);
                                }
                                ShaderPropertyOptimizer(_FlipbookTint, null, "Tint to Diffuse", "Multiplies the Flipbook with the Main Texture");
                                
                                Moristyles.PartingLine();
                                
                                ShaderPropertyOptimizer(_Columns, null, "Columns", "The Amount of Columns");
                                ShaderPropertyOptimizer(_Rows, null, "Rows", "The Amount of Rows");
                                ShaderPropertyOptimizer(_MaxFrames, null, "Max Frames", "The Amount of Maximum Frames in the Sprite Sheet");
                                ShaderPropertyOptimizer(_Speed, null, "Speed", "Defines the speed that the Flipbook is playing as");
                                ShaderPropertyOptimizer(_RotateFlipbook, null, "Rotate", "Rotates the Flipbook");
                            }
                        }
                }
            }
            // Rendering Options
            showRenderingOptions = Moristyles.ShurikenFoldout("Rendering Options", showRenderingOptions);
            if (showRenderingOptions)
            {
                materialEditor.ShaderProperty(_RenderingMode, new GUIContent("Rendering Mode", "This Setting will control the MainTex Transparency/Alpha Channel and how it will contribute to the Shader \nOpaque = no contribution \nFade = Premultiply with Light and Features \nTransparent = Premultiply with Light Only"));
                
                Moristyles.PartingLine();
                
                Moristyles.ShurikenHeaderCentered("Blend Options");
                materialEditor.ShaderProperty(_SourceBlendRGB, new GUIContent("Source Blend RGB", ""));
                materialEditor.ShaderProperty(_DestinationBlendRGB, new GUIContent("Destination Blend RGB", ""));
                materialEditor.ShaderProperty(_BlendOpRGB, new GUIContent("Blend Op RGB", ""));
                
                Moristyles.PartingLine();
                
                if (_AdvancedExperimentalToggle.floatValue == 1 || _AdvancedExperimentalToggle.floatValue == 2)
                {
                    materialEditor.ShaderProperty(_SourceBlendAlpha, new GUIContent("Source Blend Alpha", ""));
                    materialEditor.ShaderProperty(_DestinationBlendAlpha, new GUIContent("Destination Blend Alpha", ""));
                    materialEditor.ShaderProperty(_BlendOpAlpha, new GUIContent("Blend Op Alpha", ""));
                    
                    Moristyles.PartingLine();
                    
                }
                materialEditor.ShaderProperty(_CullMode, new GUIContent("Culling Mode", "Changes the culling mode. 'Off' will result in a two sided material, while 'Front' and 'Back' will cull those sides respectively"));
                materialEditor.ShaderProperty(_MaskClipValue, new GUIContent("Mask Clip Value", ""));
                materialEditor.ShaderProperty(_AlphatoCoverage, new GUIContent("Alpha to Coverage", ""));
                if (isOpaque || isCutout || isOutlined)
                {
                    if (_ShaderOptimizerEnabled.floatValue == 1)
                        EditorGUI.BeginDisabledGroup(true);
                    {
                        materialEditor.ShaderProperty(_IgnoreProjector, new GUIContent("Ignore Projector", "This value is automatically set to true if Dissolve is active and will be activated after Shader locking and not editable after locking"));
                    }
                    EditorGUI.EndDisabledGroup();
                    if (_DissolveModifier.floatValue != 1)
                    {
                        material.SetInt("_IgnoreProjector", 1);
                    }
                }
                if (_AdvancedExperimentalToggle.floatValue == 1 || _AdvancedExperimentalToggle.floatValue == 2)
                {
                    materialEditor.ShaderProperty(_ColorMask, new GUIContent("Color Mask", ""));
                }
                
                Moristyles.PartingLine();
                
                if (_AdvancedExperimentalToggle.floatValue == 1 || _AdvancedExperimentalToggle.floatValue == 2)
                {
                    Moristyles.ShurikenHeaderCentered("Stencil Options");
                    materialEditor.ShaderProperty(_StencilBufferReference, new GUIContent("Stencil Buffer Reference", ""));
                    materialEditor.ShaderProperty(_StencilBufferReadMask, new GUIContent("Stencil Buffer Read Mask", ""));
                    materialEditor.ShaderProperty(_StencilBufferWriteMask, new GUIContent("Stencil Buffer Write Mask", ""));
                    materialEditor.ShaderProperty(_StencilBufferComparison, new GUIContent("Stencil Buffer Comparison", ""));
                    materialEditor.ShaderProperty(_StencilBufferPassFront, new GUIContent("Stencil Buffer Pass Front", ""));
                    materialEditor.ShaderProperty(_StencilBufferFailFront, new GUIContent("Stencil Buffer Fail Front", ""));
                    materialEditor.ShaderProperty(_StencilBufferZFailFront, new GUIContent("Stencil Buffer ZFail Front", ""));
                    
                    Moristyles.PartingLine();
                    
                }
                Moristyles.ShurikenHeaderCentered("Depth Options");
                materialEditor.ShaderProperty(_ZWriteMode, new GUIContent("ZWrite Mode", ""));
                materialEditor.ShaderProperty(_ZTestMode, new GUIContent("ZTest Mode", ""));
                if (_AdvancedExperimentalToggle.floatValue == 1 || _AdvancedExperimentalToggle.floatValue == 2)
                {
                    materialEditor.ShaderProperty(_DepthOffsetFactor, new GUIContent("Depth Offset Factor", ""));
                    materialEditor.ShaderProperty(_DepthOffsetUnits, new GUIContent("Depth Offset Units", ""));
                }
                
                Moristyles.PartingLine();
                
            }
            materialEditor.RenderQueueField();
        }
        Moristyles.DrawButtons();
        void ShaderPropertyOptimizer(MaterialProperty firstProperty, MaterialProperty secondProperty, String label, string toolTip)
        {
            var style = new GUIStyle(GUI.skin.button);
            GUILayout.BeginHorizontal();
            //Setup automated Animated Property assignment, if first porperty is not a texture and second property is null then use first property
            //If second property does exist then use it instead. This extra check only handles TexturePropertySingleLine and !!!!!!!!!does not include two Animated properties in the same Line!!!!!!!!!
            //Two Animated Properties in the same Line WONT WORK
            string Dummy = "_Dummy";
            string animatedProperty = Dummy;
            if (secondProperty != null)
            {
                animatedProperty = secondProperty.name + "Animated";
            }
            if (firstProperty != null && secondProperty == null && firstProperty.type != MaterialProperty.PropType.Texture)
            {
                animatedProperty = firstProperty.name + "Animated";
            }
            using (new EditorGUI.DisabledScope((material.GetInt(animatedProperty) == 0) && _ShaderOptimizerEnabled.floatValue == 1))
            {
                {
                    //sets if its a single line property or not.
                    if (secondProperty == null)
                    {
                        materialEditor.ShaderProperty(firstProperty, new GUIContent(label, toolTip));
                    }
                    else
                    {
                        materialEditor.TexturePropertySingleLine(new GUIContent(label, toolTip), firstProperty, secondProperty);
                    }
                }
                using (new EditorGUI.DisabledScope(_ShaderOptimizerEnabled.floatValue == 1))
                {
                    {
                        //Sets the checkmark based on if the animated property is set or not
                        if (material.GetInt(animatedProperty) == 0)
                        {
                            style.normal.textColor = Color.black;
                            style.normal.background = Texture2D.redTexture;
                        }
                        else
                        {
                            style.normal.textColor = Color.red;
                            style.normal.background = Texture2D.whiteTexture;
                        }
                        //Styleing and trigger for Toggle button
                        if (GUILayout.Button("﹡", style, GUILayout.Width(20)))
                        {
                            if (material.GetInt(animatedProperty) == 0)
                            {
                                material.SetInt(animatedProperty, 1);
                            }
                            else
                            {
                                material.SetInt(animatedProperty, 0);
                            }
                        }
                    }
                }
                GUILayout.EndHorizontal(); 
            }
        }
    }
    public static void ShaderOptimizerButton(MaterialProperty shaderOptimizer, MaterialEditor materialEditor)
    {
        if (materialEditor.targets.Length == 1)
        {
            EditorGUI.BeginChangeCheck();
            if (shaderOptimizer.floatValue == 0)
            {
                GUILayout.Button("Lock in optimized Shader");
            }
            else GUILayout.Button("Unlock from optimized Shader");
            if (EditorGUI.EndChangeCheck())
            {
                shaderOptimizer.floatValue = shaderOptimizer.floatValue == 1 ? 0 : 1;
                if (shaderOptimizer.floatValue == 1)
                {
                    foreach (Material m in materialEditor.targets)
                    {
                        MaterialProperty[] props = MaterialEditor.GetMaterialProperties(new UnityEngine.Object[] { m });
                        if (!ShaderOptimizer.Lock(m, props))
                            m.SetFloat(shaderOptimizer.name, 0);
                    }
                }
                else
                {
                    foreach (Material m in materialEditor.targets)
                        if (!ShaderOptimizer.Unlock(m))
                            m.SetFloat(shaderOptimizer.name, 1);
                }
            }
            EditorGUILayout.Space(4);
        }
    }
}