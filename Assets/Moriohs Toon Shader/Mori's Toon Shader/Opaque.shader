// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Moriohs Shaders/Moris Toon Shader/Opaque"
{
	Properties
	{
		[ShaderOptimizerLockButton]_ShaderOptimizerEnabled("Shader Optimizer Enabled", Float) = 0
		[ToggleUI]_FlipbookTintAnimated("_FlipbookTint", Int) = 0
		[ToggleUI]_OptimizerExcludeFlipbook("OptimizerExcludeFlipbook", Int) = 0
		[ToggleUI]_RotateFlipbookAnimated("_RotateFlipbook", Int) = 0
		[ToggleUI]_ColumnsAnimated("_Columns", Int) = 0
		[ToggleUI]_RowsAnimated("_Rows", Int) = 0
		[ToggleUI]_SpeedAnimated("_Speed", Int) = 0
		[ToggleUI]_MaxFramesAnimated("_MaxFrames", Int) = 0
		[ToggleUI]_FlipbookToggleAnimated("_FlipbookToggle", Int) = 0
		[ToggleUI]_FlipbookColorAnimated("_FlipbookColor", Int) = 0
		[HDR]_FlipbookColor("FlipbookColor", Color) = (1,1,1,1)
		_RotateFlipbook("Rotate Flipbook", Range( -1 , 1)) = 0
		_Speed("Speed", Int) = 6
		_Columns("Columns", Int) = 0
		_Rows("Rows", Int) = 0
		_MaxFrames("Max Frames", Int) = 1
		_Flipbook("Flipbook", 2D) = "black" {}
		_FlipbookTint("Flipbook Tint", Range( 0 , 1)) = 0
		_MatcapR1("MatcapR1", 2D) = "white" {}
		_MatcapG2("MatcapG2", 2D) = "white" {}
		_MatcapB3("MatcapB3", 2D) = "white" {}
		_MatcapA4("MatcapA4", 2D) = "white" {}
		[ToggleUI]_MatcapG2smoothnessAnimated("_MatcapG2smoothness", Int) = 0
		[ToggleUI]_ReflectionR1TintAnimated("_ReflectionR1Tint", Int) = 0
		[ToggleUI]_MatcapG2ModeAnimated("_MatcapG2Mode", Int) = 0
		[ToggleUI]_MatcapR1smoothnessAnimated("_MatcapR1smoothness", Int) = 0
		[ToggleUI]_MatcapB3ColorAnimated("_MatcapB3Color", Int) = 0
		[ToggleUI]_MatcapA4ModeAnimated("_MatcapA4Mode", Int) = 0
		[ToggleUI]_MatcapB3smoothnessAnimated("_MatcapB3smoothness", Int) = 0
		[ToggleUI]_MatcapA4ToggleAnimated("_MatcapA4Toggle", Int) = 0
		[ToggleUI]_ReflectionA4TintAnimated("_ReflectionA4Tint", Int) = 0
		[ToggleUI]_ReflectionG2IntensityAnimated("_ReflectionG2Intensity", Int) = 0
		[ToggleUI]_MatcapB3ToggleAnimated("_MatcapB3Toggle", Int) = 0
		[ToggleUI]_MatcapA4smoothnessAnimated("_MatcapA4smoothness", Int) = 0
		[ToggleUI]_MatcapG2ColorAnimated("_MatcapG2Color", Int) = 0
		[ToggleUI]_ReflectionR1IntensityAnimated("_ReflectionR1Intensity", Int) = 0
		[ToggleUI]_MatcapViewDirAnimated("_MatcapViewDir", Int) = 0
		[ToggleUI]_MatcapA4BlendingAnimated("_MatcapA4Blending", Int) = 0
		[ToggleUI]_MatcapR1BlendingAnimated("_MatcapR1Blending", Int) = 0
		[ToggleUI]_MatcapB3ModeAnimated("_MatcapB3Mode", Int) = 0
		[ToggleUI]_ReflectionA4IntensityAnimated("_ReflectionA4Intensity", Int) = 0
		[ToggleUI]_ReflectionG2TintAnimated("_ReflectionG2Tint", Int) = 0
		[ToggleUI]_MatcapG2BlendingAnimated("_MatcapG2Blending", Int) = 0
		[ToggleUI]_ReflectionB3IntensityAnimated("_ReflectionB3Intensity", Int) = 0
		[ToggleUI]_MatcapG2ToggleAnimated("_MatcapG2Toggle", Int) = 0
		[ToggleUI]_ReflectionB3TintAnimated("_ReflectionB3Tint", Int) = 0
		[ToggleUI]_IgnoreNormalsMatcapAnimated("_IgnoreNormalsMatcap", Int) = 0
		[ToggleUI]_OptimizerExcludeMatcap("OptimizerExcludeMatcap", Int) = 0
		[ToggleUI]_MatcapR1ModeAnimated("_MatcapR1Mode", Int) = 0
		[ToggleUI]_MatcapR1ColorAnimated("_MatcapR1Color", Int) = 0
		[ToggleUI]_MatcapB3BlendingAnimated("_MatcapB3Blending", Int) = 0
		[ToggleUI]_MatcapR1ToggleAnimated("_MatcapR1Toggle", Int) = 0
		[ToggleUI]_MatcapA4ColorAnimated("_MatcapA4Color", Int) = 0
		_MatcapG2smoothness("MatcapG2smoothness", Range( 0 , 1)) = 1
		_MatcapA4smoothness("MatcapA4smoothness", Range( 0 , 1)) = 1
		_MatcapR1smoothness("MatcapR1smoothness", Range( 0 , 1)) = 1
		_MatcapB3smoothness("MatcapB3smoothness", Range( 0 , 1)) = 1
		_MatcapB3Blending("MatcapB3Blending", Range( 0 , 1)) = 1
		_MatcapR1Blending("MatcapR1Blending", Range( 0 , 1)) = 1
		_MatcapG2Blending("MatcapG2Blending", Range( 0 , 1)) = 1
		_MatcapA4Blending("MatcapA4Blending", Range( 0 , 1)) = 1
		_ReflectionG2Tint("ReflectionG2Tint", Range( 0 , 1)) = 0
		_ReflectionR1Tint("ReflectionR1Tint", Range( 0 , 1)) = 0
		_ReflectionB3Tint("ReflectionB3Tint", Range( 0 , 1)) = 0
		_ReflectionA4Tint("ReflectionA4Tint", Range( 0 , 1)) = 0
		_ReflectionR1Intensity("ReflectionR1Intensity", Range( 0 , 5)) = 1
		_ReflectionB3Intensity("ReflectionB3Intensity", Range( 0 , 5)) = 1
		_ReflectionG2Intensity("ReflectionG2Intensity", Range( 0 , 5)) = 1
		_ReflectionA4Intensity("ReflectionA4Intensity", Range( 0 , 5)) = 1
		_MatcapG2Color("MatcapG2Color", Color) = (1,1,1,1)
		_MatcapA4Color("MatcapA4Color", Color) = (1,1,1,1)
		_MatcapR1Color("MatcapR1Color", Color) = (1,1,1,1)
		_MatcapB3Color("MatcapB3Color", Color) = (1,1,1,1)
		_ReflectionMaskMatcap("Reflection Mask Matcap", 2D) = "white" {}
		[ToggleUI]_IgnoreNormalsMatcap("Ignore Normals Matcap", Float) = 0
		[Enum(Multiply,0,Add,1,Subtract,2)]_MatcapG2Mode("MatcapG2Mode", Float) = 0
		[Enum(Multiply,0,Add,1,Subtract,2)]_MatcapA4Mode("MatcapA4Mode", Float) = 0
		[Enum(Multiply,0,Add,1,Subtract,2)]_MatcapB3Mode("MatcapB3Mode", Float) = 0
		[Enum(Multiply,0,Add,1,Subtract,2)]_MatcapR1Mode("MatcapR1Mode", Float) = 0
		[ToggleUI]_MatcapR1Toggle("MatcapR1Toggle", Int) = 0
		[ToggleUI]_MatcapB3Toggle("MatcapB3Toggle", Int) = 0
		[ToggleUI]_MatcapG2Toggle("MatcapG2Toggle", Int) = 0
		[ToggleUI]_MatcapA4Toggle("MatcapA4Toggle", Int) = 0
		[Enum(View Dir Singularity,0,View Dir to Object Center,1)]_MatcapViewDir("MatcapViewDir", Float) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3)]_ReflectionMaskMatcapUVSwitch("Reflection Mask Matcap UV Switch", Float) = 0
		[ToggleUI]_ReflectionMaskMatcapUVSwitchAnimated("_ReflectionMaskMatcapUVSwitch", Int) = 0
		[OverrideTagToggle(IgnoreProjector)]_IgnoreProjector("IgnoreProjector", Int) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3)]_EmissionScrollMaskUVSwitch("Emission Scroll Mask UV Switch", Float) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3)]_EmissionUVSwitch("Emission UV Switch", Float) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3)]_MainTexUVSwitch("Main Tex UV Switch", Float) = 0
		[ToggleUI]_DitherAlphaToggleAnimated("_DitherAlphaToggle", Int) = 0
		[ToggleUI]_StartDitheringFadeAnimated("_StartDitheringFade", Int) = 0
		[ToggleUI]_EndDitheringFadeAnimated("_EndDitheringFade", Int) = 0
		[ToggleUI]_DitherTextureTilingAnimated("_DitherTextureTiling", Int) = 0
		[ToggleUI]_OptimizerExcludeDither("OptimizerExcludeDither", Int) = 0
		[ToggleUI]_DitherTextureToggleAnimated("_DitherTextureToggle", Int) = 0
		_StartDitheringFade("Start Dithering Fade", Range( 0 , 20)) = 0
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] _texcoord2( "", 2D ) = "white" {}
		[HideInInspector] _texcoord3( "", 2D ) = "white" {}
		[HideInInspector] _texcoord4( "", 2D ) = "white" {}
		_EndDitheringFade("End Dithering Fade", Range( 0 , 20)) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3)]_DitherMaskUVSwitch("Dither Mask UV Switch", Float) = 0
		_DitherMask("Dither Mask", 2D) = "white" {}
		[ToggleUI]_DitherMaskUVSwitchAnimated("_DitherMaskUVSwitch", Int) = 0
		_DitherTexture("Dither Texture", 2D) = "white" {}
		[Enum(Off,0,On,1)]_DitherTextureToggle("DitherTextureToggle", Float) = 0
		_DitherTextureTiling("Dither Texture Tiling", Float) = 1
		[Enum(Object Center to Camera Distance,0,Diffuse Alpha,1)]_DitherAlphaToggle("DitherAlphaToggle", Float) = 0
		[ToggleUI]_EmissionTintAnimated("_EmissionTint", Int) = 0
		[ToggleUI]_DissolveRemapMaxAnimated("_DissolveRemapMax", Int) = 0
		[ToggleUI]_DissolveRemapMinAnimated("_DissolveRemapMin", Int) = 0
		_DissolvePattern("Dissolve Pattern", 2D) = "black" {}
		[ToggleUI]_DissolveVertexMultiplierAnimated("_DissolveVertexMultiplier", Int) = 0
		_MaterializeTex("Materialize Tex", 2D) = "white" {}
		[ToggleUI]_MaterializeRAnimated("_MaterializeR", Int) = 0
		_DissolveMask("Dissolve Mask", 2D) = "black" {}
		[ToggleUI]_MaterializeGAnimated("_MaterializeG", Int) = 0
		_DissolveModifier("Dissolve Modifier", Range( -1 , 1)) = 1
		[ToggleUI]_OptimizerExcludeDissolve("OptimizerExcludeDissolve", Int) = 0
		[ToggleUI]_MaterializeLayerModeGAnimated("_MaterializeLayerModeG", Int) = 0
		[ToggleUI]_MaterializeLayerModeRAnimated("_MaterializeLayerModeR", Int) = 0
		[ToggleUI]_MaterializeLayerModeAAnimated("_MaterializeLayerModeA", Int) = 0
		[ToggleUI]_MaterializeLayerModeBAnimated("_MaterializeLayerModeB", Int) = 0
		_DissolveDensity("Dissolve Density", Range( 1 , 5)) = 3
		[ToggleUI]_DissolveDensityAnimated("_DissolveDensity", Int) = 0
		[Enum(Separate,0,Merge,1,Reverse Merge,2)]_MaterializeLayerModeR("Materialize Layer Mode R", Float) = 0
		[Enum(Separate,0,Merge,1,Reverse Merge,2)]_MaterializeLayerModeG("Materialize Layer Mode G", Float) = 0
		[Enum(Separate,0,Merge,1,Reverse Merge,2)]_MaterializeLayerModeA("Materialize Layer Mode A", Float) = 0
		[Enum(Separate,0,Merge,1,Reverse Merge,2)]_MaterializeLayerModeB("Materialize Layer Mode B", Float) = 0
		[ToggleUI]_ToggleMaterializeDirInvAnimated("_ToggleMaterializeDirInv", Int) = 0
		[IntRange]_MaterializeColorLayerR("Materialize Color Layer R", Range( 0 , 100)) = 100
		[IntRange]_MaterializeColorLayerB("Materialize Color Layer B", Range( 0 , 100)) = 100
		[IntRange]_MaterializeColorLayerG("Materialize Color Layer G", Range( 0 , 100)) = 100
		[IntRange]_MaterializeColorLayerA("Materialize Color Layer A", Range( 0 , 100)) = 100
		[ToggleUI]_MaterializeAAnimated("_MaterializeA", Int) = 0
		_MaterializeR("MaterializeR", Range( -1 , 1)) = -1
		[ToggleUI]_MaterializeColorLayerAAnimated("_MaterializeColorLayerA", Int) = 0
		[ToggleUI]_MaterializeColorLayerBAnimated("_MaterializeColorLayerB", Int) = 0
		[ToggleUI]_MaterializeColorLayerRAnimated("_MaterializeColorLayerR", Int) = 0
		[ToggleUI]_MaterializeColorLayerGAnimated("_MaterializeColorLayerG", Int) = 0
		_MaterializeG("MaterializeG", Range( -1 , 1)) = -1
		_MaterializeB("MaterializeB", Range( -1 , 1)) = -1
		[ToggleUI]_ToggleDissolveDirInvAnimated("_ToggleDissolveDirInv", Int) = 0
		_MaterializeA("MaterializeA", Range( -1 , 1)) = -1
		[ToggleUI]_EmissiveDissolveColorAnimated("_EmissiveDissolveColor", Int) = 0
		[ToggleUI]_MaterializeBAnimated("_MaterializeB", Int) = 0
		[ToggleUI]_ToggleDissolveDirInv("Toggle Dissolve Dir Inv", Float) = 0
		[ToggleUI]_ToggleMaterializeDirInv("Toggle Materialize Dir Inv", Float) = 0
		[ToggleUI]_ToggleDissolveEmissionAnimated("_ToggleDissolveEmission", Int) = 0
		[ToggleUI]_MaterializeVertexColorAnimated("_MaterializeVertexColor", Int) = 0
		[ToggleUI]_MaterializeVertexColor("Materialize Vertex Color", Float) = 0
		[ToggleUI]_ToggleDissolveVertexOffsetAnimated("_ToggleDissolveVertexOffset", Int) = 0
		_DissolveRemapMin("Dissolve Remap Min", Range( -100 , 100)) = -1
		_DissolveRemapMax("Dissolve Remap Max", Range( -100 , 100)) = 0.5
		[ToggleUI]_DissolveModifierAnimated("_DissolveModifier", Int) = 0
		[ToggleUI]_ToggleDissolveEmission("Toggle DissolveEmission", Int) = 0
		[HDR]_EmissiveDissolveColor("Emissive Dissolve Color", Color) = (0.5019608,0,1,0)
		_DissolveVertexMultiplier("Dissolve Vertex Multiplier", Range( 0 , 0.1)) = 0.01
		[ToggleUI]_ToggleDissolveVertexOffset("Toggle DissolveVertexOffset", Float) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3)]_DissolvePatternUVSwitch("Dissolve Pattern UV Switch", Float) = 0
		[ToggleUI]_DissolvePatternUVSwitchAnimated("_DissolvePatternUVSwitch", Int) = 0
		[ToggleUI]_EmissionColorAnimated("_EmissionColor", Int) = 0
		[ToggleUI]_EmissionLightscaleAnimated("_EmissionLightscale", Int) = 0
		[ToggleUI]_OptimizerExcludeEmission("OptimizerExcludeEmission", Int) = 0
		[ToggleUI]_EmissionScrollToggleAnimated("_EmissionScrollToggle", Int) = 0
		[ToggleUI]_EmissionscrollColorAnimated("_EmissionscrollColor", Int) = 0
		[ToggleUI]_SSSToggleAnimated("_SSSToggle", Int) = 0
		[ToggleUI]_EmissionScrollMaskUVSwitchAnimated("_EmissionScrollMaskUVSwitch", Int) = 0
		[ToggleUI]_EmissionUVSwitchAnimated("_EmissionUVSwitch", Int) = 0
		[ToggleUI]_MainColorAnimated("_MainColor", Int) = 0
		[ToggleUI]_MainTexUVSwitchAnimated("_MainTexUVSwitch", Int) = 0
		[ToggleUI]_OptimizerExcludeMainSettings("OptimizerExcludeMainSettings", Int) = 0
		[ToggleUI]_RenderingModeAnimated("_RenderingMode", Int) = 1
		[ToggleUI]_SaturationAnimated("_Saturation", Int) = 0
		[ToggleUI]_SpecularToggleAnimated("_SpecularToggle", Int) = 0
		[ToggleUI]_ESCoordinatesAnimated("_ESCoordinates", Int) = 0
		[ToggleUI]_WaveformCoordinatesAnimated("_WaveformCoordinates", Int) = 0
		[ToggleUI]_WaveformRotationAnimated("_WaveformRotation", Int) = 0
		[ToggleUI]_AudioLinkSwitchAnimated("_AudioLinkSwitch", Int) = 0
		[ToggleUI]_AudioLinkColorAnimated("_AudioLinkColor", Int) = 0
		[ToggleUI]_AudioLinkBandHistoryAnimated("_AudioLinkBandHistory", Int) = 0
		[ToggleUI]_AudioLinkWaveformMirrorToggleAnimated("_AudioLinkWaveformMirrorToggle", Int) = 0
		[ToggleUI]_WaveformThicknessAnimated("_WaveformThickness", Int) = 0
		[ToggleUI]_ESRenderMethodAnimated("_ESRenderMethod", Int) = 0
		[ToggleUI]_AudioBandIntensityAnimated("_AudioBandIntensity", Int) = 0
		[ToggleUI]_EmissionscrollTintAnimated("_EmissionscrollTint", Int) = 0
		[ToggleUI]_ESSharpnessAnimated("_ESSharpness", Int) = 0
		[ToggleUI]_ESVoronoiScaleAnimated("_ESVoronoiScale", Int) = 0
		[ToggleUI]_ESSizeAnimated("_ESSize", Int) = 0
		[ToggleUI]_IgnoreNormalsESv2Animated("_IgnoreNormalsESv2", Int) = 0
		_AudioBandIntensity("AudioBandIntensity", Vector) = (1,0.25,0.25,0.25)
		[ToggleUI]_ESLevelOffsetAnimated("_ESLevelOffset", Int) = 0
		[ToggleUI]_ESSpeedAnimated("_ESSpeed", Int) = 0
		[ToggleUI]_AudioHueSpeedAnimated("_AudioHueSpeed", Int) = 0
		[ToggleUI]_ESVoronoiSpeedAnimated("_ESVoronoiSpeed", Int) = 0
		[ToggleUI]_OptimizerExcludeESV2("OptimizerExcludeESV2", Int) = 0
		_AudioHueSpeed("Audio Hue Speed", Range( 0 , 1)) = 0.05
		_ESScrollOffset("ES Scroll Offset", Range( 0 , 1)) = 0
		[Enum(Vertex Normal based,0,Fresnel Camera based,1,Vertex Pos to World,2,Voronoi,3,Vertex UV based,4)]_ESRenderMethod("ES Render Method", Float) = 2
		[Enum(Off,0,On,1)]_IgnoreNormalsESv2("Ignore Normals ESv2", Float) = 0
		_ESSize("ES Size", Range( 0 , 1)) = 1
		_ESSpeed("ES Speed", Range( -10 , 10)) = 0.5
		_ESLevelOffset("ES Level Offset", Range( -1 , 1)) = 0
		_ESCoordinates("ES Coordinates", Vector) = (0,2,0,0)
		_ESSharpness("ES Sharpness", Range( 0 , 1)) = 0
		_EmissionscrollTint("Emissionscroll Tint", Range( 0 , 1)) = 1
		_ESVoronoiScale("ES Voronoi Scale", Float) = 10
		_ESVoronoiSpeed("ES Voronoi Speed", Range( -10 , 10)) = 1
		_WaveformRotation("Waveform Rotation", Range( -1 , 1)) = 0
		_WaveformCoordinates("Waveform Coordinates", Vector) = (1,1,0,0)
		[Enum(Off,0,Bands,1,Waveform,2,Bands plus Waveform,3)]_AudioLinkSwitch("AudioLink Switch", Float) = 1
		[HDR]_AudioLinkColor("AudioLink Color", Color) = (1,1,1,1)
		_AudioLinkBandHistory("AudioLink Band History", Range( 32 , 128)) = 80
		[Enum(Single,0,Mirrored,1,Mirror filled,2)]_AudioLinkWaveformMirrorToggle("AudioLink Waveform Mirror Toggle", Float) = 0
		_WaveformThickness("Waveform Thickness", Range( 0 , 1)) = 0.1
		[HelpBox(4)]_AudioLinkTooltip("AudioLinkTooltip", Float) = 0
		[ToggleUI]_COLORCOLORAnimated("_COLORCOLOR", Int) = 1
		[ToggleUI]_COLORADDSUBDIFFAnimated("_COLORADDSUBDIFF", Int) = 0
		[ToggleUI]_NoiseSpeedAnimated("_NoiseSpeed", Int) = 0
		[ToggleUI]_OptimizerExcludeESV1("OptimizerExcludeESV1", Int) = 0
		[ToggleUI]_NoiseVectorXYAnimated("_NoiseVectorXY", Int) = 0
		[ToggleUI]_VectorXYAnimated("_VectorXY", Int) = 0
		[ToggleUI]_EmiossionscrollspeedAnimated("_Emiossionscrollspeed", Int) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3)]_EmissionscrollUVSwitch("Emission scroll UV Switch", Float) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3)]_NoiseTextureUVSwitch("Noise Texture UV Switch", Float) = 0
		_NoiseVectorXY("Noise Vector X,Y", Vector) = (0,1,0,0)
		_NoiseSpeed("Noise Speed", Range( -2 , 2)) = 0.1
		_VectorXY("Vector X,Y", Vector) = (0,1,0,0)
		_Emiossionscrollspeed("Emiossion scroll speed", Range( -2 , 2)) = 0
		[ToggleUI]_EmissionscrollUVSwitchAnimated("_EmissionscrollUVSwitch", Int) = 0
		[ToggleUI]_NoiseTextureUVSwitchAnimated("_NoiseTextureUVSwitch", Int) = 0
		_NoiseTexture("Noise Texture", 2D) = "white" {}
		_Emissionscroll("Emission scroll", 2D) = "white" {}
		_OcclusionMap("Occlusion Map", 2D) = "white" {}
		_ShadowMask("Shadow Mask", 2D) = "white" {}
		[ToggleUI]_ColoringDirectEnvLightsAnimated("_ColoringDirectEnvLights", Int) = 0
		[ToggleUI]_ToggleStepsAnimated("_ToggleSteps", Int) = 0
		[ToggleUI]_PointSpotShadowIntensityAnimated("_PointSpotShadowIntensity", Int) = 0
		[ToggleUI]_AmbientBoostAnimated("_AmbientBoost", Int) = 0
		[ToggleUI]_ShadowMaskStrengthAnimated("_ShadowMaskStrength", Int) = 0
		[ToggleUI]_OptimizerExcludeLighting("OptimizerExcludeLighting", Int) = 0
		[ToggleUI]_RampOffsetAnimated("_RampOffset", Int) = 0
		[ToggleUI]_IndirectShadowIntensityAnimated("_IndirectShadowIntensity", Int) = 0
		[ToggleUI]_DirectShadowIntensityAnimated("_Direct Shadow Intensity", Int) = 0
		[ToggleUI]_NdLHalfingControlAnimated("_NdLHalfingControl", Int) = 0
		[ToggleUI]_ShadowMaskinvertAnimated("_ShadowMaskinvert", Int) = 0
		[ToggleUI]_ShadowColorMapStrengthAnimated("_ShadowColorMapStrength", Int) = 0
		[ToggleUI]_ToggleMonochromePixelLightAnimated("_ToggleMonochromePixelLight", Int) = 0
		[ToggleUI]_ExperimentalToggleAnimated("_ExperimentalToggle", Int) = 0
		[ToggleUI]_SelfCastShadowsAnimated("_SelfCastShadows", Int) = 0
		[ToggleUI]_ColoringPointLightsAnimated("_ColoringPointLights", Int) = 0
		[ToggleUI]_MaxLightDirectAnimated("_MaxLightDirect", Int) = 0
		[ToggleUI]_ToggleMonochromeEnvAnimated("_ToggleMonochromeEnv", Int) = 0
		[ToggleUI]_StepsAnimated("_Steps", Int) = 0
		[ToggleUI]_RampColorAnimated("_RampColor", Int) = 0
		_ShadowColorMap("Shadow Color Map", 2D) = "black" {}
		_ShadowColorMapStrength("Shadow Color Map Strength", Range( 0 , 1)) = 1
		_AmbientBoost("Ambient Boost", Range( 1 , 2)) = 1.5
		_RampOffset("RampOffset", Range( 0 , 1)) = 0.5
		[ToggleUI]_ShadowMaskinvert("Shadow Mask invert", Float) = 0
		[Enum(Off,0,On,1)]_ToggleSteps("Toggle Steps", Float) = 0
		[Enum(Off,0,On,1)]_ExperimentalToggle("Experimental Toggle", Float) = 1
		_ColoringDirectEnvLights("Coloring Direct Env Lights", Range( 0 , 1)) = 0
		_ColoringPointLights("Coloring Point Lights", Range( 0 , 1)) = 0
		_Steps("Steps", Int) = 3
		_DirectShadowIntensity("Direct Shadow Intensity", Range( 0 , 1)) = 1
		_RampColor("Ramp Color", Color) = (0.8588235,0.7647059,0.7098039,0)
		_Occlusion("Occlusion", Range( 0 , 1)) = 1
		_MaxLightDirect("Max Light Direct", Range( 0 , 1)) = 1
		_IndirectShadowIntensity("Indirect Shadow Intensity", Range( 0 , 1)) = 0.5
		_SelfCastShadows("SelfCastShadows", Range( 0 , 1)) = 1
		_PointSpotShadowIntensity("PointSpot Shadow Intensity", Range( 0 , 1)) = 1
		_ToonRamp("Toon Ramp", 2D) = "white" {}
		_ShadowMaskStrength("Shadow Mask Strength", Range( 0 , 1)) = 1
		_NdLHalfingControl("NdL Halfing Control", Range( 0.5 , 5)) = 0.5
		[ToggleUI]_ToggleMonochromeEnv("Toggle Monochrome Env", Float) = 0
		[ToggleUI]_ToggleMonochromePixelLight("Toggle Monochrome Pixel Light", Float) = 0
		[HDR]_Cubemap("Cubemap", CUBE) = "white" {}
		_GSAAVariance("GSAAVariance", Range( 0 , 1)) = 0.15
		_GSAAThreshold("GSAAThreshold", Range( 0 , 1)) = 0.1
		[ToggleUI]_GSAAThresholdAnimated("_GSAAThreshold", Int) = 0
		[ToggleUI]_GSAAVarianceAnimated("_GSAAVariance", Int) = 0
		[ToggleUI]_WorkflowSwitchAnimated("_WorkflowSwitch", Int) = 0
		[ToggleUI]_IgnoreNormalsCubemapAnimated("_IgnoreNormalsCubemap", Int) = 0
		[ToggleUI]_CubemapsmoothnessAnimated("_Cubemapsmoothness", Int) = 0
		[ToggleUI]_CubemapSpecularToggleAnimated("_CubemapSpecularToggle", Int) = 0
		[ToggleUI]_OptimizerExcludeCubemap("OptimizerExcludeCubemap", Int) = 0
		[ToggleUI]_MetallicAnimated("_Metallic", Int) = 0
		[ToggleUI]_CubemapIntensityAnimated("_CubemapIntensity", Int) = 0
		[ToggleUI]_EnableGSAAAnimated("_EnableGSAA", Int) = 0
		_MetallicMap("Metallic Map", 2D) = "white" {}
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3)]_ReflectionMaskUVSwitch("Reflection Mask UV Switch", Float) = 0
		_Cubemapsmoothness("Cubemap smoothness", Range( 0 , 1)) = 0.75
		[ToggleUI]_CubemapSpecularToggle("Cubemap Specular Toggle", Float) = 1
		[Enum(Dynamic,0,Baked Cubemap only,1,Unitys Metallic Workflow,2)]_WorkflowSwitch("Workflow Switch", Float) = 0
		_ReflectionMask("Reflection Mask", 2D) = "white" {}
		[ToggleUI]_IgnoreNormalsCubemap("Ignore Normals Cubemap", Float) = 0
		_CubemapIntensity("Cubemap Intensity", Range( 0 , 1)) = 1
		_Metallic("Metallic", Range( 0 , 1)) = 0.5
		[ToggleUI]_ReflectionMaskUVSwitchAnimated("_ReflectionMaskUVSwitch", Int) = 0
		[ToggleUI]_EnableGSAA("Enable GSAA", Float) = 1
		[ToggleUI]_HueMaskinverterAnimated("_HueMaskinverter", Int) = 0
		[ToggleUI]_HueShiftblendAnimated("_HueShiftblend", Int) = 0
		[ToggleUI]_OptimizerExcludeHueShift("OptimizerExcludeHueShift", Int) = 0
		[ToggleUI]_HueShiftRandomizerAnimated("_HueShiftRandomizer", Int) = 0
		[ToggleUI]_HueShiftSpeedAnimated("_HueShiftSpeed", Int) = 0
		[ToggleUI]_ToggleHueTexforSpeedAnimated("_ToggleHueTexforSpeed", Int) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3)]_HueMaskUVSwitch("HueMask UV Switch", Float) = 0
		[ToggleUI]_HueMaskUVSwitchAnimated("_HueMaskUVSwitch", Int) = 0
		[Enum(Off,0,On,1)]_ToggleHueTexforSpeed("Toggle Hue Tex for Speed", Float) = 0
		_HueShiftSpeed("Hue Shift Speed", Range( 0 , 255)) = 0
		[Enum(Not Inverted,0,Inverted,1)]_HueMaskinverter("Hue Mask inverter", Int) = 0
		_HueShiftblend("Hue Shift blend", Range( 0 , 1)) = 0.5
		_HueMask("HueMask", 2D) = "white" {}
		_HueShiftRandomizer("Hue Shift Randomizer", Range( 0 , 1)) = 0
		[Normal]_NormalMap("Normal Map", 2D) = "bump" {}
		[Normal]_SecondaryNormal("Secondary Normal", 2D) = "bump" {}
		_SecondaryNormalMask("Secondary Normal Mask", 2D) = "white" {}
		[ToggleUI]_OptimizerExcludeNormals("OptimizerExcludeNormals", Int) = 0
		[ToggleUI]_NormalScaleAnimated("_NormalScale", Int) = 0
		[ToggleUI]_SecondaryNormalScaleAnimated("_SecondaryNormalScale", Int) = 0
		_NormalScale("Normal Scale", Range( -10 , 10)) = 0
		_SecondaryNormalScale("Secondary Normal Scale", Range( -10 , 10)) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3)]_NormalMapUVSwitch("Normal Map UV Switch", Float) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3)]_SecondaryNormalUVSwitch("Secondary Normal UV Switch", Float) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3)]_SecondaryNormalMaskUVSwitch("Secondary Normal Mask UV Switch", Float) = 0
		[ToggleUI]_SecondaryNormalUVSwitchAnimated("_SecondaryNormalUVSwitch", Int) = 0
		[ToggleUI]_NormalMapUVSwitchAnimated("_NormalMapUVSwitch", Int) = 0
		[ToggleUI]_SecondaryNormalMaskUVSwitchAnimated("_SecondaryNormalMaskUVSwitch", Int) = 0
		_RimMask("Rim Mask", 2D) = "white" {}
		[ToggleUI]_RimSpecToggleAnimated("_RimSpecToggle", Int) = 0
		[ToggleUI]_RimToggleAnimated("_RimToggle", Int) = 0
		[ToggleUI]_OptimizerExcludeRimlight("OptimizerExcludeRimlight", Int) = 0
		[ToggleUI]_RimOffsetAnimated("_RimOffset", Int) = 0
		[ToggleUI]_RimTintAnimated("_RimTint", Int) = 0
		[ToggleUI]_RimColorAnimated("_RimColor", Int) = 0
		[ToggleUI]_RimOpacityAnimated("_RimOpacity", Int) = 0
		[ToggleUI]_RimFresnelBiasAnimated("_RimFresnelBias", Int) = 0
		[ToggleUI]_RimSpecLightsmoothnessAnimated("_RimSpecLightsmoothness", Int) = 0
		[ToggleUI]_RimDirectionToggleAnimated("_RimDirectionToggle", Int) = 0
		[ToggleUI]_RimFresnelScaleAnimated("_RimFresnelScale", Int) = 0
		[HDR]_RimColor("Rim Color", Color) = (1,1,1,0)
		[ToggleUI]_RimPowerAnimated("_RimPower", Int) = 0
		[ToggleUI]_RimFaceCullingAnimated("_RimFaceCulling", Int) = 0
		[ToggleUI]_RimLightMaskinvAnimated("_RimLightMaskinv", Int) = 0
		[ToggleUI]_RimFresnelPowerAnimated("_RimFresnelPower", Int) = 0
		_RimFresnelPower("Rim Fresnel Power", Range( 0 , 20)) = 5
		_RimOpacity("Rim Opacity", Range( 0 , 1)) = 0.25
		_RimFresnelScale("Rim Fresnel Scale", Range( 0 , 10)) = 1
		_RimFresnelBias("Rim Fresnel Bias", Range( 0 , 1)) = 0
		_RimPower("Rim Power", Range( 0 , 10)) = 5
		_RimTint("Rim Tint", Range( 0 , 1)) = 0.75
		_RimOffset("Rim Offset", Range( 0 , 1)) = 0
		_RimSpecLightsmoothness("Rim Spec Light smoothness", Range( 0 , 1)) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3)]_RimMaskUVSwitch("Rim Mask UV Switch", Float) = 0
		[Enum(Off,0,On,1)]_RimSpecToggle("Rim Spec Toggle", Float) = 0
		[Enum(Not Inverted,0,Inverted,1)]_RimLightMaskinv("RimLightMaskinv", Float) = 0
		[Enum(Light Direction Based,0,Fresnel,1)]_RimDirectionToggle("Rim Direction Toggle", Float) = 0
		[ToggleUI]_RimMaskUVSwitchAnimated("_RimMaskUVSwitch", Int) = 0
		[Enum(Off,0,Front,1,Back,2)]_RimFaceCulling("Rim Face Culling", Float) = 0
		[Enum(Color Data,0,Modification Data,1)]_SSSMapMode("SSS Map Mode", Float) = 0
		_SSSThicknessMap("SSS Thickness Map", 2D) = "white" {}
		[ToggleUI]_SSSSettingAnimated("_SSSSetting", Int) = 0
		[ToggleUI]_SSSScaleAnimated("_SSSScale", Int) = 0
		[ToggleUI]_SSSPowerAnimated("_SSSPower", Int) = 0
		[ToggleUI]_SSSMapModeAnimated("_SSSMapMode", Int) = 0
		[ToggleUI]_SSSTintAnimated("_SSSTint", Int) = 0
		[ToggleUI]_OptimizerExcludeSSS("OptimizerExcludeSSS", Int) = 0
		[ToggleUI]_SubsurfaceDistortionModifierAnimated("_SubsurfaceDistortionModifier", Int) = 0
		[ToggleUI]_SSSColorAnimated("_SSSColor", Int) = 0
		[ToggleUI]_SSSThicknessinvAnimated("_SSSThicknessinv", Int) = 0
		[HDR]_SSSColor("SSS Color", Color) = (0.9997016,1,0.7028302,0)
		_SubsurfaceDistortionModifier("Subsurface Distortion Modifier", Float) = 1
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3)]_SSSThicknessMapUVSwitch("SSS Thickness Map UV Switch", Float) = 0
		_SSSPower("SSS Power", Float) = 2.5
		_SSSTint("SSS Tint", Range( 0 , 1)) = 1
		[ToggleUI]_SSSThicknessinv("SSSThicknessinv", Float) = 0
		_SSSScale("SSS Scale", Float) = 1
		[ToggleUI]_SSSThicknessMapUVSwitchAnimated("_SSSThicknessMapUVSwitch", Int) = 0
		_BlinntoAniso("Blinn to Aniso", Range( 0 , 1)) = 0
		_AnisoF0Reflectance("Aniso F0 Reflectance", Range( 0 , 1)) = 0
		_AnisoDir("AnisoDir", 2D) = "bump" {}
		_SpecularMap("Specular Map", 2D) = "white" {}
		[ToggleUI]_HighlightSmoothnessAnimated("_HighlightSmoothness", Int) = 0
		[ToggleUI]_AnisotropyAnimated("_Anisotropy", Int) = 0
		[ToggleUI]_AnisoF0ReflectanceAnimated("_AnisoF0Reflectance", Int) = 0
		[ToggleUI]_AnisoFlickerFixAnimated("_AnisoFlickerFix", Int) = 0
		[ToggleUI]_HighlightOffsetAnimated("_HighlightOffset", Int) = 0
		[ToggleUI]_AnisoSharpeningAnimated("_AnisoSharpening", Int) = 0
		[ToggleUI]_OptimizerExcludeSpecularHighlights("OptimizerExcludeSpecularHighlights", Int) = 0
		[ToggleUI]_BlinntoAnisoAnimated("_BlinntoAniso", Int) = 0
		[ToggleUI]_SpecularColorAnimated("_SpecularColor", Int) = 0
		[ToggleUI]_SpecShadowMaskVarAnimated("_SpecShadowMaskVar", Int) = 0
		[ToggleUI]_SpecularSettingAnimated("_SpecularSetting", Int) = 0
		[ToggleUI]_SpecShadowMaskPowerAnimated("_SpecShadowMaskPower", Int) = 0
		[ToggleUI]_AnisoScaleAnimated("_AnisoScale", Int) = 0
		[ToggleUI]_SpecularTintAnimated("_SpecularTint", Int) = 0
		_Anisotropy("Anisotropy", Range( -1 , 1)) = 0.8
		_HighlightOffset("Highlight Offset", Range( -1 , 1)) = 0
		_HighlightSmoothness("Highlight Smoothness", Range( 0 , 1)) = 0
		[HDR]_SpecularColor("Specular Color", Color) = (1,1,1,1)
		_SpecularTint("Specular Tint", Range( 0 , 1)) = 1
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3)]_SpecularMapUVSwitch("Specular Map UV Switch", Float) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3)]_AnisoDirUVSwitch("AnisoDir UV Switch", Float) = 0
		[Enum(Off,0,Standard NdotL,1,Toon Ramp,2)]_SpecShadowMaskVar("Spec Shadow Mask Var", Float) = 2
		_AnisoScale("Aniso Scale", Range( 0 , 1)) = 1
		[ToggleUI]_AnisoFlickerFix("Aniso Flicker Fix", Float) = 0
		[ToggleUI]_AnisoSharpening("Aniso Sharpening", Float) = 0
		_SpecShadowMaskPower("Spec Shadow Mask Power", Range( -1 , 1)) = 0
		[ToggleUI]_SpecularMapUVSwitchAnimated("_SpecularMapUVSwitch", Int) = 0
		[ToggleUI]_AnisoDirUVSwitchAnimated("_AnisoDirUVSwitch", Int) = 0
		[ToggleUI]_RimHueSpeedAnimated("_RimHueSpeed", Int) = 0
		[ToggleUI]_ShadowRimSharpnessAnimated("_ShadowRimSharpness", Int) = 0
		[ToggleUI]_ShadowRimRangeAnimated("_ShadowRimRange", Int) = 0
		[ToggleUI]_ShadowRimOpacityAnimated("_ShadowRimOpacity", Int) = 0
		[ToggleUI]_OptimizerExcludeShadowRim("OptimizerExcludeShadowRim", Int) = 0
		[ToggleUI]_EmissiveRimColorAnimated("_EmissiveRimColor", Int) = 0
		[ToggleUI]_RimSwitchAnimated("_RimSwitch", Int) = 0
		_ShadowRimRange("ShadowRimRange", Range( 0 , 1)) = 0.75
		_ShadowRimSharpness("ShadowRimSharpness", Range( 0 , 1)) = 1
		_ShadowRimOpacity("ShadowRimOpacity", Range( 0 , 1)) = 0
		_RimHueSpeed("Rim Hue Speed", Range( 0 , 1)) = 0
		_EmissiveRimColor("Emissive Rim Color", Color) = (1,1,1,0)
		[Enum(UnityEngine.Rendering.BlendOp)]_BlendOpAlpha("Blend Op Alpha", Float) = 0
		[Enum(UnityEngine.Rendering.BlendMode)]_DestinationBlendAlpha("Destination Blend Alpha", Float) = 0
		[Enum(UnityEngine.Rendering.BlendOp)]_BlendOpRGB("Blend Op RGB", Float) = 0
		[Enum(UnityEngine.Rendering.BlendMode)]_DestinationBlendRGB("Destination Blend RGB", Float) = 0
		_StencilBufferWriteMask("Stencil Buffer Write Mask", Range( 0 , 255)) = 255
		_StencilBufferReadMask("Stencil Buffer Read Mask", Range( 0 , 255)) = 255
		_DepthOffsetFactor("Depth Offset Factor", Float) = 0
		_DepthOffsetUnits("Depth Offset Units", Float) = 0
		_StencilBufferReference("Stencil Buffer Reference", Range( 0 , 255)) = 0
		[Enum(UnityEngine.Rendering.StencilOp)]_StencilBufferFailFront("Stencil Buffer Fail Front", Float) = 0
		[Enum(UnityEngine.Rendering.StencilOp)]_StencilBufferZFailFront("Stencil Buffer ZFail Front", Float) = 0
		[Enum(UnityEngine.Rendering.CompareFunction)]_StencilBufferComparison("Stencil Buffer Comparison", Float) = 0
		[Enum(UnityEngine.Rendering.CompareFunction)]_ZTestMode("ZTest Mode", Float) = 4
		[Enum(UnityEngine.Rendering.StencilOp)]_StencilBufferPassFront("Stencil Buffer Pass Front", Float) = 0
		[Enum(UnityEngine.Rendering.BlendMode)]_SourceBlendAlpha("Source Blend Alpha", Float) = 1
		[Enum(UnityEngine.Rendering.BlendMode)]_SourceBlendRGB("Source Blend RGB", Float) = 1
		[Enum(UnityEngine.Rendering.CullMode)]_CullMode("Cull Mode", Float) = 2
		_Saturation("Saturation", Range( 0 , 10)) = 1
		_MainColor("Main Color", Color) = (1,1,1,1)
		_MainTex("Main Tex", 2D) = "white" {}
		[Enum(Basic,0,Advanced,1,Advanced Plus,2)]_AdvancedExperimentalToggle("Advanced Experimental Toggle", Float) = 0
		[HDR]_EmissionColor("Emission Color", Color) = (1,1,1,0)
		_Emission("Emission", 2D) = "black" {}
		[HDR]_EmissionscrollColor("Emission scroll Color", Color) = (1,1,1,1)
		_EmissionScrollMask("Emission Scroll Mask", 2D) = "white" {}
		_EmissionTint("Emission Tint", Range( 0 , 1)) = 1
		[ToggleOff(_COLORCOLOR_ON)]_COLORCOLOR("Toggle Advanced", Float) = 0
		[Enum(Light Based,0,Color Based,1,Mixed,2)]_SSSSetting("SSS Setting", Float) = 0
		[ToggleUI]_FlipbookToggle("Flipbook Toggle", Float) = 0
		[ToggleOff(_COLORADDSUBDIFF_ON)]_COLORADDSUBDIFF("Cubemap Toggle", Float) = 0
		[ToggleOff(_SUNDISK_NONE)]_SSSToggle("SSS Toggle", Float) = 0
		[ToggleOff(_REQUIRE_UV2)]_SpecularToggle("Specular Toggle", Float) = 0
		[Enum(Toon,0,Unity Standard GGX,1,Anisotropic by James OHare,2,Anisotropic GGX,3)]_SpecularSetting("Specular Setting", Float) = 0
		[ToggleUI]_RimToggle("Rim Toggle", Float) = 0
		[Enum(Off,0,ES v1,1,ES v2,2)]_EmissionScrollToggle("Emission Scroll Toggle", Float) = 0
		[Enum(Shadow,0,Emissive,1)]_RimSwitch("Rim Switch", Float) = 0
		[Enum(Off,0,On,1)]_ZWriteMode("ZWrite Mode", Float) = 1
		[Enum(Off,0,On,1)]_AlphatoCoverage("Alpha to Coverage", Float) = 0
		[Enum(UnityEngine.Rendering.ColorWriteMask)]_ColorMask("Color Mask", Float) = 15
		_MaskClipValue("Mask Clip Value", Range( 0 , 1)) = 0.5
		[Enum(Opaque,0,Fade,1,Transparent,2)]_RenderingMode("Rendering Mode", Float) = 1
		[ToggleUI]_EmissionLightscale("Emission Lightscale", Float) = 0
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Opaque"  "Queue" = "Geometry+0" "IsEmissive" = "true"  "IgnoreProjectorPlaceholder"="True" }
		Cull [_CullMode]
		ZWrite [_ZWriteMode]
		ZTest [_ZTestMode]
		Offset  [_DepthOffsetFactor] , [_DepthOffsetUnits]
		Stencil
		{
			Ref [_StencilBufferReference]
			ReadMask [_StencilBufferReadMask]
			WriteMask [_StencilBufferWriteMask]
			Comp [_StencilBufferComparison]
			Pass [_StencilBufferPassFront]
			Fail [_StencilBufferFailFront]
			ZFail [_StencilBufferZFailFront]
		}
		Blend [_SourceBlendRGB] [_DestinationBlendRGB] , [_SourceBlendAlpha] [_DestinationBlendAlpha]
		BlendOp [_BlendOpRGB] , [_BlendOpAlpha]
		AlphaToMask [_AlphatoCoverage]
		ColorMask [_ColorMask]
		CGINCLUDE
		#include "UnityPBSLighting.cginc"
		#include "UnityShaderVariables.cginc"
		#include "UnityStandardUtils.cginc"
		#include "UnityCG.cginc"
		#include "Lighting.cginc"
		#pragma target 5.0
		#pragma multi_compile _ VERTEXLIGHT_ON
		#include "./cginc/AudioLink.cginc"
		#define ASE_USING_SAMPLING_MACROS 1
		#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
		#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
		#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
		#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex.SampleBias(samplerTex,coord,bias)
		#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex.SampleGrad(samplerTex,coord,ddx,ddy)
		#define SAMPLE_TEXTURECUBE_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
		#else//ASE Sampling Macros
		#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex2D(tex,coord)
		#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex2Dlod(tex,float4(coord,0,lod))
		#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex2Dbias(tex,float4(coord,0,bias))
		#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex2Dgrad(tex,coord,ddx,ddy)
		#define SAMPLE_TEXTURECUBE_LOD(tex,samplertex,coord,lod) texCUBElod (tex,half4(coord,lod))
		#endif//ASE Sampling Macros

		#ifdef UNITY_PASS_SHADOWCASTER
			#undef INTERNAL_DATA
			#undef WorldReflectionVector
			#undef WorldNormalVector
			#define INTERNAL_DATA half3 internalSurfaceTtoW0; half3 internalSurfaceTtoW1; half3 internalSurfaceTtoW2;
			#define WorldReflectionVector(data,normal) reflect (data.worldRefl, half3(dot(data.internalSurfaceTtoW0,normal), dot(data.internalSurfaceTtoW1,normal), dot(data.internalSurfaceTtoW2,normal)))
			#define WorldNormalVector(data,normal) half3(dot(data.internalSurfaceTtoW0,normal), dot(data.internalSurfaceTtoW1,normal), dot(data.internalSurfaceTtoW2,normal))
		#endif
		#undef TRANSFORM_TEX
		#define TRANSFORM_TEX(tex,name) float4(tex.xy * name##_ST.xy + name##_ST.zw, tex.z, tex.w)
		struct Input
		{
			float3 uv_texcoord;
			float2 uv2_texcoord2;
			float2 uv3_texcoord3;
			float2 uv4_texcoord4;
			half ASEVFace : VFACE;
			float3 worldNormal;
			INTERNAL_DATA
			float3 worldPos;
			float4 vertexColor : COLOR;
			float4 screenPosition;
			float3 vertexToFrag2250_g22166;
			float3 vertexToFrag2251_g22166;
			float3 worldRefl;
		};

		struct SurfaceOutputCustomLightingCustom
		{
			half3 Albedo;
			half3 Normal;
			half3 Emission;
			half Metallic;
			half Smoothness;
			half Occlusion;
			half Alpha;
			Input SurfInput;
			UnityGIInput GIData;
		};

		uniform int _SecondaryNormalUVSwitchAnimated;
		uniform int _OptimizerExcludeNormals;
		uniform int _NormalMapUVSwitchAnimated;
		uniform int _SecondaryNormalMaskUVSwitchAnimated;
		uniform int _NormalScaleAnimated;
		uniform int _SecondaryNormalScaleAnimated;
		uniform int _HueMaskinverterAnimated;
		uniform int _HueShiftblendAnimated;
		uniform int _OptimizerExcludeHueShift;
		uniform int _HueShiftRandomizerAnimated;
		uniform int _HueShiftSpeedAnimated;
		uniform int _ToggleHueTexforSpeedAnimated;
		uniform int _HueMaskUVSwitchAnimated;
		uniform int _RimHueSpeedAnimated;
		uniform int _ShadowRimSharpnessAnimated;
		uniform int _ShadowRimRangeAnimated;
		uniform int _ShadowRimOpacityAnimated;
		uniform int _OptimizerExcludeShadowRim;
		uniform int _EmissiveRimColorAnimated;
		uniform int _RimSwitchAnimated;
		uniform int _ToggleMonochromeEnvAnimated;
		uniform int _MaxLightDirectAnimated;
		uniform int _ColoringPointLightsAnimated;
		uniform int _SelfCastShadowsAnimated;
		uniform int _ToggleMonochromePixelLightAnimated;
		uniform int _StepsAnimated;
		uniform int _ShadowColorMapStrengthAnimated;
		uniform int _NdLHalfingControlAnimated;
		uniform int _DirectShadowIntensityAnimated;
		uniform int _IndirectShadowIntensityAnimated;
		uniform int _RampOffsetAnimated;
		uniform int _ShadowMaskStrengthAnimated;
		uniform int _ColoringDirectEnvLightsAnimated;
		uniform int _AmbientBoostAnimated;
		uniform int _PointSpotShadowIntensityAnimated;
		uniform int _ToggleStepsAnimated;
		uniform int _ShadowMaskinvertAnimated;
		uniform int _RampColorAnimated;
		uniform int _OptimizerExcludeLighting;
		uniform int _ExperimentalToggleAnimated;
		uniform int _HighlightOffsetAnimated;
		uniform int _SpecShadowMaskPowerAnimated;
		uniform int _SpecularSettingAnimated;
		uniform int _AnisoSharpeningAnimated;
		uniform int _SpecShadowMaskVarAnimated;
		uniform int _SpecularColorAnimated;
		uniform int _OptimizerExcludeSpecularHighlights;
		uniform int _HighlightSmoothnessAnimated;
		uniform int _SpecularTintAnimated;
		uniform float _Anisotropy;
		uniform int _AnisotropyAnimated;
		uniform int _AnisoDirUVSwitchAnimated;
		uniform float _AnisoFlickerFix;
		uniform int _AnisoFlickerFixAnimated;
		uniform float _AnisoF0Reflectance;
		uniform int _SpecularMapUVSwitchAnimated;
		uniform int _AnisoF0ReflectanceAnimated;
		uniform int _BlinntoAnisoAnimated;
		uniform int _AnisoScaleAnimated;
		uniform int _SSSColorAnimated;
		uniform int _SubsurfaceDistortionModifierAnimated;
		uniform int _OptimizerExcludeSSS;
		uniform int _SSSTintAnimated;
		uniform int _SSSThicknessinvAnimated;
		uniform int _SSSPowerAnimated;
		uniform int _SSSThicknessMapUVSwitchAnimated;
		uniform int _SSSScaleAnimated;
		uniform int _SSSSettingAnimated;
		uniform int _SSSMapModeAnimated;
		uniform int _RimSpecToggleAnimated;
		uniform int _RimFresnelPowerAnimated;
		uniform int _RimLightMaskinvAnimated;
		uniform int _RimPowerAnimated;
		uniform int _RimFaceCullingAnimated;
		uniform int _RimDirectionToggleAnimated;
		uniform int _RimSpecLightsmoothnessAnimated;
		uniform int _RimFresnelBiasAnimated;
		uniform int _RimOpacityAnimated;
		uniform int _RimColorAnimated;
		uniform int _RimTintAnimated;
		uniform int _RimOffsetAnimated;
		uniform int _OptimizerExcludeRimlight;
		uniform int _RimToggleAnimated;
		uniform int _RimMaskUVSwitchAnimated;
		uniform int _RimFresnelScaleAnimated;
		uniform int _FlipbookToggleAnimated;
		uniform int _RotateFlipbookAnimated;
		uniform int _MaxFramesAnimated;
		uniform int _ColumnsAnimated;
		uniform int _FlipbookColorAnimated;
		uniform int _FlipbookTintAnimated;
		uniform int _OptimizerExcludeFlipbook;
		uniform int _RowsAnimated;
		uniform int _SpeedAnimated;
		uniform float _GSAAVariance;
		uniform float _GSAAThreshold;
		uniform int _GSAAThresholdAnimated;
		uniform int _GSAAVarianceAnimated;
		uniform int _ReflectionMaskUVSwitchAnimated;
		uniform int _OptimizerExcludeCubemap;
		uniform int _CubemapIntensityAnimated;
		uniform int _EnableGSAAAnimated;
		uniform float _EnableGSAA;
		uniform int _MetallicAnimated;
		uniform int _CubemapsmoothnessAnimated;
		uniform int _IgnoreNormalsCubemapAnimated;
		uniform int _WorkflowSwitchAnimated;
		uniform int _CubemapSpecularToggleAnimated;
		uniform int _MatcapG2ToggleAnimated;
		uniform int _IgnoreNormalsMatcapAnimated;
		uniform int _MatcapR1ToggleAnimated;
		uniform int _ReflectionB3IntensityAnimated;
		uniform int _MatcapR1ColorAnimated;
		uniform int _MatcapB3BlendingAnimated;
		uniform int _MatcapR1BlendingAnimated;
		uniform int _MatcapB3ToggleAnimated;
		uniform int _ReflectionA4IntensityAnimated;
		uniform int _MatcapA4ModeAnimated;
		uniform int _MatcapG2BlendingAnimated;
		uniform int _MatcapR1smoothnessAnimated;
		uniform int _MatcapA4ColorAnimated;
		uniform int _ReflectionMaskMatcapUVSwitchAnimated;
		uniform int _MatcapB3ModeAnimated;
		uniform int _MatcapA4smoothnessAnimated;
		uniform int _ReflectionR1IntensityAnimated;
		uniform int _OptimizerExcludeMatcap;
		uniform int _ReflectionA4TintAnimated;
		uniform int _MatcapA4BlendingAnimated;
		uniform int _MatcapB3smoothnessAnimated;
		uniform int _MatcapA4ToggleAnimated;
		uniform int _ReflectionB3TintAnimated;
		uniform int _ReflectionR1TintAnimated;
		uniform int _ReflectionG2IntensityAnimated;
		uniform int _MatcapR1ModeAnimated;
		uniform int _ReflectionG2TintAnimated;
		uniform int _MatcapG2ModeAnimated;
		uniform int _MatcapViewDirAnimated;
		uniform int _MatcapG2ColorAnimated;
		uniform int _MatcapB3ColorAnimated;
		uniform int _MatcapG2smoothnessAnimated;
		uniform int _ESVoronoiScaleAnimated;
		uniform int _ESSpeedAnimated;
		uniform int _ESRenderMethodAnimated;
		uniform int _IgnoreNormalsESv2Animated;
		uniform float _AudioLinkTooltip;
		uniform int _ESVoronoiSpeedAnimated;
		uniform int _AudioLinkWaveformMirrorToggleAnimated;
		uniform int _OptimizerExcludeESV2;
		uniform int _WaveformThicknessAnimated;
		uniform float _AudioHueSpeed;
		uniform int _ESCoordinatesAnimated;
		uniform int _AudioHueSpeedAnimated;
		uniform int _ESSharpnessAnimated;
		uniform int _ESSizeAnimated;
		uniform float _ESRenderMethod;
		uniform int _AudioLinkColorAnimated;
		uniform int _ESLevelOffsetAnimated;
		uniform int _WaveformRotationAnimated;
		uniform int _WaveformCoordinatesAnimated;
		uniform int _EmissionscrollTintAnimated;
		uniform int _AudioLinkBandHistoryAnimated;
		uniform int _AudioBandIntensityAnimated;
		uniform int _AudioLinkSwitchAnimated;
		uniform int _NoiseSpeedAnimated;
		uniform int _OptimizerExcludeESV1;
		uniform int _EmissionscrollUVSwitchAnimated;
		uniform int _NoiseVectorXYAnimated;
		uniform int _VectorXYAnimated;
		uniform int _EmiossionscrollspeedAnimated;
		uniform int _NoiseTextureUVSwitchAnimated;
		uniform int _ToggleDissolveDirInvAnimated;
		uniform int _DissolveRemapMaxAnimated;
		uniform int _MaterializeBAnimated;
		uniform int _MaterializeAAnimated;
		uniform int _DissolveDensityAnimated;
		uniform int _MaterializeLayerModeAAnimated;
		uniform int _ToggleDissolveEmissionAnimated;
		uniform int _DissolveRemapMinAnimated;
		uniform int _MaterializeColorLayerGAnimated;
		uniform int _MaterializeLayerModeGAnimated;
		uniform int _MaterializeColorLayerBAnimated;
		uniform int _MaterializeColorLayerAAnimated;
		uniform int _MaterializeRAnimated;
		uniform int _MaterializeGAnimated;
		uniform int _ToggleMaterializeDirInvAnimated;
		uniform int _DissolveModifierAnimated;
		uniform int _ToggleDissolveVertexOffsetAnimated;
		uniform int _MaterializeLayerModeBAnimated;
		uniform int _OptimizerExcludeDissolve;
		uniform int _EmissiveDissolveColorAnimated;
		uniform int _MaterializeVertexColorAnimated;
		uniform int _MaterializeLayerModeRAnimated;
		uniform int _MaterializeColorLayerRAnimated;
		uniform int _DissolvePatternUVSwitchAnimated;
		uniform int _DissolveVertexMultiplierAnimated;
		uniform float _AlphatoCoverage;
		uniform float _StencilBufferReference;
		uniform float _AdvancedExperimentalToggle;
		uniform float _ZWriteMode;
		uniform int _COLORADDSUBDIFFAnimated;
		uniform int _IgnoreProjector;
		uniform int _RenderingModeAnimated;
		uniform float _DestinationBlendAlpha;
		uniform float _SourceBlendAlpha;
		uniform int _SSSToggleAnimated;
		uniform float _StencilBufferWriteMask;
		uniform float _StencilBufferZFailFront;
		uniform float _ColorMask;
		uniform half _SpecularSetting;
		uniform float _BlendOpRGB;
		uniform int _EmissionScrollMaskUVSwitchAnimated;
		uniform float _CullMode;
		uniform int _EmissionColorAnimated;
		uniform int _OptimizerExcludeMainSettings;
		uniform float _ShaderOptimizerEnabled;
		uniform int _COLORCOLORAnimated;
		uniform float _StencilBufferComparison;
		uniform float _DestinationBlendRGB;
		uniform int _MainTexUVSwitchAnimated;
		uniform int _EmissionTintAnimated;
		uniform int _EmissionScrollToggleAnimated;
		uniform float _StencilBufferPassFront;
		uniform int _EmissionscrollColorAnimated;
		uniform int _SpecularToggleAnimated;
		uniform float _DepthOffsetFactor;
		uniform int _DitherAlphaToggleAnimated;
		uniform int _StartDitheringFadeAnimated;
		uniform int _EndDitheringFadeAnimated;
		uniform int _DitherMaskUVSwitchAnimated;
		uniform int _DitherTextureTilingAnimated;
		uniform int _OptimizerExcludeDither;
		uniform int _DitherTextureToggleAnimated;
		uniform int _EmissionUVSwitchAnimated;
		uniform float _StencilBufferReadMask;
		uniform float _DepthOffsetUnits;
		uniform int _SaturationAnimated;
		uniform float _StencilBufferFailFront;
		uniform float _SourceBlendRGB;
		uniform float _ZTestMode;
		uniform int _MainColorAnimated;
		uniform float _BlendOpAlpha;
		uniform int _EmissionLightscaleAnimated;
		uniform int _OptimizerExcludeEmission;
		uniform float _ToggleDissolveVertexOffset;
		uniform float _DissolveModifier;
		uniform float _MaterializeR;
		uniform float _ToggleMaterializeDirInv;
		uniform float _DissolveRemapMin;
		uniform float _DissolveRemapMax;
		uniform float _DissolveDensity;
		uniform float _MaterializeVertexColor;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MaterializeTex);
		SamplerState sampler_point_clamp;
		uniform float _MaterializeLayerModeR;
		uniform float _MaterializeColorLayerR;
		uniform float _MaterializeLayerModeG;
		uniform float _MaterializeColorLayerG;
		uniform float _MaterializeLayerModeB;
		uniform float _MaterializeColorLayerB;
		uniform float _MaterializeLayerModeA;
		uniform float _MaterializeColorLayerA;
		uniform float _MaterializeG;
		uniform float _MaterializeB;
		uniform float _MaterializeA;
		uniform float _ToggleDissolveDirInv;
		uniform float _DissolveVertexMultiplier;
		uniform float _EmissionScrollToggle;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_NoiseTexture);
		uniform float _NoiseSpeed;
		uniform float2 _NoiseVectorXY;
		uniform float4 _NoiseTexture_ST;
		uniform float _NoiseTextureUVSwitch;
		SamplerState sampler_trilinear_repeat;
		SamplerState sampler_NoiseTexture;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_Emissionscroll);
		uniform float _Emiossionscrollspeed;
		uniform float2 _VectorXY;
		uniform float4 _Emissionscroll_ST;
		uniform float _EmissionscrollUVSwitch;
		uniform float4 _EmissionscrollColor;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_EmissionScrollMask);
		uniform float4 _EmissionScrollMask_ST;
		uniform float _EmissionScrollMaskUVSwitch;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
		SamplerState sampler_MainTex;
		uniform float _AudioLinkSwitch;
		uniform float _ESSpeed;
		uniform float _ESScrollOffset;
		uniform float _IgnoreNormalsESv2;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalMap);
		uniform float4 _NormalMap_ST;
		uniform float _NormalMapUVSwitch;
		uniform float _NormalScale;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_SecondaryNormalMask);
		uniform float4 _SecondaryNormalMask_ST;
		uniform float _SecondaryNormalMaskUVSwitch;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_SecondaryNormal);
		uniform float4 _SecondaryNormal_ST;
		uniform float _SecondaryNormalUVSwitch;
		uniform float _SecondaryNormalScale;
		uniform float _ESVoronoiScale;
		uniform float _ESVoronoiSpeed;
		uniform float2 _ESCoordinates;
		uniform float _ESSize;
		uniform float _ESSharpness;
		uniform float _ESLevelOffset;
		uniform float _AudioLinkBandHistory;
		uniform float4 _AudioBandIntensity;
		uniform float _AudioLinkWaveformMirrorToggle;
		uniform float4 _WaveformCoordinates;
		uniform float _WaveformRotation;
		uniform float _WaveformThickness;
		uniform float4 _AudioLinkColor;
		uniform float4 _MainTex_ST;
		uniform float _MainTexUVSwitch;
		uniform float _HueShiftSpeed;
		uniform float _HueShiftRandomizer;
		uniform float _ToggleHueTexforSpeed;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_HueMask);
		uniform float4 _HueMask_ST;
		uniform float _HueMaskUVSwitch;
		uniform int _HueMaskinverter;
		uniform float _HueShiftblend;
		uniform float4 _MainColor;
		uniform float _Saturation;
		uniform float _EmissionscrollTint;
		uniform float _COLORCOLOR;
		uniform float _RimSwitch;
		uniform float _ShadowRimSharpness;
		uniform float _ShadowRimRange;
		uniform float _ShadowRimOpacity;
		uniform float4 _EmissiveRimColor;
		uniform float _RimHueSpeed;
		uniform int _ToggleDissolveEmission;
		uniform half4 _EmissiveDissolveColor;
		uniform float _StartDitheringFade;
		uniform float _EndDitheringFade;
		uniform float _DitherAlphaToggle;
		uniform float _DitherTextureToggle;
		uniform float _DitherTextureTiling;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DitherTexture);
		float4 _DitherTexture_TexelSize;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DitherMask);
		uniform float4 _DitherMask_ST;
		uniform float _DitherMaskUVSwitch;
		uniform float _RenderingMode;
		uniform float _ToggleMonochromePixelLight;
		uniform float _ToggleSteps;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_ToonRamp);
		uniform float _NdLHalfingControl;
		uniform float _RampOffset;
		SamplerState sampler_linear_clamp;
		uniform float4 _RampColor;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_ShadowColorMap);
		uniform float4 _ShadowColorMap_ST;
		SamplerState sampler_trilinear_clamp;
		uniform float _ShadowColorMapStrength;
		uniform float _ColoringPointLights;
		uniform float _PointSpotShadowIntensity;
		uniform int _Steps;
		uniform float _MaxLightDirect;
		uniform float _AmbientBoost;
		uniform float _ExperimentalToggle;
		uniform float _DirectShadowIntensity;
		uniform float _SelfCastShadows;
		uniform float _ShadowMaskinvert;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_ShadowMask);
		uniform float4 _ShadowMask_ST;
		uniform float _ShadowMaskStrength;
		uniform float _ColoringDirectEnvLights;
		uniform float _ToggleMonochromeEnv;
		uniform float _IndirectShadowIntensity;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
		uniform float4 _OcclusionMap_ST;
		uniform float _Occlusion;
		uniform float _COLORADDSUBDIFF;
		uniform float _CubemapIntensity;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_ReflectionMask);
		uniform float4 _ReflectionMask_ST;
		uniform float _ReflectionMaskUVSwitch;
		uniform half _Metallic;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicMap);
		uniform float4 _MetallicMap_ST;
		uniform float _MatcapR1Mode;
		uniform int _MatcapR1Toggle;
		uniform float _MatcapR1Blending;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_ReflectionMaskMatcap);
		uniform float4 _ReflectionMaskMatcap_ST;
		uniform float _ReflectionMaskMatcapUVSwitch;
		uniform float _MatcapG2Mode;
		uniform int _MatcapG2Toggle;
		uniform float _MatcapG2Blending;
		uniform float _MatcapB3Mode;
		uniform int _MatcapB3Toggle;
		uniform float _MatcapB3Blending;
		uniform float _MatcapA4Mode;
		uniform int _MatcapA4Toggle;
		uniform float _MatcapA4Blending;
		uniform float _HighlightOffset;
		uniform float _HighlightSmoothness;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_SpecularMap);
		uniform float4 _SpecularMap_ST;
		uniform float _SpecularMapUVSwitch;
		uniform float4 _SpecularColor;
		uniform float _SpecularTint;
		uniform float _SpecShadowMaskVar;
		uniform float _SpecShadowMaskPower;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_AnisoDir);
		uniform float4 _AnisoDir_ST;
		uniform float _AnisoDirUVSwitch;
		uniform float _BlinntoAniso;
		uniform float _AnisoScale;
		uniform float _AnisoSharpening;
		uniform float _SpecularToggle;
		uniform float _IgnoreNormalsCubemap;
		uniform float _Cubemapsmoothness;
		uniform float _CubemapSpecularToggle;
		uniform float _WorkflowSwitch;
		UNITY_DECLARE_TEXCUBE_NOSAMPLER(_Cubemap);
		SamplerState sampler_Cubemap;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MatcapR1);
		uniform float _MatcapViewDir;
		uniform float _IgnoreNormalsMatcap;
		uniform float _MatcapR1smoothness;
		uniform float4 _MatcapR1Color;
		uniform float _ReflectionR1Intensity;
		uniform float _ReflectionR1Tint;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MatcapG2);
		uniform float _MatcapG2smoothness;
		uniform float4 _MatcapG2Color;
		uniform float _ReflectionG2Intensity;
		uniform float _ReflectionG2Tint;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MatcapB3);
		uniform float _MatcapB3smoothness;
		uniform float4 _MatcapB3Color;
		uniform float _ReflectionB3Intensity;
		uniform float _ReflectionB3Tint;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MatcapA4);
		uniform float _MatcapA4smoothness;
		uniform float4 _MatcapA4Color;
		uniform float _ReflectionA4Intensity;
		uniform float _ReflectionA4Tint;
		uniform float _RimToggle;
		uniform float _RimFaceCulling;
		uniform float _RimDirectionToggle;
		uniform float _RimOffset;
		uniform float _RimPower;
		uniform float _RimFresnelBias;
		uniform float _RimFresnelScale;
		uniform float _RimFresnelPower;
		uniform float _RimTint;
		uniform float4 _RimColor;
		uniform float _RimLightMaskinv;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_RimMask);
		uniform float4 _RimMask_ST;
		uniform float _RimMaskUVSwitch;
		uniform float _RimSpecToggle;
		uniform float _RimSpecLightsmoothness;
		uniform float _RimOpacity;
		uniform float _FlipbookToggle;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_Flipbook);
		uniform float4 _Flipbook_ST;
		uniform float _RotateFlipbook;
		uniform int _Columns;
		uniform int _Rows;
		uniform int _Speed;
		uniform int _MaxFrames;
		SamplerState sampler_Flipbook;
		uniform half4 _FlipbookColor;
		uniform float _FlipbookTint;
		uniform float _SSSSetting;
		uniform float _SubsurfaceDistortionModifier;
		uniform float _SSSMapMode;
		uniform float _SSSThicknessinv;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_SSSThicknessMap);
		uniform float4 _SSSThicknessMap_ST;
		uniform float _SSSThicknessMapUVSwitch;
		uniform float _SSSPower;
		uniform float _SSSScale;
		uniform float _SSSTint;
		uniform float4 _SSSColor;
		uniform float _SSSToggle;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_Emission);
		uniform float4 _Emission_ST;
		uniform float _EmissionUVSwitch;
		uniform float4 _EmissionColor;
		uniform float _EmissionTint;
		uniform float _EmissionLightscale;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DissolvePattern);
		uniform float4 _DissolvePattern_ST;
		uniform float _DissolvePatternUVSwitch;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DissolveMask);
		uniform float4 _DissolveMask_ST;
		uniform float _MaskClipValue;


		void SourceDeclaration(  )
		{
			//This Shader was made possible by Moriohs Toon Shader (https://gitlab.com/xMorioh/moriohs-toon-shader)
		}


		float V_SmithGGXCorrelated_Anisotropic( float at, float ab, float ToV, float BoV, float ToL, float BoL, float NoV, float NoL )
		{
			float lambdaV = NoL * length(float3(at * ToV, ab * BoV, NoV));
				float lambdaL = NoV * length(float3(at * ToL, ab * BoL, NoL));
				float v = 0.5 / (lambdaV + lambdaL);
				return saturate(v);
		}


		float D_GGX_Anisotropic( float NoH, float3 h, float3 t, float3 b, float at, float ab )
		{
				const float ToH = dot(t, h);
				const float BoH = dot(b, h);
				float a2 = at * ab;
				const float3 v = float3(ab * ToH, at * BoH, a2 * NoH);
				const float v2 = dot(v, v);
				const float w2 = a2 / v2;
				return a2 * w2 * w2 * (1.0 / UNITY_PI);
		}


		float3 F_Schlick( float u, float f0 )
		{
			return f0 + (1.0 - f0) * pow(1.0 - u, 5.0);
		}


		void CentroidSampling(  )
		{
			// This is a workaround for Surface Shaders and Amplify, Source (https://twitter.com/kurotori4423/status/1381253671799824386) (https://twitter.com/Silent0264/status/1383139686055497728/photo/1)
			#if defined(SHADER_STAGE_VERTEX) || defined(SHADER_STAGE_FRAGMENT) || defined(SHADER_STAGE_DOMAIN) || defined(SHADER_STAGE_HULL) || defined(SHADER_STAGE_GEOMETRY)
			#if !defined(UNITY_PASS_DEFERRED)
			#define TEXCOORD1 TEXCOORD1_Centroid
			#endif
			#endif
		}


		float2 UVSwitch( float UVSwitchProp, float2 UV0, float2 UV1, float2 UV2, float2 UV3 )
		{
			if (UVSwitchProp == 0)
				return UV0;
			else if (UVSwitchProp == 1)
				return UV1;
			else if (UVSwitchProp == 2)
				return UV2;
			else
				return UV3;
		}


		float ASEOr( float A, float B )
		{
			float result = A || B;
			return result;
		}


		float2 voronoihash64_g22216( float2 p )
		{
			
			p = float2( dot( p, float2( 127.1, 311.7 ) ), dot( p, float2( 269.5, 183.3 ) ) );
			return frac( sin( p ) *43758.5453);
		}


		float voronoi64_g22216( float2 v, float time, inout float2 id, inout float2 mr, float smoothness, inout float2 smoothId )
		{
			float2 n = floor( v );
			float2 f = frac( v );
			float F1 = 8.0;
			float F2 = 8.0; float2 mg = 0;
			for ( int j = -1; j <= 1; j++ )
			{
				for ( int i = -1; i <= 1; i++ )
			 	{
			 		float2 g = float2( i, j );
			 		float2 o = voronoihash64_g22216( n + g );
					o = ( sin( time + o * 6.2831 ) * 0.5 + 0.5 ); float2 r = f - g - o;
					float d = 0.5 * dot( r, r );
			 		if( d<F1 ) {
			 			F2 = F1;
			 			F1 = d; mg = g; mr = r; id = o;
			 		} else if( d<F2 ) {
			 			F2 = d;
			
			 		}
			 	}
			}
			return F1;
		}


		inline float AudioLinkLerp( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		float2 AudioLinkWaveformsample( float2 uv, float thickness )
		{
			//Source: "https://github.com/llealloo/vrc-udon-audio-link"
			float noteno = uv.x*ETOTALBINS;
			                float4 spectrum_value = -AudioLinkLerpMultiline( ALPASS_DFT + float2( noteno, 0. ) ) * 0.5 + 0.5;
				if( uv.y < spectrum_value.z )
			                    return 0;
				else if( uv.y < spectrum_value.z + 0.1 * thickness )
			                    return 1.;
			                return 0;
		}


		float2 AudioLinkWaveformsampleMirror( float2 uv )
		{
			//Source: "https://github.com/llealloo/vrc-udon-audio-link"
			float noteno = uv.x*ETOTALBINS;
			                float4 spectrum_value = -AudioLinkLerpMultiline( ALPASS_DFT + float2( noteno, 0. ) ) * 0.5 + 0.5;
				if( uv.y < spectrum_value.z )
			                    return 0;
				else if( uv.y < 1-spectrum_value.z )
			                    return 1.;
			                return 0;
		}


		float3 HSVToRGB( float3 c )
		{
			float4 K = float4( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
			float3 p = abs( frac( c.xxx + K.xyz ) * 6.0 - K.www );
			return c.z * lerp( K.xxx, saturate( p - K.xxx ), c.y );
		}


		inline float Dither8x8Bayer( int x, int y )
		{
			const float dither[ 64 ] = {
				 1, 49, 13, 61,  4, 52, 16, 64,
				33, 17, 45, 29, 36, 20, 48, 32,
				 9, 57,  5, 53, 12, 60,  8, 56,
				41, 25, 37, 21, 44, 28, 40, 24,
				 3, 51, 15, 63,  2, 50, 14, 62,
				35, 19, 47, 31, 34, 18, 46, 30,
				11, 59,  7, 55, 10, 58,  6, 54,
				43, 27, 39, 23, 42, 26, 38, 22};
			int r = y * 8 + x;
			return dither[r] / 64; // same # of instructions as pre-dividing due to compiler magic
		}


		float2 UnStereo( float2 UV )
		{
			#if UNITY_SINGLE_PASS_STEREO
			float4 scaleOffset = unity_StereoScaleOffset[ unity_StereoEyeIndex ];
			UV.xy = (UV.xy - scaleOffset.zw) / scaleOffset.xy;
			#endif
			return UV;
		}


		inline float DitherNoiseTex( float4 screenPos, UNITY_DECLARE_TEX2D_NOSAMPLER(noiseTexture), SamplerState samplernoiseTexture, float4 noiseTexelSize )
		{
			float dither = SAMPLE_TEXTURE2D_LOD( noiseTexture, samplernoiseTexture, screenPos.xy * _ScreenParams.xy * noiseTexelSize.xy, 0 ).g;
			float ditherRate = noiseTexelSize.x * noiseTexelSize.y;
			dither = ( 1 - ditherRate ) * dither + ditherRate;
			return dither;
		}


		float4 FourLightPosX(  )
		{
			return unity_4LightPosX0;
		}


		float4 FourLightPosY(  )
		{
			return unity_4LightPosY0;
		}


		float4 FourLightPosZ(  )
		{
			return unity_4LightPosZ0;
		}


		half getLinearRgbToLuminance( half3 linearRgb )
		{
			return LinearRgbToLuminance(linearRgb);
		}


		float3 LightColorZero(  )
		{
			return unity_LightColor[0];
		}


		float4 FourLightAtten(  )
		{
			return unity_4LightAtten0;
		}


		float3 LightColorZOne(  )
		{
			return unity_LightColor[1];
		}


		float3 LightColorZTwo(  )
		{
			return unity_LightColor[2];
		}


		float3 LightColorZThree(  )
		{
			return unity_LightColor[3];
		}


		half3 Ambient(  )
		{
			return float3(unity_SHAr.w, unity_SHAg.w, unity_SHAb.w) + float3(unity_SHBr.z, unity_SHBg.z, unity_SHBb.z) / 3.0;
		}


		float3 ambientDir(  )
		{
			//Source: "https://web.archive.org/web/20160313132301/http://www.geomerics.com/wp-content/uploads/2015/08/CEDEC_Geomerics_ReconstructingDiffuseLighting1.pdf" Page 18
			return normalize(unity_SHAr.xyz + unity_SHAg.xyz + unity_SHAb.xyz);
		}


		float getGammaToLinearSpaceExact( float LinearIn )
		{
			return GammaToLinearSpaceExact(LinearIn);
		}


		inline float3 ASESafeNormalize(float3 inVec)
		{
			float dp3 = max( 0.001f , dot( inVec , inVec ) );
			return inVec* rsqrt( dp3);
		}


		float GSAA_Filament( float3 worldNormal, float smoothness )
		{
			// Kaplanyan 2016, "Stable specular highlights"
			// Tokuyoshi 2017, "Error Reduction and Simplification for Shading Anti-Aliasing"
			// Tokuyoshi and Kaplanyan 2019, "Improved Geometric Specular Antialiasing"
			// This implementation is meant for deferred rendering in the original paper but
			// we use it in forward rendering as well (as discussed in Tokuyoshi and Kaplanyan
			// 2019). The main reason is that the forward version requires an expensive transform
			// of the float vector by the tangent frame for every light. This is therefore an
			// approximation but it works well enough for our needs and provides an improvement
			// over our original implementation based on Vlachos 2015, "Advanced VR Rendering".
			if (_EnableGSAA == 1)
			{
			    float3 du = ddx(worldNormal);
			    float3 dv = ddy(worldNormal);
			    float variance = _GSAAVariance * (dot(du, du) + dot(dv, dv));
			    float perceptualRoughness = 1-smoothness;
			    float roughness = perceptualRoughness * perceptualRoughness;
			    float kernelRoughness = min(2.0 * variance, _GSAAThreshold);
			    float squareRoughness = saturate(roughness * roughness + kernelRoughness);
			    return 1-sqrt(sqrt(squareRoughness));
			}
			else
			{
			    return smoothness;
			}
		}


		float CorrectNegativeNdotV( float3 viewDir, float3 normal )
		{
			#define UNITY_HANDLE_CORRECTLY_NEGATIVE_NDOTV 0
			#if UNITY_HANDLE_CORRECTLY_NEGATIVE_NDOTV
			    // The amount we shift the normal toward the view vector is defined by the dot product.
			    half shiftAmount = dot(normal, viewDir);
			    normal = shiftAmount < 0.0f ? normal + viewDir * (-shiftAmount + 1e-5f) : normal;
			    // A re-normalization should be applied here but as the shift is small we don't do it to save ALU.
			    //normal = normalize(normal);
			    float nv = saturate(dot(normal, viewDir)); // TODO: this saturate should no be necessary here
			#else
			    half nv = abs(dot(normal, viewDir));    // This abs allow to limit artifact
			#endif
			return nv;
		}


		float getSmithJointGGXVisibilityTerm( float NdotL, float NdotV, float roughness )
		{
			return SmithJointGGXVisibilityTerm (NdotL, NdotV, roughness);
		}


		float getGGXTerm( float NdotH, float roughness )
		{
			return GGXTerm (NdotH, roughness);
		}


		float3 calcSpecularTerm( float GGXVisibilityTerm, float GGXTerm, float NdotL, float LdotH, float roughness, float3 specColor, float3 lightcolor, float specularTermToggle )
		{
			// "GGX with roughness to 0 would mean no specular at all, using max(roughness, 0.002) here to match HDrenderloop roughness remapping."
			float specularTerm = GGXVisibilityTerm * GGXTerm * UNITY_PI; // Torrance-Sparrow model, Fresnel is applied later
			// Gamma Space support
			#   ifdef UNITY_COLORSPACE_GAMMA
			        specularTerm = sqrt(max(1e-4h, specularTerm));
			#   endif
			// specularTerm * nl can be NaN on Metal in some cases, use max() to make sure it's a sane value
			specularTerm = max(0, specularTerm * NdotL);
			//Toggle specularTerm
			if (specularTermToggle == 1) {
			// To provide true Lambert lighting, we need to be able to kill specular completely.
				specularTerm *= any(specColor) ? 1.0 : 0.0;
			}
			else {
				specularTerm = 0;
			}
			return
			specularTerm * lightcolor * FresnelTerm(specColor, LdotH);
		}


		float3 getUnityObjectToWorldNormal2226_g22166( float3 In0 )
		{
			return UnityObjectToWorldNormal(In0);
		}


		float3 getUnityObjectToWorldDir2223_g22166( float3 In0 )
		{
			return UnityObjectToWorldDir(In0);
		}


		float3 calcGGXAniso( float ndl, float ndh, float vdn, float ldh, float3 lightCol, float3 halfVector, float smoothness, float3 tangent, float3 bitangent, float3 diffuseColor, float4 SpecularMap, float3 LightDir, float3 ViewDir )
		{
			    const half specularIntensity = _SpecularColor.a * SpecularMap.r;
			    
			    const float3 t = tangent;
			    const float3 b = bitangent;
			    const float ToV = dot(t, ViewDir);
			    const float BoV = dot(b, ViewDir);
			    const float ToL = dot(t, LightDir);
			    const float BoL = dot(b, LightDir);
			    float perceptualRoughness = SmoothnessToPerceptualRoughness(smoothness);
			    perceptualRoughness = clamp(perceptualRoughness, 0.089, 1.0);
			    float roughness = PerceptualRoughnessToRoughness(perceptualRoughness);
			    float rough = roughness;
			    
			    float anisotropy = _Anisotropy * SpecularMap.b;
			    const float at = max(rough * (1.0 + anisotropy), 0.001);
			    const float ab = max(rough * (1.0 - anisotropy), 0.001);
			    const float V = V_SmithGGXCorrelated_Anisotropic(at, ab, ToV, BoV, ToL, BoL, vdn, ndl);
			    const float D = D_GGX_Anisotropic(ndh, halfVector, tangent, bitangent, at, ab);
			          float F = 1-F_Schlick(ldh,1-lerp(unity_ColorSpaceDielectricSpec.r, 1, _AnisoF0Reflectance));
			    if (_AnisoFlickerFix == 1)
			    {
			        F = 1-F_Schlick(ldh,1-lerp(unity_ColorSpaceDielectricSpec.r, 1, _AnisoF0Reflectance) * ndl * ndh); //this is not mathematically correct, only use when needed
			    }
			    
			    half3 specular = max(0, D * V * F * ndl * UNITY_PI);
			    specular = lerp(specular, smoothstep(0.25, 0.26, specular), _AnisoSharpening * SpecularMap.g) * lightCol * specularIntensity * diffuseColor;
			    return specular;
		}


		float3 calcSpecularBase( float3 specularTerm, float NdotV, float3 specColor, float roughness, float oneMinusReflectivity, float3 indirectspecular, float smoothness, float perceptualRoughness )
		{
			half surfaceReduction;
			// Gamma Space support
			#   ifdef UNITY_COLORSPACE_GAMMA
			        surfaceReduction = 1.0-0.28*roughness*perceptualRoughness;      // 1-0.28*x^3 as approximation for (1/(x^4+1))^(1/2.2) on the domain [0;1]
			#   else
			        surfaceReduction = 1.0 / (roughness*roughness + 1.0);           // fade \in [0.5;1]
			#   endif
			half grazingTerm = saturate(smoothness + (1-oneMinusReflectivity));
			return
			specularTerm + surfaceReduction * indirectspecular.rgb * FresnelLerp(specColor, grazingTerm, NdotV);
		}


		float ASEAnd( float A, float B )
		{
			float result = A && B;
			return result;
		}


		void vertexDataFunc( inout appdata_full v, out Input o )
		{
			UNITY_INITIALIZE_OUTPUT( Input, o );
			float3 ase_vertex3Pos = v.vertex.xyz;
			float4 transform698_g22222 = mul(unity_ObjectToWorld,float4( ase_vertex3Pos , 0.0 ));
			float Space701_g22222 = transform698_g22222.y;
			float ifLocalVar717_g22222 = 0;
			if( _ToggleMaterializeDirInv > 0.0 )
				ifLocalVar717_g22222 = -Space701_g22222;
			else if( _ToggleMaterializeDirInv == 0.0 )
				ifLocalVar717_g22222 = Space701_g22222;
			float3 ase_parentObjectScale = (1.0/float3( length( unity_WorldToObject[ 0 ].xyz ), length( unity_WorldToObject[ 1 ].xyz ), length( unity_WorldToObject[ 2 ].xyz ) ));
			float ObjectScale711_g22222 = max( ase_parentObjectScale.y , 1.0 );
			float temp_output_739_0_g22222 = ( ifLocalVar717_g22222 / ObjectScale711_g22222 );
			float DissolveDensity732_g22222 = exp2( _DissolveDensity );
			float temp_output_753_0_g22222 = ( ( temp_output_739_0_g22222 + (-1.0 + (_MaterializeR - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g22222 );
			float4 ifLocalVar752_g22222 = 0;
			if( 1.0 > _MaterializeVertexColor )
				ifLocalVar752_g22222 = SAMPLE_TEXTURE2D_LOD( _MaterializeTex, sampler_point_clamp, v.texcoord.xyz.xy, 0.0 );
			else if( 1.0 == _MaterializeVertexColor )
				ifLocalVar752_g22222 = v.color;
			float temp_output_708_0_g22222 = ( _MaterializeColorLayerR / 100.0 );
			float temp_output_714_0_g22222 = ( temp_output_708_0_g22222 - 0.005 );
			float temp_output_716_0_g22222 = ( temp_output_708_0_g22222 + 0.005 );
			float2 appendResult727_g22222 = (float2(temp_output_714_0_g22222 , temp_output_716_0_g22222));
			float2 appendResult722_g22222 = (float2(-0.005 , temp_output_716_0_g22222));
			float2 appendResult720_g22222 = (float2(temp_output_714_0_g22222 , 1.005));
			float2 ifLocalVar734_g22222 = 0;
			if( 1.0 > _MaterializeLayerModeR )
				ifLocalVar734_g22222 = appendResult727_g22222;
			else if( 1.0 == _MaterializeLayerModeR )
				ifLocalVar734_g22222 = appendResult722_g22222;
			else if( 1.0 < _MaterializeLayerModeR )
				ifLocalVar734_g22222 = appendResult720_g22222;
			float2 break751_g22222 = ifLocalVar734_g22222;
			float temp_output_927_0_g22222 = ( _MaterializeColorLayerG / 100.0 );
			float temp_output_925_0_g22222 = ( temp_output_927_0_g22222 - 0.005 );
			float temp_output_922_0_g22222 = ( temp_output_927_0_g22222 + 0.005 );
			float2 appendResult919_g22222 = (float2(temp_output_925_0_g22222 , temp_output_922_0_g22222));
			float2 appendResult918_g22222 = (float2(-0.005 , temp_output_922_0_g22222));
			float2 appendResult916_g22222 = (float2(temp_output_925_0_g22222 , 1.005));
			float2 ifLocalVar921_g22222 = 0;
			if( 1.0 > _MaterializeLayerModeG )
				ifLocalVar921_g22222 = appendResult919_g22222;
			else if( 1.0 == _MaterializeLayerModeG )
				ifLocalVar921_g22222 = appendResult918_g22222;
			else if( 1.0 < _MaterializeLayerModeG )
				ifLocalVar921_g22222 = appendResult916_g22222;
			float2 break920_g22222 = ifLocalVar921_g22222;
			float temp_output_941_0_g22222 = ( _MaterializeColorLayerB / 100.0 );
			float temp_output_939_0_g22222 = ( temp_output_941_0_g22222 - 0.005 );
			float temp_output_936_0_g22222 = ( temp_output_941_0_g22222 + 0.005 );
			float2 appendResult933_g22222 = (float2(temp_output_939_0_g22222 , temp_output_936_0_g22222));
			float2 appendResult932_g22222 = (float2(-0.005 , temp_output_936_0_g22222));
			float2 appendResult930_g22222 = (float2(temp_output_939_0_g22222 , 1.005));
			float2 ifLocalVar935_g22222 = 0;
			if( 1.0 > _MaterializeLayerModeB )
				ifLocalVar935_g22222 = appendResult933_g22222;
			else if( 1.0 == _MaterializeLayerModeB )
				ifLocalVar935_g22222 = appendResult932_g22222;
			else if( 1.0 < _MaterializeLayerModeB )
				ifLocalVar935_g22222 = appendResult930_g22222;
			float2 break934_g22222 = ifLocalVar935_g22222;
			float temp_output_955_0_g22222 = ( _MaterializeColorLayerA / 100.0 );
			float temp_output_953_0_g22222 = ( temp_output_955_0_g22222 - 0.005 );
			float temp_output_950_0_g22222 = ( temp_output_955_0_g22222 + 0.005 );
			float2 appendResult947_g22222 = (float2(temp_output_953_0_g22222 , temp_output_950_0_g22222));
			float2 appendResult946_g22222 = (float2(-0.005 , temp_output_950_0_g22222));
			float2 appendResult944_g22222 = (float2(temp_output_953_0_g22222 , 1.005));
			float2 ifLocalVar949_g22222 = 0;
			if( 1.0 > _MaterializeLayerModeA )
				ifLocalVar949_g22222 = appendResult947_g22222;
			else if( 1.0 == _MaterializeLayerModeA )
				ifLocalVar949_g22222 = appendResult946_g22222;
			else if( 1.0 < _MaterializeLayerModeA )
				ifLocalVar949_g22222 = appendResult944_g22222;
			float2 break948_g22222 = ifLocalVar949_g22222;
			float4 appendResult956_g22222 = (float4(break751_g22222.x , break920_g22222.x , break934_g22222.x , break948_g22222.x));
			float4 appendResult957_g22222 = (float4(break751_g22222.y , break920_g22222.y , break934_g22222.y , break948_g22222.y));
			float4 MaterialzeLayers912_g22222 = (( ifLocalVar752_g22222 >= appendResult956_g22222 && ifLocalVar752_g22222 <= appendResult957_g22222 ) ? ifLocalVar752_g22222 :  float4( 0,0,0,0 ) );
			float4 break768_g22222 = ceil( MaterialzeLayers912_g22222 );
			float ifLocalVar817_g22222 = 0;
			if( 1.0 > saturate( _MaterializeR ) )
				ifLocalVar817_g22222 = ( ( temp_output_753_0_g22222 + 1.0 ) * break768_g22222.r );
			float temp_output_755_0_g22222 = ( ( temp_output_739_0_g22222 + (-1.0 + (_MaterializeG - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g22222 );
			float ifLocalVar812_g22222 = 0;
			if( 1.0 > saturate( _MaterializeG ) )
				ifLocalVar812_g22222 = ( ( temp_output_755_0_g22222 + 1.0 ) * break768_g22222.g );
			float temp_output_765_0_g22222 = ( ( temp_output_739_0_g22222 + (-1.0 + (_MaterializeB - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g22222 );
			float ifLocalVar823_g22222 = 0;
			if( 1.0 > saturate( _MaterializeB ) )
				ifLocalVar823_g22222 = ( ( temp_output_765_0_g22222 + 1.0 ) * break768_g22222.b );
			float temp_output_779_0_g22222 = ( ( temp_output_739_0_g22222 + (-1.0 + (_MaterializeA - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g22222 );
			float ifLocalVar820_g22222 = 0;
			if( 1.0 > saturate( _MaterializeA ) )
				ifLocalVar820_g22222 = ( ( temp_output_779_0_g22222 + 1.0 ) * break768_g22222.a );
			float ifLocalVar761_g22222 = 0;
			if( _ToggleDissolveDirInv > 0.0 )
				ifLocalVar761_g22222 = -Space701_g22222;
			else if( _ToggleDissolveDirInv == 0.0 )
				ifLocalVar761_g22222 = Space701_g22222;
			float temp_output_784_0_g22222 = ( ( ( ifLocalVar761_g22222 / ObjectScale711_g22222 ) + (-1.0 + (_DissolveModifier - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g22222 );
			float ifLocalVar818_g22222 = 0;
			if( 1.0 > _DissolveModifier )
				ifLocalVar818_g22222 = max( max( max( max( ifLocalVar817_g22222 , ifLocalVar812_g22222 ) , ifLocalVar823_g22222 ) , ifLocalVar820_g22222 ) , ( temp_output_784_0_g22222 + 1.0 ) );
			float lerpResult408_g22222 = lerp( 0.0 , saturate( ifLocalVar818_g22222 ) , saturate( ( 1.0 - ( ifLocalVar818_g22222 - 1.0 ) ) ));
			float3 ase_vertexNormal = v.normal.xyz;
			float3 ifLocalVar422_g22222 = 0;
			if( _ToggleDissolveVertexOffset == 1.0 )
				ifLocalVar422_g22222 = ( ( ( lerpResult408_g22222 * 4.0 ) * _DissolveVertexMultiplier ) * ase_vertexNormal );
			float3 VertexOffsetDissolve21892 = ifLocalVar422_g22222;
			v.vertex.xyz += VertexOffsetDissolve21892;
			v.vertex.w = 1;
			float4 ase_screenPos = ComputeScreenPos( UnityObjectToClipPos( v.vertex ) );
			o.screenPosition = ase_screenPos;
			float3 In02226_g22166 = ase_vertexNormal;
			float3 localgetUnityObjectToWorldNormal2226_g22166 = getUnityObjectToWorldNormal2226_g22166( In02226_g22166 );
			float4 ase_vertexTangent = v.tangent;
			float3 In02223_g22166 = ase_vertexTangent.xyz;
			float3 localgetUnityObjectToWorldDir2223_g22166 = getUnityObjectToWorldDir2223_g22166( In02223_g22166 );
			float3 temp_output_2222_0_g22166 = (localgetUnityObjectToWorldDir2223_g22166).xyz;
			float ase_vertexTangentSign = v.tangent.w;
			float3 normalizeResult2248_g22166 = normalize( ( cross( localgetUnityObjectToWorldNormal2226_g22166 , temp_output_2222_0_g22166 ) * ase_vertexTangentSign ) );
			o.vertexToFrag2250_g22166 = normalizeResult2248_g22166;
			float3 normalizeResult2249_g22166 = normalize( temp_output_2222_0_g22166 );
			o.vertexToFrag2251_g22166 = normalizeResult2249_g22166;
		}

		inline half4 LightingStandardCustomLighting( inout SurfaceOutputCustomLightingCustom s, half3 viewDir, UnityGI gi )
		{
			UnityGIInput data = s.GIData;
			Input i = s.SurfInput;
			half4 c = 0;
			#ifdef UNITY_PASS_FORWARDBASE
			float ase_lightAtten = data.atten;
			if( _LightColor0.a == 0)
			ase_lightAtten = 0;
			#else
			float3 ase_lightAttenRGB = gi.light.color / ( ( _LightColor0.rgb ) + 0.000001 );
			float ase_lightAtten = max( max( ase_lightAttenRGB.r, ase_lightAttenRGB.g ), ase_lightAttenRGB.b );
			#endif
			#if defined(HANDLE_SHADOWS_BLENDING_IN_GI)
			half bakedAtten = UnitySampleBakedOcclusion(data.lightmapUV.xy, data.worldPos);
			float zDist = dot(_WorldSpaceCameraPos - data.worldPos, UNITY_MATRIX_V[2].xyz);
			float fadeDist = UnityComputeShadowFadeDistance(data.worldPos, zDist);
			ase_lightAtten = UnityMixRealtimeAndBakedShadows(data.atten, bakedAtten, UnityComputeShadowFade(fadeDist));
			#endif
			float UVSwitchProp24660 = _MainTexUVSwitch;
			float2 UV024660 = i.uv_texcoord.xy;
			float2 UV124660 = i.uv2_texcoord2;
			float2 UV224660 = i.uv3_texcoord3;
			float2 UV324660 = i.uv4_texcoord4;
			float2 localUVSwitch24660 = UVSwitch( UVSwitchProp24660 , UV024660 , UV124660 , UV224660 , UV324660 );
			float2 MainTexUVSwitch24638 = ( ( _MainTex_ST.xy * localUVSwitch24660 ) + _MainTex_ST.zw );
			float4 tex2DNode43 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, MainTexUVSwitch24638 );
			float AlphaChannelMul9091 = ( tex2DNode43.a * _MainColor.a );
			float3 worldSpaceViewDir7_g22225 = WorldSpaceViewDir( float4( 0,0,0,1 ) );
			float AlphaChannel22129 = tex2DNode43.a;
			float temp_output_53_0_g22225 = AlphaChannel22129;
			float ifLocalVar18_g22225 = 0;
			if( 1.0 > _DitherAlphaToggle )
				ifLocalVar18_g22225 = distance( worldSpaceViewDir7_g22225 , float3( 0,0,0 ) );
			else if( 1.0 == _DitherAlphaToggle )
				ifLocalVar18_g22225 = temp_output_53_0_g22225;
			float temp_output_12_0_g22225 = ( _EndDitheringFade + _ProjectionParams.y );
			float4 ase_screenPos = i.screenPosition;
			float4 ase_screenPosNorm = ase_screenPos / ase_screenPos.w;
			ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
			float2 clipScreen23_g22225 = ase_screenPosNorm.xy * _ScreenParams.xy;
			float dither23_g22225 = Dither8x8Bayer( fmod(clipScreen23_g22225.x, 8), fmod(clipScreen23_g22225.y, 8) );
			float2 UV22_g22226 = ase_screenPosNorm.xy;
			float2 localUnStereo22_g22226 = UnStereo( UV22_g22226 );
			float4 ditherCustomScreenPos25_g22225 = float4( ( localUnStereo22_g22226 * _DitherTextureTiling ), 0.0 , 0.0 );
			float dither25_g22225 = DitherNoiseTex(ditherCustomScreenPos25_g22225, _DitherTexture, sampler_trilinear_repeat, _DitherTexture_TexelSize);
			float ifLocalVar26_g22225 = 0;
			if( 1.0 > _DitherTextureToggle )
				ifLocalVar26_g22225 = dither23_g22225;
			else if( 1.0 == _DitherTextureToggle )
				ifLocalVar26_g22225 = dither25_g22225;
			float UVSwitchProp61_g22225 = _DitherMaskUVSwitch;
			float2 UV061_g22225 = i.uv_texcoord.xy;
			float2 UV161_g22225 = i.uv2_texcoord2;
			float2 UV261_g22225 = i.uv3_texcoord3;
			float2 UV361_g22225 = i.uv4_texcoord4;
			float2 localUVSwitch61_g22225 = UVSwitch( UVSwitchProp61_g22225 , UV061_g22225 , UV161_g22225 , UV261_g22225 , UV361_g22225 );
			float ifLocalVar37_g22225 = 0;
			if( 1.0 > _DitherAlphaToggle )
				ifLocalVar37_g22225 = SAMPLE_TEXTURE2D( _DitherMask, sampler_trilinear_repeat, ( ( _DitherMask_ST.xy * localUVSwitch61_g22225 ) + _DitherMask_ST.zw ) ).g;
			else if( 1.0 == _DitherAlphaToggle )
				ifLocalVar37_g22225 = ( 1.0 - temp_output_53_0_g22225 );
			float lerpResult42_g22225 = lerp( 1.0 , ( 1.0 - ( ( ( ifLocalVar18_g22225 + -temp_output_12_0_g22225 ) / ( _StartDitheringFade - temp_output_12_0_g22225 ) ) - ifLocalVar26_g22225 ) ) , ifLocalVar37_g22225);
			float ifLocalVar44_g22225 = 0;
			if( 0.0 == ( _StartDitheringFade + _EndDitheringFade ) )
				ifLocalVar44_g22225 = 1.0;
			else if( 0.0 < ( _StartDitheringFade + _EndDitheringFade ) )
				ifLocalVar44_g22225 = lerpResult42_g22225;
			float3 Texture18_g21914 = tex2DNode43.rgb;
			float grayscale5_g21914 = (Texture18_g21914.r + Texture18_g21914.g + Texture18_g21914.b) / 3;
			float UVSwitchProp257_g21914 = _HueMaskUVSwitch;
			float2 UV0257_g21914 = i.uv_texcoord.xy;
			float2 UV1257_g21914 = i.uv2_texcoord2;
			float2 UV2257_g21914 = i.uv3_texcoord3;
			float2 UV3257_g21914 = i.uv4_texcoord4;
			float2 localUVSwitch257_g21914 = UVSwitch( UVSwitchProp257_g21914 , UV0257_g21914 , UV1257_g21914 , UV2257_g21914 , UV3257_g21914 );
			float2 temp_output_252_0_g21914 = ( ( _HueMask_ST.xy * localUVSwitch257_g21914 ) + _HueMask_ST.zw );
			float HueMaskG53_g21914 = SAMPLE_TEXTURE2D( _HueMask, sampler_point_clamp, temp_output_252_0_g21914 ).g;
			float ifLocalVar218_g21914 = 0;
			if( 1.0 > _ToggleHueTexforSpeed )
				ifLocalVar218_g21914 = 1.0;
			else if( 1.0 == _ToggleHueTexforSpeed )
				ifLocalVar218_g21914 = HueMaskG53_g21914;
			float mulTime2_g21914 = _Time.y * ( _HueShiftSpeed * ifLocalVar218_g21914 );
			float3 hsvTorgb3_g21915 = HSVToRGB( float3(( mulTime2_g21914 + _HueShiftRandomizer ),1.0,1.0) );
			float3 ifLocalVar13_g21914 = 0;
			if( ( _HueShiftSpeed + _HueShiftRandomizer ) > 0.0 )
				ifLocalVar13_g21914 = ( grayscale5_g21914 * hsvTorgb3_g21915 );
			else if( ( _HueShiftSpeed + _HueShiftRandomizer ) == 0.0 )
				ifLocalVar13_g21914 = Texture18_g21914;
			float HueMaskR52_g21914 = SAMPLE_TEXTURE2D( _HueMask, sampler_trilinear_repeat, temp_output_252_0_g21914 ).r;
			float ifLocalVar9_g21914 = 0;
			if( 1.0 > _HueMaskinverter )
				ifLocalVar9_g21914 = HueMaskR52_g21914;
			else if( 1.0 == _HueMaskinverter )
				ifLocalVar9_g21914 = ( 1.0 - HueMaskR52_g21914 );
			float lerpResult15_g21914 = lerp( 0.0 , ifLocalVar9_g21914 , _HueShiftblend);
			float3 lerpResult16_g21914 = lerp( Texture18_g21914 , ifLocalVar13_g21914 , lerpResult15_g21914);
			float3 desaturateInitialColor626 = ( lerpResult16_g21914 * (_MainColor).rgb );
			float desaturateDot626 = dot( desaturateInitialColor626, float3( 0.299, 0.587, 0.114 ));
			float3 desaturateVar626 = lerp( desaturateInitialColor626, desaturateDot626.xxx, ( 1.0 - _Saturation ) );
			float3 MainTexSaturate2197 = desaturateVar626;
			float3 temp_output_150_0_g22165 = MainTexSaturate2197;
			float MonochromeTogglePixelLight1337_g22165 = _ToggleMonochromePixelLight;
			float ToggleSteps66_g22165 = _ToggleSteps;
			float4 localFourLightPosX340_g21912 = FourLightPosX();
			float3 ase_worldPos = i.worldPos;
			float4 temp_cast_15 = (ase_worldPos.x).xxxx;
			float4 FourLightPosX0WorldPos286_g21912 = ( localFourLightPosX340_g21912 - temp_cast_15 );
			float4 localFourLightPosY342_g21912 = FourLightPosY();
			float4 temp_cast_16 = (ase_worldPos.y).xxxx;
			float4 FourLightPosY0WorldPos291_g21912 = ( localFourLightPosY342_g21912 - temp_cast_16 );
			float4 localFourLightPosZ296_g21912 = FourLightPosZ();
			float4 temp_cast_17 = (ase_worldPos.z).xxxx;
			float4 FourLightPosZ0WorldPos325_g21912 = ( localFourLightPosZ296_g21912 - temp_cast_17 );
			float4 temp_cast_18 = (1E-06).xxxx;
			float4 temp_output_328_0_g21912 = max( ( ( FourLightPosX0WorldPos286_g21912 * FourLightPosX0WorldPos286_g21912 ) + ( FourLightPosY0WorldPos291_g21912 * FourLightPosY0WorldPos291_g21912 ) + ( FourLightPosZ0WorldPos325_g21912 * FourLightPosZ0WorldPos325_g21912 ) ) , temp_cast_18 );
			float3 _DefaultTangentVector = float3(0,0,1);
			float UVSwitchProp88_g21801 = _NormalMapUVSwitch;
			float2 UV088_g21801 = i.uv_texcoord.xy;
			float2 UV188_g21801 = i.uv2_texcoord2;
			float2 UV288_g21801 = i.uv3_texcoord3;
			float2 UV388_g21801 = i.uv4_texcoord4;
			float2 localUVSwitch88_g21801 = UVSwitch( UVSwitchProp88_g21801 , UV088_g21801 , UV188_g21801 , UV288_g21801 , UV388_g21801 );
			float UVSwitchProp107_g21801 = _SecondaryNormalMaskUVSwitch;
			float2 UV0107_g21801 = i.uv_texcoord.xy;
			float2 UV1107_g21801 = i.uv2_texcoord2;
			float2 UV2107_g21801 = i.uv3_texcoord3;
			float2 UV3107_g21801 = i.uv4_texcoord4;
			float2 localUVSwitch107_g21801 = UVSwitch( UVSwitchProp107_g21801 , UV0107_g21801 , UV1107_g21801 , UV2107_g21801 , UV3107_g21801 );
			float4 tex2DNode65_g21801 = SAMPLE_TEXTURE2D( _SecondaryNormalMask, sampler_trilinear_repeat, ( ( _SecondaryNormalMask_ST.xy * localUVSwitch107_g21801 ) + _SecondaryNormalMask_ST.zw ) );
			float3 lerpResult63_g21801 = lerp( _DefaultTangentVector , UnpackScaleNormal( SAMPLE_TEXTURE2D( _NormalMap, sampler_trilinear_repeat, ( ( _NormalMap_ST.xy * localUVSwitch88_g21801 ) + _NormalMap_ST.zw ) ), _NormalScale ) , tex2DNode65_g21801.a);
			float UVSwitchProp98_g21801 = _SecondaryNormalUVSwitch;
			float2 UV098_g21801 = i.uv_texcoord.xy;
			float2 UV198_g21801 = i.uv2_texcoord2;
			float2 UV298_g21801 = i.uv3_texcoord3;
			float2 UV398_g21801 = i.uv4_texcoord4;
			float2 localUVSwitch98_g21801 = UVSwitch( UVSwitchProp98_g21801 , UV098_g21801 , UV198_g21801 , UV298_g21801 , UV398_g21801 );
			float3 lerpResult58_g21801 = lerp( _DefaultTangentVector , UnpackScaleNormal( SAMPLE_TEXTURE2D( _SecondaryNormal, sampler_trilinear_repeat, ( ( _SecondaryNormal_ST.xy * localUVSwitch98_g21801 ) + _SecondaryNormal_ST.zw ) ), _SecondaryNormalScale ) , tex2DNode65_g21801.g);
			float3 temp_output_54_0_g21801 = BlendNormals( lerpResult63_g21801 , lerpResult58_g21801 );
			float3 newWorldNormal50_g21801 = (WorldNormalVector( i , temp_output_54_0_g21801 ));
			float localOutlineSwitch128_g21801 = ( 0.0 );
			float3 true128_g21801 = newWorldNormal50_g21801;
			float3 false128_g21801 = -newWorldNormal50_g21801;
			float3 Out0128_g21801 = float3( 0,0,0 );
			{
			#ifdef FOROUTLINE
			Out0128_g21801 = true128_g21801; //Outline
			#else
			Out0128_g21801 = false128_g21801; //Not Outline
			#endif
			#define FOROUTLINE
			}
			float3 switchResult119_g21801 = (((i.ASEVFace>0)?(newWorldNormal50_g21801):(Out0128_g21801)));
			float3 normalizeResult53_g21801 = normalize( switchResult119_g21801 );
			float3 worldnormals2351 = normalizeResult53_g21801;
			float3 WorldNormals20_g21912 = worldnormals2351;
			float3 break295_g21912 = WorldNormals20_g21912;
			float4 temp_output_366_0_g21912 = ( rsqrt( temp_output_328_0_g21912 ) * ( ( FourLightPosX0WorldPos286_g21912 * break295_g21912.x ) + ( FourLightPosY0WorldPos291_g21912 * break295_g21912.y ) + ( FourLightPosZ0WorldPos325_g21912 * break295_g21912.z ) ) );
			float4 VertexLightNdLNONMAX21088 = temp_output_366_0_g21912;
			float NdLHalfingControl704_g22165 = _NdLHalfingControl;
			float RampOffset167_g22165 = _RampOffset;
			float4 temp_output_1224_0_g22165 = saturate( ( ( VertexLightNdLNONMAX21088 * NdLHalfingControl704_g22165 ) + RampOffset167_g22165 ) );
			float4 VertexLightUV349_g22165 = temp_output_1224_0_g22165;
			float4 break548_g22165 = VertexLightUV349_g22165;
			float2 temp_cast_19 = (break548_g22165.x).xx;
			float4 tex2DNode647_g22165 = SAMPLE_TEXTURE2D( _ToonRamp, sampler_linear_clamp, temp_cast_19 );
			float3 ToonRampTexVLOne2100_g22165 = (tex2DNode647_g22165).rgb;
			float2 uv_ShadowColorMap = i.uv_texcoord * _ShadowColorMap_ST.xy + _ShadowColorMap_ST.zw;
			float4 tex2DNode1489_g22165 = SAMPLE_TEXTURE2D( _ShadowColorMap, sampler_trilinear_clamp, uv_ShadowColorMap );
			float3 lerpResult1511_g22165 = lerp( (_RampColor).rgb , (tex2DNode1489_g22165).rgb , ( max( max( tex2DNode1489_g22165.r , tex2DNode1489_g22165.g ) , tex2DNode1489_g22165.b ) * _ShadowColorMapStrength ));
			float3 RampColorRGB42_g22165 = lerpResult1511_g22165;
			float ColoringPointLights1080_g22165 = _ColoringPointLights;
			float3 lerpResult2003_g22165 = lerp( ToonRampTexVLOne2100_g22165 , RampColorRGB42_g22165 , ColoringPointLights1080_g22165);
			half3 linearRgb1700_g22165 = tex2DNode647_g22165.rgb;
			half localgetLinearRgbToLuminance1700_g22165 = getLinearRgbToLuminance( linearRgb1700_g22165 );
			float2 temp_cast_21 = (break548_g22165.y).xx;
			float4 tex2DNode648_g22165 = SAMPLE_TEXTURE2D( _ToonRamp, sampler_linear_clamp, temp_cast_21 );
			half3 linearRgb1701_g22165 = tex2DNode648_g22165.rgb;
			half localgetLinearRgbToLuminance1701_g22165 = getLinearRgbToLuminance( linearRgb1701_g22165 );
			float2 temp_cast_23 = (break548_g22165.z).xx;
			float4 tex2DNode649_g22165 = SAMPLE_TEXTURE2D( _ToonRamp, sampler_linear_clamp, temp_cast_23 );
			half3 linearRgb1702_g22165 = tex2DNode649_g22165.rgb;
			half localgetLinearRgbToLuminance1702_g22165 = getLinearRgbToLuminance( linearRgb1702_g22165 );
			float2 temp_cast_25 = (break548_g22165.w).xx;
			float4 tex2DNode650_g22165 = SAMPLE_TEXTURE2D( _ToonRamp, sampler_linear_clamp, temp_cast_25 );
			half3 linearRgb1703_g22165 = tex2DNode650_g22165.rgb;
			half localgetLinearRgbToLuminance1703_g22165 = getLinearRgbToLuminance( linearRgb1703_g22165 );
			float4 appendResult538_g22165 = (float4(localgetLinearRgbToLuminance1700_g22165 , localgetLinearRgbToLuminance1701_g22165 , localgetLinearRgbToLuminance1702_g22165 , localgetLinearRgbToLuminance1703_g22165));
			float4 ToonRampTexVertexLightLuminanced352_g22165 = appendResult538_g22165;
			float PointSpotShadows2112_g22165 = _PointSpotShadowIntensity;
			float4 break390_g22165 = saturate( ( ToonRampTexVertexLightLuminanced352_g22165 + ( 1.0 - PointSpotShadows2112_g22165 ) ) );
			float3 lerpResult2004_g22165 = lerp( lerpResult2003_g22165 , float3( 1,1,1 ) , break390_g22165.x);
			float3 localLightColorZero385_g22165 = LightColorZero();
			float4 localFourLightAtten305_g21912 = FourLightAtten();
			float4 temp_cast_27 = (1E-06).xxxx;
			float4 temp_output_272_0_g21912 = ( localFourLightAtten305_g21912 * temp_output_328_0_g21912 );
			float4 temp_cast_28 = (1E-06).xxxx;
			float4 temp_output_343_0_g21912 = saturate( ( 1.0 - ( temp_output_272_0_g21912 / 25.0 ) ) );
			float4 temp_output_320_0_g21912 = min( ( 1.0 / ( 1.0 + temp_output_272_0_g21912 ) ) , ( temp_output_343_0_g21912 * temp_output_343_0_g21912 ) );
			float4 VertexLightAtten21183 = temp_output_320_0_g21912;
			float4 temp_output_1306_0_g22165 = VertexLightAtten21183;
			float4 break2039_g22165 = temp_output_1306_0_g22165;
			float3 ToonRampTexVLTwo2103_g22165 = (tex2DNode648_g22165).rgb;
			float3 lerpResult2029_g22165 = lerp( ToonRampTexVLTwo2103_g22165 , RampColorRGB42_g22165 , ColoringPointLights1080_g22165);
			float3 lerpResult2028_g22165 = lerp( lerpResult2029_g22165 , float3( 1,1,1 ) , break390_g22165.y);
			float3 localLightColorZOne1302_g22165 = LightColorZOne();
			float3 ToonRampTexVLThree2105_g22165 = (tex2DNode649_g22165).rgb;
			float3 lerpResult2033_g22165 = lerp( ToonRampTexVLThree2105_g22165 , RampColorRGB42_g22165 , ColoringPointLights1080_g22165);
			float3 lerpResult2032_g22165 = lerp( lerpResult2033_g22165 , float3( 1,1,1 ) , break390_g22165.z);
			float3 localLightColorZTwo1303_g22165 = LightColorZTwo();
			float3 ToonRampTexVLFour2107_g22165 = (tex2DNode650_g22165).rgb;
			float3 lerpResult2037_g22165 = lerp( ToonRampTexVLFour2107_g22165 , RampColorRGB42_g22165 , ColoringPointLights1080_g22165);
			float3 lerpResult2036_g22165 = lerp( lerpResult2037_g22165 , float3( 1,1,1 ) , break390_g22165.w);
			float3 localLightColorZThree1304_g22165 = LightColorZThree();
			int Steps30_g22165 = _Steps;
			float4 VertexLightNdLStepped2141_g22165 = saturate( ( floor( ( temp_output_1224_0_g22165 * Steps30_g22165 ) ) / ( Steps30_g22165 - 1 ) ) );
			float4 break2090_g22165 = saturate( ( VertexLightNdLStepped2141_g22165 + ( 1.0 - PointSpotShadows2112_g22165 ) ) );
			float3 temp_cast_29 = (break2090_g22165.x).xxx;
			float3 lerpResult2097_g22165 = lerp( temp_cast_29 , RampColorRGB42_g22165 , ColoringPointLights1080_g22165);
			float3 lerpResult2089_g22165 = lerp( lerpResult2097_g22165 , float3( 1,1,1 ) , break2090_g22165.x);
			float3 localLightColorZero2091_g22165 = LightColorZero();
			float4 break2074_g22165 = temp_output_1306_0_g22165;
			float3 temp_cast_30 = (break2090_g22165.y).xxx;
			float3 lerpResult2084_g22165 = lerp( temp_cast_30 , RampColorRGB42_g22165 , ColoringPointLights1080_g22165);
			float3 lerpResult2087_g22165 = lerp( lerpResult2084_g22165 , float3( 1,1,1 ) , break2090_g22165.y);
			float3 localLightColorZOne2083_g22165 = LightColorZOne();
			float3 temp_cast_31 = (break2090_g22165.z).xxx;
			float3 lerpResult2081_g22165 = lerp( temp_cast_31 , RampColorRGB42_g22165 , ColoringPointLights1080_g22165);
			float3 lerpResult2073_g22165 = lerp( lerpResult2081_g22165 , float3( 1,1,1 ) , break2090_g22165.z);
			float3 localLightColorZTwo2077_g22165 = LightColorZTwo();
			float3 temp_cast_32 = (break2090_g22165.w).xxx;
			float3 lerpResult2093_g22165 = lerp( temp_cast_32 , RampColorRGB42_g22165 , ColoringPointLights1080_g22165);
			float3 lerpResult2095_g22165 = lerp( lerpResult2093_g22165 , float3( 1,1,1 ) , break2090_g22165.w);
			float3 localLightColorZThree2080_g22165 = LightColorZThree();
			float3 ifLocalVar553_g22165 = 0;
			if( 1.0 > ToggleSteps66_g22165 )
				ifLocalVar553_g22165 = ( ( lerpResult2004_g22165 * localLightColorZero385_g22165 * break2039_g22165.x ) + ( lerpResult2028_g22165 * localLightColorZOne1302_g22165 * break2039_g22165.y ) + ( lerpResult2032_g22165 * localLightColorZTwo1303_g22165 * break2039_g22165.z ) + ( lerpResult2036_g22165 * localLightColorZThree1304_g22165 * break2039_g22165.w ) );
			else if( 1.0 == ToggleSteps66_g22165 )
				ifLocalVar553_g22165 = ( ( lerpResult2089_g22165 * localLightColorZero2091_g22165 * break2074_g22165.x ) + ( lerpResult2087_g22165 * localLightColorZOne2083_g22165 * break2074_g22165.y ) + ( lerpResult2073_g22165 * localLightColorZTwo2077_g22165 * break2074_g22165.z ) + ( lerpResult2095_g22165 * localLightColorZThree2080_g22165 * break2074_g22165.w ) );
			half3 linearRgb1433_g22165 = ifLocalVar553_g22165;
			half localgetLinearRgbToLuminance1433_g22165 = getLinearRgbToLuminance( linearRgb1433_g22165 );
			float3 temp_cast_33 = (localgetLinearRgbToLuminance1433_g22165).xxx;
			float3 ifLocalVar1341_g22165 = 0;
			if( 1.0 > MonochromeTogglePixelLight1337_g22165 )
				ifLocalVar1341_g22165 = ifLocalVar553_g22165;
			else if( 1.0 == MonochromeTogglePixelLight1337_g22165 )
				ifLocalVar1341_g22165 = temp_cast_33;
			#ifdef UNITY_PASS_FORWARDBASE
				float3 staticSwitch1927_g22165 = ifLocalVar1341_g22165;
			#else
				float3 staticSwitch1927_g22165 = float3( 0,0,0 );
			#endif
			#ifdef VERTEXLIGHT_ON
				float3 staticSwitch1928_g22165 = staticSwitch1927_g22165;
			#else
				float3 staticSwitch1928_g22165 = float3( 0,0,0 );
			#endif
			float3 DiffuseVertexLighting354_g22165 = staticSwitch1928_g22165;
			float3 temp_output_1997_0_g22165 = ( DiffuseVertexLighting354_g22165 * _MaxLightDirect );
			#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
			float4 ase_lightColor = 0;
			#else //aselc
			float4 ase_lightColor = _LightColor0;
			#endif //aselc
			#ifdef DIRECTIONAL
				float3 staticSwitch952_g22165 = ase_lightColor.rgb;
			#else
				float3 staticSwitch952_g22165 = float3( 0,0,0 );
			#endif
			half3 localAmbient1767_g22165 = Ambient();
			half3 localAmbient1820_g22165 = Ambient();
			float3 break1831_g22165 = localAmbient1820_g22165;
			float3 lerpResult1766_g22165 = lerp( ( localAmbient1767_g22165 * _AmbientBoost ) , localAmbient1767_g22165 , saturate( max( max( break1831_g22165.x , break1831_g22165.y ) , break1831_g22165.z ) ));
			float3 AmbientLightBoosted1782_g22165 = lerpResult1766_g22165;
			half3 linearRgb1430_g22165 = ( staticSwitch952_g22165 + AmbientLightBoosted1782_g22165 );
			half localgetLinearRgbToLuminance1430_g22165 = getLinearRgbToLuminance( linearRgb1430_g22165 );
			half3 linearRgb1431_g22165 = ase_lightColor.rgb;
			half localgetLinearRgbToLuminance1431_g22165 = getLinearRgbToLuminance( linearRgb1431_g22165 );
			float3 temp_cast_34 = (localgetLinearRgbToLuminance1431_g22165).xxx;
			float3 ifLocalVar1331_g22165 = 0;
			if( 1.0 > MonochromeTogglePixelLight1337_g22165 )
				ifLocalVar1331_g22165 = ase_lightColor.rgb;
			else if( 1.0 == MonochromeTogglePixelLight1337_g22165 )
				ifLocalVar1331_g22165 = temp_cast_34;
			#if defined(LIGHTMAP_ON) && UNITY_VERSION < 560 //aseld
			float3 ase_worldlightDir = 0;
			#else //aseld
			float3 ase_worldlightDir = normalize( UnityWorldSpaceLightDir( ase_worldPos ) );
			#endif //aseld
			float dotResult3_g21912 = dot( WorldNormals20_g21912 , ase_worldlightDir );
			float NdotL19801 = dotResult3_g21912;
			float NdotLHalfed204_g22165 = saturate( ( ( NdotL19801 * NdLHalfingControl704_g22165 ) + RampOffset167_g22165 ) );
			float2 temp_cast_35 = (NdotLHalfed204_g22165).xx;
			float3 ToonRampTexNDL207_g22165 = (SAMPLE_TEXTURE2D( _ToonRamp, sampler_linear_clamp, temp_cast_35 )).rgb;
			float DirectShadowIntensity163_g22165 = _DirectShadowIntensity;
			float3 lerpResult1929_g22165 = lerp( float3( 1,1,1 ) , ToonRampTexNDL207_g22165 , DirectShadowIntensity163_g22165);
			float3 lerpResult2115_g22165 = lerp( float3( 1,1,1 ) , ToonRampTexNDL207_g22165 , PointSpotShadows2112_g22165);
			#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch2068_g22165 = lerpResult2115_g22165;
			#else
				float3 staticSwitch2068_g22165 = lerpResult1929_g22165;
			#endif
			float3 _egg = float3(1,1,1);
			float TangentNormalAtten1259_g22165 = ase_lightAtten;
			float2 temp_cast_36 = (TangentNormalAtten1259_g22165).xx;
			float3 ToonRampTexATTEN216_g22165 = (SAMPLE_TEXTURE2D( _ToonRamp, sampler_linear_clamp, temp_cast_36 )).rgb;
			#ifdef DIRECTIONAL
				float3 staticSwitch1968_g22165 = ToonRampTexATTEN216_g22165;
			#else
				float3 staticSwitch1968_g22165 = _egg;
			#endif
			float3 DirectionalAttenuationRamp24_g22165 = staticSwitch1968_g22165;
			float SelfCastShadows1958_g22165 = _SelfCastShadows;
			float3 lerpResult1941_g22165 = lerp( float3( 1,1,1 ) , DirectionalAttenuationRamp24_g22165 , SelfCastShadows1958_g22165);
			float temp_output_708_0_g22165 = saturate( ( floor( ( NdotLHalfed204_g22165 * Steps30_g22165 ) ) / ( Steps30_g22165 - 1 ) ) );
			float lerpResult1945_g22165 = lerp( 1.0 , temp_output_708_0_g22165 , DirectShadowIntensity163_g22165);
			float lerpResult2131_g22165 = lerp( 1.0 , temp_output_708_0_g22165 , PointSpotShadows2112_g22165);
			#ifdef UNITY_PASS_FORWARDADD
				float staticSwitch2129_g22165 = lerpResult2131_g22165;
			#else
				float staticSwitch2129_g22165 = lerpResult1945_g22165;
			#endif
			#ifdef DIRECTIONAL
				float staticSwitch1967_g22165 = TangentNormalAtten1259_g22165;
			#else
				float staticSwitch1967_g22165 = 1.0;
			#endif
			float DirectionalAttenuationSteps1969_g22165 = staticSwitch1967_g22165;
			float temp_output_1936_0_g22165 = saturate( ( floor( ( DirectionalAttenuationSteps1969_g22165 * Steps30_g22165 ) ) / ( Steps30_g22165 - 1 ) ) );
			float lerpResult1942_g22165 = lerp( 1.0 , temp_output_1936_0_g22165 , SelfCastShadows1958_g22165);
			float3 temp_cast_37 = (min( staticSwitch2129_g22165 , lerpResult1942_g22165 )).xxx;
			float3 ifLocalVar71_g22165 = 0;
			UNITY_BRANCH 
			if( 1.0 > ToggleSteps66_g22165 )
				ifLocalVar71_g22165 = min( staticSwitch2068_g22165 , lerpResult1941_g22165 );
			else if( 1.0 == ToggleSteps66_g22165 )
				ifLocalVar71_g22165 = temp_cast_37;
			float2 uv_ShadowMask = i.uv_texcoord * _ShadowMask_ST.xy + _ShadowMask_ST.zw;
			float2 temp_output_698_0_g22165 = (SAMPLE_TEXTURE2D( _ShadowMask, sampler_trilinear_clamp, uv_ShadowMask )).rg;
			float2 ifLocalVar597_g22165 = 0;
			if( 1.0 > _ShadowMaskinvert )
				ifLocalVar597_g22165 = temp_output_698_0_g22165;
			else if( 1.0 == _ShadowMaskinvert )
				ifLocalVar597_g22165 = ( 1.0 - temp_output_698_0_g22165 );
			float2 break699_g22165 = ( ifLocalVar597_g22165 * _ShadowMaskStrength );
			float PixelShadowMask279_g22165 = break699_g22165.x;
			float3 lerpResult290_g22165 = lerp( float3( 1,1,1 ) , ifLocalVar71_g22165 , PixelShadowMask279_g22165);
			float3 LightRamp85_g22165 = lerpResult290_g22165;
			float3 lerpResult1624_g22165 = lerp( LightRamp85_g22165 , RampColorRGB42_g22165 , ColoringPointLights1080_g22165);
			half3 linearRgb2055_g22165 = LightRamp85_g22165;
			half localgetLinearRgbToLuminance2055_g22165 = getLinearRgbToLuminance( linearRgb2055_g22165 );
			float3 lerpResult1623_g22165 = lerp( lerpResult1624_g22165 , float3( 1,1,1 ) , localgetLinearRgbToLuminance2055_g22165);
			#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch1036_g22165 = ( lerpResult1623_g22165 * ase_lightAtten );
			#else
				float3 staticSwitch1036_g22165 = float3( 0,0,0 );
			#endif
			float ColoringDirectEnvLights1082_g22165 = _ColoringDirectEnvLights;
			float3 lerpResult1544_g22165 = lerp( LightRamp85_g22165 , RampColorRGB42_g22165 , ColoringDirectEnvLights1082_g22165);
			float3 lerpResult1538_g22165 = lerp( lerpResult1544_g22165 , float3( 1,1,1 ) , localgetLinearRgbToLuminance2055_g22165);
			#ifdef DIRECTIONAL
				float3 staticSwitch1035_g22165 = lerpResult1538_g22165;
			#else
				float3 staticSwitch1035_g22165 = staticSwitch1036_g22165;
			#endif
			float MonochromeToggleEnv1327_g22165 = _ToggleMonochromeEnv;
			half3 linearRgb1432_g22165 = AmbientLightBoosted1782_g22165;
			half localgetLinearRgbToLuminance1432_g22165 = getLinearRgbToLuminance( linearRgb1432_g22165 );
			float3 temp_cast_38 = (localgetLinearRgbToLuminance1432_g22165).xxx;
			float3 ifLocalVar1325_g22165 = 0;
			if( 1.0 > MonochromeToggleEnv1327_g22165 )
				ifLocalVar1325_g22165 = AmbientLightBoosted1782_g22165;
			else if( 1.0 == MonochromeToggleEnv1327_g22165 )
				ifLocalVar1325_g22165 = temp_cast_38;
			float3 localambientDir475_g21912 = ambientDir();
			float dotResult67_g21912 = dot( localambientDir475_g21912 , WorldNormals20_g21912 );
			float NdotAmbientL19820 = dotResult67_g21912;
			float AmbientUV224_g22165 = saturate( ( ( NdotAmbientL19820 * NdLHalfingControl704_g22165 ) + RampOffset167_g22165 ) );
			float2 temp_cast_39 = (AmbientUV224_g22165).xx;
			float3 ToonRampTexAmbient220_g22165 = (SAMPLE_TEXTURE2D( _ToonRamp, sampler_linear_clamp, temp_cast_39 )).rgb;
			float temp_output_709_0_g22165 = saturate( ( floor( ( AmbientUV224_g22165 * Steps30_g22165 ) ) / ( Steps30_g22165 - 1 ) ) );
			float3 temp_cast_40 = (temp_output_709_0_g22165).xxx;
			float3 ifLocalVar92_g22165 = 0;
			UNITY_BRANCH 
			if( 1.0 > ToggleSteps66_g22165 )
				ifLocalVar92_g22165 = ToonRampTexAmbient220_g22165;
			else if( 1.0 == ToggleSteps66_g22165 )
				ifLocalVar92_g22165 = temp_cast_40;
			float IndirectShadowMask688_g22165 = break699_g22165.y;
			float3 lerpResult1684_g22165 = lerp( float3( 1,1,1 ) , ifLocalVar92_g22165 , IndirectShadowMask688_g22165);
			float3 lerpResult1626_g22165 = lerp( lerpResult1684_g22165 , RampColorRGB42_g22165 , ColoringDirectEnvLights1082_g22165);
			half3 linearRgb2058_g22165 = lerpResult1684_g22165;
			half localgetLinearRgbToLuminance2058_g22165 = getLinearRgbToLuminance( linearRgb2058_g22165 );
			float3 lerpResult1627_g22165 = lerp( lerpResult1626_g22165 , float3( 1,1,1 ) , localgetLinearRgbToLuminance2058_g22165);
			float3 lerpResult284_g22165 = lerp( float3( 1,1,1 ) , lerpResult1627_g22165 , max( _IndirectShadowIntensity , 1E-06 ));
			half3 linearRgb1953_g22165 = ( ase_lightColor.rgb * staticSwitch1035_g22165 );
			half localgetLinearRgbToLuminance1953_g22165 = getLinearRgbToLuminance( linearRgb1953_g22165 );
			float3 lerpResult1661_g22165 = lerp( lerpResult284_g22165 , float3( 1,1,1 ) , saturate( localgetLinearRgbToLuminance1953_g22165 ));
			float2 uv_OcclusionMap = i.uv_texcoord * _OcclusionMap_ST.xy + _OcclusionMap_ST.zw;
			float lerpResult54_g22165 = lerp( 1.0 , SAMPLE_TEXTURE2D( _OcclusionMap, sampler_trilinear_repeat, uv_OcclusionMap ).g , _Occlusion);
			float3 FinalAmbientBakedLight132_g22165 = ( ifLocalVar1325_g22165 * lerpResult1661_g22165 * lerpResult54_g22165 );
			float3 ForFinalLightCalculation993_g22165 = ( ( ifLocalVar1331_g22165 * staticSwitch1035_g22165 ) + FinalAmbientBakedLight132_g22165 );
			float3 ifLocalVar944_g22165 = 0;
			if( ( localgetLinearRgbToLuminance1430_g22165 * _ExperimentalToggle ) <= 1.0 )
				ifLocalVar944_g22165 = ForFinalLightCalculation993_g22165;
			else
				ifLocalVar944_g22165 = ( max( float3( 0,0,0 ) , ForFinalLightCalculation993_g22165 ) / localgetLinearRgbToLuminance1430_g22165 );
			float3 temp_output_782_0_g22165 = ( ifLocalVar944_g22165 * _MaxLightDirect );
			float3 ase_worldViewDir = Unity_SafeNormalize( UnityWorldSpaceViewDir( ase_worldPos ) );
			float dotResult442_g21912 = dot( WorldNormals20_g21912 , ase_worldViewDir );
			float NdotV19803 = dotResult442_g21912;
			float smoothstepResult10_g21916 = smoothstep( min( _ShadowRimSharpness , ( 1.0 - 1E-06 ) ) , 1.0 , ( NdotV19803 + _ShadowRimRange ));
			float lerpResult11_g21916 = lerp( 1.0 , smoothstepResult10_g21916 , _ShadowRimOpacity);
			float ifLocalVar8684 = 0;
			if( 1.0 > _RimSwitch )
				ifLocalVar8684 = lerpResult11_g21916;
			else if( 1.0 == _RimSwitch )
				ifLocalVar8684 = 1.0;
			float ShadowRim2907 = ifLocalVar8684;
			float3 FinalLight2205 = ( ( ( temp_output_150_0_g22165 * temp_output_1997_0_g22165 ) + ( temp_output_782_0_g22165 * temp_output_150_0_g22165 ) ) * ShadowRim2907 );
			float3 temp_output_21784_0 = ( FinalLight2205 * AlphaChannelMul9091 );
			float3 ifLocalVar21777 = 0;
			if( 1.0 <= _RenderingMode )
				ifLocalVar21777 = temp_output_21784_0;
			else
				ifLocalVar21777 = FinalLight2205;
			float ToggleAdvanced21493 = _COLORCOLOR;
			float ToggleCubemap21525 = _COLORADDSUBDIFF;
			float temp_output_21533_0 = ( ToggleAdvanced21493 * ToggleCubemap21525 );
			float Intensity285_g22213 = _CubemapIntensity;
			float UVSwitchProp2886_g22213 = _ReflectionMaskUVSwitch;
			float2 UV02886_g22213 = i.uv_texcoord.xy;
			float2 UV12886_g22213 = i.uv2_texcoord2;
			float2 UV22886_g22213 = i.uv3_texcoord3;
			float2 UV32886_g22213 = i.uv4_texcoord4;
			float2 localUVSwitch2886_g22213 = UVSwitch( UVSwitchProp2886_g22213 , UV02886_g22213 , UV12886_g22213 , UV22886_g22213 , UV32886_g22213 );
			float2 ReflectionMaskUVSwitch2896_g22213 = ( ( _ReflectionMask_ST.xy * localUVSwitch2886_g22213 ) + _ReflectionMask_ST.zw );
			float temp_output_80_0_g22213 = ( Intensity285_g22213 * SAMPLE_TEXTURE2D( _ReflectionMask, sampler_trilinear_repeat, ReflectionMaskUVSwitch2896_g22213 ).r );
			float LinearIn2768_g22213 = _Metallic;
			float localgetGammaToLinearSpaceExact2768_g22213 = getGammaToLinearSpaceExact( LinearIn2768_g22213 );
			float Metallic302_g22213 = localgetGammaToLinearSpaceExact2768_g22213;
			float2 uv_MetallicMap = i.uv_texcoord * _MetallicMap_ST.xy + _MetallicMap_ST.zw;
			float4 tex2DNode2688_g22213 = SAMPLE_TEXTURE2D( _MetallicMap, sampler_trilinear_repeat, uv_MetallicMap );
			float MetallicTex289_g22213 = ( Metallic302_g22213 * tex2DNode2688_g22213.r );
			float ifLocalVar22474 = 0;
			if( temp_output_21533_0 > 0.0 )
				ifLocalVar22474 = ( temp_output_80_0_g22213 * MetallicTex289_g22213 );
			float CubemapLightAbsorbtion22506 = ifLocalVar22474;
			float AdvancedToggle555_g22215 = ToggleAdvanced21493;
			float temp_output_570_0_g22215 = ( _MatcapR1Toggle * AdvancedToggle555_g22215 );
			float MatcapR1Blending703_g22215 = _MatcapR1Blending;
			float UVSwitchProp912_g22215 = _ReflectionMaskMatcapUVSwitch;
			float2 UV0912_g22215 = i.uv_texcoord.xy;
			float2 UV1912_g22215 = i.uv2_texcoord2;
			float2 UV2912_g22215 = i.uv3_texcoord3;
			float2 UV3912_g22215 = i.uv4_texcoord4;
			float2 localUVSwitch912_g22215 = UVSwitch( UVSwitchProp912_g22215 , UV0912_g22215 , UV1912_g22215 , UV2912_g22215 , UV3912_g22215 );
			float2 ReflectionMaskMatcapUVSwitch914_g22215 = ( ( _ReflectionMaskMatcap_ST.xy * localUVSwitch912_g22215 ) + _ReflectionMaskMatcap_ST.zw );
			float4 break646_g22215 = SAMPLE_TEXTURE2D( _ReflectionMaskMatcap, sampler_trilinear_repeat, ReflectionMaskMatcapUVSwitch914_g22215 );
			float ReflectionMaskR199_g22215 = break646_g22215.r;
			float ifLocalVar677_g22215 = 0;
			if( 1.0 > ( _MatcapR1Mode + ( 1.0 - temp_output_570_0_g22215 ) ) )
				ifLocalVar677_g22215 = ( MatcapR1Blending703_g22215 * ReflectionMaskR199_g22215 );
			float MatcapR1LightAbsorbtion731_g22215 = ifLocalVar677_g22215;
			float temp_output_573_0_g22215 = ( _MatcapG2Toggle * AdvancedToggle555_g22215 );
			float MatcapG2Blending706_g22215 = _MatcapG2Blending;
			float ReflectionMaskG200_g22215 = break646_g22215.g;
			float ifLocalVar712_g22215 = 0;
			if( 1.0 > ( _MatcapG2Mode + ( 1.0 - temp_output_573_0_g22215 ) ) )
				ifLocalVar712_g22215 = ( MatcapG2Blending706_g22215 * ReflectionMaskG200_g22215 );
			float MatcapG2LightAbsorbtion732_g22215 = ifLocalVar712_g22215;
			float temp_output_576_0_g22215 = ( _MatcapB3Toggle * AdvancedToggle555_g22215 );
			float MatcapB3Blending708_g22215 = _MatcapB3Blending;
			float ReflectionMaskB201_g22215 = break646_g22215.b;
			float ifLocalVar715_g22215 = 0;
			if( 1.0 > ( _MatcapB3Mode + ( 1.0 - temp_output_576_0_g22215 ) ) )
				ifLocalVar715_g22215 = ( MatcapB3Blending708_g22215 * ReflectionMaskB201_g22215 );
			float MatcapB3LightAbsorbtion733_g22215 = ifLocalVar715_g22215;
			float temp_output_579_0_g22215 = ( _MatcapA4Toggle * AdvancedToggle555_g22215 );
			float MatcapA4Blending710_g22215 = _MatcapA4Blending;
			float ReflectionMaskA202_g22215 = break646_g22215.a;
			float ifLocalVar718_g22215 = 0;
			if( 1.0 > ( _MatcapA4Mode + ( 1.0 - temp_output_579_0_g22215 ) ) )
				ifLocalVar718_g22215 = ( MatcapA4Blending710_g22215 * ReflectionMaskA202_g22215 );
			float MatcapA4LightAbsorbtion734_g22215 = ifLocalVar718_g22215;
			float MatcapLightAbsorbtion24109 = saturate( ( MatcapR1LightAbsorbtion731_g22215 + MatcapG2LightAbsorbtion732_g22215 + MatcapB3LightAbsorbtion733_g22215 + MatcapA4LightAbsorbtion734_g22215 ) );
			float3 lerpResult22467 = lerp( ifLocalVar21777 , float3( 0,0,0 ) , saturate( ( CubemapLightAbsorbtion22506 + MatcapLightAbsorbtion24109 ) ));
			float locallongIF24841 = ( 0.0 );
			float3 Out24841 = float3( 0,0,0 );
			float4 break24_g21912 = ase_lightColor;
			float GrayscaledLight19806 = saturate( ( max( max( break24_g21912.r , break24_g21912.g ) , break24_g21912.b ) * break24_g21912.a ) );
			float temp_output_1739_0_g22166 = GrayscaledLight19806;
			float3 normalizeResult464_g21912 = ASESafeNormalize( ( ase_worldViewDir + ase_worldlightDir ) );
			float3 HalfVectorUnityNormalized457_g21912 = normalizeResult464_g21912;
			float dotResult42_g21912 = dot( WorldNormals20_g21912 , HalfVectorUnityNormalized457_g21912 );
			float NdotH19802 = dotResult42_g21912;
			float NdotH583_g22166 = NdotH19802;
			float HighlightOffset127_g22166 = _HighlightOffset;
			float3 WorldNormals2285_g22166 = worldnormals2351;
			float3 worldNormal2417_g22166 = WorldNormals2285_g22166;
			float UVSwitchProp2003_g22166 = _SpecularMapUVSwitch;
			float2 UV02003_g22166 = i.uv_texcoord.xy;
			float2 UV12003_g22166 = i.uv2_texcoord2;
			float2 UV22003_g22166 = i.uv3_texcoord3;
			float2 UV32003_g22166 = i.uv4_texcoord4;
			float2 localUVSwitch2003_g22166 = UVSwitch( UVSwitchProp2003_g22166 , UV02003_g22166 , UV12003_g22166 , UV22003_g22166 , UV32003_g22166 );
			float4 tex2DNode1752_g22166 = SAMPLE_TEXTURE2D( _SpecularMap, sampler_trilinear_repeat, ( ( _SpecularMap_ST.xy * localUVSwitch2003_g22166 ) + _SpecularMap_ST.zw ) );
			float4 break380_g22166 = tex2DNode1752_g22166;
			float SpecularMapa1649_g22166 = break380_g22166.a;
			float smoothness2417_g22166 = ( _HighlightSmoothness * SpecularMapa1649_g22166 );
			float localGSAA_Filament2417_g22166 = GSAA_Filament( worldNormal2417_g22166 , smoothness2417_g22166 );
			float HighlightSmoothness128_g22166 = localGSAA_Filament2417_g22166;
			float3 ColorRGB141_g22166 = (_SpecularColor).rgb;
			float temp_output_2_0_g22167 = _SpecularTint;
			float temp_output_3_0_g22167 = ( 1.0 - temp_output_2_0_g22167 );
			float3 appendResult7_g22167 = (float3(temp_output_3_0_g22167 , temp_output_3_0_g22167 , temp_output_3_0_g22167));
			float3 DiffuseTint148_g22166 = ( ( MainTexSaturate2197 * temp_output_2_0_g22167 ) + appendResult7_g22167 );
			float ColorA142_g22166 = _SpecularColor.a;
			float4 SpecularMapRGBA2289_g22166 = tex2DNode1752_g22166;
			float3 SpecularMapRGB160_g22166 = (SpecularMapRGBA2289_g22166).rgb;
			float SpecShadowMaskVar279_g22166 = _SpecShadowMaskVar;
			#ifdef UNITY_PASS_FORWARDADD
				float staticSwitch1892_g22166 = ase_lightAtten;
			#else
				float staticSwitch1892_g22166 = 1.0;
			#endif
			float NdotL595_g22166 = NdotL19801;
			half3 linearRgb2056_g22165 = min( ToonRampTexNDL207_g22165 , DirectionalAttenuationRamp24_g22165 );
			half localgetLinearRgbToLuminance2056_g22165 = getLinearRgbToLuminance( linearRgb2056_g22165 );
			float ifLocalVar1946_g22165 = 0;
			UNITY_BRANCH 
			if( 1.0 > ToggleSteps66_g22165 )
				ifLocalVar1946_g22165 = localgetLinearRgbToLuminance2056_g22165;
			else if( 1.0 == ToggleSteps66_g22165 )
				ifLocalVar1946_g22165 = min( temp_output_708_0_g22165 , temp_output_1936_0_g22165 );
			float DirectLightRamp14556 = ifLocalVar1946_g22165;
			float SpecShadowMaskPower286_g22166 = _SpecShadowMaskPower;
			float temp_output_1_0_g22168 = -max( SpecShadowMaskPower286_g22166 , -0.99 );
			float temp_output_2363_0_g22166 = ( saturate( SpecShadowMaskPower286_g22166 ) * 0.5 );
			float lerpResult2345_g22166 = lerp( ( ( DirectLightRamp14556 - temp_output_1_0_g22168 ) / ( 1.0 - temp_output_1_0_g22168 ) ) , 1.0 , ( ( SpecShadowMaskPower286_g22166 * temp_output_2363_0_g22166 ) + temp_output_2363_0_g22166 ));
			float temp_output_1878_0_g22166 = saturate( lerpResult2345_g22166 );
			#ifdef UNITY_PASS_FORWARDADD
				float staticSwitch621_g22166 = ( temp_output_1878_0_g22166 * ase_lightAtten );
			#else
				float staticSwitch621_g22166 = 0.0;
			#endif
			#ifdef DIRECTIONAL
				float staticSwitch620_g22166 = temp_output_1878_0_g22166;
			#else
				float staticSwitch620_g22166 = staticSwitch621_g22166;
			#endif
			float AdditionalShadowRamp280_g22166 = staticSwitch620_g22166;
			float ifLocalVar1904_g22166 = 0;
			UNITY_BRANCH 
			if( 1.0 > SpecShadowMaskVar279_g22166 )
				ifLocalVar1904_g22166 = staticSwitch1892_g22166;
			else if( 1.0 == SpecShadowMaskVar279_g22166 )
				ifLocalVar1904_g22166 = saturate( ( ase_lightAtten * NdotL595_g22166 ) );
			else if( 1.0 < SpecShadowMaskVar279_g22166 )
				ifLocalVar1904_g22166 = AdditionalShadowRamp280_g22166;
			float ShadowsToonAniso1905_g22166 = ifLocalVar1904_g22166;
			float3 localambientDir468_g21912 = ambientDir();
			float3 normalizeResult467_g21912 = ASESafeNormalize( ( ase_worldViewDir + localambientDir468_g21912 ) );
			float3 AmbientHalfVectorUnityNormalized469_g21912 = normalizeResult467_g21912;
			float dotResult75_g21912 = dot( WorldNormals20_g21912 , AmbientHalfVectorUnityNormalized469_g21912 );
			float NdotAmbientH19817 = dotResult75_g21912;
			float NdotAmbientH591_g22166 = NdotAmbientH19817;
			half3 localAmbient1730_g22166 = Ambient();
			float NdotAmbientL597_g22166 = NdotAmbientL19820;
			half3 linearRgb2057_g22165 = ToonRampTexAmbient220_g22165;
			half localgetLinearRgbToLuminance2057_g22165 = getLinearRgbToLuminance( linearRgb2057_g22165 );
			float ifLocalVar2059_g22165 = 0;
			UNITY_BRANCH 
			if( 1.0 > ToggleSteps66_g22165 )
				ifLocalVar2059_g22165 = localgetLinearRgbToLuminance2057_g22165;
			else if( 1.0 == ToggleSteps66_g22165 )
				ifLocalVar2059_g22165 = temp_output_709_0_g22165;
			float AmbientRamp14557 = ifLocalVar2059_g22165;
			float temp_output_1_0_g22170 = -max( SpecShadowMaskPower286_g22166 , -0.99 );
			float temp_output_2375_0_g22166 = ( saturate( SpecShadowMaskPower286_g22166 ) * 0.5 );
			float lerpResult2369_g22166 = lerp( ( ( AmbientRamp14557 - temp_output_1_0_g22170 ) / ( 1.0 - temp_output_1_0_g22170 ) ) , 1.0 , ( ( SpecShadowMaskPower286_g22166 * temp_output_2375_0_g22166 ) + temp_output_2375_0_g22166 ));
			float ifLocalVar1824_g22166 = 0;
			UNITY_BRANCH 
			if( 1.0 > SpecShadowMaskVar279_g22166 )
				ifLocalVar1824_g22166 = 1.0;
			else if( 1.0 == SpecShadowMaskVar279_g22166 )
				ifLocalVar1824_g22166 = saturate( NdotAmbientL597_g22166 );
			else if( 1.0 < SpecShadowMaskVar279_g22166 )
				ifLocalVar1824_g22166 = saturate( lerpResult2369_g22166 );
			float ShadowsIndirectNdL289_g22166 = ifLocalVar1824_g22166;
			float3 ifLocalVar1740_g22166 = 0;
			if( temp_output_1739_0_g22166 > 0.0 )
				ifLocalVar1740_g22166 = ( saturate( ( ( NdotH583_g22166 + HighlightOffset127_g22166 ) / max( HighlightSmoothness128_g22166 , 1E-06 ) ) ) * ColorRGB141_g22166 * DiffuseTint148_g22166 * ColorA142_g22166 * SpecularMapRGB160_g22166 * ase_lightColor.rgb * ShadowsToonAniso1905_g22166 );
			else if( temp_output_1739_0_g22166 == 0.0 )
				ifLocalVar1740_g22166 = ( saturate( ( ( NdotAmbientH591_g22166 + HighlightOffset127_g22166 ) / max( HighlightSmoothness128_g22166 , 1E-06 ) ) ) * ColorRGB141_g22166 * DiffuseTint148_g22166 * ColorA142_g22166 * SpecularMapRGB160_g22166 * localAmbient1730_g22166 * ShadowsIndirectNdL289_g22166 );
			float3 Toon24841 = ( ifLocalVar1740_g22166 + float3( 0,0,0 ) );
			float ifLocalVar1769_g22166 = 0;
			UNITY_BRANCH 
			if( 1.0 > SpecShadowMaskVar279_g22166 )
				ifLocalVar1769_g22166 = 1.0;
			else if( 1.0 == SpecShadowMaskVar279_g22166 )
				ifLocalVar1769_g22166 = NdotL595_g22166;
			else if( 1.0 < SpecShadowMaskVar279_g22166 )
				ifLocalVar1769_g22166 = temp_output_1878_0_g22166;
			float NdLGGX171_g22166 = ifLocalVar1769_g22166;
			float temp_output_694_0_g22166 = max( 0.0 , NdLGGX171_g22166 );
			float NdotL688_g22166 = temp_output_694_0_g22166;
			float3 viewDir443_g21912 = ase_worldViewDir;
			float3 normal443_g21912 = WorldNormals20_g21912;
			float localCorrectNegativeNdotV443_g21912 = CorrectNegativeNdotV( viewDir443_g21912 , normal443_g21912 );
			float NdotVCorr21432 = localCorrectNegativeNdotV443_g21912;
			float CorrNdotV626_g22166 = NdotVCorr21432;
			float NdotV688_g22166 = CorrNdotV626_g22166;
			float temp_output_566_0_g22166 = ( 1.0 - HighlightSmoothness128_g22166 );
			float temp_output_643_0_g22166 = max( ( temp_output_566_0_g22166 * temp_output_566_0_g22166 ) , 0.002 );
			float roughness688_g22166 = temp_output_643_0_g22166;
			float localgetSmithJointGGXVisibilityTerm688_g22166 = getSmithJointGGXVisibilityTerm( NdotL688_g22166 , NdotV688_g22166 , roughness688_g22166 );
			float GGXVisibilityTerm630_g22166 = localgetSmithJointGGXVisibilityTerm688_g22166;
			float NdotH689_g22166 = max( 0.0 , NdotH583_g22166 );
			float roughness689_g22166 = temp_output_643_0_g22166;
			float localgetGGXTerm689_g22166 = getGGXTerm( NdotH689_g22166 , roughness689_g22166 );
			float GGXTerm630_g22166 = localgetGGXTerm689_g22166;
			float NdotL630_g22166 = temp_output_694_0_g22166;
			float dotResult50_g21912 = dot( ase_worldlightDir , HalfVectorUnityNormalized457_g21912 );
			float LdotH19804 = dotResult50_g21912;
			float LdotH2104_g22166 = LdotH19804;
			float LdotH630_g22166 = max( 0.0 , LdotH2104_g22166 );
			float roughness630_g22166 = temp_output_643_0_g22166;
			float3 specColor630_g22166 = ( ColorRGB141_g22166 * DiffuseTint148_g22166 );
			float ifLocalVar1908_g22166 = 0;
			UNITY_BRANCH 
			if( 1.0 == SpecShadowMaskVar279_g22166 )
				ifLocalVar1908_g22166 = ase_lightAtten;
			else
				ifLocalVar1908_g22166 = staticSwitch1892_g22166;
			float AttenGGX1911_g22166 = ifLocalVar1908_g22166;
			float3 lightcolor630_g22166 = ( AttenGGX1911_g22166 * ase_lightColor.rgb );
			float specularTermToggle630_g22166 = 1.0;
			float3 localcalcSpecularTerm630_g22166 = calcSpecularTerm( GGXVisibilityTerm630_g22166 , GGXTerm630_g22166 , NdotL630_g22166 , LdotH630_g22166 , roughness630_g22166 , specColor630_g22166 , lightcolor630_g22166 , specularTermToggle630_g22166 );
			float temp_output_695_0_g22166 = max( 0.0 , ShadowsIndirectNdL289_g22166 );
			float NdotL690_g22166 = temp_output_695_0_g22166;
			float NdotV690_g22166 = CorrNdotV626_g22166;
			float temp_output_650_0_g22166 = ( 1.0 - HighlightSmoothness128_g22166 );
			float temp_output_648_0_g22166 = max( ( temp_output_650_0_g22166 * temp_output_650_0_g22166 ) , 0.002 );
			float roughness690_g22166 = temp_output_648_0_g22166;
			float localgetSmithJointGGXVisibilityTerm690_g22166 = getSmithJointGGXVisibilityTerm( NdotL690_g22166 , NdotV690_g22166 , roughness690_g22166 );
			float GGXVisibilityTerm666_g22166 = localgetSmithJointGGXVisibilityTerm690_g22166;
			float NdotH691_g22166 = max( 0.0 , NdotAmbientH591_g22166 );
			float roughness691_g22166 = temp_output_648_0_g22166;
			float localgetGGXTerm691_g22166 = getGGXTerm( NdotH691_g22166 , roughness691_g22166 );
			float GGXTerm666_g22166 = localgetGGXTerm691_g22166;
			float NdotL666_g22166 = temp_output_695_0_g22166;
			float3 localambientDir101_g21912 = ambientDir();
			float dotResult82_g21912 = dot( localambientDir101_g21912 , AmbientHalfVectorUnityNormalized469_g21912 );
			float AmbientLdotAmbientH19902 = dotResult82_g21912;
			float AmbientLdotAmbientH2157_g22166 = AmbientLdotAmbientH19902;
			float LdotH666_g22166 = max( 0.0 , AmbientLdotAmbientH2157_g22166 );
			float roughness666_g22166 = temp_output_648_0_g22166;
			float3 specColor666_g22166 = ( ColorRGB141_g22166 * DiffuseTint148_g22166 );
			half3 localAmbient1728_g22166 = Ambient();
			float3 lightcolor666_g22166 = localAmbient1728_g22166;
			float specularTermToggle666_g22166 = 1.0;
			float3 localcalcSpecularTerm666_g22166 = calcSpecularTerm( GGXVisibilityTerm666_g22166 , GGXTerm666_g22166 , NdotL666_g22166 , LdotH666_g22166 , roughness666_g22166 , specColor666_g22166 , lightcolor666_g22166 , specularTermToggle666_g22166 );
			float3 ifLocalVar1741_g22166 = 0;
			if( temp_output_1739_0_g22166 > 0.0 )
				ifLocalVar1741_g22166 = ( localcalcSpecularTerm630_g22166 * SpecularMapRGB160_g22166 * ColorA142_g22166 );
			else if( temp_output_1739_0_g22166 == 0.0 )
				ifLocalVar1741_g22166 = ( localcalcSpecularTerm666_g22166 * SpecularMapRGB160_g22166 * ColorA142_g22166 );
			float3 GGX24841 = ( ifLocalVar1741_g22166 + float3( 0,0,0 ) );
			float UVSwitchProp2002_g22166 = _AnisoDirUVSwitch;
			float2 UV02002_g22166 = i.uv_texcoord.xy;
			float2 UV12002_g22166 = i.uv2_texcoord2;
			float2 UV22002_g22166 = i.uv3_texcoord3;
			float2 UV32002_g22166 = i.uv4_texcoord4;
			float2 localUVSwitch2002_g22166 = UVSwitch( UVSwitchProp2002_g22166 , UV02002_g22166 , UV12002_g22166 , UV22002_g22166 , UV32002_g22166 );
			float2 AnisoDirUVSwitch2009_g22166 = ( ( _AnisoDir_ST.xy * localUVSwitch2002_g22166 ) + _AnisoDir_ST.zw );
			float3 normalizeResult77_g22166 = normalize( ( UnpackNormal( SAMPLE_TEXTURE2D( _AnisoDir, sampler_trilinear_repeat, AnisoDirUVSwitch2009_g22166 ) ) + WorldNormals2285_g22166 ) );
			float3 HdotA1339_g22166 = normalizeResult77_g22166;
			float3 normalizeResult4_g22169 = normalize( ( ase_worldViewDir + ase_worldlightDir ) );
			float dotResult76_g22166 = dot( HdotA1339_g22166 , normalizeResult4_g22169 );
			float BlinnToAniso1426_g22166 = _BlinntoAniso;
			float SpecularMapb383_g22166 = break380_g22166.b;
			float lerpResult97_g22166 = lerp( saturate( NdotH583_g22166 ) , max( 0.0 , sin( radians( ( ( dotResult76_g22166 + HighlightOffset127_g22166 ) * 180.0 ) ) ) ) , ( BlinnToAniso1426_g22166 * SpecularMapb383_g22166 ));
			float AnisoScale1344_g22166 = _AnisoScale;
			float SpecularMapg162_g22166 = break380_g22166.g;
			float AnisoSharpening1345_g22166 = _AnisoSharpening;
			float lerpResult1579_g22166 = lerp( 128.0 , 4096.0 , AnisoSharpening1345_g22166);
			float SpecularMapr161_g22166 = break380_g22166.r;
			float3 localambientDir2162_g22166 = ambientDir();
			float3 normalizeResult2164_g22166 = normalize( ( ase_worldViewDir + localambientDir2162_g22166 ) );
			float3 AmbientHalfVector2165_g22166 = normalizeResult2164_g22166;
			float dotResult341_g22166 = dot( HdotA1339_g22166 , AmbientHalfVector2165_g22166 );
			float lerpResult1443_g22166 = lerp( saturate( NdotAmbientH591_g22166 ) , max( 0.0 , sin( radians( ( ( dotResult341_g22166 + HighlightOffset127_g22166 ) * 180.0 ) ) ) ) , ( BlinnToAniso1426_g22166 * SpecularMapb383_g22166 ));
			float lerpResult1595_g22166 = lerp( 128.0 , 4096.0 , AnisoSharpening1345_g22166);
			half3 localAmbient1729_g22166 = Ambient();
			float3 ifLocalVar1738_g22166 = 0;
			if( temp_output_1739_0_g22166 > 0.0 )
				ifLocalVar1738_g22166 = ( ( saturate( ( ( pow( lerpResult97_g22166 , ( ( 1.0 - AnisoScale1344_g22166 ) * SpecularMapg162_g22166 * lerpResult1579_g22166 ) ) * SpecularMapr161_g22166 ) / ( 1.0 - AnisoSharpening1345_g22166 ) ) ) * ColorA142_g22166 ) * ( ColorRGB141_g22166 * DiffuseTint148_g22166 ) * ase_lightColor.rgb * max( ( ShadowsToonAniso1905_g22166 * 2.0 ) , 0.0 ) );
			else if( temp_output_1739_0_g22166 == 0.0 )
				ifLocalVar1738_g22166 = ( ( saturate( ( ( pow( lerpResult1443_g22166 , ( ( 1.0 - AnisoScale1344_g22166 ) * SpecularMapg162_g22166 * lerpResult1595_g22166 ) ) * SpecularMapr161_g22166 ) / ( 1.0 - AnisoSharpening1345_g22166 ) ) ) * ColorA142_g22166 ) * ( ColorRGB141_g22166 * DiffuseTint148_g22166 ) * localAmbient1729_g22166 * max( ( ShadowsIndirectNdL289_g22166 * 2.0 ) , 0.0 ) );
			float3 Anisotropic24841 = ( ifLocalVar1738_g22166 + float3( 0,0,0 ) );
			float ndl2022_g22166 = max( NdLGGX171_g22166 , 0.0 );
			float ndh2022_g22166 = max( NdotH583_g22166 , 0.0 );
			float vdn2022_g22166 = CorrNdotV626_g22166;
			float ldh2022_g22166 = max( LdotH2104_g22166 , 0.0 );
			float3 lightCol2022_g22166 = ( ShadowsToonAniso1905_g22166 * ase_lightColor.rgb );
			float3 normalizeResult4_g22171 = normalize( ( ase_worldViewDir + ase_worldlightDir ) );
			float3 halfVector2022_g22166 = normalizeResult4_g22171;
			float smoothness2022_g22166 = HighlightSmoothness128_g22166;
			float localOutlineSwitch127_g21801 = ( 0.0 );
			float3 true127_g21801 = temp_output_54_0_g21801;
			float3 false127_g21801 = -temp_output_54_0_g21801;
			float3 Out0127_g21801 = float3( 0,0,0 );
			{
			#ifdef FOROUTLINE
			Out0127_g21801 = true127_g21801; //Outline
			#else
			Out0127_g21801 = false127_g21801; //Not Outline
			#endif
			#define FOROUTLINE
			}
			float3 switchResult121_g21801 = (((i.ASEVFace>0)?(temp_output_54_0_g21801):(Out0127_g21801)));
			float3 normalizeResult52_g21801 = normalize( switchResult121_g21801 );
			float3 normals2353 = normalizeResult52_g21801;
			float3 temp_output_2254_0_g22166 = normals2353;
			float3 break2257_g22166 = temp_output_2254_0_g22166;
			float3 ase_worldNormal = WorldNormalVector( i, float3( 0, 0, 1 ) );
			float3 ase_vertexNormal = mul( unity_WorldToObject, float4( ase_worldNormal, 0 ) );
			ase_vertexNormal = normalize( ase_vertexNormal );
			float3 In02226_g22166 = ase_vertexNormal;
			float3 localgetUnityObjectToWorldNormal2226_g22166 = getUnityObjectToWorldNormal2226_g22166( In02226_g22166 );
			float3 normalizeResult2262_g22166 = normalize( ( ( break2257_g22166.x * i.vertexToFrag2251_g22166 ) + ( break2257_g22166.y * i.vertexToFrag2250_g22166 ) + ( break2257_g22166.z * localgetUnityObjectToWorldNormal2226_g22166 ) ) );
			float3 temp_output_2252_0_g22166 = cross( i.vertexToFrag2250_g22166 , normalizeResult2262_g22166 );
			float3 normalizeResult2265_g22166 = normalize( temp_output_2252_0_g22166 );
			float3 bumpedTangent2278_g22166 = normalizeResult2265_g22166;
			float3 tangent2022_g22166 = bumpedTangent2278_g22166;
			float3 normalizeResult2266_g22166 = normalize( cross( normalizeResult2262_g22166 , temp_output_2252_0_g22166 ) );
			float3 bumpedBitangent2277_g22166 = normalizeResult2266_g22166;
			float3 bitangent2022_g22166 = bumpedBitangent2277_g22166;
			float3 diffuseColor2022_g22166 = ( ColorRGB141_g22166 * DiffuseTint148_g22166 );
			float4 SpecularMap2022_g22166 = SpecularMapRGBA2289_g22166;
			float3 LightDir2022_g22166 = ase_worldlightDir;
			float3 ViewDir2022_g22166 = ase_worldViewDir;
			float3 localcalcGGXAniso2022_g22166 = calcGGXAniso( ndl2022_g22166 , ndh2022_g22166 , vdn2022_g22166 , ldh2022_g22166 , lightCol2022_g22166 , halfVector2022_g22166 , smoothness2022_g22166 , tangent2022_g22166 , bitangent2022_g22166 , diffuseColor2022_g22166 , SpecularMap2022_g22166 , LightDir2022_g22166 , ViewDir2022_g22166 );
			float ndl2410_g22166 = max( ShadowsIndirectNdL289_g22166 , 0.0 );
			float ndh2410_g22166 = max( NdotAmbientH591_g22166 , 0.0 );
			float vdn2410_g22166 = CorrNdotV626_g22166;
			float ldh2410_g22166 = max( AmbientLdotAmbientH2157_g22166 , 0.0 );
			half3 localAmbient2155_g22166 = Ambient();
			float3 lightCol2410_g22166 = ( ShadowsIndirectNdL289_g22166 * localAmbient2155_g22166 );
			float3 halfVector2410_g22166 = AmbientHalfVector2165_g22166;
			float smoothness2410_g22166 = HighlightSmoothness128_g22166;
			float3 tangent2410_g22166 = bumpedTangent2278_g22166;
			float3 bitangent2410_g22166 = bumpedBitangent2277_g22166;
			float3 diffuseColor2410_g22166 = ( ColorRGB141_g22166 * DiffuseTint148_g22166 );
			float4 SpecularMap2410_g22166 = SpecularMapRGBA2289_g22166;
			float3 localambientDir2411_g22166 = ambientDir();
			float3 LightDir2410_g22166 = localambientDir2411_g22166;
			float3 ViewDir2410_g22166 = ase_worldViewDir;
			float3 localcalcGGXAniso2410_g22166 = calcGGXAniso( ndl2410_g22166 , ndh2410_g22166 , vdn2410_g22166 , ldh2410_g22166 , lightCol2410_g22166 , halfVector2410_g22166 , smoothness2410_g22166 , tangent2410_g22166 , bitangent2410_g22166 , diffuseColor2410_g22166 , SpecularMap2410_g22166 , LightDir2410_g22166 , ViewDir2410_g22166 );
			float3 ifLocalVar2153_g22166 = 0;
			if( temp_output_1739_0_g22166 > 0.0 )
				ifLocalVar2153_g22166 = localcalcGGXAniso2022_g22166;
			else if( temp_output_1739_0_g22166 == 0.0 )
				ifLocalVar2153_g22166 = localcalcGGXAniso2410_g22166;
			float3 GGXAnisotropic24841 = ifLocalVar2153_g22166;
			{
			UNITY_BRANCH
			if (_SpecularSetting == 0)
				Out24841 = Toon24841;
			else if (_SpecularSetting == 1)
				Out24841 = GGX24841;
			else if (_SpecularSetting == 2)
				Out24841 = Anisotropic24841;
			else
				Out24841 = GGXAnisotropic24841;
			}
			float3 SpecularHighlight2223 = Out24841;
			float3 appendResult1896_g22166 = (float3(NdLGGX171_g22166 , AttenGGX1911_g22166 , ShadowsIndirectNdL289_g22166));
			float3 PixelAmbientShadows24166 = appendResult1896_g22166;
			float3 break2823_g22213 = PixelAmbientShadows24166;
			float NdLGGX2357_g22213 = break2823_g22213.x;
			float temp_output_2418_0_g22213 = max( 0.0 , NdLGGX2357_g22213 );
			float NdotL2412_g22213 = temp_output_2418_0_g22213;
			float CorrectedNdotV2507_g22213 = NdotVCorr21432;
			float NdotV2412_g22213 = CorrectedNdotV2507_g22213;
			float IgnoreNormalsToggle323_g22213 = _IgnoreNormalsCubemap;
			float3 normalizeResult28_g22213 = normalize( ase_worldNormal );
			float3 ifLocalVar46_g22213 = 0;
			if( 1.0 > IgnoreNormalsToggle323_g22213 )
				ifLocalVar46_g22213 = worldnormals2351;
			else if( 1.0 == IgnoreNormalsToggle323_g22213 )
				ifLocalVar46_g22213 = normalizeResult28_g22213;
			float3 WorldNormals305_g22213 = ifLocalVar46_g22213;
			float3 worldNormal2910_g22213 = WorldNormals305_g22213;
			float Smoothness300_g22213 = _Cubemapsmoothness;
			float smoothness2910_g22213 = ( tex2DNode2688_g22213.a * Smoothness300_g22213 );
			float localGSAA_Filament2910_g22213 = GSAA_Filament( worldNormal2910_g22213 , smoothness2910_g22213 );
			float SmoothnessTex290_g22213 = localGSAA_Filament2910_g22213;
			float perceptualRoughness2761_g22213 = ( 1.0 - SmoothnessTex290_g22213 );
			float roughness2729_g22213 = max( ( perceptualRoughness2761_g22213 * perceptualRoughness2761_g22213 ) , 0.002 );
			float roughness2412_g22213 = roughness2729_g22213;
			float localgetSmithJointGGXVisibilityTerm2412_g22213 = getSmithJointGGXVisibilityTerm( NdotL2412_g22213 , NdotV2412_g22213 , roughness2412_g22213 );
			float GGXVisibilityTerm2305_g22213 = localgetSmithJointGGXVisibilityTerm2412_g22213;
			float NdotH2416_g22213 = max( 0.0 , NdotH19802 );
			float roughness2416_g22213 = roughness2729_g22213;
			float localgetGGXTerm2416_g22213 = getGGXTerm( NdotH2416_g22213 , roughness2416_g22213 );
			float GGXTerm2305_g22213 = localgetGGXTerm2416_g22213;
			float NdotL2305_g22213 = temp_output_2418_0_g22213;
			float LdotH2305_g22213 = max( 0.0 , LdotH19804 );
			float roughness2305_g22213 = roughness2729_g22213;
			float3 MainTex312_g22213 = MainTexSaturate2197;
			half3 specColor2324_g22213 = (0).xxx;
			half oneMinusReflectivity2324_g22213 = 0;
			half3 diffuseAndSpecularFromMetallic2324_g22213 = DiffuseAndSpecularFromMetallic(MainTex312_g22213,MetallicTex289_g22213,specColor2324_g22213,oneMinusReflectivity2324_g22213);
			float3 SpecColor2715_g22213 = specColor2324_g22213;
			float3 specColor2305_g22213 = SpecColor2715_g22213;
			float AttenGGX2831_g22213 = break2823_g22213.y;
			float3 lightcolor2305_g22213 = ( ase_lightColor.rgb * AttenGGX2831_g22213 );
			float SpecularHighlightToggle2498_g22213 = _CubemapSpecularToggle;
			float specularTermToggle2305_g22213 = SpecularHighlightToggle2498_g22213;
			float3 localcalcSpecularTerm2305_g22213 = calcSpecularTerm( GGXVisibilityTerm2305_g22213 , GGXTerm2305_g22213 , NdotL2305_g22213 , LdotH2305_g22213 , roughness2305_g22213 , specColor2305_g22213 , lightcolor2305_g22213 , specularTermToggle2305_g22213 );
			float temp_output_2490_0_g22213 = max( 0.0 , NdotAmbientL19820 );
			float NdotL2496_g22213 = temp_output_2490_0_g22213;
			float NdotV2496_g22213 = CorrectedNdotV2507_g22213;
			float roughness2496_g22213 = roughness2729_g22213;
			float localgetSmithJointGGXVisibilityTerm2496_g22213 = getSmithJointGGXVisibilityTerm( NdotL2496_g22213 , NdotV2496_g22213 , roughness2496_g22213 );
			float GGXVisibilityTerm2494_g22213 = localgetSmithJointGGXVisibilityTerm2496_g22213;
			float NdotH2495_g22213 = max( 0.0 , NdotAmbientH19817 );
			float roughness2495_g22213 = roughness2729_g22213;
			float localgetGGXTerm2495_g22213 = getGGXTerm( NdotH2495_g22213 , roughness2495_g22213 );
			float GGXTerm2494_g22213 = localgetGGXTerm2495_g22213;
			float NdotL2494_g22213 = temp_output_2490_0_g22213;
			float LdotH2494_g22213 = max( 0.0 , AmbientLdotAmbientH19902 );
			float roughness2494_g22213 = roughness2729_g22213;
			float3 specColor2494_g22213 = SpecColor2715_g22213;
			half3 localAmbient2505_g22213 = Ambient();
			float AmbientShadows2824_g22213 = break2823_g22213.z;
			float3 lightcolor2494_g22213 = ( localAmbient2505_g22213 * AmbientShadows2824_g22213 );
			float specularTermToggle2494_g22213 = SpecularHighlightToggle2498_g22213;
			float3 localcalcSpecularTerm2494_g22213 = calcSpecularTerm( GGXVisibilityTerm2494_g22213 , GGXTerm2494_g22213 , NdotL2494_g22213 , LdotH2494_g22213 , roughness2494_g22213 , specColor2494_g22213 , lightcolor2494_g22213 , specularTermToggle2494_g22213 );
			float3 SHSpecular2509_g22213 = localcalcSpecularTerm2494_g22213;
			float3 ifLocalVar2672_g22213 = 0;
			if( GrayscaledLight19806 > 0.0 )
				ifLocalVar2672_g22213 = localcalcSpecularTerm2305_g22213;
			else if( GrayscaledLight19806 == 0.0 )
				ifLocalVar2672_g22213 = SHSpecular2509_g22213;
			float4 temp_output_1727_0_g22166 = max( float4( 0,0,0,0 ) , VertexLightNdLNONMAX21088 );
			float4 ifLocalVar2136_g22165 = 0;
			UNITY_BRANCH 
			if( 1.0 > ToggleSteps66_g22165 )
				ifLocalVar2136_g22165 = ToonRampTexVertexLightLuminanced352_g22165;
			else if( 1.0 == ToggleSteps66_g22165 )
				ifLocalVar2136_g22165 = VertexLightNdLStepped2141_g22165;
			float4 NdLVertexLightsShadows24300 = ifLocalVar2136_g22165;
			float4 temp_cast_43 = (-max( SpecShadowMaskPower286_g22166 , -0.99 )).xxxx;
			float temp_output_2387_0_g22166 = ( saturate( SpecShadowMaskPower286_g22166 ) * 0.5 );
			float4 lerpResult2379_g22166 = lerp( ( ( NdLVertexLightsShadows24300 - temp_cast_43 ) / ( 1.0 - -max( SpecShadowMaskPower286_g22166 , -0.99 ) ) ) , float4( 1,1,1,1 ) , ( ( SpecShadowMaskPower286_g22166 * temp_output_2387_0_g22166 ) + temp_output_2387_0_g22166 ));
			float4 temp_output_2378_0_g22166 = saturate( lerpResult2379_g22166 );
			float4 ifLocalVar1924_g22166 = 0;
			UNITY_BRANCH 
			if( 1.0 > SpecShadowMaskVar279_g22166 )
				ifLocalVar1924_g22166 = float4(1,1,1,1);
			else if( 1.0 == SpecShadowMaskVar279_g22166 )
				ifLocalVar1924_g22166 = temp_output_1727_0_g22166;
			else if( 1.0 < SpecShadowMaskVar279_g22166 )
				ifLocalVar1924_g22166 = temp_output_2378_0_g22166;
			float4 VertexLightsNdLGGX1923_g22166 = ifLocalVar1924_g22166;
			float4 VertexLightShadows24307 = VertexLightsNdLGGX1923_g22166;
			float4 break2546_g22213 = VertexLightShadows24307;
			float NdotL2576_g22213 = break2546_g22213.x;
			float NdotV2576_g22213 = CorrectedNdotV2507_g22213;
			float roughness2576_g22213 = roughness2729_g22213;
			float localgetSmithJointGGXVisibilityTerm2576_g22213 = getSmithJointGGXVisibilityTerm( NdotL2576_g22213 , NdotV2576_g22213 , roughness2576_g22213 );
			float GGXVisibilityTerm2521_g22213 = localgetSmithJointGGXVisibilityTerm2576_g22213;
			float4 break346_g21912 = FourLightPosX0WorldPos286_g21912;
			float4 break277_g21912 = FourLightPosY0WorldPos291_g21912;
			float4 break300_g21912 = FourLightPosZ0WorldPos325_g21912;
			float3 appendResult358_g21912 = (float3(break346_g21912.x , break277_g21912.x , break300_g21912.x));
			float3 normalizeResult292_g21912 = normalize( appendResult358_g21912 );
			float3 normalizeResult289_g21912 = ASESafeNormalize( ( ase_worldViewDir + normalizeResult292_g21912 ) );
			float dotResult318_g21912 = dot( WorldNormals20_g21912 , normalizeResult289_g21912 );
			float VLNdotHOne21094 = dotResult318_g21912;
			float NdotH2569_g22213 = max( VLNdotHOne21094 , 0.0 );
			float roughness2569_g22213 = roughness2729_g22213;
			float localgetGGXTerm2569_g22213 = getGGXTerm( NdotH2569_g22213 , roughness2569_g22213 );
			float GGXTerm2521_g22213 = localgetGGXTerm2569_g22213;
			float NdotL2521_g22213 = break2546_g22213.x;
			float dotResult339_g21912 = dot( normalizeResult292_g21912 , normalizeResult289_g21912 );
			float VLLdotHOne21102 = dotResult339_g21912;
			float LdotH2521_g22213 = max( VLLdotHOne21102 , 0.0 );
			float roughness2521_g22213 = roughness2729_g22213;
			float3 specColor2521_g22213 = SpecColor2715_g22213;
			float3 localLightColorZero2834_g22213 = LightColorZero();
			float4 break2841_g22213 = VertexLightAtten21183;
			float3 lightcolor2521_g22213 = ( localLightColorZero2834_g22213 * break2841_g22213.x );
			float specularTermToggle2521_g22213 = SpecularHighlightToggle2498_g22213;
			float3 localcalcSpecularTerm2521_g22213 = calcSpecularTerm( GGXVisibilityTerm2521_g22213 , GGXTerm2521_g22213 , NdotL2521_g22213 , LdotH2521_g22213 , roughness2521_g22213 , specColor2521_g22213 , lightcolor2521_g22213 , specularTermToggle2521_g22213 );
			float NdotL2601_g22213 = break2546_g22213.y;
			float NdotV2601_g22213 = CorrectedNdotV2507_g22213;
			float roughness2601_g22213 = roughness2729_g22213;
			float localgetSmithJointGGXVisibilityTerm2601_g22213 = getSmithJointGGXVisibilityTerm( NdotL2601_g22213 , NdotV2601_g22213 , roughness2601_g22213 );
			float GGXVisibilityTerm2609_g22213 = localgetSmithJointGGXVisibilityTerm2601_g22213;
			float3 appendResult321_g21912 = (float3(break346_g21912.y , break277_g21912.y , break300_g21912.y));
			float3 normalizeResult308_g21912 = normalize( appendResult321_g21912 );
			float3 normalizeResult285_g21912 = ASESafeNormalize( ( ase_worldViewDir + normalizeResult308_g21912 ) );
			float dotResult298_g21912 = dot( WorldNormals20_g21912 , normalizeResult285_g21912 );
			float VLNdotHTwo21096 = dotResult298_g21912;
			float NdotH2600_g22213 = max( VLNdotHTwo21096 , 0.0 );
			float roughness2600_g22213 = roughness2729_g22213;
			float localgetGGXTerm2600_g22213 = getGGXTerm( NdotH2600_g22213 , roughness2600_g22213 );
			float GGXTerm2609_g22213 = localgetGGXTerm2600_g22213;
			float NdotL2609_g22213 = break2546_g22213.y;
			float dotResult354_g21912 = dot( normalizeResult308_g21912 , normalizeResult285_g21912 );
			float VLLdotHTwo21103 = dotResult354_g21912;
			float LdotH2609_g22213 = max( VLLdotHTwo21103 , 0.0 );
			float roughness2609_g22213 = roughness2729_g22213;
			float3 specColor2609_g22213 = SpecColor2715_g22213;
			float3 localLightColorZOne2835_g22213 = LightColorZOne();
			float3 lightcolor2609_g22213 = ( localLightColorZOne2835_g22213 * break2841_g22213.y );
			float specularTermToggle2609_g22213 = SpecularHighlightToggle2498_g22213;
			float3 localcalcSpecularTerm2609_g22213 = calcSpecularTerm( GGXVisibilityTerm2609_g22213 , GGXTerm2609_g22213 , NdotL2609_g22213 , LdotH2609_g22213 , roughness2609_g22213 , specColor2609_g22213 , lightcolor2609_g22213 , specularTermToggle2609_g22213 );
			float NdotL2618_g22213 = break2546_g22213.z;
			float NdotV2618_g22213 = CorrectedNdotV2507_g22213;
			float roughness2618_g22213 = roughness2729_g22213;
			float localgetSmithJointGGXVisibilityTerm2618_g22213 = getSmithJointGGXVisibilityTerm( NdotL2618_g22213 , NdotV2618_g22213 , roughness2618_g22213 );
			float GGXVisibilityTerm2626_g22213 = localgetSmithJointGGXVisibilityTerm2618_g22213;
			float3 appendResult355_g21912 = (float3(break346_g21912.z , break277_g21912.z , break300_g21912.z));
			float3 normalizeResult334_g21912 = normalize( appendResult355_g21912 );
			float3 normalizeResult327_g21912 = ASESafeNormalize( ( ase_worldViewDir + normalizeResult334_g21912 ) );
			float dotResult313_g21912 = dot( WorldNormals20_g21912 , normalizeResult327_g21912 );
			float VLNdotHThree21098 = dotResult313_g21912;
			float NdotH2617_g22213 = max( VLNdotHThree21098 , 0.0 );
			float roughness2617_g22213 = roughness2729_g22213;
			float localgetGGXTerm2617_g22213 = getGGXTerm( NdotH2617_g22213 , roughness2617_g22213 );
			float GGXTerm2626_g22213 = localgetGGXTerm2617_g22213;
			float NdotL2626_g22213 = break2546_g22213.z;
			float dotResult288_g21912 = dot( normalizeResult334_g21912 , normalizeResult327_g21912 );
			float VLLdotHThree21104 = dotResult288_g21912;
			float LdotH2626_g22213 = max( VLLdotHThree21104 , 0.0 );
			float roughness2626_g22213 = roughness2729_g22213;
			float3 specColor2626_g22213 = SpecColor2715_g22213;
			float3 localLightColorZTwo2833_g22213 = LightColorZTwo();
			float3 lightcolor2626_g22213 = ( localLightColorZTwo2833_g22213 * break2841_g22213.z );
			float specularTermToggle2626_g22213 = SpecularHighlightToggle2498_g22213;
			float3 localcalcSpecularTerm2626_g22213 = calcSpecularTerm( GGXVisibilityTerm2626_g22213 , GGXTerm2626_g22213 , NdotL2626_g22213 , LdotH2626_g22213 , roughness2626_g22213 , specColor2626_g22213 , lightcolor2626_g22213 , specularTermToggle2626_g22213 );
			float NdotL2635_g22213 = break2546_g22213.w;
			float NdotV2635_g22213 = CorrectedNdotV2507_g22213;
			float roughness2635_g22213 = roughness2729_g22213;
			float localgetSmithJointGGXVisibilityTerm2635_g22213 = getSmithJointGGXVisibilityTerm( NdotL2635_g22213 , NdotV2635_g22213 , roughness2635_g22213 );
			float GGXVisibilityTerm2643_g22213 = localgetSmithJointGGXVisibilityTerm2635_g22213;
			float3 appendResult278_g21912 = (float3(break346_g21912.w , break277_g21912.w , break300_g21912.w));
			float3 normalizeResult281_g21912 = normalize( appendResult278_g21912 );
			float3 normalizeResult319_g21912 = ASESafeNormalize( ( ase_worldViewDir + normalizeResult281_g21912 ) );
			float dotResult314_g21912 = dot( WorldNormals20_g21912 , normalizeResult319_g21912 );
			float VLNdotHFour21100 = dotResult314_g21912;
			float NdotH2634_g22213 = max( VLNdotHFour21100 , 0.0 );
			float roughness2634_g22213 = roughness2729_g22213;
			float localgetGGXTerm2634_g22213 = getGGXTerm( NdotH2634_g22213 , roughness2634_g22213 );
			float GGXTerm2643_g22213 = localgetGGXTerm2634_g22213;
			float NdotL2643_g22213 = break2546_g22213.w;
			float dotResult362_g21912 = dot( normalizeResult281_g21912 , normalizeResult319_g21912 );
			float VLLdotHFour21105 = dotResult362_g21912;
			float LdotH2643_g22213 = max( VLLdotHFour21105 , 0.0 );
			float roughness2643_g22213 = roughness2729_g22213;
			float3 specColor2643_g22213 = SpecColor2715_g22213;
			float3 localLightColorZThree2840_g22213 = LightColorZThree();
			float3 lightcolor2643_g22213 = ( localLightColorZThree2840_g22213 * break2841_g22213.w );
			float specularTermToggle2643_g22213 = SpecularHighlightToggle2498_g22213;
			float3 localcalcSpecularTerm2643_g22213 = calcSpecularTerm( GGXVisibilityTerm2643_g22213 , GGXTerm2643_g22213 , NdotL2643_g22213 , LdotH2643_g22213 , roughness2643_g22213 , specColor2643_g22213 , lightcolor2643_g22213 , specularTermToggle2643_g22213 );
			#ifdef UNITY_PASS_FORWARDBASE
				float3 staticSwitch2764_g22213 = ( localcalcSpecularTerm2521_g22213 + localcalcSpecularTerm2609_g22213 + localcalcSpecularTerm2626_g22213 + localcalcSpecularTerm2643_g22213 );
			#else
				float3 staticSwitch2764_g22213 = float3( 0,0,0 );
			#endif
			#ifdef VERTEXLIGHT_ON
				float3 staticSwitch2765_g22213 = staticSwitch2764_g22213;
			#else
				float3 staticSwitch2765_g22213 = float3( 0,0,0 );
			#endif
			float3 VertexLightGGXPBRMetallicWF2533_g22213 = staticSwitch2765_g22213;
			float3 specularTerm2404_g22213 = ( ifLocalVar2672_g22213 + VertexLightGGXPBRMetallicWF2533_g22213 );
			float NdotV2404_g22213 = CorrectedNdotV2507_g22213;
			float3 specColor2404_g22213 = SpecColor2715_g22213;
			float roughness2404_g22213 = roughness2729_g22213;
			float OneMinusReflectivity2718_g22213 = oneMinusReflectivity2324_g22213;
			float oneMinusReflectivity2404_g22213 = OneMinusReflectivity2718_g22213;
			float localGetSpecCubeDimensions1255_g22213 = ( 0.0 );
			float testW1255_g22213 = 0;
			float testH1255_g22213 = 0;
			{
			#ifndef SHADER_TARGET_SURFACE_ANALYSIS
			unity_SpecCube0.GetDimensions(testW1255_g22213,testH1255_g22213);
			#endif
			}
			float3 indirectNormal2316_g22213 = WorldNormals305_g22213;
			Unity_GlossyEnvironmentData g2316_g22213 = UnityGlossyEnvironmentSetup( SmoothnessTex290_g22213, data.worldViewDir, indirectNormal2316_g22213, float3(0,0,0));
			float3 indirectSpecular2316_g22213 = UnityGI_IndirectSpecular( data, 1.0, indirectNormal2316_g22213, g2316_g22213 );
			float3 ase_worldReflection = WorldReflectionVector( i, float3( 0, 0, 1 ) );
			float3 ifLocalVar45_g22213 = 0;
			if( 1.0 > IgnoreNormalsToggle323_g22213 )
				ifLocalVar45_g22213 = WorldReflectionVector( i , normals2353 );
			else if( 1.0 == IgnoreNormalsToggle323_g22213 )
				ifLocalVar45_g22213 = ase_worldReflection;
			half3 linearRgb1631_g22165 = ( ase_lightColor.rgb * staticSwitch1035_g22165 );
			half localgetLinearRgbToLuminance1631_g22165 = getLinearRgbToLuminance( linearRgb1631_g22165 );
			half3 linearRgb1630_g22165 = ( lerpResult1661_g22165 * AmbientLightBoosted1782_g22165 );
			half localgetLinearRgbToLuminance1630_g22165 = getLinearRgbToLuminance( linearRgb1630_g22165 );
			#ifdef UNITY_PASS_FORWARDBASE
				float staticSwitch1995_g22165 = localgetLinearRgbToLuminance1433_g22165;
			#else
				float staticSwitch1995_g22165 = 0.0;
			#endif
			#ifdef VERTEXLIGHT_ON
				float staticSwitch1994_g22165 = staticSwitch1995_g22165;
			#else
				float staticSwitch1994_g22165 = 0.0;
			#endif
			float LuminancedVertexLights1991_g22165 = staticSwitch1994_g22165;
			float LuminancedLight21855 = ( ( localgetLinearRgbToLuminance1631_g22165 + localgetLinearRgbToLuminance1630_g22165 ) + LuminancedVertexLights1991_g22165 );
			float3 BakedCubemap1524_g22213 = ( (SAMPLE_TEXTURECUBE_LOD( _Cubemap, sampler_Cubemap, ifLocalVar45_g22213, ( ( 1.0 - SmoothnessTex290_g22213 ) * 10.0 ) )).rgb * saturate( LuminancedLight21855 ) );
			float3 ifLocalVar2337_g22213 = 0;
			if( testW1255_g22213 >= 16 )
				ifLocalVar2337_g22213 = indirectSpecular2316_g22213;
			else
				ifLocalVar2337_g22213 = BakedCubemap1524_g22213;
			float3 ifLocalVar2338_g22213 = 0;
			UNITY_BRANCH 
			if( 1.0 > _WorkflowSwitch )
				ifLocalVar2338_g22213 = ifLocalVar2337_g22213;
			else if( 1.0 == _WorkflowSwitch )
				ifLocalVar2338_g22213 = BakedCubemap1524_g22213;
			else if( 1.0 < _WorkflowSwitch )
				ifLocalVar2338_g22213 = indirectSpecular2316_g22213;
			float AmbientOcclusion16840 = lerpResult54_g22165;
			float AO2783_g22213 = AmbientOcclusion16840;
			float3 indirectspecular2404_g22213 = ( ifLocalVar2338_g22213 * AO2783_g22213 );
			float smoothness2404_g22213 = SmoothnessTex290_g22213;
			float perceptualRoughness2404_g22213 = perceptualRoughness2761_g22213;
			float3 localcalcSpecularBase2404_g22213 = calcSpecularBase( specularTerm2404_g22213 , NdotV2404_g22213 , specColor2404_g22213 , roughness2404_g22213 , oneMinusReflectivity2404_g22213 , indirectspecular2404_g22213 , smoothness2404_g22213 , perceptualRoughness2404_g22213 );
			float3 SpecularReflections316_g22213 = localcalcSpecularBase2404_g22213;
			float3 temp_output_25080_0 = ( SpecularReflections316_g22213 * temp_output_80_0_g22213 );
			float3 CubemapReflections10644 = ( temp_output_25080_0 * temp_output_21533_0 );
			float3 worldSpaceViewDir449_g22215 = WorldSpaceViewDir( float4( 0,0,0,1 ) );
			float3 normalizeResult803_g22215 = ASESafeNormalize( worldSpaceViewDir449_g22215 );
			float3 ifLocalVar906_g22215 = 0;
			if( 1.0 > _MatcapViewDir )
				ifLocalVar906_g22215 = ase_worldViewDir;
			else if( 1.0 == _MatcapViewDir )
				ifLocalVar906_g22215 = normalizeResult803_g22215;
			float3 _Vector0 = float3(0,1,0);
			float dotResult9_g22215 = dot( ifLocalVar906_g22215 , _Vector0 );
			float3 normalizeResult13_g22215 = normalize( ( _Vector0 - ( dotResult9_g22215 * ifLocalVar906_g22215 ) ) );
			float3 normalizeResult19_g22215 = normalize( cross( ifLocalVar906_g22215 , normalizeResult13_g22215 ) );
			float3 normalizeResult16_g22215 = normalize( ase_worldNormal );
			float3 ifLocalVar20_g22215 = 0;
			if( 1.0 > _IgnoreNormalsMatcap )
				ifLocalVar20_g22215 = worldnormals2351;
			else if( 1.0 == _IgnoreNormalsMatcap )
				ifLocalVar20_g22215 = normalizeResult16_g22215;
			float dotResult22_g22215 = dot( normalizeResult19_g22215 , ifLocalVar20_g22215 );
			float dotResult23_g22215 = dot( normalizeResult13_g22215 , ifLocalVar20_g22215 );
			float2 appendResult25_g22215 = (float2(dotResult22_g22215 , dotResult23_g22215));
			float2 MatcapUV215_g22215 = ( ( appendResult25_g22215 * 0.5 ) + 0.5 );
			float ReflectionR1Intensity224_g22215 = _ReflectionR1Intensity;
			float3 temp_output_45_0_g22215 = ( ( (SAMPLE_TEXTURE2D_LOD( _MatcapR1, sampler_trilinear_repeat, MatcapUV215_g22215, ( ( 1.0 - _MatcapR1smoothness ) * 10.0 ) )).rgb * (_MatcapR1Color).rgb * ( _MatcapR1Color.a * MatcapR1Blending703_g22215 ) ) * ReflectionR1Intensity224_g22215 );
			#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch2216_g22165 = ( ase_lightColor.rgb * ase_lightAtten );
			#else
				float3 staticSwitch2216_g22165 = ase_lightColor.rgb;
			#endif
			half3 linearRgb2203_g22165 = staticSwitch2216_g22165;
			half localgetLinearRgbToLuminance2203_g22165 = getLinearRgbToLuminance( linearRgb2203_g22165 );
			half3 linearRgb2202_g22165 = AmbientLightBoosted1782_g22165;
			half localgetLinearRgbToLuminance2202_g22165 = getLinearRgbToLuminance( linearRgb2202_g22165 );
			float LuminancedLightNoShadows25046 = ( localgetLinearRgbToLuminance2203_g22165 + localgetLinearRgbToLuminance2202_g22165 + LuminancedVertexLights1991_g22165 );
			float MatcapLighting825_g22215 = saturate( LuminancedLightNoShadows25046 );
			float3 MainTex207_g22215 = MainTexSaturate2197;
			float AmbientOcclusion834_g22215 = AmbientOcclusion16840;
			float3 PreClampFinalLight21212 = ( ForFinalLightCalculation993_g22165 + DiffuseVertexLighting354_g22165 );
			float3 MatcapLightingRGB901_g22215 = PreClampFinalLight21212;
			float3 ifLocalVar59_g22215 = 0;
			if( 1.0 > _MatcapR1Mode )
				ifLocalVar59_g22215 = ( temp_output_45_0_g22215 * MatcapLighting825_g22215 * MainTex207_g22215 * AmbientOcclusion834_g22215 );
			else if( 1.0 == _MatcapR1Mode )
				ifLocalVar59_g22215 = ( temp_output_45_0_g22215 * MatcapLightingRGB901_g22215 );
			else if( 1.0 < _MatcapR1Mode )
				ifLocalVar59_g22215 = ( ( 1.0 - temp_output_45_0_g22215 ) * MatcapLightingRGB901_g22215 );
			float3 lerpResult60_g22215 = lerp( float3( 1,1,1 ) , MainTex207_g22215 , _ReflectionR1Tint);
			float3 ifLocalVar427_g22215 = 0;
			UNITY_BRANCH 
			if( _MatcapR1Toggle > 0 )
				ifLocalVar427_g22215 = ( ifLocalVar59_g22215 * lerpResult60_g22215 * ( ReflectionR1Intensity224_g22215 * ReflectionMaskR199_g22215 ) );
			float3 MatcapR1calc419_g22215 = ( ifLocalVar427_g22215 * temp_output_570_0_g22215 );
			float ReflectionG2Intensity298_g22215 = _ReflectionG2Intensity;
			float3 temp_output_277_0_g22215 = ( ( (SAMPLE_TEXTURE2D_LOD( _MatcapG2, sampler_trilinear_repeat, MatcapUV215_g22215, ( ( 1.0 - _MatcapG2smoothness ) * 10.0 ) )).rgb * (_MatcapG2Color).rgb * ( _MatcapG2Color.a * MatcapG2Blending706_g22215 ) ) * ReflectionG2Intensity298_g22215 );
			float3 ifLocalVar262_g22215 = 0;
			if( 1.0 > _MatcapG2Mode )
				ifLocalVar262_g22215 = ( temp_output_277_0_g22215 * MatcapLighting825_g22215 * MainTex207_g22215 * AmbientOcclusion834_g22215 );
			else if( 1.0 == _MatcapG2Mode )
				ifLocalVar262_g22215 = ( temp_output_277_0_g22215 * MatcapLightingRGB901_g22215 );
			else if( 1.0 < _MatcapG2Mode )
				ifLocalVar262_g22215 = ( ( 1.0 - temp_output_277_0_g22215 ) * MatcapLightingRGB901_g22215 );
			float3 lerpResult254_g22215 = lerp( float3( 1,1,1 ) , MainTex207_g22215 , _ReflectionG2Tint);
			float3 ifLocalVar437_g22215 = 0;
			UNITY_BRANCH 
			if( _MatcapG2Toggle > 0 )
				ifLocalVar437_g22215 = ( ifLocalVar262_g22215 * lerpResult254_g22215 * ( ReflectionG2Intensity298_g22215 * ReflectionMaskG200_g22215 ) );
			float3 MatcapG2calc420_g22215 = ( ifLocalVar437_g22215 * temp_output_573_0_g22215 );
			float ReflectionB3Intensity300_g22215 = _ReflectionB3Intensity;
			float3 temp_output_361_0_g22215 = ( ( (SAMPLE_TEXTURE2D_LOD( _MatcapB3, sampler_trilinear_repeat, MatcapUV215_g22215, ( ( 1.0 - _MatcapB3smoothness ) * 10.0 ) )).rgb * (_MatcapB3Color).rgb * ( _MatcapB3Color.a * MatcapB3Blending708_g22215 ) ) * ReflectionB3Intensity300_g22215 );
			float3 ifLocalVar348_g22215 = 0;
			if( 1.0 > _MatcapB3Mode )
				ifLocalVar348_g22215 = ( temp_output_361_0_g22215 * MatcapLighting825_g22215 * MainTex207_g22215 * AmbientOcclusion834_g22215 );
			else if( 1.0 == _MatcapB3Mode )
				ifLocalVar348_g22215 = ( temp_output_361_0_g22215 * MatcapLightingRGB901_g22215 );
			else if( 1.0 < _MatcapB3Mode )
				ifLocalVar348_g22215 = ( ( 1.0 - temp_output_361_0_g22215 ) * MatcapLightingRGB901_g22215 );
			float3 lerpResult340_g22215 = lerp( float3( 1,1,1 ) , MainTex207_g22215 , _ReflectionB3Tint);
			float3 ifLocalVar438_g22215 = 0;
			UNITY_BRANCH 
			if( _MatcapB3Toggle > 0 )
				ifLocalVar438_g22215 = ( ifLocalVar348_g22215 * lerpResult340_g22215 * ( ReflectionB3Intensity300_g22215 * ReflectionMaskB201_g22215 ) );
			float3 MatcapB3calc421_g22215 = ( ifLocalVar438_g22215 * temp_output_576_0_g22215 );
			float ReflectionA4Intensity302_g22215 = _ReflectionA4Intensity;
			float3 temp_output_402_0_g22215 = ( ( (SAMPLE_TEXTURE2D_LOD( _MatcapA4, sampler_trilinear_repeat, MatcapUV215_g22215, ( ( 1.0 - _MatcapA4smoothness ) * 10.0 ) )).rgb * (_MatcapA4Color).rgb * ( _MatcapA4Color.a * MatcapA4Blending710_g22215 ) ) * ReflectionA4Intensity302_g22215 );
			float3 ifLocalVar389_g22215 = 0;
			if( 1.0 > _MatcapA4Mode )
				ifLocalVar389_g22215 = ( temp_output_402_0_g22215 * MatcapLighting825_g22215 * MainTex207_g22215 * AmbientOcclusion834_g22215 );
			else if( 1.0 == _MatcapA4Mode )
				ifLocalVar389_g22215 = ( temp_output_402_0_g22215 * MatcapLightingRGB901_g22215 );
			else if( 1.0 < _MatcapA4Mode )
				ifLocalVar389_g22215 = ( ( 1.0 - temp_output_402_0_g22215 ) * MatcapLightingRGB901_g22215 );
			float3 lerpResult381_g22215 = lerp( float3( 1,1,1 ) , MainTex207_g22215 , _ReflectionA4Tint);
			float3 ifLocalVar439_g22215 = 0;
			UNITY_BRANCH 
			if( _MatcapA4Toggle > 0 )
				ifLocalVar439_g22215 = ( ifLocalVar389_g22215 * lerpResult381_g22215 * ( ReflectionA4Intensity302_g22215 * ReflectionMaskA202_g22215 ) );
			float3 MatcapA4calc422_g22215 = ( ifLocalVar439_g22215 * temp_output_579_0_g22215 );
			float3 Matcap24108 = ( MatcapR1calc419_g22215 + MatcapG2calc420_g22215 + MatcapB3calc421_g22215 + MatcapA4calc422_g22215 );
			float DirectionToggle135_g22208 = _RimDirectionToggle;
			float RimShape196_g22208 = pow( ( 1.0 - saturate( ( NdotV19803 + _RimOffset ) ) ) , max( _RimPower , ( 1E-06 + 1E-06 ) ) );
			float3 WorldNormals127_g22208 = worldnormals2351;
			float fresnelNdotV93_g22208 = dot( WorldNormals127_g22208, ase_worldViewDir );
			float fresnelNode93_g22208 = ( _RimFresnelBias + _RimFresnelScale * pow( 1.0 - fresnelNdotV93_g22208, _RimFresnelPower ) );
			float Fresnel171_g22208 = fresnelNode93_g22208;
			float ifLocalVar274_g22208 = 0;
			if( 1.0 > DirectionToggle135_g22208 )
				ifLocalVar274_g22208 = RimShape196_g22208;
			else if( 1.0 == DirectionToggle135_g22208 )
				ifLocalVar274_g22208 = Fresnel171_g22208;
			float temp_output_2_0_g22209 = _RimTint;
			float temp_output_3_0_g22209 = ( 1.0 - temp_output_2_0_g22209 );
			float3 appendResult7_g22209 = (float3(temp_output_3_0_g22209 , temp_output_3_0_g22209 , temp_output_3_0_g22209));
			float3 temp_output_35_0_g22208 = ( ( MainTexSaturate2197 * temp_output_2_0_g22209 ) + appendResult7_g22209 );
			float UVSwitchProp340_g22208 = _RimMaskUVSwitch;
			float2 UV0340_g22208 = i.uv_texcoord.xy;
			float2 UV1340_g22208 = i.uv2_texcoord2;
			float2 UV2340_g22208 = i.uv3_texcoord3;
			float2 UV3340_g22208 = i.uv4_texcoord4;
			float2 localUVSwitch340_g22208 = UVSwitch( UVSwitchProp340_g22208 , UV0340_g22208 , UV1340_g22208 , UV2340_g22208 , UV3340_g22208 );
			float4 tex2DNode296_g22208 = SAMPLE_TEXTURE2D( _RimMask, sampler_trilinear_repeat, ( ( _RimMask_ST.xy * localUVSwitch340_g22208 ) + _RimMask_ST.zw ) );
			float ifLocalVar104_g22208 = 0;
			if( 1.0 > _RimLightMaskinv )
				ifLocalVar104_g22208 = tex2DNode296_g22208.g;
			else if( 1.0 == _RimLightMaskinv )
				ifLocalVar104_g22208 = ( 1.0 - tex2DNode296_g22208.g );
			float FinalMask165_g22208 = ifLocalVar104_g22208;
			float ifLocalVar181_g22208 = 0;
			if( 1.0 > DirectionToggle135_g22208 )
				ifLocalVar181_g22208 = RimShape196_g22208;
			else if( 1.0 == DirectionToggle135_g22208 )
				ifLocalVar181_g22208 = Fresnel171_g22208;
			float3 indirectNormal184_g22208 = WorldNormals127_g22208;
			Unity_GlossyEnvironmentData g184_g22208 = UnityGlossyEnvironmentSetup( _RimSpecLightsmoothness, data.worldViewDir, indirectNormal184_g22208, float3(0,0,0));
			float3 indirectSpecular184_g22208 = UnityGI_IndirectSpecular( data, AmbientOcclusion16840, indirectNormal184_g22208, g184_g22208 );
			float3 ifLocalVar203_g22208 = 0;
			if( 1.0 == _RimSpecToggle )
				ifLocalVar203_g22208 = ( saturate( ifLocalVar181_g22208 ) * indirectSpecular184_g22208 );
			float3 temp_output_189_0_g22208 = ( ( ( PreClampFinalLight21212 * saturate( ifLocalVar274_g22208 ) ) * temp_output_35_0_g22208 * (_RimColor).rgb * FinalMask165_g22208 ) + ( ifLocalVar203_g22208 * temp_output_35_0_g22208 * FinalMask165_g22208 * _RimOpacity ) );
			float3 switchResult252_g22208 = (((i.ASEVFace>0)?(temp_output_189_0_g22208):(float3( 0,0,0 ))));
			float3 switchResult253_g22208 = (((i.ASEVFace>0)?(float3( 0,0,0 )):(temp_output_189_0_g22208)));
			float3 ifLocalVar251_g22208 = 0;
			if( 1.0 > _RimFaceCulling )
				ifLocalVar251_g22208 = temp_output_189_0_g22208;
			else if( 1.0 == _RimFaceCulling )
				ifLocalVar251_g22208 = switchResult252_g22208;
			else if( 1.0 < _RimFaceCulling )
				ifLocalVar251_g22208 = switchResult253_g22208;
			float3 ifLocalVar6009 = 0;
			if( 1.0 == _RimToggle )
				ifLocalVar6009 = ifLocalVar251_g22208;
			float3 rimlight2221 = ( ifLocalVar6009 * ( _RimToggle * ToggleAdvanced21493 ) );
			float3 uvs_Flipbook = i.uv_texcoord;
			uvs_Flipbook.xy = i.uv_texcoord.xy * _Flipbook_ST.xy + _Flipbook_ST.zw;
			float cos16_g22210 = cos( ( _RotateFlipbook * UNITY_PI ) );
			float sin16_g22210 = sin( ( _RotateFlipbook * UNITY_PI ) );
			float2 rotator16_g22210 = mul( uvs_Flipbook.xy - float2( 0.5,0.5 ) , float2x2( cos16_g22210 , -sin16_g22210 , sin16_g22210 , cos16_g22210 )) + float2( 0.5,0.5 );
			float2 _Vector3 = float2(0,0);
			float2 temp_output_6_0_g22210 = ( 1.0 - float2( 1,1 ) );
			float2 temp_output_7_0_g22210 = ( 2.0 + float2( 0,0 ) );
			float2 _Vector2 = float2(1,1);
			float2 temp_output_19_0_g22210 = (_Vector3 + (rotator16_g22210 - ( _Vector3 + ( temp_output_6_0_g22210 / temp_output_7_0_g22210 ) )) * (_Vector2 - _Vector3) / (( _Vector2 - ( temp_output_6_0_g22210 / temp_output_7_0_g22210 ) ) - ( _Vector3 + ( temp_output_6_0_g22210 / temp_output_7_0_g22210 ) )));
			float temp_output_4_0_g22212 = (float)_Columns;
			float temp_output_5_0_g22212 = (float)_Rows;
			float2 appendResult7_g22212 = (float2(temp_output_4_0_g22212 , temp_output_5_0_g22212));
			float totalFrames39_g22212 = ( temp_output_4_0_g22212 * temp_output_5_0_g22212 );
			float2 appendResult8_g22212 = (float2(totalFrames39_g22212 , temp_output_5_0_g22212));
			float mulTime26_g22210 = _Time.y * (float)_Speed;
			float clampResult42_g22212 = clamp( 0.0 , 0.0001 , ( totalFrames39_g22212 - 1.0 ) );
			float temp_output_35_0_g22212 = frac( ( ( fmod( mulTime26_g22210 , (float)(float)_MaxFrames ) + clampResult42_g22212 ) / totalFrames39_g22212 ) );
			float2 appendResult29_g22212 = (float2(temp_output_35_0_g22212 , ( 1.0 - temp_output_35_0_g22212 )));
			float2 temp_output_15_0_g22212 = ( ( temp_output_19_0_g22210 / appendResult7_g22212 ) + ( floor( ( appendResult8_g22212 * appendResult29_g22212 ) ) / appendResult7_g22212 ) );
			float2 break20_g22210 = temp_output_19_0_g22210;
			float A1_g22211 = floor( max( break20_g22210.x , break20_g22210.y ) );
			float B1_g22211 = floor( ( 1.0 - min( break20_g22210.x , break20_g22210.y ) ) );
			float localASEOr1_g22211 = ASEOr( A1_g22211 , B1_g22211 );
			float3 PreFinalLight9087 = ( temp_output_1997_0_g22165 + temp_output_782_0_g22165 );
			float3 lerpResult43_g22210 = lerp( PreFinalLight9087 , FinalLight2205 , _FlipbookTint);
			float3 ifLocalVar2969 = 0;
			if( _FlipbookToggle == 1.0 )
				ifLocalVar2969 = ( ( (SAMPLE_TEXTURE2D( _Flipbook, sampler_Flipbook, temp_output_15_0_g22212 )).rgb * ( 1.0 - localASEOr1_g22211 ) ) * (_FlipbookColor).rgb * _FlipbookColor.a * lerpResult43_g22210 );
			float3 Flipbook2584 = ( ifLocalVar2969 * ( _FlipbookToggle * ToggleAdvanced21493 ) );
			float temp_output_142_0_g22207 = GrayscaledLight19806;
			float3 WorldNormals72_g22207 = worldnormals2351;
			float3 temp_cast_48 = (1.0).xxx;
			float UVSwitchProp449_g22207 = _SSSThicknessMapUVSwitch;
			float2 UV0449_g22207 = i.uv_texcoord.xy;
			float2 UV1449_g22207 = i.uv2_texcoord2;
			float2 UV2449_g22207 = i.uv3_texcoord3;
			float2 UV3449_g22207 = i.uv4_texcoord4;
			float2 localUVSwitch449_g22207 = UVSwitch( UVSwitchProp449_g22207 , UV0449_g22207 , UV1449_g22207 , UV2449_g22207 , UV3449_g22207 );
			float3 temp_output_349_0_g22207 = (SAMPLE_TEXTURE2D( _SSSThicknessMap, sampler_trilinear_repeat, ( ( _SSSThicknessMap_ST.xy * localUVSwitch449_g22207 ) + _SSSThicknessMap_ST.zw ) )).rgb;
			float3 ifLocalVar52_g22207 = 0;
			if( 1.0 > _SSSThicknessinv )
				ifLocalVar52_g22207 = temp_output_349_0_g22207;
			else if( 1.0 == _SSSThicknessinv )
				ifLocalVar52_g22207 = ( 1.0 - temp_output_349_0_g22207 );
			float3 ifLocalVar426_g22207 = 0;
			if( 1.0 > _SSSMapMode )
				ifLocalVar426_g22207 = temp_cast_48;
			else if( 1.0 == _SSSMapMode )
				ifLocalVar426_g22207 = ifLocalVar52_g22207;
			float3 ThicknessMapMod432_g22207 = ifLocalVar426_g22207;
			float3 break435_g22207 = ThicknessMapMod432_g22207;
			float SubsurfaceDistortionModifier73_g22207 = ( _SubsurfaceDistortionModifier * break435_g22207.z );
			float dotResult9_g22207 = dot( -( ase_worldlightDir + ( WorldNormals72_g22207 * SubsurfaceDistortionModifier73_g22207 ) ) , ase_worldViewDir );
			float SSSPower74_g22207 = ( _SSSPower * break435_g22207.y );
			float SSSIntensity75_g22207 = ( _SSSScale * break435_g22207.x );
			float temp_output_428_0_g22207 = ( saturate( pow( saturate( dotResult9_g22207 ) , SSSPower74_g22207 ) ) * SSSIntensity75_g22207 );
			float3 temp_cast_49 = (temp_output_428_0_g22207).xxx;
			float3 MainTex76_g22207 = MainTexSaturate2197;
			float SSSTint77_g22207 = _SSSTint;
			float3 lerpResult40_g22207 = lerp( temp_cast_49 , ( temp_output_428_0_g22207 * MainTex76_g22207 ) , SSSTint77_g22207);
			#ifdef UNITY_PASS_FORWARDADD
				float staticSwitch248_g22207 = ase_lightAtten;
			#else
				float staticSwitch248_g22207 = 0.0;
			#endif
			float3 TangentNormals2171_g22165 = normals2353;
			float3 temp_cast_50 = (ase_lightAtten).xxx;
			float dotResult2167_g22165 = dot( TangentNormals2171_g22165 , temp_cast_50 );
			float SSSTangentNormalAtten2169_g22165 = ( ( dotResult2167_g22165 * ( NdLHalfingControl704_g22165 + 0.5 ) ) + ( ( ( ( 1.0 - NdLHalfingControl704_g22165 ) * 0.5 ) - 0.25 ) + ( RampOffset167_g22165 - 0.5 ) ) );
			float2 temp_cast_51 = (SSSTangentNormalAtten2169_g22165).xx;
			float3 SSSToonRampTexATTEN2175_g22165 = (SAMPLE_TEXTURE2D( _ToonRamp, sampler_linear_clamp, temp_cast_51 )).rgb;
			#ifdef DIRECTIONAL
				float3 staticSwitch2152_g22165 = SSSToonRampTexATTEN2175_g22165;
			#else
				float3 staticSwitch2152_g22165 = _egg;
			#endif
			float3 SSSDirectionalAttenuationRamp2190_g22165 = staticSwitch2152_g22165;
			half3 linearRgb2154_g22165 = SSSDirectionalAttenuationRamp2190_g22165;
			half localgetLinearRgbToLuminance2154_g22165 = getLinearRgbToLuminance( linearRgb2154_g22165 );
			#ifdef DIRECTIONAL
				float staticSwitch2192_g22165 = SSSTangentNormalAtten2169_g22165;
			#else
				float staticSwitch2192_g22165 = 1.0;
			#endif
			float SSSDirectionalAttenuationSteps2194_g22165 = staticSwitch2192_g22165;
			float SSSShadowCasterSteps2195_g22165 = saturate( ( floor( ( SSSDirectionalAttenuationSteps2194_g22165 * Steps30_g22165 ) ) / ( Steps30_g22165 - 1 ) ) );
			float ifLocalVar2197_g22165 = 0;
			UNITY_BRANCH 
			if( 1.0 > ToggleSteps66_g22165 )
				ifLocalVar2197_g22165 = localgetLinearRgbToLuminance2154_g22165;
			else if( 1.0 == ToggleSteps66_g22165 )
				ifLocalVar2197_g22165 = SSSShadowCasterSteps2195_g22165;
			float SSSAtten25037 = ifLocalVar2197_g22165;
			#ifdef DIRECTIONAL
				float staticSwitch120_g22207 = SSSAtten25037;
			#else
				float staticSwitch120_g22207 = staticSwitch248_g22207;
			#endif
			float3 temp_output_56_0_g22207 = ( ase_lightColor.rgb * staticSwitch120_g22207 );
			float3 localambientDir58_g22207 = ambientDir();
			float dotResult92_g22207 = dot( -( localambientDir58_g22207 + ( WorldNormals72_g22207 * SubsurfaceDistortionModifier73_g22207 ) ) , ase_worldViewDir );
			float temp_output_427_0_g22207 = ( saturate( pow( saturate( dotResult92_g22207 ) , SSSPower74_g22207 ) ) * SSSIntensity75_g22207 );
			float3 temp_cast_52 = (temp_output_427_0_g22207).xxx;
			float3 lerpResult98_g22207 = lerp( temp_cast_52 , ( temp_output_427_0_g22207 * MainTex76_g22207 ) , SSSTint77_g22207);
			half3 localAmbient319_g22207 = Ambient();
			float3 ifLocalVar351_g22207 = 0;
			if( temp_output_142_0_g22207 > 0.0 )
				ifLocalVar351_g22207 = ( lerpResult40_g22207 * temp_output_56_0_g22207 );
			else if( temp_output_142_0_g22207 == 0.0 )
				ifLocalVar351_g22207 = ( lerpResult98_g22207 * localAmbient319_g22207 );
			float3 temp_cast_53 = (1.0).xxx;
			float3 ifLocalVar424_g22207 = 0;
			if( 1.0 > _SSSMapMode )
				ifLocalVar424_g22207 = ifLocalVar52_g22207;
			else if( 1.0 == _SSSMapMode )
				ifLocalVar424_g22207 = temp_cast_53;
			float3 ThicknessMapColor431_g22207 = ifLocalVar424_g22207;
			half3 linearRgb390_g22207 = ase_lightColor.rgb;
			half localgetLinearRgbToLuminance390_g22207 = getLinearRgbToLuminance( linearRgb390_g22207 );
			half3 linearRgb391_g22207 = localAmbient319_g22207;
			half localgetLinearRgbToLuminance391_g22207 = getLinearRgbToLuminance( linearRgb391_g22207 );
			float3 ifLocalVar388_g22207 = 0;
			if( temp_output_142_0_g22207 > 0.0 )
				ifLocalVar388_g22207 = ( lerpResult40_g22207 * staticSwitch120_g22207 * localgetLinearRgbToLuminance390_g22207 );
			else if( temp_output_142_0_g22207 == 0.0 )
				ifLocalVar388_g22207 = ( lerpResult98_g22207 * localgetLinearRgbToLuminance391_g22207 );
			float3 SSSColor84_g22207 = (_SSSColor).rgb;
			float3 ifLocalVar389_g22207 = 0;
			if( temp_output_142_0_g22207 > 0.0 )
				ifLocalVar389_g22207 = ( lerpResult40_g22207 * temp_output_56_0_g22207 );
			else if( temp_output_142_0_g22207 == 0.0 )
				ifLocalVar389_g22207 = ( lerpResult98_g22207 * localAmbient319_g22207 );
			float3 ifLocalVar6012 = 0;
			if( 1.0 > _SSSSetting )
				ifLocalVar6012 = ( ifLocalVar351_g22207 * ThicknessMapColor431_g22207 );
			else if( 1.0 == _SSSSetting )
				ifLocalVar6012 = ( ifLocalVar388_g22207 * ThicknessMapColor431_g22207 * SSSColor84_g22207 );
			else if( 1.0 < _SSSSetting )
				ifLocalVar6012 = ( ifLocalVar389_g22207 * ThicknessMapColor431_g22207 * SSSColor84_g22207 );
			float3 SSS2928 = ifLocalVar6012;
			float3 temp_output_295_0 = ( ( SpecularHighlight2223 * ( ToggleAdvanced21493 * _SpecularToggle ) ) + CubemapReflections10644 + Matcap24108 + rimlight2221 + Flipbook2584 + ( SSS2928 * ( ToggleAdvanced21493 * _SSSToggle ) ) );
			float3 ifLocalVar21786 = 0;
			if( 1.0 == _RenderingMode )
				ifLocalVar21786 = ( temp_output_295_0 * AlphaChannelMul9091 );
			else
				ifLocalVar21786 = temp_output_295_0;
			float UVSwitchProp24656 = _EmissionUVSwitch;
			float2 UV024656 = i.uv_texcoord.xy;
			float2 UV124656 = i.uv2_texcoord2;
			float2 UV224656 = i.uv3_texcoord3;
			float2 UV324656 = i.uv4_texcoord4;
			float2 localUVSwitch24656 = UVSwitch( UVSwitchProp24656 , UV024656 , UV124656 , UV224656 , UV324656 );
			float2 EmissionUVSwitch24640 = ( ( _Emission_ST.xy * localUVSwitch24656 ) + _Emission_ST.zw );
			float3 lerpResult21858 = lerp( float3( 1,1,1 ) , MainTexSaturate2197 , _EmissionTint);
			float3 lerpResult21851 = lerp( ( (SAMPLE_TEXTURE2D( _Emission, sampler_MainTex, EmissionUVSwitch24640 )).rgb * (_EmissionColor).rgb * lerpResult21858 ) , float3( 0,0,0 ) , saturate( ( _EmissionLightscale * LuminancedLight21855 ) ));
			#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch24414 = float3( 0,0,0 );
			#else
				float3 staticSwitch24414 = lerpResult21851;
			#endif
			float3 BasicEmission5690 = staticSwitch24414;
			float3 ase_vertex3Pos = mul( unity_WorldToObject, float4( i.worldPos , 1 ) );
			float4 transform698_g22222 = mul(unity_ObjectToWorld,float4( ase_vertex3Pos , 0.0 ));
			float Space701_g22222 = transform698_g22222.y;
			float ifLocalVar717_g22222 = 0;
			if( _ToggleMaterializeDirInv > 0.0 )
				ifLocalVar717_g22222 = -Space701_g22222;
			else if( _ToggleMaterializeDirInv == 0.0 )
				ifLocalVar717_g22222 = Space701_g22222;
			float3 ase_parentObjectScale = (1.0/float3( length( unity_WorldToObject[ 0 ].xyz ), length( unity_WorldToObject[ 1 ].xyz ), length( unity_WorldToObject[ 2 ].xyz ) ));
			float ObjectScale711_g22222 = max( ase_parentObjectScale.y , 1.0 );
			float temp_output_739_0_g22222 = ( ifLocalVar717_g22222 / ObjectScale711_g22222 );
			float DissolveDensity732_g22222 = exp2( _DissolveDensity );
			float temp_output_753_0_g22222 = ( ( temp_output_739_0_g22222 + (-1.0 + (_MaterializeR - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g22222 );
			float UVSwitchProp991_g22222 = _DissolvePatternUVSwitch;
			float2 UV0991_g22222 = i.uv_texcoord.xy;
			float2 UV1991_g22222 = i.uv2_texcoord2;
			float2 UV2991_g22222 = i.uv3_texcoord3;
			float2 UV3991_g22222 = i.uv4_texcoord4;
			float2 localUVSwitch991_g22222 = UVSwitch( UVSwitchProp991_g22222 , UV0991_g22222 , UV1991_g22222 , UV2991_g22222 , UV3991_g22222 );
			float2 DissolvePatternUVSwitch999_g22222 = ( ( _DissolvePattern_ST.xy * localUVSwitch991_g22222 ) + _DissolvePattern_ST.zw );
			float4 tex2DNode794_g22222 = SAMPLE_TEXTURE2D( _DissolvePattern, sampler_trilinear_repeat, DissolvePatternUVSwitch999_g22222 );
			float DissolvePattern801_g22222 = max( max( tex2DNode794_g22222.r , tex2DNode794_g22222.g ) , tex2DNode794_g22222.b );
			float4 ifLocalVar752_g22222 = 0;
			if( 1.0 > _MaterializeVertexColor )
				ifLocalVar752_g22222 = SAMPLE_TEXTURE2D( _MaterializeTex, sampler_point_clamp, i.uv_texcoord.xy );
			else if( 1.0 == _MaterializeVertexColor )
				ifLocalVar752_g22222 = i.vertexColor;
			float temp_output_708_0_g22222 = ( _MaterializeColorLayerR / 100.0 );
			float temp_output_714_0_g22222 = ( temp_output_708_0_g22222 - 0.005 );
			float temp_output_716_0_g22222 = ( temp_output_708_0_g22222 + 0.005 );
			float2 appendResult727_g22222 = (float2(temp_output_714_0_g22222 , temp_output_716_0_g22222));
			float2 appendResult722_g22222 = (float2(-0.005 , temp_output_716_0_g22222));
			float2 appendResult720_g22222 = (float2(temp_output_714_0_g22222 , 1.005));
			float2 ifLocalVar734_g22222 = 0;
			if( 1.0 > _MaterializeLayerModeR )
				ifLocalVar734_g22222 = appendResult727_g22222;
			else if( 1.0 == _MaterializeLayerModeR )
				ifLocalVar734_g22222 = appendResult722_g22222;
			else if( 1.0 < _MaterializeLayerModeR )
				ifLocalVar734_g22222 = appendResult720_g22222;
			float2 break751_g22222 = ifLocalVar734_g22222;
			float temp_output_927_0_g22222 = ( _MaterializeColorLayerG / 100.0 );
			float temp_output_925_0_g22222 = ( temp_output_927_0_g22222 - 0.005 );
			float temp_output_922_0_g22222 = ( temp_output_927_0_g22222 + 0.005 );
			float2 appendResult919_g22222 = (float2(temp_output_925_0_g22222 , temp_output_922_0_g22222));
			float2 appendResult918_g22222 = (float2(-0.005 , temp_output_922_0_g22222));
			float2 appendResult916_g22222 = (float2(temp_output_925_0_g22222 , 1.005));
			float2 ifLocalVar921_g22222 = 0;
			if( 1.0 > _MaterializeLayerModeG )
				ifLocalVar921_g22222 = appendResult919_g22222;
			else if( 1.0 == _MaterializeLayerModeG )
				ifLocalVar921_g22222 = appendResult918_g22222;
			else if( 1.0 < _MaterializeLayerModeG )
				ifLocalVar921_g22222 = appendResult916_g22222;
			float2 break920_g22222 = ifLocalVar921_g22222;
			float temp_output_941_0_g22222 = ( _MaterializeColorLayerB / 100.0 );
			float temp_output_939_0_g22222 = ( temp_output_941_0_g22222 - 0.005 );
			float temp_output_936_0_g22222 = ( temp_output_941_0_g22222 + 0.005 );
			float2 appendResult933_g22222 = (float2(temp_output_939_0_g22222 , temp_output_936_0_g22222));
			float2 appendResult932_g22222 = (float2(-0.005 , temp_output_936_0_g22222));
			float2 appendResult930_g22222 = (float2(temp_output_939_0_g22222 , 1.005));
			float2 ifLocalVar935_g22222 = 0;
			if( 1.0 > _MaterializeLayerModeB )
				ifLocalVar935_g22222 = appendResult933_g22222;
			else if( 1.0 == _MaterializeLayerModeB )
				ifLocalVar935_g22222 = appendResult932_g22222;
			else if( 1.0 < _MaterializeLayerModeB )
				ifLocalVar935_g22222 = appendResult930_g22222;
			float2 break934_g22222 = ifLocalVar935_g22222;
			float temp_output_955_0_g22222 = ( _MaterializeColorLayerA / 100.0 );
			float temp_output_953_0_g22222 = ( temp_output_955_0_g22222 - 0.005 );
			float temp_output_950_0_g22222 = ( temp_output_955_0_g22222 + 0.005 );
			float2 appendResult947_g22222 = (float2(temp_output_953_0_g22222 , temp_output_950_0_g22222));
			float2 appendResult946_g22222 = (float2(-0.005 , temp_output_950_0_g22222));
			float2 appendResult944_g22222 = (float2(temp_output_953_0_g22222 , 1.005));
			float2 ifLocalVar949_g22222 = 0;
			if( 1.0 > _MaterializeLayerModeA )
				ifLocalVar949_g22222 = appendResult947_g22222;
			else if( 1.0 == _MaterializeLayerModeA )
				ifLocalVar949_g22222 = appendResult946_g22222;
			else if( 1.0 < _MaterializeLayerModeA )
				ifLocalVar949_g22222 = appendResult944_g22222;
			float2 break948_g22222 = ifLocalVar949_g22222;
			float4 appendResult956_g22222 = (float4(break751_g22222.x , break920_g22222.x , break934_g22222.x , break948_g22222.x));
			float4 appendResult957_g22222 = (float4(break751_g22222.y , break920_g22222.y , break934_g22222.y , break948_g22222.y));
			float4 MaterialzeLayers912_g22222 = (( ifLocalVar752_g22222 >= appendResult956_g22222 && ifLocalVar752_g22222 <= appendResult957_g22222 ) ? ifLocalVar752_g22222 :  float4( 0,0,0,0 ) );
			float4 break768_g22222 = ceil( MaterialzeLayers912_g22222 );
			float temp_output_755_0_g22222 = ( ( temp_output_739_0_g22222 + (-1.0 + (_MaterializeG - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g22222 );
			float temp_output_765_0_g22222 = ( ( temp_output_739_0_g22222 + (-1.0 + (_MaterializeB - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g22222 );
			float temp_output_779_0_g22222 = ( ( temp_output_739_0_g22222 + (-1.0 + (_MaterializeA - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g22222 );
			float ifLocalVar761_g22222 = 0;
			if( _ToggleDissolveDirInv > 0.0 )
				ifLocalVar761_g22222 = -Space701_g22222;
			else if( _ToggleDissolveDirInv == 0.0 )
				ifLocalVar761_g22222 = Space701_g22222;
			float temp_output_784_0_g22222 = ( ( ( ifLocalVar761_g22222 / ObjectScale711_g22222 ) + (-1.0 + (_DissolveModifier - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g22222 );
			float2 uv_DissolveMask = i.uv_texcoord * _DissolveMask_ST.xy + _DissolveMask_ST.zw;
			float4 tex2DNode764_g22222 = SAMPLE_TEXTURE2D( _DissolveMask, sampler_trilinear_repeat, uv_DissolveMask );
			float A1_g22224 = i.vertexColor.r;
			float B1_g22224 = i.vertexColor.g;
			float localASEAnd1_g22224 = ASEAnd( A1_g22224 , B1_g22224 );
			float A1_g22223 = localASEAnd1_g22224;
			float B1_g22223 = i.vertexColor.b;
			float localASEAnd1_g22223 = ASEAnd( A1_g22223 , B1_g22223 );
			float ifLocalVar788_g22222 = 0;
			if( 1.0 > _MaterializeVertexColor )
				ifLocalVar788_g22222 = max( max( tex2DNode764_g22222.r , tex2DNode764_g22222.g ) , tex2DNode764_g22222.b );
			else if( 1.0 == _MaterializeVertexColor )
				ifLocalVar788_g22222 = localASEAnd1_g22223;
			float lerpResult795_g22222 = lerp( saturate( temp_output_784_0_g22222 ) , 1.0 , ifLocalVar788_g22222);
			clip( 1.0 - ( ( 1.0 - max( max( max( max( ( saturate( ( temp_output_753_0_g22222 + DissolvePattern801_g22222 ) ) * break768_g22222.r ) , ( saturate( ( temp_output_755_0_g22222 + DissolvePattern801_g22222 ) ) * break768_g22222.g ) ) , ( saturate( ( temp_output_765_0_g22222 + DissolvePattern801_g22222 ) ) * break768_g22222.b ) ) , ( saturate( ( temp_output_779_0_g22222 + DissolvePattern801_g22222 ) ) * break768_g22222.a ) ) , lerpResult795_g22222 ) ) + 0.005 ));
			float ifLocalVar806_g22222 = 0;
			if( 1.0 > _DissolveModifier )
				ifLocalVar806_g22222 = 1.0;
			else if( 1.0 == _DissolveModifier )
				ifLocalVar806_g22222 = 1.0;
			c.rgb = ( ( lerpResult22467 + ifLocalVar21786 + BasicEmission5690 ) * ifLocalVar806_g22222 );
			c.a = AlphaChannelMul9091;
			clip( ifLocalVar44_g22225 - _MaskClipValue );
			return c;
		}

		inline void LightingStandardCustomLighting_GI( inout SurfaceOutputCustomLightingCustom s, UnityGIInput data, inout UnityGI gi )
		{
			s.GIData = data;
		}

		void surf( Input i , inout SurfaceOutputCustomLightingCustom o )
		{
			o.SurfInput = i;
			o.Normal = float3(0,0,1);
			float mulTime7_g22221 = _Time.y * _NoiseSpeed;
			float UVSwitchProp79_g22221 = _NoiseTextureUVSwitch;
			float2 UV079_g22221 = i.uv_texcoord.xy;
			float2 UV179_g22221 = i.uv2_texcoord2;
			float2 UV279_g22221 = i.uv3_texcoord3;
			float2 UV379_g22221 = i.uv4_texcoord4;
			float2 localUVSwitch79_g22221 = UVSwitch( UVSwitchProp79_g22221 , UV079_g22221 , UV179_g22221 , UV279_g22221 , UV379_g22221 );
			float2 NoiseTextureUVSwitch90_g22221 = ( ( _NoiseTexture_ST.xy * localUVSwitch79_g22221 ) + _NoiseTexture_ST.zw );
			float2 panner17_g22221 = ( mulTime7_g22221 * _NoiseVectorXY + NoiseTextureUVSwitch90_g22221);
			float mulTime4_g22221 = _Time.y * _NoiseSpeed;
			float2 panner12_g22221 = ( ( mulTime4_g22221 * 2.179 ) * _NoiseVectorXY + ( 1.0 - NoiseTextureUVSwitch90_g22221 ));
			float mulTime16_g22221 = _Time.y * _Emiossionscrollspeed;
			float UVSwitchProp80_g22221 = _EmissionscrollUVSwitch;
			float2 UV080_g22221 = i.uv_texcoord.xy;
			float2 UV180_g22221 = i.uv2_texcoord2;
			float2 UV280_g22221 = i.uv3_texcoord3;
			float2 UV380_g22221 = i.uv4_texcoord4;
			float2 localUVSwitch80_g22221 = UVSwitch( UVSwitchProp80_g22221 , UV080_g22221 , UV180_g22221 , UV280_g22221 , UV380_g22221 );
			float2 EmissionscrollUVSwitch88_g22221 = ( ( _Emissionscroll_ST.xy * localUVSwitch80_g22221 ) + _Emissionscroll_ST.zw );
			float2 panner21_g22221 = ( mulTime16_g22221 * _VectorXY + EmissionscrollUVSwitch88_g22221);
			float4 Emissionsscrollcolor5894 = _EmissionscrollColor;
			float UVSwitchProp24658 = _EmissionScrollMaskUVSwitch;
			float2 UV024658 = i.uv_texcoord.xy;
			float2 UV124658 = i.uv2_texcoord2;
			float2 UV224658 = i.uv3_texcoord3;
			float2 UV324658 = i.uv4_texcoord4;
			float2 localUVSwitch24658 = UVSwitch( UVSwitchProp24658 , UV024658 , UV124658 , UV224658 , UV324658 );
			float2 EmissionScrollMaskUVSwitch24639 = ( ( _EmissionScrollMask_ST.xy * localUVSwitch24658 ) + _EmissionScrollMask_ST.zw );
			float4 tex2DNode5677 = SAMPLE_TEXTURE2D( _EmissionScrollMask, sampler_MainTex, EmissionScrollMaskUVSwitch24639 );
			float local_AudioTextureDimensions287_g22216 = ( 0.0 );
			float w287_g22216 = 0;
			float h287_g22216 = 0;
			{
			#ifndef SHADER_TARGET_SURFACE_ANALYSIS
			_AudioTexture.GetDimensions(w287_g22216, h287_g22216);
			#endif
			}
			float temp_output_840_0_g22216 = ( w287_g22216 + _AudioLinkSwitch );
			float A1_g22217 = (( temp_output_840_0_g22216 >= 33.0 && temp_output_840_0_g22216 <= 35.0 ) ? 1.0 :  0.0 );
			float B1_g22217 = (( temp_output_840_0_g22216 >= 129.0 && temp_output_840_0_g22216 <= 131.0 ) ? 1.0 :  0.0 );
			float localASEOr1_g22217 = ASEOr( A1_g22217 , B1_g22217 );
			float AudioTextureCheck808_g22216 = localASEOr1_g22217;
			float mulTime5_g22216 = _Time.y * _ESSpeed;
			float locallongIF931_g22216 = ( 0.0 );
			float2 Out931_g22216 = float2( 0,0 );
			float3 _DefaultTangentVector = float3(0,0,1);
			float UVSwitchProp88_g21801 = _NormalMapUVSwitch;
			float2 UV088_g21801 = i.uv_texcoord.xy;
			float2 UV188_g21801 = i.uv2_texcoord2;
			float2 UV288_g21801 = i.uv3_texcoord3;
			float2 UV388_g21801 = i.uv4_texcoord4;
			float2 localUVSwitch88_g21801 = UVSwitch( UVSwitchProp88_g21801 , UV088_g21801 , UV188_g21801 , UV288_g21801 , UV388_g21801 );
			float UVSwitchProp107_g21801 = _SecondaryNormalMaskUVSwitch;
			float2 UV0107_g21801 = i.uv_texcoord.xy;
			float2 UV1107_g21801 = i.uv2_texcoord2;
			float2 UV2107_g21801 = i.uv3_texcoord3;
			float2 UV3107_g21801 = i.uv4_texcoord4;
			float2 localUVSwitch107_g21801 = UVSwitch( UVSwitchProp107_g21801 , UV0107_g21801 , UV1107_g21801 , UV2107_g21801 , UV3107_g21801 );
			float4 tex2DNode65_g21801 = SAMPLE_TEXTURE2D( _SecondaryNormalMask, sampler_trilinear_repeat, ( ( _SecondaryNormalMask_ST.xy * localUVSwitch107_g21801 ) + _SecondaryNormalMask_ST.zw ) );
			float3 lerpResult63_g21801 = lerp( _DefaultTangentVector , UnpackScaleNormal( SAMPLE_TEXTURE2D( _NormalMap, sampler_trilinear_repeat, ( ( _NormalMap_ST.xy * localUVSwitch88_g21801 ) + _NormalMap_ST.zw ) ), _NormalScale ) , tex2DNode65_g21801.a);
			float UVSwitchProp98_g21801 = _SecondaryNormalUVSwitch;
			float2 UV098_g21801 = i.uv_texcoord.xy;
			float2 UV198_g21801 = i.uv2_texcoord2;
			float2 UV298_g21801 = i.uv3_texcoord3;
			float2 UV398_g21801 = i.uv4_texcoord4;
			float2 localUVSwitch98_g21801 = UVSwitch( UVSwitchProp98_g21801 , UV098_g21801 , UV198_g21801 , UV298_g21801 , UV398_g21801 );
			float3 lerpResult58_g21801 = lerp( _DefaultTangentVector , UnpackScaleNormal( SAMPLE_TEXTURE2D( _SecondaryNormal, sampler_trilinear_repeat, ( ( _SecondaryNormal_ST.xy * localUVSwitch98_g21801 ) + _SecondaryNormal_ST.zw ) ), _SecondaryNormalScale ) , tex2DNode65_g21801.g);
			float3 temp_output_54_0_g21801 = BlendNormals( lerpResult63_g21801 , lerpResult58_g21801 );
			float localOutlineSwitch127_g21801 = ( 0.0 );
			float3 true127_g21801 = temp_output_54_0_g21801;
			float3 false127_g21801 = -temp_output_54_0_g21801;
			float3 Out0127_g21801 = float3( 0,0,0 );
			{
			#ifdef FOROUTLINE
			Out0127_g21801 = true127_g21801; //Outline
			#else
			Out0127_g21801 = false127_g21801; //Not Outline
			#endif
			#define FOROUTLINE
			}
			float3 switchResult121_g21801 = (((i.ASEVFace>0)?(temp_output_54_0_g21801):(Out0127_g21801)));
			float3 normalizeResult52_g21801 = normalize( switchResult121_g21801 );
			float3 normals2353 = normalizeResult52_g21801;
			float3 ifLocalVar112_g22216 = 0;
			if( 1.0 > _IgnoreNormalsESv2 )
				ifLocalVar112_g22216 = normals2353;
			else if( 1.0 == _IgnoreNormalsESv2 )
				ifLocalVar112_g22216 = float3(0,0,0);
			float3 break437_g22216 = ifLocalVar112_g22216;
			float3 ase_worldNormal = WorldNormalVector( i, float3( 0, 0, 1 ) );
			float3 ase_vertexNormal = mul( unity_WorldToObject, float4( ase_worldNormal, 0 ) );
			ase_vertexNormal = normalize( ase_vertexNormal );
			float2 appendResult113_g22216 = (float2(( break437_g22216.x + ase_vertexNormal.x ) , ( break437_g22216.y + ase_vertexNormal.y )));
			float2 VertexNormal244_g22216 = appendResult113_g22216;
			float2 VertexNormal931_g22216 = VertexNormal244_g22216;
			float3 ase_worldPos = i.worldPos;
			float3 ase_worldViewDir = Unity_SafeNormalize( UnityWorldSpaceViewDir( ase_worldPos ) );
			float3 newWorldNormal50_g21801 = (WorldNormalVector( i , temp_output_54_0_g21801 ));
			float localOutlineSwitch128_g21801 = ( 0.0 );
			float3 true128_g21801 = newWorldNormal50_g21801;
			float3 false128_g21801 = -newWorldNormal50_g21801;
			float3 Out0128_g21801 = float3( 0,0,0 );
			{
			#ifdef FOROUTLINE
			Out0128_g21801 = true128_g21801; //Outline
			#else
			Out0128_g21801 = false128_g21801; //Not Outline
			#endif
			#define FOROUTLINE
			}
			float3 switchResult119_g21801 = (((i.ASEVFace>0)?(newWorldNormal50_g21801):(Out0128_g21801)));
			float3 normalizeResult53_g21801 = normalize( switchResult119_g21801 );
			float3 worldnormals2351 = normalizeResult53_g21801;
			float3 normalizeResult85_g22216 = normalize( ase_worldNormal );
			float3 ifLocalVar86_g22216 = 0;
			if( 1.0 > _IgnoreNormalsESv2 )
				ifLocalVar86_g22216 = worldnormals2351;
			else if( 1.0 == _IgnoreNormalsESv2 )
				ifLocalVar86_g22216 = normalizeResult85_g22216;
			float fresnelNdotV58_g22216 = dot( ifLocalVar86_g22216, ase_worldViewDir );
			float fresnelNode58_g22216 = ( 0.0 + 1.0 * pow( 1.0 - fresnelNdotV58_g22216, 5.0 ) );
			float FresnelCamera248_g22216 = fresnelNode58_g22216;
			float FresnelCamera931_g22216 = FresnelCamera248_g22216;
			float3 ase_vertex3Pos = mul( unity_WorldToObject, float4( i.worldPos , 1 ) );
			float4 transform187_g22216 = mul(unity_ObjectToWorld,float4( ase_vertex3Pos , 0.0 ));
			float2 appendResult209_g22216 = (float2(( transform187_g22216.x + break437_g22216.x ) , ( transform187_g22216.y + break437_g22216.y )));
			float2 VertextoWorldPos251_g22216 = appendResult209_g22216;
			float2 VertextoWorldPos931_g22216 = VertextoWorldPos251_g22216;
			float mulTime62_g22216 = _Time.y * _ESVoronoiSpeed;
			float time64_g22216 = mulTime62_g22216;
			float2 voronoiSmoothId64_g22216 = 0;
			float2 coords64_g22216 = VertextoWorldPos251_g22216 * _ESVoronoiScale;
			float2 id64_g22216 = 0;
			float2 uv64_g22216 = 0;
			float voroi64_g22216 = voronoi64_g22216( coords64_g22216, time64_g22216, id64_g22216, uv64_g22216, 0, voronoiSmoothId64_g22216 );
			float Voronoi255_g22216 = voroi64_g22216;
			float Voronoi931_g22216 = Voronoi255_g22216;
			float2 appendResult482_g22216 = (float2(( break437_g22216.x + i.uv_texcoord.xy.x ) , ( break437_g22216.y + i.uv_texcoord.xy.y )));
			float2 VertexUV481_g22216 = appendResult482_g22216;
			float2 VertexUV931_g22216 = VertexUV481_g22216;
			{
			if (_ESRenderMethod == 0)
				Out931_g22216 = VertexNormal931_g22216;
			else if (_ESRenderMethod == 1)
				Out931_g22216 = FresnelCamera931_g22216;
			else if (_ESRenderMethod == 2)
				Out931_g22216 = VertextoWorldPos931_g22216;
			else if (_ESRenderMethod == 3)
				Out931_g22216 = Voronoi931_g22216;
			else if (_ESRenderMethod == 4)
				Out931_g22216 = VertexUV931_g22216;
			}
			float dotResult6_g22216 = dot( Out931_g22216 , _ESCoordinates );
			float ifLocalVar728_g22216 = 0;
			if( 1.0 > AudioTextureCheck808_g22216 )
				ifLocalVar728_g22216 = _ESSize;
			else if( 1.0 == AudioTextureCheck808_g22216 )
				ifLocalVar728_g22216 = 1.0;
			float ifLocalVar732_g22216 = 0;
			if( 1.0 > AudioTextureCheck808_g22216 )
				ifLocalVar732_g22216 = _ESSharpness;
			float temp_output_18_0_g22216 = saturate( ( ( pow( ( 1.0 - ( frac( ( ( mulTime5_g22216 + _ESScrollOffset ) - dotResult6_g22216 ) ) / ifLocalVar728_g22216 ) ) , ( 1.0 - ifLocalVar732_g22216 ) ) + 1E-06 ) + _ESLevelOffset ) );
			float2 break742_g22216 = tex2DNode5677.rg;
			float ESMaskR738_g22216 = break742_g22216.x;
			int Band697_g22216 = (int)i.uv_texcoord.xy.y;
			float ifLocalVar846_g22216 = 0;
			if( 32.0 == w287_g22216 )
				ifLocalVar846_g22216 = 32.0;
			else if( 32.0 < w287_g22216 )
				ifLocalVar846_g22216 = _AudioLinkBandHistory;
			float VectorCalculation793_g22216 = temp_output_18_0_g22216;
			float temp_output_845_0_g22216 = ( ifLocalVar846_g22216 * VectorCalculation793_g22216 );
			float Delay697_g22216 = temp_output_845_0_g22216;
			float localAudioLinkLerp697_g22216 = AudioLinkLerp( Band697_g22216 , Delay697_g22216 );
			int Band702_g22216 = (int)( i.uv_texcoord.xy.y + 1.0 );
			float Delay702_g22216 = temp_output_845_0_g22216;
			float localAudioLinkLerp702_g22216 = AudioLinkLerp( Band702_g22216 , Delay702_g22216 );
			int Band706_g22216 = (int)( i.uv_texcoord.xy.y + 2.0 );
			float Delay706_g22216 = temp_output_845_0_g22216;
			float localAudioLinkLerp706_g22216 = AudioLinkLerp( Band706_g22216 , Delay706_g22216 );
			int Band710_g22216 = (int)( i.uv_texcoord.xy.y + 3.0 );
			float Delay710_g22216 = temp_output_845_0_g22216;
			float localAudioLinkLerp710_g22216 = AudioLinkLerp( Band710_g22216 , Delay710_g22216 );
			float AudioLinkV1V2Bands800_g22216 = ( ( ( localAudioLinkLerp697_g22216 * _AudioBandIntensity.x ) + ( localAudioLinkLerp702_g22216 * _AudioBandIntensity.y ) + ( localAudioLinkLerp706_g22216 * _AudioBandIntensity.z ) + ( localAudioLinkLerp710_g22216 * _AudioBandIntensity.w ) ) * ESMaskR738_g22216 );
			float2 appendResult608_g22216 = (float2(_WaveformCoordinates.x , _WaveformCoordinates.y));
			float2 appendResult609_g22216 = (float2(_WaveformCoordinates.z , _WaveformCoordinates.w));
			float2 uvs_TexCoord606_g22216 = i.uv_texcoord;
			uvs_TexCoord606_g22216.xy = i.uv_texcoord.xy * appendResult608_g22216 + appendResult609_g22216;
			float cos593_g22216 = cos( ( _WaveformRotation * UNITY_PI ) );
			float sin593_g22216 = sin( ( _WaveformRotation * UNITY_PI ) );
			float2 rotator593_g22216 = mul( uvs_TexCoord606_g22216.xy - float2( 0.5,0.5 ) , float2x2( cos593_g22216 , -sin593_g22216 , sin593_g22216 , cos593_g22216 )) + float2( 0.5,0.5 );
			float2 _Vec001a = float2(0,0);
			float2 temp_output_581_0_g22216 = ( 1.0 - float2( 1,1 ) );
			float2 temp_output_589_0_g22216 = ( 2.0 + float2( 0,0 ) );
			float2 _Vec111a = float2(1,1);
			float2 temp_output_587_0_g22216 = (_Vec001a + (rotator593_g22216 - ( _Vec001a + ( temp_output_581_0_g22216 / temp_output_589_0_g22216 ) )) * (_Vec111a - _Vec001a) / (( _Vec111a - ( temp_output_581_0_g22216 / temp_output_589_0_g22216 ) ) - ( _Vec001a + ( temp_output_581_0_g22216 / temp_output_589_0_g22216 ) )));
			float2 uv564_g22216 = temp_output_587_0_g22216;
			float thickness564_g22216 = _WaveformThickness;
			float2 localAudioLinkWaveformsample564_g22216 = AudioLinkWaveformsample( uv564_g22216 , thickness564_g22216 );
			float cos869_g22216 = cos( ( _WaveformRotation * UNITY_PI ) );
			float sin869_g22216 = sin( ( _WaveformRotation * UNITY_PI ) );
			float2 rotator869_g22216 = mul( uvs_TexCoord606_g22216.xy - float2( 0.5,0.5 ) , float2x2( cos869_g22216 , -sin869_g22216 , sin869_g22216 , cos869_g22216 )) + float2( 0.5,0.5 );
			float2 break905_g22216 = rotator869_g22216;
			float2 appendResult906_g22216 = (float2(break905_g22216.x , ( 1.0 - break905_g22216.y )));
			float2 _Vector2a = float2(0,0);
			float2 temp_output_866_0_g22216 = ( 1.0 - float2( 1,1 ) );
			float2 temp_output_855_0_g22216 = ( 2.0 + float2( 0,0 ) );
			float2 _Vector0a = float2(1,1);
			float2 temp_output_871_0_g22216 = (_Vector2a + (appendResult906_g22216 - ( _Vector2a + ( temp_output_866_0_g22216 / temp_output_855_0_g22216 ) )) * (_Vector0a - _Vector2a) / (( _Vector0a - ( temp_output_866_0_g22216 / temp_output_855_0_g22216 ) ) - ( _Vector2a + ( temp_output_866_0_g22216 / temp_output_855_0_g22216 ) )));
			float2 uv881_g22216 = temp_output_871_0_g22216;
			float thickness881_g22216 = _WaveformThickness;
			float2 localAudioLinkWaveformsample881_g22216 = AudioLinkWaveformsample( uv881_g22216 , thickness881_g22216 );
			float2 break874_g22216 = temp_output_871_0_g22216;
			float A1_g22220 = floor( max( break874_g22216.x , break874_g22216.y ) );
			float B1_g22220 = floor( ( 1.0 - min( break874_g22216.x , break874_g22216.y ) ) );
			float localASEOr1_g22220 = ASEOr( A1_g22220 , B1_g22220 );
			float2 uv922_g22216 = temp_output_587_0_g22216;
			float2 localAudioLinkWaveformsampleMirror922_g22216 = AudioLinkWaveformsampleMirror( uv922_g22216 );
			float ifLocalVar924_g22216 = 0;
			if( 1.0 > _AudioLinkWaveformMirrorToggle )
				ifLocalVar924_g22216 = localAudioLinkWaveformsample564_g22216.y;
			else if( 1.0 == _AudioLinkWaveformMirrorToggle )
				ifLocalVar924_g22216 = max( localAudioLinkWaveformsample564_g22216.y , ( localAudioLinkWaveformsample881_g22216.y * ( 1.0 - localASEOr1_g22220 ) ) );
			else if( 1.0 < _AudioLinkWaveformMirrorToggle )
				ifLocalVar924_g22216 = localAudioLinkWaveformsampleMirror922_g22216.y;
			float2 break571_g22216 = temp_output_587_0_g22216;
			float A1_g22219 = floor( max( break571_g22216.x , break571_g22216.y ) );
			float B1_g22219 = floor( ( 1.0 - min( break571_g22216.x , break571_g22216.y ) ) );
			float localASEOr1_g22219 = ASEOr( A1_g22219 , B1_g22219 );
			float4 break419_g22216 = _AudioLinkColor;
			float ESMaskG743_g22216 = break742_g22216.y;
			float AudioLinkV2Waveform801_g22216 = ( ( ifLocalVar924_g22216 * ( 1.0 - localASEOr1_g22219 ) ) * break419_g22216.a * ESMaskG743_g22216 );
			float ifLocalVar600_g22216 = 0;
			if( 2.0 > _AudioLinkSwitch )
				ifLocalVar600_g22216 = AudioLinkV1V2Bands800_g22216;
			else if( 2.0 == _AudioLinkSwitch )
				ifLocalVar600_g22216 = AudioLinkV2Waveform801_g22216;
			else if( 2.0 < _AudioLinkSwitch )
				ifLocalVar600_g22216 = ( AudioLinkV1V2Bands800_g22216 + AudioLinkV2Waveform801_g22216 );
			float mulTime301_g22216 = _Time.y * _AudioHueSpeed;
			float3 hsvTorgb3_g22218 = HSVToRGB( float3(mulTime301_g22216,1.0,1.0) );
			float3 ifLocalVar416_g22216 = 0;
			if( _AudioHueSpeed > 0.0 )
				ifLocalVar416_g22216 = ( hsvTorgb3_g22218 * max( max( break419_g22216.r , break419_g22216.g ) , break419_g22216.b ) );
			else if( _AudioHueSpeed == 0.0 )
				ifLocalVar416_g22216 = (_AudioLinkColor).rgb;
			float3 ifLocalVar289_g22216 = 0;
			if( 1.0 > AudioTextureCheck808_g22216 )
				ifLocalVar289_g22216 = ( temp_output_18_0_g22216 * (Emissionsscrollcolor5894).rgb * ESMaskR738_g22216 );
			else if( 1.0 == AudioTextureCheck808_g22216 )
				ifLocalVar289_g22216 = ( ifLocalVar600_g22216 * ifLocalVar416_g22216 );
			float UVSwitchProp24660 = _MainTexUVSwitch;
			float2 UV024660 = i.uv_texcoord.xy;
			float2 UV124660 = i.uv2_texcoord2;
			float2 UV224660 = i.uv3_texcoord3;
			float2 UV324660 = i.uv4_texcoord4;
			float2 localUVSwitch24660 = UVSwitch( UVSwitchProp24660 , UV024660 , UV124660 , UV224660 , UV324660 );
			float2 MainTexUVSwitch24638 = ( ( _MainTex_ST.xy * localUVSwitch24660 ) + _MainTex_ST.zw );
			float4 tex2DNode43 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, MainTexUVSwitch24638 );
			float3 Texture18_g21914 = tex2DNode43.rgb;
			float grayscale5_g21914 = (Texture18_g21914.r + Texture18_g21914.g + Texture18_g21914.b) / 3;
			float UVSwitchProp257_g21914 = _HueMaskUVSwitch;
			float2 UV0257_g21914 = i.uv_texcoord.xy;
			float2 UV1257_g21914 = i.uv2_texcoord2;
			float2 UV2257_g21914 = i.uv3_texcoord3;
			float2 UV3257_g21914 = i.uv4_texcoord4;
			float2 localUVSwitch257_g21914 = UVSwitch( UVSwitchProp257_g21914 , UV0257_g21914 , UV1257_g21914 , UV2257_g21914 , UV3257_g21914 );
			float2 temp_output_252_0_g21914 = ( ( _HueMask_ST.xy * localUVSwitch257_g21914 ) + _HueMask_ST.zw );
			float HueMaskG53_g21914 = SAMPLE_TEXTURE2D( _HueMask, sampler_point_clamp, temp_output_252_0_g21914 ).g;
			float ifLocalVar218_g21914 = 0;
			if( 1.0 > _ToggleHueTexforSpeed )
				ifLocalVar218_g21914 = 1.0;
			else if( 1.0 == _ToggleHueTexforSpeed )
				ifLocalVar218_g21914 = HueMaskG53_g21914;
			float mulTime2_g21914 = _Time.y * ( _HueShiftSpeed * ifLocalVar218_g21914 );
			float3 hsvTorgb3_g21915 = HSVToRGB( float3(( mulTime2_g21914 + _HueShiftRandomizer ),1.0,1.0) );
			float3 ifLocalVar13_g21914 = 0;
			if( ( _HueShiftSpeed + _HueShiftRandomizer ) > 0.0 )
				ifLocalVar13_g21914 = ( grayscale5_g21914 * hsvTorgb3_g21915 );
			else if( ( _HueShiftSpeed + _HueShiftRandomizer ) == 0.0 )
				ifLocalVar13_g21914 = Texture18_g21914;
			float HueMaskR52_g21914 = SAMPLE_TEXTURE2D( _HueMask, sampler_trilinear_repeat, temp_output_252_0_g21914 ).r;
			float ifLocalVar9_g21914 = 0;
			if( 1.0 > _HueMaskinverter )
				ifLocalVar9_g21914 = HueMaskR52_g21914;
			else if( 1.0 == _HueMaskinverter )
				ifLocalVar9_g21914 = ( 1.0 - HueMaskR52_g21914 );
			float lerpResult15_g21914 = lerp( 0.0 , ifLocalVar9_g21914 , _HueShiftblend);
			float3 lerpResult16_g21914 = lerp( Texture18_g21914 , ifLocalVar13_g21914 , lerpResult15_g21914);
			float3 desaturateInitialColor626 = ( lerpResult16_g21914 * (_MainColor).rgb );
			float desaturateDot626 = dot( desaturateInitialColor626, float3( 0.299, 0.587, 0.114 ));
			float3 desaturateVar626 = lerp( desaturateInitialColor626, desaturateDot626.xxx, ( 1.0 - _Saturation ) );
			float3 MainTexSaturate2197 = desaturateVar626;
			float3 lerpResult369_g22216 = lerp( ifLocalVar289_g22216 , ( ifLocalVar289_g22216 * MainTexSaturate2197 ) , _EmissionscrollTint);
			float3 EmissionScrollV25670 = lerpResult369_g22216;
			float3 ifLocalVar5679 = 0;
			if( 1.0 == _EmissionScrollToggle )
				ifLocalVar5679 = ( ( ( (SAMPLE_TEXTURE2D( _NoiseTexture, sampler_trilinear_repeat, ( panner17_g22221 + 0.25 ) )).rgb * (SAMPLE_TEXTURE2D( _NoiseTexture, sampler_NoiseTexture, ( 1.0 - panner12_g22221 ) )).rgb ) * ( (SAMPLE_TEXTURE2D( _Emissionscroll, sampler_trilinear_repeat, panner21_g22221 )).rgb * (Emissionsscrollcolor5894).rgb ) ) * tex2DNode5677.r );
			else if( 1.0 < _EmissionScrollToggle )
				ifLocalVar5679 = EmissionScrollV25670;
			float ToggleAdvanced21493 = _COLORCOLOR;
			float3 temp_output_21539_0 = ( ifLocalVar5679 * ( saturate( _EmissionScrollToggle ) * ToggleAdvanced21493 ) );
			float3 Emissionscroll5684 = temp_output_21539_0;
			float3 WorldNormals20_g21912 = worldnormals2351;
			float dotResult442_g21912 = dot( WorldNormals20_g21912 , ase_worldViewDir );
			float NdotV19803 = dotResult442_g21912;
			float smoothstepResult10_g21916 = smoothstep( min( _ShadowRimSharpness , ( 1.0 - 1E-06 ) ) , 1.0 , ( NdotV19803 + _ShadowRimRange ));
			float lerpResult11_g21916 = lerp( 1.0 , smoothstepResult10_g21916 , _ShadowRimOpacity);
			float mulTime25_g21916 = _Time.y * _RimHueSpeed;
			float3 hsvTorgb3_g21917 = HSVToRGB( float3(mulTime25_g21916,1.0,1.0) );
			float3 temp_cast_7 = 1;
			float3 ifLocalVar27_g21916 = 0;
			if( _RimHueSpeed > 0.0 )
				ifLocalVar27_g21916 = hsvTorgb3_g21917;
			else if( _RimHueSpeed == 0.0 )
				ifLocalVar27_g21916 = temp_cast_7;
			float3 ifLocalVar8688 = 0;
			if( 1.0 == _RimSwitch )
				ifLocalVar8688 = ( ( ( 1.0 - lerpResult11_g21916 ) * (_EmissiveRimColor).rgb ) * ifLocalVar27_g21916 );
			float3 EmissiveRim8681 = ifLocalVar8688;
			float4 transform698_g22222 = mul(unity_ObjectToWorld,float4( ase_vertex3Pos , 0.0 ));
			float Space701_g22222 = transform698_g22222.y;
			float ifLocalVar717_g22222 = 0;
			if( _ToggleMaterializeDirInv > 0.0 )
				ifLocalVar717_g22222 = -Space701_g22222;
			else if( _ToggleMaterializeDirInv == 0.0 )
				ifLocalVar717_g22222 = Space701_g22222;
			float3 ase_parentObjectScale = (1.0/float3( length( unity_WorldToObject[ 0 ].xyz ), length( unity_WorldToObject[ 1 ].xyz ), length( unity_WorldToObject[ 2 ].xyz ) ));
			float ObjectScale711_g22222 = max( ase_parentObjectScale.y , 1.0 );
			float temp_output_739_0_g22222 = ( ifLocalVar717_g22222 / ObjectScale711_g22222 );
			float DissolveDensity732_g22222 = exp2( _DissolveDensity );
			float temp_output_753_0_g22222 = ( ( temp_output_739_0_g22222 + (-1.0 + (_MaterializeR - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g22222 );
			float4 ifLocalVar752_g22222 = 0;
			if( 1.0 > _MaterializeVertexColor )
				ifLocalVar752_g22222 = SAMPLE_TEXTURE2D( _MaterializeTex, sampler_point_clamp, i.uv_texcoord.xy );
			else if( 1.0 == _MaterializeVertexColor )
				ifLocalVar752_g22222 = i.vertexColor;
			float temp_output_708_0_g22222 = ( _MaterializeColorLayerR / 100.0 );
			float temp_output_714_0_g22222 = ( temp_output_708_0_g22222 - 0.005 );
			float temp_output_716_0_g22222 = ( temp_output_708_0_g22222 + 0.005 );
			float2 appendResult727_g22222 = (float2(temp_output_714_0_g22222 , temp_output_716_0_g22222));
			float2 appendResult722_g22222 = (float2(-0.005 , temp_output_716_0_g22222));
			float2 appendResult720_g22222 = (float2(temp_output_714_0_g22222 , 1.005));
			float2 ifLocalVar734_g22222 = 0;
			if( 1.0 > _MaterializeLayerModeR )
				ifLocalVar734_g22222 = appendResult727_g22222;
			else if( 1.0 == _MaterializeLayerModeR )
				ifLocalVar734_g22222 = appendResult722_g22222;
			else if( 1.0 < _MaterializeLayerModeR )
				ifLocalVar734_g22222 = appendResult720_g22222;
			float2 break751_g22222 = ifLocalVar734_g22222;
			float temp_output_927_0_g22222 = ( _MaterializeColorLayerG / 100.0 );
			float temp_output_925_0_g22222 = ( temp_output_927_0_g22222 - 0.005 );
			float temp_output_922_0_g22222 = ( temp_output_927_0_g22222 + 0.005 );
			float2 appendResult919_g22222 = (float2(temp_output_925_0_g22222 , temp_output_922_0_g22222));
			float2 appendResult918_g22222 = (float2(-0.005 , temp_output_922_0_g22222));
			float2 appendResult916_g22222 = (float2(temp_output_925_0_g22222 , 1.005));
			float2 ifLocalVar921_g22222 = 0;
			if( 1.0 > _MaterializeLayerModeG )
				ifLocalVar921_g22222 = appendResult919_g22222;
			else if( 1.0 == _MaterializeLayerModeG )
				ifLocalVar921_g22222 = appendResult918_g22222;
			else if( 1.0 < _MaterializeLayerModeG )
				ifLocalVar921_g22222 = appendResult916_g22222;
			float2 break920_g22222 = ifLocalVar921_g22222;
			float temp_output_941_0_g22222 = ( _MaterializeColorLayerB / 100.0 );
			float temp_output_939_0_g22222 = ( temp_output_941_0_g22222 - 0.005 );
			float temp_output_936_0_g22222 = ( temp_output_941_0_g22222 + 0.005 );
			float2 appendResult933_g22222 = (float2(temp_output_939_0_g22222 , temp_output_936_0_g22222));
			float2 appendResult932_g22222 = (float2(-0.005 , temp_output_936_0_g22222));
			float2 appendResult930_g22222 = (float2(temp_output_939_0_g22222 , 1.005));
			float2 ifLocalVar935_g22222 = 0;
			if( 1.0 > _MaterializeLayerModeB )
				ifLocalVar935_g22222 = appendResult933_g22222;
			else if( 1.0 == _MaterializeLayerModeB )
				ifLocalVar935_g22222 = appendResult932_g22222;
			else if( 1.0 < _MaterializeLayerModeB )
				ifLocalVar935_g22222 = appendResult930_g22222;
			float2 break934_g22222 = ifLocalVar935_g22222;
			float temp_output_955_0_g22222 = ( _MaterializeColorLayerA / 100.0 );
			float temp_output_953_0_g22222 = ( temp_output_955_0_g22222 - 0.005 );
			float temp_output_950_0_g22222 = ( temp_output_955_0_g22222 + 0.005 );
			float2 appendResult947_g22222 = (float2(temp_output_953_0_g22222 , temp_output_950_0_g22222));
			float2 appendResult946_g22222 = (float2(-0.005 , temp_output_950_0_g22222));
			float2 appendResult944_g22222 = (float2(temp_output_953_0_g22222 , 1.005));
			float2 ifLocalVar949_g22222 = 0;
			if( 1.0 > _MaterializeLayerModeA )
				ifLocalVar949_g22222 = appendResult947_g22222;
			else if( 1.0 == _MaterializeLayerModeA )
				ifLocalVar949_g22222 = appendResult946_g22222;
			else if( 1.0 < _MaterializeLayerModeA )
				ifLocalVar949_g22222 = appendResult944_g22222;
			float2 break948_g22222 = ifLocalVar949_g22222;
			float4 appendResult956_g22222 = (float4(break751_g22222.x , break920_g22222.x , break934_g22222.x , break948_g22222.x));
			float4 appendResult957_g22222 = (float4(break751_g22222.y , break920_g22222.y , break934_g22222.y , break948_g22222.y));
			float4 MaterialzeLayers912_g22222 = (( ifLocalVar752_g22222 >= appendResult956_g22222 && ifLocalVar752_g22222 <= appendResult957_g22222 ) ? ifLocalVar752_g22222 :  float4( 0,0,0,0 ) );
			float4 break768_g22222 = ceil( MaterialzeLayers912_g22222 );
			float ifLocalVar817_g22222 = 0;
			if( 1.0 > saturate( _MaterializeR ) )
				ifLocalVar817_g22222 = ( ( temp_output_753_0_g22222 + 1.0 ) * break768_g22222.r );
			float temp_output_755_0_g22222 = ( ( temp_output_739_0_g22222 + (-1.0 + (_MaterializeG - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g22222 );
			float ifLocalVar812_g22222 = 0;
			if( 1.0 > saturate( _MaterializeG ) )
				ifLocalVar812_g22222 = ( ( temp_output_755_0_g22222 + 1.0 ) * break768_g22222.g );
			float temp_output_765_0_g22222 = ( ( temp_output_739_0_g22222 + (-1.0 + (_MaterializeB - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g22222 );
			float ifLocalVar823_g22222 = 0;
			if( 1.0 > saturate( _MaterializeB ) )
				ifLocalVar823_g22222 = ( ( temp_output_765_0_g22222 + 1.0 ) * break768_g22222.b );
			float temp_output_779_0_g22222 = ( ( temp_output_739_0_g22222 + (-1.0 + (_MaterializeA - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g22222 );
			float ifLocalVar820_g22222 = 0;
			if( 1.0 > saturate( _MaterializeA ) )
				ifLocalVar820_g22222 = ( ( temp_output_779_0_g22222 + 1.0 ) * break768_g22222.a );
			float ifLocalVar761_g22222 = 0;
			if( _ToggleDissolveDirInv > 0.0 )
				ifLocalVar761_g22222 = -Space701_g22222;
			else if( _ToggleDissolveDirInv == 0.0 )
				ifLocalVar761_g22222 = Space701_g22222;
			float temp_output_784_0_g22222 = ( ( ( ifLocalVar761_g22222 / ObjectScale711_g22222 ) + (-1.0 + (_DissolveModifier - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g22222 );
			float ifLocalVar818_g22222 = 0;
			if( 1.0 > _DissolveModifier )
				ifLocalVar818_g22222 = max( max( max( max( ifLocalVar817_g22222 , ifLocalVar812_g22222 ) , ifLocalVar823_g22222 ) , ifLocalVar820_g22222 ) , ( temp_output_784_0_g22222 + 1.0 ) );
			float lerpResult408_g22222 = lerp( 0.0 , saturate( ifLocalVar818_g22222 ) , saturate( ( 1.0 - ( ifLocalVar818_g22222 - 1.0 ) ) ));
			float3 ifLocalVar418_g22222 = 0;
			if( _ToggleDissolveEmission == 1.0 )
				ifLocalVar418_g22222 = ( saturate( ( MainTexSaturate2197 + 0.5 ) ) * (_EmissiveDissolveColor).rgb * lerpResult408_g22222 );
			float3 EmissiveDissolve21891 = ifLocalVar418_g22222;
			o.Emission = ( Emissionscroll5684 + EmissiveRim8681 + EmissiveDissolve21891 );
		}

		ENDCG
		CGPROGRAM
		#pragma only_renderers d3d11 glcore gles3 vulkan nomrt 
		#pragma surface surf StandardCustomLighting keepalpha fullforwardshadows exclude_path:deferred noambient novertexlights nolightmap  nodynlightmap nodirlightmap nometa vertex:vertexDataFunc 

		ENDCG
		Pass
		{
			Name "ShadowCaster"
			Tags{ "LightMode" = "ShadowCaster" }
			ZWrite On
			AlphaToMask Off
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#pragma target 5.0
			#pragma multi_compile_shadowcaster
			#pragma multi_compile UNITY_PASS_SHADOWCASTER
			#pragma skip_variants FOG_LINEAR FOG_EXP FOG_EXP2
			#include "HLSLSupport.cginc"
			#if ( SHADER_API_D3D11 || SHADER_API_GLCORE || SHADER_API_GLES || SHADER_API_GLES3 || SHADER_API_METAL || SHADER_API_VULKAN )
				#define CAN_SKIP_VPOS
			#endif
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			struct v2f
			{
				V2F_SHADOW_CASTER;
				float3 customPack1 : TEXCOORD1;
				float4 customPack2 : TEXCOORD2;
				float2 customPack3 : TEXCOORD3;
				float4 customPack4 : TEXCOORD4;
				float3 customPack5 : TEXCOORD5;
				float3 customPack6 : TEXCOORD6;
				float4 tSpace0 : TEXCOORD7;
				float4 tSpace1 : TEXCOORD8;
				float4 tSpace2 : TEXCOORD9;
				half4 color : COLOR0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};
			v2f vert( appdata_full v )
			{
				v2f o;
				UNITY_SETUP_INSTANCE_ID( v );
				UNITY_INITIALIZE_OUTPUT( v2f, o );
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );
				UNITY_TRANSFER_INSTANCE_ID( v, o );
				Input customInputData;
				vertexDataFunc( v, customInputData );
				float3 worldPos = mul( unity_ObjectToWorld, v.vertex ).xyz;
				half3 worldNormal = UnityObjectToWorldNormal( v.normal );
				half3 worldTangent = UnityObjectToWorldDir( v.tangent.xyz );
				half tangentSign = v.tangent.w * unity_WorldTransformParams.w;
				half3 worldBinormal = cross( worldNormal, worldTangent ) * tangentSign;
				o.tSpace0 = float4( worldTangent.x, worldBinormal.x, worldNormal.x, worldPos.x );
				o.tSpace1 = float4( worldTangent.y, worldBinormal.y, worldNormal.y, worldPos.y );
				o.tSpace2 = float4( worldTangent.z, worldBinormal.z, worldNormal.z, worldPos.z );
				o.customPack1.xyz = customInputData.uv_texcoord;
				o.customPack1.xyz = v.texcoord;
				o.customPack2.xy = customInputData.uv2_texcoord2;
				o.customPack2.xy = v.texcoord1;
				o.customPack2.zw = customInputData.uv3_texcoord3;
				o.customPack2.zw = v.texcoord2;
				o.customPack3.xy = customInputData.uv4_texcoord4;
				o.customPack3.xy = v.texcoord3;
				o.customPack4.xyzw = customInputData.screenPosition;
				o.customPack5.xyz = customInputData.vertexToFrag2250_g22166;
				o.customPack6.xyz = customInputData.vertexToFrag2251_g22166;
				TRANSFER_SHADOW_CASTER_NORMALOFFSET( o )
				o.color = v.color;
				return o;
			}
			half4 frag( v2f IN
			#if !defined( CAN_SKIP_VPOS )
			, UNITY_VPOS_TYPE vpos : VPOS
			#endif
			) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				Input surfIN;
				UNITY_INITIALIZE_OUTPUT( Input, surfIN );
				surfIN.uv_texcoord = IN.customPack1.xyz;
				surfIN.uv2_texcoord2 = IN.customPack2.xy;
				surfIN.uv3_texcoord3 = IN.customPack2.zw;
				surfIN.uv4_texcoord4 = IN.customPack3.xy;
				surfIN.screenPosition = IN.customPack4.xyzw;
				surfIN.vertexToFrag2250_g22166 = IN.customPack5.xyz;
				surfIN.vertexToFrag2251_g22166 = IN.customPack6.xyz;
				float3 worldPos = float3( IN.tSpace0.w, IN.tSpace1.w, IN.tSpace2.w );
				half3 worldViewDir = normalize( UnityWorldSpaceViewDir( worldPos ) );
				surfIN.worldPos = worldPos;
				surfIN.worldNormal = float3( IN.tSpace0.z, IN.tSpace1.z, IN.tSpace2.z );
				surfIN.worldRefl = -worldViewDir;
				surfIN.internalSurfaceTtoW0 = IN.tSpace0.xyz;
				surfIN.internalSurfaceTtoW1 = IN.tSpace1.xyz;
				surfIN.internalSurfaceTtoW2 = IN.tSpace2.xyz;
				surfIN.vertexColor = IN.color;
				SurfaceOutputCustomLightingCustom o;
				UNITY_INITIALIZE_OUTPUT( SurfaceOutputCustomLightingCustom, o )
				surf( surfIN, o );
				UnityGI gi;
				UNITY_INITIALIZE_OUTPUT( UnityGI, gi );
				o.Alpha = LightingStandardCustomLighting( o, worldViewDir, gi ).a;
				#if defined( CAN_SKIP_VPOS )
				float2 vpos = IN.pos;
				#endif
				SHADOW_CASTER_FRAGMENT( IN )
			}
			ENDCG
		}
	}
	Fallback "Legacy Shaders/VertexLit"
	CustomEditor "MorisMaterialInspector"
}
/*ASEBEGIN
Version=18935
50;59;2481;919;-5283.725;-374.2399;1;True;False
Node;AmplifyShaderEditor.CommentaryNode;24651;-3552,-1008;Inherit;False;1592.821;638.8351;;25;24640;24639;24638;24632;24623;24564;24667;24666;24665;24664;24663;24662;24661;24660;24659;24658;24657;24656;24655;24654;24653;24652;24674;24675;24676;UV Switch;1,1,1,1;0;0
Node;AmplifyShaderEditor.TexCoordVertexDataNode;24663;-3216,-560;Inherit;False;3;2;0;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TexCoordVertexDataNode;24657;-3216,-672;Inherit;False;2;2;0;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TexCoordVertexDataNode;24665;-3216,-784;Inherit;False;1;2;0;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TexCoordVertexDataNode;24667;-3216,-896;Inherit;False;0;2;0;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;24564;-3488,-960;Inherit;False;Property;_MainTexUVSwitch;Main Tex UV Switch;91;1;[Enum];Create;True;0;4;UV0;0;UV1;1;UV2;2;UV3;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;24660;-2992,-960;Inherit;False;if (UVSwitchProp == 0)$	return UV0@$else if (UVSwitchProp == 1)$	return UV1@$else if (UVSwitchProp == 2)$	return UV2@$else$	return UV3@;2;Create;5;True;UVSwitchProp;FLOAT;0;In;;Inherit;False;True;UV0;FLOAT2;0,0;In;;Inherit;False;True;UV1;FLOAT2;0,0;In;;Inherit;False;True;UV2;FLOAT2;0,0;In;;Inherit;False;True;UV3;FLOAT2;0,0;In;;Inherit;False;UVSwitch;False;False;0;;False;5;0;FLOAT;0;False;1;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TextureTransformNode;24666;-2768,-960;Inherit;False;43;False;1;0;SAMPLER2D;;False;2;FLOAT2;0;FLOAT2;1
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;24659;-2512,-960;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;24652;-2384,-960;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;24638;-2256,-960;Inherit;False;MainTexUVSwitch;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CommentaryNode;972;-2106,-128;Inherit;False;1803.727;433.9317;;12;24641;626;22129;9091;9090;2197;297;627;411;21780;296;43;Main Texture;0,0.1310344,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;13946;-1918,512;Inherit;False;691.5416;280.4319;;2;2353;2351;Normals;0.5019608,0.5019608,1,1;0;0
Node;AmplifyShaderEditor.FunctionNode;25026;-1856,608;Inherit;False;Normals and World Normals;322;;21801;a9b4a0b5166a58041907936d7f327add;0;0;2;FLOAT3;0;FLOAT3;14
Node;AmplifyShaderEditor.CommentaryNode;19836;-1920,-1536;Inherit;False;2055.645;1173.099;;36;21172;21174;21093;21091;21085;21173;21086;21095;21099;21087;21089;21171;21101;21097;21090;21092;21104;21103;21102;21094;21100;21098;21105;21096;21183;21088;19806;19802;19902;19804;19817;21432;19801;19820;19803;19798;Utilities;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;2351;-1456,576;Inherit;False;worldnormals;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;24641;-2080,-48;Inherit;False;24638;MainTexUVSwitch;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;19798;-1872,-1488;Inherit;False;2351;worldnormals;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode;296;-1872,112;Inherit;False;Property;_MainColor;Main Color;453;0;Create;True;0;0;0;False;0;False;1,1,1,1;0,0,0,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;43;-1872,-80;Inherit;True;Property;_MainTex;Main Tex;454;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;1;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;24742;-1568,-80;Inherit;False;Hue Shift;307;;21914;ba913d8caaf7acd4a97eca4685e47654;0;1;17;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;21780;-1680,112;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;25050;-1600,-1488;Inherit;False;Utilities;-1;;21912;9d926cf50a172564e8b49022db15d05a;0;1;19;FLOAT3;0,0,0;False;40;FLOAT;0;FLOAT;14;FLOAT;17;FLOAT;15;FLOAT;16;FLOAT;60;FLOAT;62;FLOAT;63;FLOAT;64;FLOAT;65;FLOAT;13;FLOAT;446;FLOAT;18;FLOAT;114;FLOAT4;372;FLOAT4;373;FLOAT4;374;FLOAT4;375;FLOAT4;397;FLOAT4;376;FLOAT3;377;FLOAT3;378;FLOAT3;379;FLOAT3;380;FLOAT3;382;FLOAT3;384;FLOAT3;386;FLOAT3;388;FLOAT;381;FLOAT;383;FLOAT;385;FLOAT;387;FLOAT;389;FLOAT;390;FLOAT;391;FLOAT;392;FLOAT3;393;FLOAT3;394;FLOAT3;395;FLOAT3;396
Node;AmplifyShaderEditor.RangedFloatNode;411;-1264,48;Inherit;False;Property;_Saturation;Saturation;452;0;Create;True;0;0;0;False;0;False;1;1;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;627;-992,48;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;297;-1264,-80;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;2895;-1920,3584;Inherit;False;1042.624;425.8316;;8;19832;8681;8688;2907;8684;21078;8678;23961;Shadow Rim;0,0,0,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;19803;-1104,-1008;Inherit;False;NdotV;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DesaturateOpNode;626;-800,-80;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;19832;-1904,3712;Inherit;False;19803;NdotV;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;21088;-672,-1248;Inherit;False;VertexLightNdLNONMAX;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.FunctionNode;23961;-1712,3712;Inherit;False;Shadow Emissive Rim;422;;21916;4fa91309dca2f3c428e54f87b3f4adf3;0;1;34;FLOAT;0;False;2;FLOAT;0;FLOAT3;22
Node;AmplifyShaderEditor.RangedFloatNode;8678;-1456,3664;Inherit;False;Property;_RimSwitch;Rim Switch;470;1;[Enum];Create;True;0;2;Shadow;0;Emissive;1;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;21078;-1440,3824;Inherit;False;Constant;_Float22;Float 22;192;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;2353;-1456,688;Inherit;False;normals;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;21183;-672,-1168;Inherit;False;VertexLightAtten;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;19820;-1104,-1248;Inherit;False;NdotAmbientL;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;2197;-544,-80;Inherit;False;MainTexSaturate;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;14567;0,-256;Inherit;False;1247.051;1106.631;;19;16840;25037;24300;25046;21855;24075;9087;2205;21212;14546;14547;14557;14556;19839;19840;21201;19117;14551;21199;Lighting;1,0.9782155,0.759434,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;19801;-1104,-1488;Inherit;False;NdotL;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;21199;32,192;Inherit;False;21088;VertexLightNdLNONMAX;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;19839;32,-48;Inherit;False;19801;NdotL;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;21201;32,112;Inherit;False;21183;VertexLightAtten;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;14551;32,-128;Inherit;False;2197;MainTexSaturate;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ConditionalIfNode;8684;-1264,3664;Inherit;False;False;5;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;19117;32,-208;Inherit;False;2353;normals;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;19840;32,32;Inherit;False;19820;NdotAmbientL;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;2907;-1104,3664;Inherit;False;ShadowRim;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;24623;-3488,-736;Inherit;False;Property;_EmissionScrollMaskUVSwitch;Emission Scroll Mask UV Switch;89;1;[Enum];Create;True;0;4;UV0;0;UV1;1;UV2;2;UV3;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;25092;352,-32;Inherit;False;Lighting;237;;22165;f969bc2898d94ca4199b47c9b757495b;0;6;1258;FLOAT3;0,0,1;False;150;FLOAT3;0,0,0;False;1264;FLOAT;0;False;1263;FLOAT;0;False;1306;FLOAT4;0,0,0,0;False;1305;FLOAT4;0,0,0,0;False;12;FLOAT3;0;FLOAT3;198;FLOAT3;1309;FLOAT3;2205;FLOAT;210;FLOAT;1989;FLOAT;211;FLOAT;1361;FLOAT;2199;FLOAT;638;FLOAT;2155;FLOAT4;2137
Node;AmplifyShaderEditor.RangedFloatNode;24632;-3488,-544;Inherit;False;Property;_EmissionUVSwitch;Emission UV Switch;90;1;[Enum];Create;True;0;4;UV0;0;UV1;1;UV2;2;UV3;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;19817;-1104,-1168;Inherit;False;NdotAmbientH;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;19804;-1104,-1328;Inherit;False;LdotH;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;1083;-1920,2304;Inherit;False;1839.251;1088.966;;33;8524;2223;21159;21148;21162;21161;21160;21164;21156;21158;21165;21163;21155;21154;21157;21147;24166;21572;20971;19845;5950;20970;19819;19854;20969;19818;2479;19815;19816;24302;24307;24841;24953;Specular Highlights;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;21392;8624,624;Inherit;False;891.5;452.2001;Kaj Optimizer;4;21368;21544;22130;25088;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CustomExpressionNode;24658;-2992,-736;Inherit;False;if (UVSwitchProp == 0)$	return UV0@$else if (UVSwitchProp == 1)$	return UV1@$else if (UVSwitchProp == 2)$	return UV2@$else$	return UV3@;2;Create;5;True;UVSwitchProp;FLOAT;0;In;;Inherit;False;True;UV0;FLOAT2;0,0;In;;Inherit;False;True;UV1;FLOAT2;0,0;In;;Inherit;False;True;UV2;FLOAT2;0,0;In;;Inherit;False;True;UV3;FLOAT2;0,0;In;;Inherit;False;UVSwitch;False;False;0;;False;5;0;FLOAT;0;False;1;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TextureTransformNode;24664;-2768,-736;Inherit;False;5677;False;1;0;SAMPLER2D;;False;2;FLOAT2;0;FLOAT2;1
Node;AmplifyShaderEditor.GetLocalVarNode;14547;576,-112;Inherit;False;2907;ShadowRim;1;0;OBJECT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;14557;960,272;Inherit;False;AmbientRamp;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;24656;-2992,-544;Inherit;False;if (UVSwitchProp == 0)$	return UV0@$else if (UVSwitchProp == 1)$	return UV1@$else if (UVSwitchProp == 2)$	return UV2@$else$	return UV3@;2;Create;5;True;UVSwitchProp;FLOAT;0;In;;Inherit;False;True;UV0;FLOAT2;0,0;In;;Inherit;False;True;UV1;FLOAT2;0,0;In;;Inherit;False;True;UV2;FLOAT2;0,0;In;;Inherit;False;True;UV3;FLOAT2;0,0;In;;Inherit;False;UVSwitch;False;False;0;;False;5;0;FLOAT;0;False;1;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;19802;-1104,-1408;Inherit;False;NdotH;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;24300;960,752;Inherit;False;NdLVertexLightsShadows;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;21432;-1104,-928;Inherit;False;NdotVCorr;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TextureTransformNode;24662;-2768,-544;Inherit;False;5683;False;1;0;SAMPLER2D;;False;2;FLOAT2;0;FLOAT2;1
Node;AmplifyShaderEditor.RegisterLocalVarNode;19902;-1104,-1088;Inherit;False;AmbientLdotAmbientH;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;14556;960,80;Inherit;False;DirectLightRamp;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;19806;-1104,-848;Inherit;False;GrayscaledLight;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;19819;-1632,2688;Inherit;False;19820;NdotAmbientL;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;21572;-1376,2768;Inherit;False;19806;GrayscaledLight;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;14546;816,-208;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;5629;587.2,-1664;Inherit;False;2706.611;1279.384;;19;24642;16905;5677;22191;5684;5690;21390;24414;21539;5679;21538;20987;23831;21537;21540;5676;5630;5675;5637;Emission;1,0.724138,0,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;19818;-1632,2528;Inherit;False;19801;NdotL;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;20970;-1632,2448;Inherit;False;14556;DirectLightRamp;1;0;OBJECT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;2479;-1424,2368;Inherit;False;2197;MainTexSaturate;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;24653;-2512,-736;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CommentaryNode;21544;8672,784;Inherit;False;784.9004;263.6;If Optimizer is toggled, make sure nothing is accidentally activated when its set to Off;6;21525;21524;21493;21482;23968;23969;;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;20969;-1632,2768;Inherit;False;19902;AmbientLdotAmbientH;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;19815;-1456,2528;Inherit;False;19802;NdotH;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;21148;-1904,2528;Inherit;False;21088;VertexLightNdLNONMAX;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;5950;-1632,2368;Inherit;False;2351;worldnormals;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;24661;-2512,-544;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;20971;-1408,2448;Inherit;False;14557;AmbientRamp;1;0;OBJECT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;19854;-1440,2608;Inherit;False;19804;LdotH;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;24953;-1824,2368;Inherit;False;2353;normals;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;24302;-1904,2448;Inherit;False;24300;NdLVertexLightsShadows;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;19845;-1632,2608;Inherit;False;21432;NdotVCorr;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;19816;-1424,2688;Inherit;False;19817;NdotAmbientH;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;21212;960,-16;Inherit;False;PreClampFinalLight;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;21524;8704,848;Inherit;False;Property;_COLORADDSUBDIFF;Cubemap Toggle;464;0;Create;False;0;0;0;True;1;ToggleOff(_COLORADDSUBDIFF_ON);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;50;-1937,1024;Inherit;False;1213.111;558.6198;;11;21494;2221;21476;6009;21509;2974;19824;21213;23876;9349;2436;Rim Light;1,1,0,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9087;960,-112;Inherit;False;PreFinalLight;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;24654;-2384,-736;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CommentaryNode;5637;669,-1328;Inherit;False;946.7302;241.8046;Emission Scroll V1;3;22183;5894;5668;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;2564;0,2304;Inherit;False;1273.458;361.4141;;8;21518;22198;22199;2969;2968;21519;21520;2584;Flipbook;1,0,1,1;0;0
Node;AmplifyShaderEditor.FunctionNode;25081;-1072,2448;Inherit;False;Specular Highlights;389;;22166;f01d465b622765446a78e511544ff258;0;28;2254;FLOAT3;0,0,0;False;44;FLOAT3;0,0,0;False;49;FLOAT3;0,0,0;False;1922;FLOAT4;0,0,0,0;False;1665;FLOAT4;0,0,0,0;False;192;FLOAT;1;False;293;FLOAT;1;False;594;FLOAT;0;False;578;FLOAT;0;False;1737;FLOAT;0;False;634;FLOAT;0;False;596;FLOAT;0;False;579;FLOAT;0;False;671;FLOAT;0;False;1739;FLOAT;0;False;1666;FLOAT4;0,0,0,0;False;1671;FLOAT3;0,0,0;False;1672;FLOAT3;0,0,0;False;1673;FLOAT3;0,0,0;False;1674;FLOAT3;0,0,0;False;1675;FLOAT;0;False;1676;FLOAT;0;False;1677;FLOAT;0;False;1678;FLOAT;0;False;1679;FLOAT;0;False;1680;FLOAT;0;False;1681;FLOAT;0;False;1682;FLOAT;0;False;6;FLOAT3;0;FLOAT3;58;FLOAT3;125;FLOAT3;2152;FLOAT3;1894;FLOAT4;1933
Node;AmplifyShaderEditor.CommentaryNode;2964;-1920,1664;Inherit;False;1227.628;476.2062;;12;21176;21184;21177;21178;21179;9167;19837;24077;5929;2928;6012;5934;Subsurface Scattering;1,0.4009434,0.4009434,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;25037;960,656;Inherit;False;SSSAtten;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;2205;960,-208;Inherit;False;FinalLight;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;21482;8704,944;Inherit;False;Property;_COLORCOLOR;Toggle Advanced;461;0;Create;False;0;0;0;False;1;ToggleOff(_COLORCOLOR_ON);False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;24655;-2384,-544;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;16840;960,560;Inherit;False;AmbientOcclusion;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;21102;-160,-1168;Inherit;False;VLLdotHOne;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;21105;-160,-928;Inherit;False;VLLdotHFour;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;2436;-1888,1200;Inherit;False;2351;worldnormals;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;19824;-1888,1360;Inherit;False;19803;NdotV;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;21493;8928,944;Inherit;False;ToggleAdvanced;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;22198;32,2528;Inherit;False;2205;FinalLight;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;21104;-160,-1008;Inherit;False;VLLdotHThree;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;9167;-1696,1840;Inherit;False;2197;MainTexSaturate;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;21213;-1888,1120;Inherit;False;21212;PreClampFinalLight;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode;5668;704,-1264;Inherit;False;Property;_EmissionscrollColor;Emission scroll Color;458;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;9349;-1888,1280;Inherit;False;2197;MainTexSaturate;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;21525;8928,848;Inherit;False;ToggleCubemap;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;23876;-1888,1440;Inherit;False;16840;AmbientOcclusion;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;5929;-1696,1760;Inherit;False;2351;worldnormals;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;24639;-2256,-736;Inherit;False;EmissionScrollMaskUVSwitch;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;21855;960,368;Inherit;False;LuminancedLight;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;22199;32,2448;Inherit;False;9087;PreFinalLight;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;24166;-512,2608;Inherit;False;PixelAmbientShadows;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;21096;-160,-1408;Inherit;False;VLNdotHTwo;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;21100;-160,-1248;Inherit;False;VLNdotHFour;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;19837;-1648,2016;Inherit;False;19806;GrayscaledLight;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;10638;0,1392;Inherit;False;2229.355;721.6573;;32;10644;21523;22506;22474;21444;21533;21526;21529;19810;19809;2355;20976;5759;21556;24134;5954;21237;21236;21235;24167;19808;21249;21245;21246;21247;21243;24313;21250;21251;21244;21248;25080;Cubemap;0,0.5019608,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;21103;-160,-1088;Inherit;False;VLLdotHTwo;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;21098;-160,-1328;Inherit;False;VLNdotHThree;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;24307;-512,2688;Inherit;False;VertexLightShadows;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;24640;-2256,-544;Inherit;False;EmissionUVSwitch;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;24077;-1696,1920;Inherit;False;25037;SSSAtten;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;21094;-160,-1488;Inherit;False;VLNdotHOne;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;5675;636.8,-864;Inherit;False;1618.596;442.6833;Emission;19;16904;24643;5683;22203;22201;22204;22202;21851;21857;5687;8822;16903;21852;21858;5678;5685;21850;5682;21856;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;5894;928,-1264;Inherit;False;Emissionsscrollcolor;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;21526;1344,1664;Inherit;False;21525;ToggleCubemap;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;21248;32,1888;Inherit;False;21103;VLLdotHTwo;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;5954;304,1520;Inherit;False;2351;worldnormals;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;24642;672,-1072;Inherit;False;24639;EmissionScrollMaskUVSwitch;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CommentaryNode;5630;672,-1600;Inherit;False;1146.265;258.0206;Emission Scroll V2;5;5670;7379;7380;5661;20988;;1,1,1,1;0;0
Node;AmplifyShaderEditor.SamplerStateNode;16905;768,-992;Inherit;False;0;0;0;2;43;None;1;0;SAMPLER2D;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.GetLocalVarNode;21494;-1536,1360;Inherit;False;21493;ToggleAdvanced;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;21245;32,1696;Inherit;False;21098;VLNdotHThree;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;5759;304,1600;Inherit;False;2197;MainTexSaturate;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;25095;-1616,1168;Inherit;False;Rim Light;337;;22208;6b1931f25cd84864d9988266c3b81246;0;5;271;FLOAT3;0,0,0;False;22;FLOAT3;0,0,0;False;33;FLOAT3;0,0,0;False;260;FLOAT;0;False;322;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;10648;0,928;Inherit;False;1215.048;387.565;;8;24130;24112;24109;24108;21517;2615;3121;24379;Matcap;0,0.5019608,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;21529;1344,1584;Inherit;False;21493;ToggleAdvanced;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;25046;960,464;Inherit;False;LuminancedLightNoShadows;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;24732;288,2464;Inherit;False;Clamped Flipbook;1;;22210;87fba7ae5c66562488908889b8d68bfa;0;2;51;FLOAT3;1,1,1;False;52;FLOAT3;1,1,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerStateNode;16904;688,-720;Inherit;False;0;0;0;1;43;None;1;0;SAMPLER2D;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.GetLocalVarNode;21518;480,2560;Inherit;False;21493;ToggleAdvanced;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;2355;512,1520;Inherit;False;2353;normals;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;2974;-1472,1088;Inherit;False;Property;_RimToggle;Rim Toggle;468;0;Create;True;0;2;Off;0;On;1;0;False;1;ToggleUI;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;24313;32,1504;Inherit;False;21183;VertexLightAtten;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;21235;304,1840;Inherit;False;19820;NdotAmbientL;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;19808;528,1680;Inherit;False;19802;NdotH;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;21237;512,1840;Inherit;False;19817;NdotAmbientH;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;21251;32,1440;Inherit;False;24307;VertexLightShadows;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;21247;32,1824;Inherit;False;21102;VLLdotHOne;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;21236;304,1920;Inherit;False;19902;AmbientLdotAmbientH;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;21249;32,1952;Inherit;False;21104;VLLdotHThree;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;21243;32,1568;Inherit;False;21094;VLNdotHOne;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;25039;-1424,1808;Inherit;False;Subsurface scattering;369;;22207;b3a8a731faf6b9a4bbb4cf58bc679816;0;9;24;FLOAT3;0,0,0;False;41;FLOAT3;0,0,0;False;445;FLOAT;0;False;142;FLOAT;0;False;169;FLOAT3;0,0,0;False;176;FLOAT3;0,0,0;False;186;FLOAT3;0,0,0;False;194;FLOAT3;0,0,0;False;237;FLOAT4;0,0,0,0;False;3;FLOAT3;35;FLOAT3;36;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;19810;304,1760;Inherit;False;21432;NdotVCorr;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;2968;336,2384;Inherit;False;Property;_FlipbookToggle;Flipbook Toggle;463;0;Create;False;0;2;Off;0;On;1;0;False;1;ToggleUI;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;24134;560,1440;Inherit;False;21855;LuminancedLight;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;24167;304,1440;Inherit;False;24166;PixelAmbientShadows;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;21244;32,1632;Inherit;False;21096;VLNdotHTwo;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;19809;480,1760;Inherit;False;19804;LdotH;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;5934;-1264,1728;Inherit;False;Property;_SSSSetting;SSS Setting;462;1;[Enum];Create;True;0;3;Light Based;0;Color Based;1;Mixed;2;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;21556;304,1680;Inherit;False;19806;GrayscaledLight;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;21250;32,2016;Inherit;False;21105;VLLdotHFour;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;24643;656,-800;Inherit;False;24640;EmissionUVSwitch;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;21246;32,1760;Inherit;False;21100;VLNdotHFour;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;20976;528,1600;Inherit;False;16840;AmbientOcclusion;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;24130;240,1072;Inherit;False;25046;LuminancedLightNoShadows;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;24379;32,1072;Inherit;False;21212;PreClampFinalLight;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;7379;800,-1536;Inherit;False;2353;normals;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;2615;32,992;Inherit;False;2351;worldnormals;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ConditionalIfNode;2969;544,2400;Inherit;False;False;5;0;FLOAT;1;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;3121;240,992;Inherit;False;2197;MainTexSaturate;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;5661;704,-1456;Inherit;False;2197;MainTexSaturate;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ConditionalIfNode;6009;-1280,1104;Inherit;False;False;5;0;FLOAT;1;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;21533;1584,1616;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;21517;256,1152;Inherit;False;21493;ToggleAdvanced;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;25080;848,1472;Inherit;False;Baked Cubemap and Ambient Reflections;282;;22213;eb37bac9792209a4a9e79fa57ed77ae1;0;25;2903;SAMPLERSTATE;0;False;2821;FLOAT3;0,0,0;False;2817;FLOAT;0;False;2191;FLOAT3;0,0,0;False;86;FLOAT3;0,0,0;False;93;FLOAT3;0,0,0;False;89;FLOAT3;1,1,1;False;1847;FLOAT;1;False;2674;FLOAT;1;False;2409;FLOAT;0;False;2671;FLOAT;0;False;2411;FLOAT;0;False;2500;FLOAT;0;False;2501;FLOAT;0;False;2502;FLOAT;0;False;2545;FLOAT4;0,0,0,0;False;2842;FLOAT4;0,0,0,0;False;2590;FLOAT;0;False;2602;FLOAT;0;False;2619;FLOAT;0;False;2636;FLOAT;0;False;2543;FLOAT;0;False;2604;FLOAT;0;False;2621;FLOAT;0;False;2638;FLOAT;0;False;2;FLOAT3;0;FLOAT;2705
Node;AmplifyShaderEditor.ConditionalIfNode;6012;-1072,1760;Inherit;False;False;5;0;FLOAT;1;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;24112;32,1152;Inherit;False;16840;AmbientOcclusion;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;5682;1104,-624;Inherit;False;2197;MainTexSaturate;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;21509;-1264,1280;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7380;976,-1536;Inherit;False;2351;worldnormals;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode;5685;864,-624;Inherit;False;Property;_EmissionColor;Emission Color;456;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,0;0,0,0,1;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;20988;944,-1456;Inherit;False;5894;Emissionsscrollcolor;1;0;OBJECT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.CustomExpressionNode;24841;-544,2432;Inherit;False;UNITY_BRANCH$if (_SpecularSetting == 0)$	Out = Toon@$else if (_SpecularSetting == 1)$	Out = GGX@$else if (_SpecularSetting == 2)$	Out = Anisotropic@$else$	Out = GGXAnisotropic@;1;Call;5;True;Out;FLOAT3;0,0,0;Out;;Inherit;False;True;Toon;FLOAT3;0,0,0;In;;Inherit;False;True;GGX;FLOAT3;0,0,0;In;;Inherit;False;True;Anisotropic;FLOAT3;0,0,0;In;;Inherit;False;True;GGXAnisotropic;FLOAT3;0,0,0;In;;Inherit;False;longIF;False;False;0;;False;6;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;2;FLOAT;0;FLOAT3;2
Node;AmplifyShaderEditor.RangedFloatNode;5678;1072,-544;Inherit;False;Property;_EmissionTint;Emission Tint;460;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;21856;1536,-512;Inherit;False;21855;LuminancedLight;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;21850;1536,-592;Inherit;False;Property;_EmissionLightscale;Emission Lightscale;476;0;Create;True;0;0;0;False;1;ToggleUI;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;5677;944,-1072;Inherit;True;Property;_EmissionScrollMask;Emission Scroll Mask;459;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;21519;752,2416;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;5683;864,-816;Inherit;True;Property;_Emission;Emission;457;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;9090;-1408,192;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;2928;-896,1760;Inherit;False;SSS;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;2223;-304,2448;Inherit;False;SpecularHighlight;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;21476;-1088,1104;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;5935;4560,1248;Inherit;False;Property;_SSSToggle;SSS Toggle;465;0;Create;True;0;2;Off;0;On;1;0;False;1;ToggleOff(_SUNDISK_NONE);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;21523;1760,1488;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;25027;1216,-1536;Inherit;False;Emission Scroll V2;176;;22216;995e6dd10a2936e4a88f19546ea48650;0;5;70;FLOAT3;0,0,0;False;71;FLOAT3;0,0,1;False;30;FLOAT3;0,0,0;False;28;COLOR;1,1,1,1;False;725;FLOAT2;0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ConditionalIfNode;22474;1728,1616;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;21852;1760,-592;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;21520;896,2416;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;8822;1152,-720;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;21858;1376,-640;Inherit;False;3;0;FLOAT3;1,1,1;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;16903;1152,-816;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;21760;4560,1168;Inherit;False;21493;ToggleAdvanced;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;25086;528,992;Inherit;False;Matcap;19;;22215;9363e9c7b7d1f2d4ab0056224472b0d9;0;6;65;FLOAT3;0,0,0;False;72;FLOAT3;0,0,0;False;900;FLOAT3;0,0,0;False;890;FLOAT;0;False;833;FLOAT;0;False;581;FLOAT;0;False;2;FLOAT3;0;FLOAT;647
Node;AmplifyShaderEditor.RangedFloatNode;2966;4528,720;Inherit;False;Property;_SpecularToggle;Specular Toggle;466;0;Create;True;0;2;Off;0;On;1;0;False;1;ToggleOff(_REQUIRE_UV2);False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;21753;4528,640;Inherit;False;21493;ToggleAdvanced;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;5670;1568,-1536;Inherit;False;EmissionScrollV2;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;2224;4528,560;Inherit;False;2223;SpecularHighlight;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;24752;1216,-1264;Inherit;False;Emission Scroll V1;220;;22221;b2dc8236d7837514dbd2e9707c89d6c6;0;1;32;COLOR;1,1,1,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;2221;-944,1104;Inherit;False;rimlight;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;5676;1824,-1328;Inherit;False;Property;_EmissionScrollToggle;Emission Scroll Toggle;469;1;[Enum];Create;True;0;3;Off;0;ES v1;1;ES v2;2;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;21761;4848,1200;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;10644;1904,1488;Inherit;False;CubemapReflections;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;21754;4832,672;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;2584;1040,2416;Inherit;False;Flipbook;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;2929;4608,1088;Inherit;False;2928;SSS;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SaturateNode;21857;1888,-592;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;5687;1568,-816;Inherit;True;3;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;24109;960,1072;Inherit;False;MatcapLightAbsorbtion;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;22506;1904,1616;Inherit;False;CubemapLightAbsorbtion;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9091;-1280,208;Inherit;False;AlphaChannelMul;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;24108;960,992;Inherit;False;Matcap;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;2222;4976,928;Inherit;False;2221;rimlight;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;21763;5024,1088;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;23831;1696,-1264;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;20980;4976,1008;Inherit;False;2584;Flipbook;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;21537;2320,-1152;Inherit;False;21493;ToggleAdvanced;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;21540;2320,-1232;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;10647;4976,848;Inherit;False;24108;Matcap;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;21851;2096,-816;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;21755;5008,560;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;21785;5552,624;Inherit;False;9091;AlphaChannelMul;1;0;OBJECT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;20981;5568,544;Inherit;False;2205;FinalLight;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;20979;4976,768;Inherit;False;10644;CubemapReflections;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;17083;6000,1408;Inherit;False;922.2013;441.0284;;3;21890;21892;21891;Dissolve;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;20987;1808,-1168;Inherit;False;5670;EmissionScrollV2;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;22508;5504,384;Inherit;False;22506;CubemapLightAbsorbtion;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;24094;5504,464;Inherit;False;24109;MatcapLightAbsorbtion;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;21782;5296,512;Inherit;False;Property;_RenderingMode;Rendering Mode;475;1;[Enum];Create;True;0;3;Opaque;0;Fade;1;Transparent;2;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;21890;6032,1552;Inherit;False;2197;MainTexSaturate;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;21776;5296,672;Inherit;False;9091;AlphaChannelMul;1;0;OBJECT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;21538;2560,-1232;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;5679;2080,-1328;Inherit;False;False;5;0;FLOAT;1;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;295;5296,752;Inherit;True;6;6;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;24093;5824,400;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;21784;5776,576;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;24414;2272,-816;Inherit;False;Property;_Keyword0;Keyword 0;162;0;Create;True;0;0;0;False;0;False;0;0;0;False;UNITY_PASS_FORWARDADD;Toggle;2;Key0;Key1;Fetch;False;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SaturateNode;24092;5952,400;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;5690;2576,-816;Inherit;False;BasicEmission;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;21539;2704,-1328;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;21775;5584,768;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ConditionalIfNode;21777;5936,496;Inherit;False;False;5;0;FLOAT;1;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ConditionalIfNode;8688;-1264,3840;Inherit;False;False;5;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;24994;6272,1552;Inherit;False;Dissolve;109;;22222;82730ad0d4bfc13408a9f4bccf476772;0;1;424;FLOAT3;0,0,0;False;4;FLOAT;0;FLOAT;310;FLOAT3;425;FLOAT3;426
Node;AmplifyShaderEditor.LerpOp;22467;6128,496;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;20982;6000,816;Inherit;False;5690;BasicEmission;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ConditionalIfNode;21786;5744,704;Inherit;False;False;5;0;FLOAT;1;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;5684;3088,-1328;Inherit;False;Emissionscroll;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8681;-1104,3840;Inherit;False;EmissiveRim;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;8359;6944,416;Inherit;False;1625.112;461.4236;Custom Rendering Options;8;8374;8397;8385;8367;8366;8389;2919;21375;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;21891;6656,1616;Inherit;False;EmissiveDissolve;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;22125;6000,1104;Inherit;False;557.6592;242.7808;;1;22126;Dither;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;22129;-1280,128;Inherit;False;AlphaChannel;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;8367;6976,480;Inherit;False;259;291;Blend RGB;3;8362;8361;8360;;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;20983;6288,464;Inherit;False;21891;EmissiveDissolve;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;20985;6288,304;Inherit;False;5684;Emissionscroll;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;20986;6288,384;Inherit;False;8681;EmissiveRim;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;21892;6656,1696;Inherit;False;VertexOffsetDissolve;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;8389;7520,480;Inherit;False;568.8174;379.8966;Stencil;7;8391;8390;8393;8392;8396;8395;8394;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;14722;8624,416;Inherit;False;371;165;Custom Inspector Settings;1;14723;;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;22126;6064,1200;Inherit;False;22129;AlphaChannel;1;0;OBJECT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;8366;7248,480;Inherit;False;263;291;Blend Alpha;3;8364;8365;8363;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;22135;-2560,-128;Inherit;False;391;431.3881;Shader Optimizer Animated States;3;22137;22136;22138;;0,0.1294118,1,1;0;0
Node;AmplifyShaderEditor.SimpleAddOpNode;14780;6352,640;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;8397;8112,480;Inherit;False;434.1172;215.0966;Depth;4;8399;8402;8401;8400;;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;23421;6576,640;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;21385;5977,704;Inherit;False;Property;_COLORCOLOR;Toggle Advanced;129;0;Create;False;0;0;0;False;0;False;0;0;0;False;_COLORCOLOR_ON;ToggleOff;2;OFF;ON;Create;True;False;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;21390;2848,-1328;Inherit;False;Property;_COLORCOLOR2;Toggle Advanced;129;0;Create;False;0;0;0;False;0;False;0;0;0;True;_GLOSSYREFLECTIONS;Toggle;2;OFF;ON;Reference;21385;False;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;8401;8320,528;Inherit;False;Property;_DepthOffsetFactor;Depth Offset Factor;441;0;Create;True;0;0;1;UnityEngine.Rendering.BlendMode;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;23966;4528,800;Inherit;False;Property;_SpecularToggleAnimated;_SpecularToggle;175;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.IntNode;22183;1392,-1168;Inherit;False;Property;_EmissionscrollColorAnimated;_EmissionscrollColor;166;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.GetLocalVarNode;21178;-1872,1872;Inherit;False;21172;VLDirThree;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;21159;-1376,3040;Inherit;False;21100;VLNdotHFour;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;8394;7824,608;Inherit;False;Property;_StencilBufferPassFront;Stencil Buffer Pass Front;448;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.StencilOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;21101;-672,-448;Inherit;False;VLHalfVectorFour;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.IntNode;22191;1824,-1408;Inherit;False;Property;_EmissionScrollToggleAnimated;_EmissionScrollToggle;165;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.IntNode;22202;2048,-608;Inherit;False;Property;_EmissionTintAnimated;_EmissionTint;108;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;21086;-672,-1328;Inherit;False;FourLightPosZ0WorldPos;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.IntNode;24674;-3488,-880;Inherit;False;Property;_MainTexUVSwitchAnimated;_MainTexUVSwitch;171;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.RangedFloatNode;8361;6992,608;Inherit;False;Property;_DestinationBlendRGB;Destination Blend RGB;438;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.BlendMode;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;8390;7824,528;Inherit;False;Property;_StencilBufferComparison;Stencil Buffer Comparison;446;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.CompareFunction;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;23969;9152,944;Inherit;False;Property;_COLORCOLORAnimated;_COLORCOLOR;218;0;Create;False;0;0;0;True;1;ToggleUI;False;1;1;False;0;1;INT;0
Node;AmplifyShaderEditor.RangedFloatNode;21368;8672,688;Inherit;False;Property;_ShaderOptimizerEnabled;Shader Optimizer Enabled;0;0;Create;True;0;3;Basic;0;Advanced;1;Advanced Plus;2;0;True;1;ShaderOptimizerLockButton;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;21375;8128,768;Inherit;False;Property;_MaskClipValue;Mask Clip Value;474;0;Create;True;0;0;1;;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;21179;-1872,1936;Inherit;False;21173;VLDirFour;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;20984;6480,560;Inherit;False;9091;AlphaChannelMul;1;0;OBJECT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;24075;960,176;Inherit;False;DirectionalAttenuation;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;22204;1776,-688;Inherit;False;Property;_OptimizerExcludeEmission;OptimizerExcludeEmission;164;0;Create;True;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.IntNode;22203;2032,-528;Inherit;False;Property;_EmissionLightscaleAnimated;_EmissionLightscale;163;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.GetLocalVarNode;18112;6432,768;Inherit;False;21892;VertexOffsetDissolve;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;8365;7264,688;Inherit;False;Property;_BlendOpAlpha;Blend Op Alpha;435;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.BlendOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;22137;-2496,0;Inherit;False;Property;_MainColorAnimated;_MainColor;170;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;21171;-160,-768;Inherit;False;VLDirTwo;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;8400;8128,608;Inherit;False;Property;_ZTestMode;ZTest Mode;447;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.CompareFunction;True;0;False;4;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;21095;-672,-688;Inherit;False;VLHalfVectorOne;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;8360;6992,528;Inherit;False;Property;_SourceBlendRGB;Source Blend RGB;450;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.BlendMode;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;21087;-672,-1408;Inherit;False;FourLightPosY0WorldPos;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;8395;7824,688;Inherit;False;Property;_StencilBufferFailFront;Stencil Buffer Fail Front;444;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.StencilOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;21156;-1376,2912;Inherit;False;21096;VLNdotHTwo;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;22138;-2496,80;Inherit;False;Property;_SaturationAnimated;_Saturation;174;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;24376;6544,400;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;8402;8320,608;Inherit;False;Property;_DepthOffsetUnits;Depth Offset Units;442;0;Create;True;0;0;1;UnityEngine.Rendering.BlendMode;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;8392;7536,608;Inherit;False;Property;_StencilBufferReadMask;Stencil Buffer Read Mask;440;0;Create;True;0;0;1;UnityEngine.Rendering.BlendMode;True;0;False;255;255;0;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;21163;-1376,3232;Inherit;False;21104;VLLdotHThree;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;24676;-3488,-464;Inherit;False;Property;_EmissionUVSwitchAnimated;_EmissionUVSwitch;169;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.FunctionNode;24749;6272,1200;Inherit;False;Dither;92;;22225;043df5c2e430b6241a679a3821a80d10;0;1;53;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;21089;-672,-1088;Inherit;False;VertexLightAttenNdL;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.IntNode;22136;-2496,-80;Inherit;False;Property;_OptimizerExcludeMainSettings;OptimizerExcludeMainSettings;172;0;Create;True;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.GetLocalVarNode;21162;-1376,3168;Inherit;False;21103;VLLdotHTwo;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;21154;-1632,2976;Inherit;False;21097;VLHalfVectorTwo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;21090;-672,-1008;Inherit;False;VLFinalOne;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;8364;7264,608;Inherit;False;Property;_DestinationBlendAlpha;Destination Blend Alpha;436;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.BlendMode;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;21176;-1872,1744;Inherit;False;21174;VLDirOne;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.IntNode;23967;5296,592;Inherit;False;Property;_RenderingModeAnimated;_RenderingMode;173;0;Create;False;0;0;0;True;1;ToggleUI;False;1;1;False;0;1;INT;0
Node;AmplifyShaderEditor.IntNode;25088;9168,688;Inherit;False;Property;_IgnoreProjector;IgnoreProjector;88;0;Create;True;0;0;0;True;1;OverrideTagToggle(IgnoreProjector);False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.IntNode;23968;9152,848;Inherit;False;Property;_COLORADDSUBDIFFAnimated;_COLORADDSUBDIFF;219;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;21174;-160,-848;Inherit;False;VLDirOne;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;21097;-672,-608;Inherit;False;VLHalfVectorTwo;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;8399;8128,528;Inherit;False;Property;_ZWriteMode;ZWrite Mode;471;1;[Enum];Create;True;0;2;Off;0;On;1;0;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;14723;8672,480;Inherit;False;Property;_AdvancedExperimentalToggle;Advanced Experimental Toggle;455;1;[Enum];Create;True;0;3;Basic;0;Advanced;1;Advanced Plus;2;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;8391;7536,528;Inherit;False;Property;_StencilBufferReference;Stencil Buffer Reference;443;0;Create;True;0;0;1;UnityEngine.Rendering.BlendMode;True;0;False;0;0;0;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;21158;-1376,2976;Inherit;False;21098;VLNdotHThree;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;21173;-160,-608;Inherit;False;VLDirFour;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;8374;7136,784;Inherit;False;Property;_AlphatoCoverage;Alpha to Coverage;472;1;[Enum];Create;True;0;2;Off;0;On;1;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;21444;1472,1472;Inherit;False;Property;_COLORADDSUBDIFF;Cubemap Toggle;125;0;Create;False;0;0;0;False;0;False;0;0;0;False;_COLORADDSUBDIFF_ON;ToggleOff;2;OFF;ON;Create;True;False;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;21752;4768,560;Inherit;False;Property;_SpecularToggle;Specular Toggle;125;0;Create;False;0;0;0;False;0;False;0;0;0;False;_REQUIRE_UV2;ToggleOff;2;OFF;ON;Create;True;False;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;21762;4784,1088;Inherit;False;Property;_SSSToggle;SSS Toggle;125;0;Create;False;0;0;0;False;0;False;0;0;0;False;_SUNDISK_NONE;ToggleOff;2;OFF;ON;Create;True;False;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;21147;-1632,2848;Inherit;False;21183;VertexLightAtten;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;21165;-1376,3104;Inherit;False;21102;VLLdotHOne;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;8363;7264,528;Inherit;False;Property;_SourceBlendAlpha;Source Blend Alpha;449;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.BlendMode;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;21157;-1376,2848;Inherit;False;21094;VLNdotHOne;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;23965;4560,1328;Inherit;False;Property;_SSSToggleAnimated;_SSSToggle;167;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.RangedFloatNode;8396;7824,768;Inherit;False;Property;_StencilBufferZFailFront;Stencil Buffer ZFail Front;445;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.StencilOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;22201;2048,-688;Inherit;False;Property;_EmissionColorAnimated;_EmissionColor;162;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.GetLocalVarNode;21177;-1872,1808;Inherit;False;21171;VLDirTwo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;2919;6992,784;Float;False;Property;_CullMode;Cull Mode;451;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.CullMode;True;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;21164;-1376,3296;Inherit;False;21105;VLLdotHFour;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;21160;-1632,3040;Inherit;False;21099;VLHalfVectorThree;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;22130;8960,688;Inherit;False;Property;_LockTooltip;LockTooltip;236;0;Create;True;0;0;0;False;1;HelpBox(3);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;21161;-1632,3104;Inherit;False;21101;VLHalfVectorFour;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;21155;-1632,2912;Inherit;False;21095;VLHalfVectorOne;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;21092;-672,-848;Inherit;False;VLFinalThree;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.IntNode;24675;-3488,-656;Inherit;False;Property;_EmissionScrollMaskUVSwitchAnimated;_EmissionScrollMaskUVSwitch;168;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.GetLocalVarNode;21184;-1872,2000;Inherit;False;21183;VertexLightAtten;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;8362;6992,688;Inherit;False;Property;_BlendOpRGB;Blend Op RGB;437;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.BlendOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;21091;-672,-928;Inherit;False;VLFinalTwo;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;21099;-672,-528;Inherit;False;VLHalfVectorThree;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;21093;-672,-768;Inherit;False;VLFinalFour;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;8524;-528,2352;Half;False;Property;_SpecularSetting;Specular Setting;467;1;[Enum];Create;True;0;4;Toon;0;Unity Standard GGX;1;Anisotropic by James OHare;2;Anisotropic GGX;3;0;True;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;8385;7344,784;Inherit;False;Property;_ColorMask;Color Mask;473;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.ColorWriteMask;True;0;False;15;15;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;21085;-672,-1488;Inherit;False;FourLightPosX0WorldPos;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;21172;-160,-688;Inherit;False;VLDirThree;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;8393;7536,688;Inherit;False;Property;_StencilBufferWriteMask;Stencil Buffer Write Mask;439;0;Create;True;0;0;1;UnityEngine.Rendering.BlendMode;True;0;False;255;255;0;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;6720,416;Float;False;True;-1;7;MorisMaterialInspector;0;0;CustomLighting;Moriohs Shaders/Moris Toon Shader/Opaque;False;False;False;False;True;True;True;True;True;False;True;False;False;False;False;False;False;False;False;False;False;Back;0;True;8399;0;True;8400;True;0;True;8401;0;True;8402;False;0;Custom;0.5;True;True;0;True;Opaque;;Geometry;ForwardOnly;5;d3d11;glcore;gles3;vulkan;nomrt;True;True;True;True;0;True;8385;True;0;True;8391;255;True;8392;255;True;8393;0;True;8390;0;True;8394;0;True;8395;0;True;8396;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;0;4;10;25;False;0.5;True;1;1;True;8360;0;True;8361;1;0;True;8363;0;True;8364;0;True;8362;0;True;8365;0;False;5E-06;0,0,0,0;VertexOffset;True;False;Cylindrical;False;True;Relative;0;Legacy Shaders/VertexLit;-1;-1;-1;-1;1;IgnoreProjectorPlaceholder=True;False;0;0;True;2919;-1;0;True;21375;0;0;0;False;0.1;False;-1;0;True;8374;True;15;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;24660;0;24564;0
WireConnection;24660;1;24667;0
WireConnection;24660;2;24665;0
WireConnection;24660;3;24657;0
WireConnection;24660;4;24663;0
WireConnection;24659;0;24666;0
WireConnection;24659;1;24660;0
WireConnection;24652;0;24659;0
WireConnection;24652;1;24666;1
WireConnection;24638;0;24652;0
WireConnection;2351;0;25026;0
WireConnection;43;1;24641;0
WireConnection;24742;17;43;0
WireConnection;21780;0;296;0
WireConnection;25050;19;19798;0
WireConnection;627;0;411;0
WireConnection;297;0;24742;0
WireConnection;297;1;21780;0
WireConnection;19803;0;25050;13
WireConnection;626;0;297;0
WireConnection;626;1;627;0
WireConnection;21088;0;25050;375
WireConnection;23961;34;19832;0
WireConnection;2353;0;25026;14
WireConnection;21183;0;25050;397
WireConnection;19820;0;25050;60
WireConnection;2197;0;626;0
WireConnection;19801;0;25050;0
WireConnection;8684;1;8678;0
WireConnection;8684;2;23961;0
WireConnection;8684;3;21078;0
WireConnection;2907;0;8684;0
WireConnection;25092;1258;19117;0
WireConnection;25092;150;14551;0
WireConnection;25092;1264;19839;0
WireConnection;25092;1263;19840;0
WireConnection;25092;1306;21201;0
WireConnection;25092;1305;21199;0
WireConnection;19817;0;25050;62
WireConnection;19804;0;25050;15
WireConnection;24658;0;24623;0
WireConnection;24658;1;24667;0
WireConnection;24658;2;24665;0
WireConnection;24658;3;24657;0
WireConnection;24658;4;24663;0
WireConnection;14557;0;25092;211
WireConnection;24656;0;24632;0
WireConnection;24656;1;24667;0
WireConnection;24656;2;24665;0
WireConnection;24656;3;24657;0
WireConnection;24656;4;24663;0
WireConnection;19802;0;25050;14
WireConnection;24300;0;25092;2137
WireConnection;21432;0;25050;446
WireConnection;19902;0;25050;64
WireConnection;14556;0;25092;210
WireConnection;19806;0;25050;18
WireConnection;14546;0;25092;0
WireConnection;14546;1;14547;0
WireConnection;24653;0;24664;0
WireConnection;24653;1;24658;0
WireConnection;24661;0;24662;0
WireConnection;24661;1;24656;0
WireConnection;21212;0;25092;1309
WireConnection;9087;0;25092;198
WireConnection;24654;0;24653;0
WireConnection;24654;1;24664;1
WireConnection;25081;2254;24953;0
WireConnection;25081;44;5950;0
WireConnection;25081;49;2479;0
WireConnection;25081;1922;24302;0
WireConnection;25081;1665;21148;0
WireConnection;25081;192;20970;0
WireConnection;25081;293;20971;0
WireConnection;25081;594;19818;0
WireConnection;25081;578;19815;0
WireConnection;25081;1737;19845;0
WireConnection;25081;634;19854;0
WireConnection;25081;596;19819;0
WireConnection;25081;579;19816;0
WireConnection;25081;671;20969;0
WireConnection;25081;1739;21572;0
WireConnection;25037;0;25092;2155
WireConnection;2205;0;14546;0
WireConnection;24655;0;24661;0
WireConnection;24655;1;24662;1
WireConnection;16840;0;25092;638
WireConnection;21102;0;25050;389
WireConnection;21105;0;25050;392
WireConnection;21493;0;21482;0
WireConnection;21104;0;25050;391
WireConnection;21525;0;21524;0
WireConnection;24639;0;24654;0
WireConnection;21855;0;25092;1361
WireConnection;24166;0;25081;1894
WireConnection;21096;0;25050;383
WireConnection;21100;0;25050;387
WireConnection;21103;0;25050;390
WireConnection;21098;0;25050;385
WireConnection;24307;0;25081;1933
WireConnection;24640;0;24655;0
WireConnection;21094;0;25050;381
WireConnection;5894;0;5668;0
WireConnection;25095;271;21213;0
WireConnection;25095;22;2436;0
WireConnection;25095;33;9349;0
WireConnection;25095;260;19824;0
WireConnection;25095;322;23876;0
WireConnection;25046;0;25092;2199
WireConnection;24732;51;22199;0
WireConnection;24732;52;22198;0
WireConnection;25039;24;5929;0
WireConnection;25039;41;9167;0
WireConnection;25039;445;24077;0
WireConnection;25039;142;19837;0
WireConnection;2969;0;2968;0
WireConnection;2969;3;24732;0
WireConnection;6009;1;2974;0
WireConnection;6009;3;25095;0
WireConnection;21533;0;21529;0
WireConnection;21533;1;21526;0
WireConnection;25080;2821;24167;0
WireConnection;25080;2817;24134;0
WireConnection;25080;86;5954;0
WireConnection;25080;93;2355;0
WireConnection;25080;89;5759;0
WireConnection;25080;1847;20976;0
WireConnection;25080;2674;21556;0
WireConnection;25080;2409;19808;0
WireConnection;25080;2671;19810;0
WireConnection;25080;2411;19809;0
WireConnection;25080;2500;21235;0
WireConnection;25080;2501;21237;0
WireConnection;25080;2502;21236;0
WireConnection;25080;2545;21251;0
WireConnection;25080;2842;24313;0
WireConnection;25080;2590;21243;0
WireConnection;25080;2602;21244;0
WireConnection;25080;2619;21245;0
WireConnection;25080;2636;21246;0
WireConnection;25080;2543;21247;0
WireConnection;25080;2604;21248;0
WireConnection;25080;2621;21249;0
WireConnection;25080;2638;21250;0
WireConnection;6012;1;5934;0
WireConnection;6012;2;25039;35
WireConnection;6012;3;25039;36
WireConnection;6012;4;25039;0
WireConnection;21509;0;2974;0
WireConnection;21509;1;21494;0
WireConnection;24841;2;25081;0
WireConnection;24841;3;25081;58
WireConnection;24841;4;25081;125
WireConnection;24841;5;25081;2152
WireConnection;5677;1;24642;0
WireConnection;5677;7;16905;0
WireConnection;21519;0;2968;0
WireConnection;21519;1;21518;0
WireConnection;5683;1;24643;0
WireConnection;5683;7;16904;0
WireConnection;9090;0;43;4
WireConnection;9090;1;296;4
WireConnection;2928;0;6012;0
WireConnection;2223;0;24841;2
WireConnection;21476;0;6009;0
WireConnection;21476;1;21509;0
WireConnection;21523;0;25080;0
WireConnection;21523;1;21533;0
WireConnection;25027;70;7380;0
WireConnection;25027;71;7379;0
WireConnection;25027;30;5661;0
WireConnection;25027;28;20988;0
WireConnection;25027;725;5677;0
WireConnection;22474;0;21533;0
WireConnection;22474;2;25080;2705
WireConnection;21852;0;21850;0
WireConnection;21852;1;21856;0
WireConnection;21520;0;2969;0
WireConnection;21520;1;21519;0
WireConnection;8822;0;5685;0
WireConnection;21858;1;5682;0
WireConnection;21858;2;5678;0
WireConnection;16903;0;5683;0
WireConnection;25086;65;2615;0
WireConnection;25086;72;3121;0
WireConnection;25086;900;24379;0
WireConnection;25086;890;24130;0
WireConnection;25086;833;24112;0
WireConnection;25086;581;21517;0
WireConnection;5670;0;25027;0
WireConnection;24752;32;5894;0
WireConnection;2221;0;21476;0
WireConnection;21761;0;21760;0
WireConnection;21761;1;5935;0
WireConnection;10644;0;21523;0
WireConnection;21754;0;21753;0
WireConnection;21754;1;2966;0
WireConnection;2584;0;21520;0
WireConnection;21857;0;21852;0
WireConnection;5687;0;16903;0
WireConnection;5687;1;8822;0
WireConnection;5687;2;21858;0
WireConnection;24109;0;25086;647
WireConnection;22506;0;22474;0
WireConnection;9091;0;9090;0
WireConnection;24108;0;25086;0
WireConnection;21763;0;2929;0
WireConnection;21763;1;21761;0
WireConnection;23831;0;24752;0
WireConnection;23831;1;5677;1
WireConnection;21540;0;5676;0
WireConnection;21851;0;5687;0
WireConnection;21851;2;21857;0
WireConnection;21755;0;2224;0
WireConnection;21755;1;21754;0
WireConnection;21538;0;21540;0
WireConnection;21538;1;21537;0
WireConnection;5679;1;5676;0
WireConnection;5679;3;23831;0
WireConnection;5679;4;20987;0
WireConnection;295;0;21755;0
WireConnection;295;1;20979;0
WireConnection;295;2;10647;0
WireConnection;295;3;2222;0
WireConnection;295;4;20980;0
WireConnection;295;5;21763;0
WireConnection;24093;0;22508;0
WireConnection;24093;1;24094;0
WireConnection;21784;0;20981;0
WireConnection;21784;1;21785;0
WireConnection;24414;1;21851;0
WireConnection;24092;0;24093;0
WireConnection;5690;0;24414;0
WireConnection;21539;0;5679;0
WireConnection;21539;1;21538;0
WireConnection;21775;0;295;0
WireConnection;21775;1;21776;0
WireConnection;21777;1;21782;0
WireConnection;21777;2;20981;0
WireConnection;21777;3;21784;0
WireConnection;21777;4;21784;0
WireConnection;8688;1;8678;0
WireConnection;8688;3;23961;22
WireConnection;24994;424;21890;0
WireConnection;22467;0;21777;0
WireConnection;22467;2;24092;0
WireConnection;21786;1;21782;0
WireConnection;21786;2;295;0
WireConnection;21786;3;21775;0
WireConnection;21786;4;295;0
WireConnection;5684;0;21539;0
WireConnection;8681;0;8688;0
WireConnection;21891;0;24994;425
WireConnection;22129;0;43;4
WireConnection;21892;0;24994;426
WireConnection;14780;0;22467;0
WireConnection;14780;1;21786;0
WireConnection;14780;2;20982;0
WireConnection;23421;0;14780;0
WireConnection;23421;1;24994;0
WireConnection;21385;1;21786;0
WireConnection;21390;1;21539;0
WireConnection;21101;0;25050;388
WireConnection;21086;0;25050;374
WireConnection;24075;0;25092;1989
WireConnection;21171;0;25050;394
WireConnection;21095;0;25050;382
WireConnection;21087;0;25050;373
WireConnection;24376;0;20985;0
WireConnection;24376;1;20986;0
WireConnection;24376;2;20983;0
WireConnection;24749;53;22126;0
WireConnection;21089;0;25050;376
WireConnection;21090;0;25050;377
WireConnection;21174;0;25050;393
WireConnection;21097;0;25050;384
WireConnection;21173;0;25050;396
WireConnection;21444;1;25080;0
WireConnection;21752;1;2224;0
WireConnection;21762;1;2929;0
WireConnection;21092;0;25050;379
WireConnection;21091;0;25050;378
WireConnection;21099;0;25050;386
WireConnection;21093;0;25050;380
WireConnection;21085;0;25050;372
WireConnection;21172;0;25050;395
WireConnection;0;2;24376;0
WireConnection;0;9;20984;0
WireConnection;0;10;24749;0
WireConnection;0;13;23421;0
WireConnection;0;11;18112;0
ASEEND*/
//CHKSM=7A64FB775718FF5610AAF744BAA1CE8BA3DC7C6D