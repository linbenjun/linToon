// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Moriohs Shaders/Moris Toon Shader/Outlined"
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
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3)]_OutlineMaskUVSwitch("Outline Mask UV Switch", Float) = 0
		[ToggleUI]_DitherAlphaToggleAnimated("_DitherAlphaToggle", Int) = 0
		[ToggleUI]_StartDitheringFadeAnimated("_StartDitheringFade", Int) = 0
		[ToggleUI]_EndDitheringFadeAnimated("_EndDitheringFade", Int) = 0
		[ToggleUI]_DitherTextureTilingAnimated("_DitherTextureTiling", Int) = 0
		[ToggleUI]_OptimizerExcludeDither("OptimizerExcludeDither", Int) = 0
		[ToggleUI]_DitherTextureToggleAnimated("_DitherTextureToggle", Int) = 0
		_StartDitheringFade("Start Dithering Fade", Range( 0 , 20)) = 0
		_EndDitheringFade("End Dithering Fade", Range( 0 , 20)) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3)]_DitherMaskUVSwitch("Dither Mask UV Switch", Float) = 0
		_DitherMask("Dither Mask", 2D) = "white" {}
		[HideInInspector] _texcoord2( "", 2D ) = "white" {}
		[HideInInspector] _texcoord3( "", 2D ) = "white" {}
		[HideInInspector] _texcoord4( "", 2D ) = "white" {}
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[ToggleUI]_DitherMaskUVSwitchAnimated("_DitherMaskUVSwitch", Int) = 0
		_DitherTexture("Dither Texture", 2D) = "white" {}
		[Enum(Off,0,On,1)]_DitherTextureToggle("DitherTextureToggle", Float) = 0
		_DitherTextureTiling("Dither Texture Tiling", Float) = 1
		[Enum(Object Center to Camera Distance,0,Diffuse Alpha,1)]_DitherAlphaToggle("DitherAlphaToggle", Float) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3)]_EmissionScrollMaskUVSwitch("Emission Scroll Mask UV Switch", Float) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3)]_EmissionUVSwitch("Emission UV Switch", Float) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3)]_MainTexUVSwitch("Main Tex UV Switch", Float) = 0
		[ToggleUI]_OptimizerExcludeOutline("OptimizerExcludeOutline", Int) = 0
		[ToggleUI]_OutlineColorAnimated("_OutlineColor", Int) = 0
		[ToggleUI]_OutlineDistancethickeningAnimated("_OutlineDistancethickening", Int) = 0
		[ToggleUI]_OutlineWidthAnimated("_OutlineWidth", Int) = 0
		[ToggleUI]_OutlineModeAnimated("_OutlineMode", Int) = 0
		[ToggleUI]_OutlineDepthFadeDistanceAnimated("_OutlineDepthFadeDistance", Int) = 0
		[ToggleUI]_OutlineTintAnimated("_OutlineTint", Int) = 0
		[ToggleUI]_OutlineHueSpeedAnimated("_OutlineHueSpeed", Int) = 0
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
		[ToggleUI]_EmissionScrollMaskUVSwitchAnimated("_EmissionScrollMaskUVSwitch", Int) = 0
		[ToggleUI]_EmissionUVSwitchAnimated("_EmissionUVSwitch", Int) = 0
		[ToggleUI]_MainTexUVSwitchAnimated("_MainTexUVSwitch", Int) = 0
		[ToggleUI]_OutlineMaskUVSwitchAnimated("_OutlineMaskUVSwitch", Int) = 0
		[ToggleUI]_SSSToggleAnimated("_SSSToggle", Int) = 0
		[ToggleUI]_RenderingModeAnimated("_RenderingMode", Int) = 1
		[ToggleUI]_SpecularToggleAnimated("_SpecularToggle", Int) = 0
		[ToggleUI]_EmissionColorAnimated("_EmissionColor", Int) = 0
		[ToggleUI]_EmissionLightscaleAnimated("_EmissionLightscale", Int) = 0
		[ToggleUI]_COLORCOLORAnimated("_COLORCOLOR", Int) = 1
		[ToggleUI]_OptimizerExcludeEmission("OptimizerExcludeEmission", Int) = 0
		[ToggleUI]_COLORADDSUBDIFFAnimated("_COLORADDSUBDIFF", Int) = 0
		[ToggleUI]_EmissionscrollColorAnimated("_EmissionscrollColor", Int) = 0
		[ToggleUI]_EmissionScrollToggleAnimated("_EmissionScrollToggle", Int) = 0
		[ToggleUI]_SaturationAnimated("_Saturation", Int) = 0
		[ToggleUI]_MainColorAnimated("_MainColor", Int) = 0
		[ToggleUI]_OptimizerExcludeMainSettings("OptimizerExcludeMainSettings", Int) = 0
		[ToggleOff(_COLORADDSUBDIFF_ON)]_COLORADDSUBDIFF("Cubemap Toggle", Float) = 0
		[ToggleOff(_COLORCOLOR_ON)]_COLORCOLOR("Toggle Advanced", Float) = 0
		[ToggleUI]_CutoutAnimated("_Cutout", Int) = 0
		[Enum(UnityEngine.Rendering.BlendOp)]_BlendOpAlpha("Blend Op Alpha", Float) = 0
		[Enum(UnityEngine.Rendering.BlendMode)]_DestinationBlendAlpha("Destination Blend Alpha", Float) = 0
		[Enum(UnityEngine.Rendering.BlendOp)]_BlendOpRGB("Blend Op RGB", Float) = 0
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
		[Enum(UnityEngine.Rendering.BlendMode)]_DestinationBlendRGB("Destination Blend RGB", Float) = 0
		_StencilBufferWriteMask("Stencil Buffer Write Mask", Range( 0 , 255)) = 255
		_StencilBufferReadMask("Stencil Buffer Read Mask", Range( 0 , 255)) = 255
		_DepthOffsetFactor("Depth Offset Factor", Float) = 0
		_DepthOffsetUnits("Depth Offset Units", Float) = 0
		_StencilBufferReference("Stencil Buffer Reference", Range( 0 , 255)) = 0
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
		[Enum(UnityEngine.Rendering.StencilOp)]_StencilBufferFailFront("Stencil Buffer Fail Front", Float) = 0
		[Enum(UnityEngine.Rendering.StencilOp)]_StencilBufferZFailFront("Stencil Buffer ZFail Front", Float) = 0
		[Enum(UnityEngine.Rendering.CompareFunction)]_StencilBufferComparison("Stencil Buffer Comparison", Float) = 0
		[Enum(UnityEngine.Rendering.CompareFunction)]_ZTestMode("ZTest Mode", Float) = 4
		[Enum(Basic,0,Advanced,1,Advanced Plus,2)]_AdvancedExperimentalToggle("Advanced Experimental Toggle", Float) = 0
		[Enum(UnityEngine.Rendering.StencilOp)]_StencilBufferPassFront("Stencil Buffer Pass Front", Float) = 0
		[HDR]_OutlineColor("OutlineColor", Color) = (0.09803922,0.09803922,0.09803922,0)
		[Enum(UnityEngine.Rendering.BlendMode)]_SourceBlendAlpha("Source Blend Alpha", Float) = 1
		[Enum(UnityEngine.Rendering.BlendMode)]_SourceBlendRGB("Source Blend RGB", Float) = 1
		[Enum(UnityEngine.Rendering.CullMode)]_CullMode("Cull Mode", Float) = 2
		_OutlineWidth("OutlineWidth", Float) = 0.0005
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
		_Cutout("Cutout", Range( 0 , 1)) = 0
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
		[Enum(Light Scaled,0,Emissive,1)]_OutlineMode("Outline Mode", Float) = 0
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
		[Enum(Off,0,On,1)]_ZWriteMode("ZWrite Mode", Float) = 1
		[Enum(Off,0,On,1)]_AlphatoCoverage("Alpha to Coverage", Float) = 0
		[Enum(UnityEngine.Rendering.ColorWriteMask)]_ColorMask("Color Mask", Float) = 15
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
		[Enum(Toon,0,Unity Standard GGX,1,Anisotropic by James OHare,2,Anisotropic GGX,3)]_SpecularSetting("Specular Setting", Float) = 0
		_OutlineHueSpeed("Outline Hue Speed", Range( 0 , 1)) = 0
		_OutlineTint("Outline Tint", Range( 0 , 1)) = 0
		_OutlineDepthFadeDistance("Outline Depth Fade Distance", Range( 0 , 50)) = 5
		_OutlineMask("Outline Mask", 2D) = "white" {}
		[ToggleUI]_FlipbookToggle("Flipbook Toggle", Float) = 0
		_Saturation("Saturation", Range( 0 , 10)) = 1
		_MainColor("Main Color", Color) = (1,1,1,1)
		_MainTex("Main Tex", 2D) = "white" {}
		[HDR]_EmissionColor("Emission Color", Color) = (1,1,1,0)
		_Emission("Emission", 2D) = "black" {}
		[HDR]_EmissionscrollColor("Emission scroll Color", Color) = (1,1,1,1)
		_EmissionScrollMask("Emission Scroll Mask", 2D) = "white" {}
		_EmissionTint("Emission Tint", Range( 0 , 1)) = 1
		[Enum(Light Based,0,Color Based,1,Mixed,2)]_SSSSetting("SSS Setting", Float) = 0
		_OutlineDistancethickening("Outline Distance thickening", Range( 0 , 50)) = 0
		[ToggleOff(_SUNDISK_NONE)]_SSSToggle("SSS Toggle", Float) = 0
		[ToggleOff(_REQUIRE_UV2)]_SpecularToggle("Specular Toggle", Float) = 0
		_MaskClipValue("Mask Clip Value", Range( 0 , 1)) = 0.5
		[ToggleUI]_RimToggle("Rim Toggle", Float) = 0
		[Enum(Off,0,ES v1,1,ES v2,2)]_EmissionScrollToggle("Emission Scroll Toggle", Float) = 0
		[Enum(Shadow,0,Emissive,1)]_RimSwitch("Rim Switch", Float) = 0
		[Enum(Opaque,0,Fade,1,Transparent,2)]_RenderingMode("Rendering Mode", Float) = 1
		[ToggleUI]_EmissionLightscale("Emission Lightscale", Float) = 0
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "TransparentCutout"  "Queue" = "AlphaTest+0"}
		Cull Front
		CGPROGRAM
		#pragma target 3.0
		#pragma surface outlineSurf Outline  keepalpha noshadow noambient novertexlights nolightmap nodynlightmap nodirlightmap nometa noforwardadd vertex:outlineVertexDataFunc 
		#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
		#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
		#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
		#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex.SampleBias(samplerTex,coord,bias)
		#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex.SampleGrad(samplerTex,coord,ddx,ddy)
		#else//ASE Sampling Macros
		#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex2D(tex,coord)
		#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex2Dlod(tex,float4(coord,0,lod))
		#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex2Dbias(tex,float4(coord,0,bias))
		#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex2Dgrad(tex,coord,ddx,ddy)
		#endif//ASE Sampling Macros
		
		
		void outlineVertexDataFunc( inout appdata_full v, out Input o )
		{
			UNITY_INITIALIZE_OUTPUT( Input, o );
			float3 ase_vertex3Pos = v.vertex.xyz;
			float4 transform698_g20282 = mul(unity_ObjectToWorld,float4( ase_vertex3Pos , 0.0 ));
			float Space701_g20282 = transform698_g20282.y;
			float ifLocalVar717_g20282 = 0;
			if( _ToggleMaterializeDirInv > 0.0 )
				ifLocalVar717_g20282 = -Space701_g20282;
			else if( _ToggleMaterializeDirInv == 0.0 )
				ifLocalVar717_g20282 = Space701_g20282;
			float3 ase_parentObjectScale = (1.0/float3( length( unity_WorldToObject[ 0 ].xyz ), length( unity_WorldToObject[ 1 ].xyz ), length( unity_WorldToObject[ 2 ].xyz ) ));
			float ObjectScale711_g20282 = max( ase_parentObjectScale.y , 1.0 );
			float temp_output_739_0_g20282 = ( ifLocalVar717_g20282 / ObjectScale711_g20282 );
			float DissolveDensity732_g20282 = exp2( _DissolveDensity );
			float temp_output_753_0_g20282 = ( ( temp_output_739_0_g20282 + (-1.0 + (_MaterializeR - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g20282 );
			float4 ifLocalVar752_g20282 = 0;
			if( 1.0 > _MaterializeVertexColor )
				ifLocalVar752_g20282 = SAMPLE_TEXTURE2D_LOD( _MaterializeTex, sampler_point_clamp, v.texcoord.xyz.xy, 0.0 );
			else if( 1.0 == _MaterializeVertexColor )
				ifLocalVar752_g20282 = v.color;
			float temp_output_708_0_g20282 = ( _MaterializeColorLayerR / 100.0 );
			float temp_output_714_0_g20282 = ( temp_output_708_0_g20282 - 0.005 );
			float temp_output_716_0_g20282 = ( temp_output_708_0_g20282 + 0.005 );
			float2 appendResult727_g20282 = (float2(temp_output_714_0_g20282 , temp_output_716_0_g20282));
			float2 appendResult722_g20282 = (float2(-0.005 , temp_output_716_0_g20282));
			float2 appendResult720_g20282 = (float2(temp_output_714_0_g20282 , 1.005));
			float2 ifLocalVar734_g20282 = 0;
			if( 1.0 > _MaterializeLayerModeR )
				ifLocalVar734_g20282 = appendResult727_g20282;
			else if( 1.0 == _MaterializeLayerModeR )
				ifLocalVar734_g20282 = appendResult722_g20282;
			else if( 1.0 < _MaterializeLayerModeR )
				ifLocalVar734_g20282 = appendResult720_g20282;
			float2 break751_g20282 = ifLocalVar734_g20282;
			float temp_output_927_0_g20282 = ( _MaterializeColorLayerG / 100.0 );
			float temp_output_925_0_g20282 = ( temp_output_927_0_g20282 - 0.005 );
			float temp_output_922_0_g20282 = ( temp_output_927_0_g20282 + 0.005 );
			float2 appendResult919_g20282 = (float2(temp_output_925_0_g20282 , temp_output_922_0_g20282));
			float2 appendResult918_g20282 = (float2(-0.005 , temp_output_922_0_g20282));
			float2 appendResult916_g20282 = (float2(temp_output_925_0_g20282 , 1.005));
			float2 ifLocalVar921_g20282 = 0;
			if( 1.0 > _MaterializeLayerModeG )
				ifLocalVar921_g20282 = appendResult919_g20282;
			else if( 1.0 == _MaterializeLayerModeG )
				ifLocalVar921_g20282 = appendResult918_g20282;
			else if( 1.0 < _MaterializeLayerModeG )
				ifLocalVar921_g20282 = appendResult916_g20282;
			float2 break920_g20282 = ifLocalVar921_g20282;
			float temp_output_941_0_g20282 = ( _MaterializeColorLayerB / 100.0 );
			float temp_output_939_0_g20282 = ( temp_output_941_0_g20282 - 0.005 );
			float temp_output_936_0_g20282 = ( temp_output_941_0_g20282 + 0.005 );
			float2 appendResult933_g20282 = (float2(temp_output_939_0_g20282 , temp_output_936_0_g20282));
			float2 appendResult932_g20282 = (float2(-0.005 , temp_output_936_0_g20282));
			float2 appendResult930_g20282 = (float2(temp_output_939_0_g20282 , 1.005));
			float2 ifLocalVar935_g20282 = 0;
			if( 1.0 > _MaterializeLayerModeB )
				ifLocalVar935_g20282 = appendResult933_g20282;
			else if( 1.0 == _MaterializeLayerModeB )
				ifLocalVar935_g20282 = appendResult932_g20282;
			else if( 1.0 < _MaterializeLayerModeB )
				ifLocalVar935_g20282 = appendResult930_g20282;
			float2 break934_g20282 = ifLocalVar935_g20282;
			float temp_output_955_0_g20282 = ( _MaterializeColorLayerA / 100.0 );
			float temp_output_953_0_g20282 = ( temp_output_955_0_g20282 - 0.005 );
			float temp_output_950_0_g20282 = ( temp_output_955_0_g20282 + 0.005 );
			float2 appendResult947_g20282 = (float2(temp_output_953_0_g20282 , temp_output_950_0_g20282));
			float2 appendResult946_g20282 = (float2(-0.005 , temp_output_950_0_g20282));
			float2 appendResult944_g20282 = (float2(temp_output_953_0_g20282 , 1.005));
			float2 ifLocalVar949_g20282 = 0;
			if( 1.0 > _MaterializeLayerModeA )
				ifLocalVar949_g20282 = appendResult947_g20282;
			else if( 1.0 == _MaterializeLayerModeA )
				ifLocalVar949_g20282 = appendResult946_g20282;
			else if( 1.0 < _MaterializeLayerModeA )
				ifLocalVar949_g20282 = appendResult944_g20282;
			float2 break948_g20282 = ifLocalVar949_g20282;
			float4 appendResult956_g20282 = (float4(break751_g20282.x , break920_g20282.x , break934_g20282.x , break948_g20282.x));
			float4 appendResult957_g20282 = (float4(break751_g20282.y , break920_g20282.y , break934_g20282.y , break948_g20282.y));
			float4 MaterialzeLayers912_g20282 = (( ifLocalVar752_g20282 >= appendResult956_g20282 && ifLocalVar752_g20282 <= appendResult957_g20282 ) ? ifLocalVar752_g20282 :  float4( 0,0,0,0 ) );
			float4 break768_g20282 = ceil( MaterialzeLayers912_g20282 );
			float ifLocalVar817_g20282 = 0;
			if( 1.0 > saturate( _MaterializeR ) )
				ifLocalVar817_g20282 = ( ( temp_output_753_0_g20282 + 1.0 ) * break768_g20282.r );
			float temp_output_755_0_g20282 = ( ( temp_output_739_0_g20282 + (-1.0 + (_MaterializeG - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g20282 );
			float ifLocalVar812_g20282 = 0;
			if( 1.0 > saturate( _MaterializeG ) )
				ifLocalVar812_g20282 = ( ( temp_output_755_0_g20282 + 1.0 ) * break768_g20282.g );
			float temp_output_765_0_g20282 = ( ( temp_output_739_0_g20282 + (-1.0 + (_MaterializeB - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g20282 );
			float ifLocalVar823_g20282 = 0;
			if( 1.0 > saturate( _MaterializeB ) )
				ifLocalVar823_g20282 = ( ( temp_output_765_0_g20282 + 1.0 ) * break768_g20282.b );
			float temp_output_779_0_g20282 = ( ( temp_output_739_0_g20282 + (-1.0 + (_MaterializeA - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g20282 );
			float ifLocalVar820_g20282 = 0;
			if( 1.0 > saturate( _MaterializeA ) )
				ifLocalVar820_g20282 = ( ( temp_output_779_0_g20282 + 1.0 ) * break768_g20282.a );
			float ifLocalVar761_g20282 = 0;
			if( _ToggleDissolveDirInv > 0.0 )
				ifLocalVar761_g20282 = -Space701_g20282;
			else if( _ToggleDissolveDirInv == 0.0 )
				ifLocalVar761_g20282 = Space701_g20282;
			float temp_output_784_0_g20282 = ( ( ( ifLocalVar761_g20282 / ObjectScale711_g20282 ) + (-1.0 + (_DissolveModifier - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g20282 );
			float ifLocalVar818_g20282 = 0;
			if( 1.0 > _DissolveModifier )
				ifLocalVar818_g20282 = max( max( max( max( ifLocalVar817_g20282 , ifLocalVar812_g20282 ) , ifLocalVar823_g20282 ) , ifLocalVar820_g20282 ) , ( temp_output_784_0_g20282 + 1.0 ) );
			float lerpResult408_g20282 = lerp( 0.0 , saturate( ifLocalVar818_g20282 ) , saturate( ( 1.0 - ( ifLocalVar818_g20282 - 1.0 ) ) ));
			float DissolveVector8809 = lerpResult408_g20282;
			float cameraDepthFade6257 = (( -UnityObjectToViewPos( v.vertex.xyz ).z -_ProjectionParams.y - _OutlineDepthFadeDistance ) / 1.0);
			float ifLocalVar7646 = 0;
			if( 0.0 == _OutlineDepthFadeDistance )
				ifLocalVar7646 = 1.0;
			else if( 0.0 < _OutlineDepthFadeDistance )
				ifLocalVar7646 = saturate( -cameraDepthFade6257 );
			float UVSwitchProp8958 = _OutlineMaskUVSwitch;
			float2 UV08958 = v.texcoord.xyz.xy;
			float2 UV18958 = v.texcoord1.xy;
			float2 UV28958 = v.texcoord2.xy;
			float2 UV38958 = v.texcoord3.xy;
			float2 localUVSwitch8958 = UVSwitch( UVSwitchProp8958 , UV08958 , UV18958 , UV28958 , UV38958 );
			float4 unityObjectToClipPos7635 = UnityObjectToClipPos( ase_vertex3Pos );
			float ifLocalVar7651 = 0;
			if( 0.0 == _OutlineDistancethickening )
				ifLocalVar7651 = 1.0;
			else if( 0.0 < _OutlineDistancethickening )
				ifLocalVar7651 = min( unityObjectToClipPos7635.w , _OutlineDistancethickening );
			float temp_output_8804_0 = ( ( DissolveVector8809 * _OutlineWidth ) + ( ifLocalVar7646 * _OutlineWidth * SAMPLE_TEXTURE2D_LOD( _OutlineMask, sampler_OutlineMask, ( ( _OutlineMask_ST.xy * localUVSwitch8958 ) + _OutlineMask_ST.zw ), 0.0 ).r * ifLocalVar7651 ) );
			float outlineVar = temp_output_8804_0;
			v.vertex.xyz += ( v.normal * outlineVar );
		}
		inline half4 LightingOutline( SurfaceOutput s, half3 lightDir, half atten ) { return half4 ( 0,0,0, s.Alpha); }
		void outlineSurf( Input i, inout SurfaceOutput o )
		{
			float MonochromeTogglePixelLight1337_g20262 = _ToggleMonochromePixelLight;
			float ToggleSteps66_g20262 = _ToggleSteps;
			float4 localFourLightPosX340_g20258 = FourLightPosX();
			float3 ase_worldPos = i.worldPos;
			float4 temp_cast_0 = (ase_worldPos.x).xxxx;
			float4 FourLightPosX0WorldPos286_g20258 = ( localFourLightPosX340_g20258 - temp_cast_0 );
			float4 localFourLightPosY342_g20258 = FourLightPosY();
			float4 temp_cast_1 = (ase_worldPos.y).xxxx;
			float4 FourLightPosY0WorldPos291_g20258 = ( localFourLightPosY342_g20258 - temp_cast_1 );
			float4 localFourLightPosZ296_g20258 = FourLightPosZ();
			float4 temp_cast_2 = (ase_worldPos.z).xxxx;
			float4 FourLightPosZ0WorldPos325_g20258 = ( localFourLightPosZ296_g20258 - temp_cast_2 );
			float4 temp_cast_3 = (1E-06).xxxx;
			float4 temp_output_328_0_g20258 = max( ( ( FourLightPosX0WorldPos286_g20258 * FourLightPosX0WorldPos286_g20258 ) + ( FourLightPosY0WorldPos291_g20258 * FourLightPosY0WorldPos291_g20258 ) + ( FourLightPosZ0WorldPos325_g20258 * FourLightPosZ0WorldPos325_g20258 ) ) , temp_cast_3 );
			float3 _DefaultTangentVector = float3(0,0,1);
			float UVSwitchProp88_g20255 = _NormalMapUVSwitch;
			float2 UV088_g20255 = i.uv_texcoord.xy;
			float2 UV188_g20255 = i.uv2_texcoord2;
			float2 UV288_g20255 = i.uv3_texcoord3;
			float2 UV388_g20255 = i.uv4_texcoord4;
			float2 localUVSwitch88_g20255 = UVSwitch( UVSwitchProp88_g20255 , UV088_g20255 , UV188_g20255 , UV288_g20255 , UV388_g20255 );
			float UVSwitchProp107_g20255 = _SecondaryNormalMaskUVSwitch;
			float2 UV0107_g20255 = i.uv_texcoord.xy;
			float2 UV1107_g20255 = i.uv2_texcoord2;
			float2 UV2107_g20255 = i.uv3_texcoord3;
			float2 UV3107_g20255 = i.uv4_texcoord4;
			float2 localUVSwitch107_g20255 = UVSwitch( UVSwitchProp107_g20255 , UV0107_g20255 , UV1107_g20255 , UV2107_g20255 , UV3107_g20255 );
			float4 tex2DNode65_g20255 = SAMPLE_TEXTURE2D( _SecondaryNormalMask, sampler_trilinear_repeat, ( ( _SecondaryNormalMask_ST.xy * localUVSwitch107_g20255 ) + _SecondaryNormalMask_ST.zw ) );
			float3 lerpResult63_g20255 = lerp( _DefaultTangentVector , UnpackScaleNormal( SAMPLE_TEXTURE2D( _NormalMap, sampler_trilinear_repeat, ( ( _NormalMap_ST.xy * localUVSwitch88_g20255 ) + _NormalMap_ST.zw ) ), _NormalScale ) , tex2DNode65_g20255.a);
			float UVSwitchProp98_g20255 = _SecondaryNormalUVSwitch;
			float2 UV098_g20255 = i.uv_texcoord.xy;
			float2 UV198_g20255 = i.uv2_texcoord2;
			float2 UV298_g20255 = i.uv3_texcoord3;
			float2 UV398_g20255 = i.uv4_texcoord4;
			float2 localUVSwitch98_g20255 = UVSwitch( UVSwitchProp98_g20255 , UV098_g20255 , UV198_g20255 , UV298_g20255 , UV398_g20255 );
			float3 lerpResult58_g20255 = lerp( _DefaultTangentVector , UnpackScaleNormal( SAMPLE_TEXTURE2D( _SecondaryNormal, sampler_trilinear_repeat, ( ( _SecondaryNormal_ST.xy * localUVSwitch98_g20255 ) + _SecondaryNormal_ST.zw ) ), _SecondaryNormalScale ) , tex2DNode65_g20255.g);
			float3 temp_output_54_0_g20255 = BlendNormals( lerpResult63_g20255 , lerpResult58_g20255 );
			float3 newWorldNormal50_g20255 = (WorldNormalVector( i , temp_output_54_0_g20255 ));
			float localOutlineSwitch128_g20255 = ( 0.0 );
			float3 true128_g20255 = newWorldNormal50_g20255;
			float3 false128_g20255 = -newWorldNormal50_g20255;
			float3 Out0128_g20255 = float3( 0,0,0 );
			{
			#ifdef FOROUTLINE
			Out0128_g20255 = true128_g20255; //Outline
			#else
			Out0128_g20255 = false128_g20255; //Not Outline
			#endif
			#define FOROUTLINE
			}
			float3 switchResult119_g20255 = (((i.ASEVFace>0)?(newWorldNormal50_g20255):(Out0128_g20255)));
			float3 normalizeResult53_g20255 = normalize( switchResult119_g20255 );
			float3 worldnormals8049 = normalizeResult53_g20255;
			float3 WorldNormals20_g20258 = worldnormals8049;
			float3 break295_g20258 = WorldNormals20_g20258;
			float4 temp_output_366_0_g20258 = ( rsqrt( temp_output_328_0_g20258 ) * ( ( FourLightPosX0WorldPos286_g20258 * break295_g20258.x ) + ( FourLightPosY0WorldPos291_g20258 * break295_g20258.y ) + ( FourLightPosZ0WorldPos325_g20258 * break295_g20258.z ) ) );
			float4 VertexLightNdLNONMAX8088 = temp_output_366_0_g20258;
			float NdLHalfingControl704_g20262 = _NdLHalfingControl;
			float RampOffset167_g20262 = _RampOffset;
			float4 temp_output_1224_0_g20262 = saturate( ( ( VertexLightNdLNONMAX8088 * NdLHalfingControl704_g20262 ) + RampOffset167_g20262 ) );
			float4 VertexLightUV349_g20262 = temp_output_1224_0_g20262;
			float4 break548_g20262 = VertexLightUV349_g20262;
			float2 temp_cast_4 = (break548_g20262.x).xx;
			float4 tex2DNode647_g20262 = SAMPLE_TEXTURE2D( _ToonRamp, sampler_linear_clamp, temp_cast_4 );
			float3 ToonRampTexVLOne2100_g20262 = (tex2DNode647_g20262).rgb;
			float2 uv_ShadowColorMap = i.uv_texcoord * _ShadowColorMap_ST.xy + _ShadowColorMap_ST.zw;
			float4 tex2DNode1489_g20262 = SAMPLE_TEXTURE2D( _ShadowColorMap, sampler_trilinear_clamp, uv_ShadowColorMap );
			float3 lerpResult1511_g20262 = lerp( (_RampColor).rgb , (tex2DNode1489_g20262).rgb , ( max( max( tex2DNode1489_g20262.r , tex2DNode1489_g20262.g ) , tex2DNode1489_g20262.b ) * _ShadowColorMapStrength ));
			float3 RampColorRGB42_g20262 = lerpResult1511_g20262;
			float ColoringPointLights1080_g20262 = _ColoringPointLights;
			float3 lerpResult2003_g20262 = lerp( ToonRampTexVLOne2100_g20262 , RampColorRGB42_g20262 , ColoringPointLights1080_g20262);
			half3 linearRgb1700_g20262 = tex2DNode647_g20262.rgb;
			half localgetLinearRgbToLuminance1700_g20262 = getLinearRgbToLuminance( linearRgb1700_g20262 );
			float2 temp_cast_6 = (break548_g20262.y).xx;
			float4 tex2DNode648_g20262 = SAMPLE_TEXTURE2D( _ToonRamp, sampler_linear_clamp, temp_cast_6 );
			half3 linearRgb1701_g20262 = tex2DNode648_g20262.rgb;
			half localgetLinearRgbToLuminance1701_g20262 = getLinearRgbToLuminance( linearRgb1701_g20262 );
			float2 temp_cast_8 = (break548_g20262.z).xx;
			float4 tex2DNode649_g20262 = SAMPLE_TEXTURE2D( _ToonRamp, sampler_linear_clamp, temp_cast_8 );
			half3 linearRgb1702_g20262 = tex2DNode649_g20262.rgb;
			half localgetLinearRgbToLuminance1702_g20262 = getLinearRgbToLuminance( linearRgb1702_g20262 );
			float2 temp_cast_10 = (break548_g20262.w).xx;
			float4 tex2DNode650_g20262 = SAMPLE_TEXTURE2D( _ToonRamp, sampler_linear_clamp, temp_cast_10 );
			half3 linearRgb1703_g20262 = tex2DNode650_g20262.rgb;
			half localgetLinearRgbToLuminance1703_g20262 = getLinearRgbToLuminance( linearRgb1703_g20262 );
			float4 appendResult538_g20262 = (float4(localgetLinearRgbToLuminance1700_g20262 , localgetLinearRgbToLuminance1701_g20262 , localgetLinearRgbToLuminance1702_g20262 , localgetLinearRgbToLuminance1703_g20262));
			float4 ToonRampTexVertexLightLuminanced352_g20262 = appendResult538_g20262;
			float PointSpotShadows2112_g20262 = _PointSpotShadowIntensity;
			float4 break390_g20262 = saturate( ( ToonRampTexVertexLightLuminanced352_g20262 + ( 1.0 - PointSpotShadows2112_g20262 ) ) );
			float3 lerpResult2004_g20262 = lerp( lerpResult2003_g20262 , float3( 1,1,1 ) , break390_g20262.x);
			float3 localLightColorZero385_g20262 = LightColorZero();
			float4 localFourLightAtten305_g20258 = FourLightAtten();
			float4 temp_cast_12 = (1E-06).xxxx;
			float4 temp_output_272_0_g20258 = ( localFourLightAtten305_g20258 * temp_output_328_0_g20258 );
			float4 temp_cast_13 = (1E-06).xxxx;
			float4 temp_output_343_0_g20258 = saturate( ( 1.0 - ( temp_output_272_0_g20258 / 25.0 ) ) );
			float4 temp_output_320_0_g20258 = min( ( 1.0 / ( 1.0 + temp_output_272_0_g20258 ) ) , ( temp_output_343_0_g20258 * temp_output_343_0_g20258 ) );
			float4 VertexLightAtten8093 = temp_output_320_0_g20258;
			float4 temp_output_1306_0_g20262 = VertexLightAtten8093;
			float4 break2039_g20262 = temp_output_1306_0_g20262;
			float3 ToonRampTexVLTwo2103_g20262 = (tex2DNode648_g20262).rgb;
			float3 lerpResult2029_g20262 = lerp( ToonRampTexVLTwo2103_g20262 , RampColorRGB42_g20262 , ColoringPointLights1080_g20262);
			float3 lerpResult2028_g20262 = lerp( lerpResult2029_g20262 , float3( 1,1,1 ) , break390_g20262.y);
			float3 localLightColorZOne1302_g20262 = LightColorZOne();
			float3 ToonRampTexVLThree2105_g20262 = (tex2DNode649_g20262).rgb;
			float3 lerpResult2033_g20262 = lerp( ToonRampTexVLThree2105_g20262 , RampColorRGB42_g20262 , ColoringPointLights1080_g20262);
			float3 lerpResult2032_g20262 = lerp( lerpResult2033_g20262 , float3( 1,1,1 ) , break390_g20262.z);
			float3 localLightColorZTwo1303_g20262 = LightColorZTwo();
			float3 ToonRampTexVLFour2107_g20262 = (tex2DNode650_g20262).rgb;
			float3 lerpResult2037_g20262 = lerp( ToonRampTexVLFour2107_g20262 , RampColorRGB42_g20262 , ColoringPointLights1080_g20262);
			float3 lerpResult2036_g20262 = lerp( lerpResult2037_g20262 , float3( 1,1,1 ) , break390_g20262.w);
			float3 localLightColorZThree1304_g20262 = LightColorZThree();
			int Steps30_g20262 = _Steps;
			float4 VertexLightNdLStepped2141_g20262 = saturate( ( floor( ( temp_output_1224_0_g20262 * Steps30_g20262 ) ) / ( Steps30_g20262 - 1 ) ) );
			float4 break2090_g20262 = saturate( ( VertexLightNdLStepped2141_g20262 + ( 1.0 - PointSpotShadows2112_g20262 ) ) );
			float3 temp_cast_14 = (break2090_g20262.x).xxx;
			float3 lerpResult2097_g20262 = lerp( temp_cast_14 , RampColorRGB42_g20262 , ColoringPointLights1080_g20262);
			float3 lerpResult2089_g20262 = lerp( lerpResult2097_g20262 , float3( 1,1,1 ) , break2090_g20262.x);
			float3 localLightColorZero2091_g20262 = LightColorZero();
			float4 break2074_g20262 = temp_output_1306_0_g20262;
			float3 temp_cast_15 = (break2090_g20262.y).xxx;
			float3 lerpResult2084_g20262 = lerp( temp_cast_15 , RampColorRGB42_g20262 , ColoringPointLights1080_g20262);
			float3 lerpResult2087_g20262 = lerp( lerpResult2084_g20262 , float3( 1,1,1 ) , break2090_g20262.y);
			float3 localLightColorZOne2083_g20262 = LightColorZOne();
			float3 temp_cast_16 = (break2090_g20262.z).xxx;
			float3 lerpResult2081_g20262 = lerp( temp_cast_16 , RampColorRGB42_g20262 , ColoringPointLights1080_g20262);
			float3 lerpResult2073_g20262 = lerp( lerpResult2081_g20262 , float3( 1,1,1 ) , break2090_g20262.z);
			float3 localLightColorZTwo2077_g20262 = LightColorZTwo();
			float3 temp_cast_17 = (break2090_g20262.w).xxx;
			float3 lerpResult2093_g20262 = lerp( temp_cast_17 , RampColorRGB42_g20262 , ColoringPointLights1080_g20262);
			float3 lerpResult2095_g20262 = lerp( lerpResult2093_g20262 , float3( 1,1,1 ) , break2090_g20262.w);
			float3 localLightColorZThree2080_g20262 = LightColorZThree();
			float3 ifLocalVar553_g20262 = 0;
			if( 1.0 > ToggleSteps66_g20262 )
				ifLocalVar553_g20262 = ( ( lerpResult2004_g20262 * localLightColorZero385_g20262 * break2039_g20262.x ) + ( lerpResult2028_g20262 * localLightColorZOne1302_g20262 * break2039_g20262.y ) + ( lerpResult2032_g20262 * localLightColorZTwo1303_g20262 * break2039_g20262.z ) + ( lerpResult2036_g20262 * localLightColorZThree1304_g20262 * break2039_g20262.w ) );
			else if( 1.0 == ToggleSteps66_g20262 )
				ifLocalVar553_g20262 = ( ( lerpResult2089_g20262 * localLightColorZero2091_g20262 * break2074_g20262.x ) + ( lerpResult2087_g20262 * localLightColorZOne2083_g20262 * break2074_g20262.y ) + ( lerpResult2073_g20262 * localLightColorZTwo2077_g20262 * break2074_g20262.z ) + ( lerpResult2095_g20262 * localLightColorZThree2080_g20262 * break2074_g20262.w ) );
			half3 linearRgb1433_g20262 = ifLocalVar553_g20262;
			half localgetLinearRgbToLuminance1433_g20262 = getLinearRgbToLuminance( linearRgb1433_g20262 );
			float3 temp_cast_18 = (localgetLinearRgbToLuminance1433_g20262).xxx;
			float3 ifLocalVar1341_g20262 = 0;
			if( 1.0 > MonochromeTogglePixelLight1337_g20262 )
				ifLocalVar1341_g20262 = ifLocalVar553_g20262;
			else if( 1.0 == MonochromeTogglePixelLight1337_g20262 )
				ifLocalVar1341_g20262 = temp_cast_18;
			#ifdef UNITY_PASS_FORWARDBASE
				float3 staticSwitch1927_g20262 = ifLocalVar1341_g20262;
			#else
				float3 staticSwitch1927_g20262 = float3( 0,0,0 );
			#endif
			#ifdef VERTEXLIGHT_ON
				float3 staticSwitch1928_g20262 = staticSwitch1927_g20262;
			#else
				float3 staticSwitch1928_g20262 = float3( 0,0,0 );
			#endif
			float3 DiffuseVertexLighting354_g20262 = staticSwitch1928_g20262;
			float3 temp_output_1997_0_g20262 = ( DiffuseVertexLighting354_g20262 * _MaxLightDirect );
			#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
			float4 ase_lightColor = 0;
			#else //aselc
			float4 ase_lightColor = _LightColor0;
			#endif //aselc
			#ifdef DIRECTIONAL
				float3 staticSwitch952_g20262 = ase_lightColor.rgb;
			#else
				float3 staticSwitch952_g20262 = float3( 0,0,0 );
			#endif
			half3 localAmbient1767_g20262 = Ambient();
			half3 localAmbient1820_g20262 = Ambient();
			float3 break1831_g20262 = localAmbient1820_g20262;
			float3 lerpResult1766_g20262 = lerp( ( localAmbient1767_g20262 * _AmbientBoost ) , localAmbient1767_g20262 , saturate( max( max( break1831_g20262.x , break1831_g20262.y ) , break1831_g20262.z ) ));
			float3 AmbientLightBoosted1782_g20262 = lerpResult1766_g20262;
			half3 linearRgb1430_g20262 = ( staticSwitch952_g20262 + AmbientLightBoosted1782_g20262 );
			half localgetLinearRgbToLuminance1430_g20262 = getLinearRgbToLuminance( linearRgb1430_g20262 );
			half3 linearRgb1431_g20262 = ase_lightColor.rgb;
			half localgetLinearRgbToLuminance1431_g20262 = getLinearRgbToLuminance( linearRgb1431_g20262 );
			float3 temp_cast_19 = (localgetLinearRgbToLuminance1431_g20262).xxx;
			float3 ifLocalVar1331_g20262 = 0;
			if( 1.0 > MonochromeTogglePixelLight1337_g20262 )
				ifLocalVar1331_g20262 = ase_lightColor.rgb;
			else if( 1.0 == MonochromeTogglePixelLight1337_g20262 )
				ifLocalVar1331_g20262 = temp_cast_19;
			#if defined(LIGHTMAP_ON) && UNITY_VERSION < 560 //aseld
			float3 ase_worldlightDir = 0;
			#else //aseld
			float3 ase_worldlightDir = normalize( UnityWorldSpaceLightDir( ase_worldPos ) );
			#endif //aseld
			float dotResult3_g20258 = dot( WorldNormals20_g20258 , ase_worldlightDir );
			float NdotL8095 = dotResult3_g20258;
			float NdotLHalfed204_g20262 = saturate( ( ( NdotL8095 * NdLHalfingControl704_g20262 ) + RampOffset167_g20262 ) );
			float2 temp_cast_20 = (NdotLHalfed204_g20262).xx;
			float3 ToonRampTexNDL207_g20262 = (SAMPLE_TEXTURE2D( _ToonRamp, sampler_linear_clamp, temp_cast_20 )).rgb;
			float DirectShadowIntensity163_g20262 = _DirectShadowIntensity;
			float3 lerpResult1929_g20262 = lerp( float3( 1,1,1 ) , ToonRampTexNDL207_g20262 , DirectShadowIntensity163_g20262);
			float3 lerpResult2115_g20262 = lerp( float3( 1,1,1 ) , ToonRampTexNDL207_g20262 , PointSpotShadows2112_g20262);
			#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch2068_g20262 = lerpResult2115_g20262;
			#else
				float3 staticSwitch2068_g20262 = lerpResult1929_g20262;
			#endif
			float3 _egg = float3(1,1,1);
			float TangentNormalAtten1259_g20262 = 1;
			float2 temp_cast_21 = (TangentNormalAtten1259_g20262).xx;
			float3 ToonRampTexATTEN216_g20262 = (SAMPLE_TEXTURE2D( _ToonRamp, sampler_linear_clamp, temp_cast_21 )).rgb;
			#ifdef DIRECTIONAL
				float3 staticSwitch1968_g20262 = ToonRampTexATTEN216_g20262;
			#else
				float3 staticSwitch1968_g20262 = _egg;
			#endif
			float3 DirectionalAttenuationRamp24_g20262 = staticSwitch1968_g20262;
			float SelfCastShadows1958_g20262 = _SelfCastShadows;
			float3 lerpResult1941_g20262 = lerp( float3( 1,1,1 ) , DirectionalAttenuationRamp24_g20262 , SelfCastShadows1958_g20262);
			float temp_output_708_0_g20262 = saturate( ( floor( ( NdotLHalfed204_g20262 * Steps30_g20262 ) ) / ( Steps30_g20262 - 1 ) ) );
			float lerpResult1945_g20262 = lerp( 1.0 , temp_output_708_0_g20262 , DirectShadowIntensity163_g20262);
			float lerpResult2131_g20262 = lerp( 1.0 , temp_output_708_0_g20262 , PointSpotShadows2112_g20262);
			#ifdef UNITY_PASS_FORWARDADD
				float staticSwitch2129_g20262 = lerpResult2131_g20262;
			#else
				float staticSwitch2129_g20262 = lerpResult1945_g20262;
			#endif
			#ifdef DIRECTIONAL
				float staticSwitch1967_g20262 = TangentNormalAtten1259_g20262;
			#else
				float staticSwitch1967_g20262 = 1.0;
			#endif
			float DirectionalAttenuationSteps1969_g20262 = staticSwitch1967_g20262;
			float temp_output_1936_0_g20262 = saturate( ( floor( ( DirectionalAttenuationSteps1969_g20262 * Steps30_g20262 ) ) / ( Steps30_g20262 - 1 ) ) );
			float lerpResult1942_g20262 = lerp( 1.0 , temp_output_1936_0_g20262 , SelfCastShadows1958_g20262);
			float3 temp_cast_22 = (min( staticSwitch2129_g20262 , lerpResult1942_g20262 )).xxx;
			float3 ifLocalVar71_g20262 = 0;
			UNITY_BRANCH 
			if( 1.0 > ToggleSteps66_g20262 )
				ifLocalVar71_g20262 = min( staticSwitch2068_g20262 , lerpResult1941_g20262 );
			else if( 1.0 == ToggleSteps66_g20262 )
				ifLocalVar71_g20262 = temp_cast_22;
			float2 uv_ShadowMask = i.uv_texcoord * _ShadowMask_ST.xy + _ShadowMask_ST.zw;
			float2 temp_output_698_0_g20262 = (SAMPLE_TEXTURE2D( _ShadowMask, sampler_trilinear_clamp, uv_ShadowMask )).rg;
			float2 ifLocalVar597_g20262 = 0;
			if( 1.0 > _ShadowMaskinvert )
				ifLocalVar597_g20262 = temp_output_698_0_g20262;
			else if( 1.0 == _ShadowMaskinvert )
				ifLocalVar597_g20262 = ( 1.0 - temp_output_698_0_g20262 );
			float2 break699_g20262 = ( ifLocalVar597_g20262 * _ShadowMaskStrength );
			float PixelShadowMask279_g20262 = break699_g20262.x;
			float3 lerpResult290_g20262 = lerp( float3( 1,1,1 ) , ifLocalVar71_g20262 , PixelShadowMask279_g20262);
			float3 LightRamp85_g20262 = lerpResult290_g20262;
			float3 lerpResult1624_g20262 = lerp( LightRamp85_g20262 , RampColorRGB42_g20262 , ColoringPointLights1080_g20262);
			half3 linearRgb2055_g20262 = LightRamp85_g20262;
			half localgetLinearRgbToLuminance2055_g20262 = getLinearRgbToLuminance( linearRgb2055_g20262 );
			float3 lerpResult1623_g20262 = lerp( lerpResult1624_g20262 , float3( 1,1,1 ) , localgetLinearRgbToLuminance2055_g20262);
			#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch1036_g20262 = ( lerpResult1623_g20262 * 1 );
			#else
				float3 staticSwitch1036_g20262 = float3( 0,0,0 );
			#endif
			float ColoringDirectEnvLights1082_g20262 = _ColoringDirectEnvLights;
			float3 lerpResult1544_g20262 = lerp( LightRamp85_g20262 , RampColorRGB42_g20262 , ColoringDirectEnvLights1082_g20262);
			float3 lerpResult1538_g20262 = lerp( lerpResult1544_g20262 , float3( 1,1,1 ) , localgetLinearRgbToLuminance2055_g20262);
			#ifdef DIRECTIONAL
				float3 staticSwitch1035_g20262 = lerpResult1538_g20262;
			#else
				float3 staticSwitch1035_g20262 = staticSwitch1036_g20262;
			#endif
			float MonochromeToggleEnv1327_g20262 = _ToggleMonochromeEnv;
			half3 linearRgb1432_g20262 = AmbientLightBoosted1782_g20262;
			half localgetLinearRgbToLuminance1432_g20262 = getLinearRgbToLuminance( linearRgb1432_g20262 );
			float3 temp_cast_23 = (localgetLinearRgbToLuminance1432_g20262).xxx;
			float3 ifLocalVar1325_g20262 = 0;
			if( 1.0 > MonochromeToggleEnv1327_g20262 )
				ifLocalVar1325_g20262 = AmbientLightBoosted1782_g20262;
			else if( 1.0 == MonochromeToggleEnv1327_g20262 )
				ifLocalVar1325_g20262 = temp_cast_23;
			float3 localambientDir475_g20258 = ambientDir();
			float dotResult67_g20258 = dot( localambientDir475_g20258 , WorldNormals20_g20258 );
			float NdotAmbientL8094 = dotResult67_g20258;
			float AmbientUV224_g20262 = saturate( ( ( NdotAmbientL8094 * NdLHalfingControl704_g20262 ) + RampOffset167_g20262 ) );
			float2 temp_cast_24 = (AmbientUV224_g20262).xx;
			float3 ToonRampTexAmbient220_g20262 = (SAMPLE_TEXTURE2D( _ToonRamp, sampler_linear_clamp, temp_cast_24 )).rgb;
			float temp_output_709_0_g20262 = saturate( ( floor( ( AmbientUV224_g20262 * Steps30_g20262 ) ) / ( Steps30_g20262 - 1 ) ) );
			float3 temp_cast_25 = (temp_output_709_0_g20262).xxx;
			float3 ifLocalVar92_g20262 = 0;
			UNITY_BRANCH 
			if( 1.0 > ToggleSteps66_g20262 )
				ifLocalVar92_g20262 = ToonRampTexAmbient220_g20262;
			else if( 1.0 == ToggleSteps66_g20262 )
				ifLocalVar92_g20262 = temp_cast_25;
			float IndirectShadowMask688_g20262 = break699_g20262.y;
			float3 lerpResult1684_g20262 = lerp( float3( 1,1,1 ) , ifLocalVar92_g20262 , IndirectShadowMask688_g20262);
			float3 lerpResult1626_g20262 = lerp( lerpResult1684_g20262 , RampColorRGB42_g20262 , ColoringDirectEnvLights1082_g20262);
			half3 linearRgb2058_g20262 = lerpResult1684_g20262;
			half localgetLinearRgbToLuminance2058_g20262 = getLinearRgbToLuminance( linearRgb2058_g20262 );
			float3 lerpResult1627_g20262 = lerp( lerpResult1626_g20262 , float3( 1,1,1 ) , localgetLinearRgbToLuminance2058_g20262);
			float3 lerpResult284_g20262 = lerp( float3( 1,1,1 ) , lerpResult1627_g20262 , max( _IndirectShadowIntensity , 1E-06 ));
			half3 linearRgb1953_g20262 = ( ase_lightColor.rgb * staticSwitch1035_g20262 );
			half localgetLinearRgbToLuminance1953_g20262 = getLinearRgbToLuminance( linearRgb1953_g20262 );
			float3 lerpResult1661_g20262 = lerp( lerpResult284_g20262 , float3( 1,1,1 ) , saturate( localgetLinearRgbToLuminance1953_g20262 ));
			float2 uv_OcclusionMap = i.uv_texcoord * _OcclusionMap_ST.xy + _OcclusionMap_ST.zw;
			float lerpResult54_g20262 = lerp( 1.0 , SAMPLE_TEXTURE2D( _OcclusionMap, sampler_trilinear_repeat, uv_OcclusionMap ).g , _Occlusion);
			float3 FinalAmbientBakedLight132_g20262 = ( ifLocalVar1325_g20262 * lerpResult1661_g20262 * lerpResult54_g20262 );
			float3 ForFinalLightCalculation993_g20262 = ( ( ifLocalVar1331_g20262 * staticSwitch1035_g20262 ) + FinalAmbientBakedLight132_g20262 );
			float3 ifLocalVar944_g20262 = 0;
			if( ( localgetLinearRgbToLuminance1430_g20262 * _ExperimentalToggle ) <= 1.0 )
				ifLocalVar944_g20262 = ForFinalLightCalculation993_g20262;
			else
				ifLocalVar944_g20262 = ( max( float3( 0,0,0 ) , ForFinalLightCalculation993_g20262 ) / localgetLinearRgbToLuminance1430_g20262 );
			float3 temp_output_782_0_g20262 = ( ifLocalVar944_g20262 * _MaxLightDirect );
			float3 PreFinalLight8133 = ( temp_output_1997_0_g20262 + temp_output_782_0_g20262 );
			float4 ifLocalVar6223 = 0;
			if( 1.0 > _OutlineMode )
				ifLocalVar6223 = ( float4( PreFinalLight8133 , 0.0 ) * _OutlineColor );
			else if( 1.0 == _OutlineMode )
				ifLocalVar6223 = _OutlineColor;
			float mulTime6227 = _Time.y * _OutlineHueSpeed;
			float3 hsvTorgb3_g20291 = HSVToRGB( float3(mulTime6227,1.0,1.0) );
			float3 temp_cast_27 = (1.0).xxx;
			float3 ifLocalVar6231 = 0;
			if( _OutlineHueSpeed > 0.0 )
				ifLocalVar6231 = hsvTorgb3_g20291;
			else if( _OutlineHueSpeed == 0.0 )
				ifLocalVar6231 = temp_cast_27;
			float UVSwitchProp8935 = _MainTexUVSwitch;
			float2 UV08935 = i.uv_texcoord.xy;
			float2 UV18935 = i.uv2_texcoord2;
			float2 UV28935 = i.uv3_texcoord3;
			float2 UV38935 = i.uv4_texcoord4;
			float2 localUVSwitch8935 = UVSwitch( UVSwitchProp8935 , UV08935 , UV18935 , UV28935 , UV38935 );
			float2 MainTexUVSwitch8950 = ( ( _MainTex_ST.xy * localUVSwitch8935 ) + _MainTex_ST.zw );
			float4 tex2DNode8061 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, MainTexUVSwitch8950 );
			float3 Texture18_g20256 = tex2DNode8061.rgb;
			float grayscale5_g20256 = (Texture18_g20256.r + Texture18_g20256.g + Texture18_g20256.b) / 3;
			float UVSwitchProp257_g20256 = _HueMaskUVSwitch;
			float2 UV0257_g20256 = i.uv_texcoord.xy;
			float2 UV1257_g20256 = i.uv2_texcoord2;
			float2 UV2257_g20256 = i.uv3_texcoord3;
			float2 UV3257_g20256 = i.uv4_texcoord4;
			float2 localUVSwitch257_g20256 = UVSwitch( UVSwitchProp257_g20256 , UV0257_g20256 , UV1257_g20256 , UV2257_g20256 , UV3257_g20256 );
			float2 temp_output_252_0_g20256 = ( ( _HueMask_ST.xy * localUVSwitch257_g20256 ) + _HueMask_ST.zw );
			float HueMaskG53_g20256 = SAMPLE_TEXTURE2D( _HueMask, sampler_point_clamp, temp_output_252_0_g20256 ).g;
			float ifLocalVar218_g20256 = 0;
			if( 1.0 > _ToggleHueTexforSpeed )
				ifLocalVar218_g20256 = 1.0;
			else if( 1.0 == _ToggleHueTexforSpeed )
				ifLocalVar218_g20256 = HueMaskG53_g20256;
			float mulTime2_g20256 = _Time.y * ( _HueShiftSpeed * ifLocalVar218_g20256 );
			float3 hsvTorgb3_g20257 = HSVToRGB( float3(( mulTime2_g20256 + _HueShiftRandomizer ),1.0,1.0) );
			float3 ifLocalVar13_g20256 = 0;
			if( ( _HueShiftSpeed + _HueShiftRandomizer ) > 0.0 )
				ifLocalVar13_g20256 = ( grayscale5_g20256 * hsvTorgb3_g20257 );
			else if( ( _HueShiftSpeed + _HueShiftRandomizer ) == 0.0 )
				ifLocalVar13_g20256 = Texture18_g20256;
			float HueMaskR52_g20256 = SAMPLE_TEXTURE2D( _HueMask, sampler_trilinear_repeat, temp_output_252_0_g20256 ).r;
			float ifLocalVar9_g20256 = 0;
			if( 1.0 > _HueMaskinverter )
				ifLocalVar9_g20256 = HueMaskR52_g20256;
			else if( 1.0 == _HueMaskinverter )
				ifLocalVar9_g20256 = ( 1.0 - HueMaskR52_g20256 );
			float lerpResult15_g20256 = lerp( 0.0 , ifLocalVar9_g20256 , _HueShiftblend);
			float3 lerpResult16_g20256 = lerp( Texture18_g20256 , ifLocalVar13_g20256 , lerpResult15_g20256);
			clip( tex2DNode8061.a - _Cutout);
			float3 desaturateInitialColor8084 = ( lerpResult16_g20256 * (_MainColor).rgb );
			float desaturateDot8084 = dot( desaturateInitialColor8084, float3( 0.299, 0.587, 0.114 ));
			float3 desaturateVar8084 = lerp( desaturateInitialColor8084, desaturateDot8084.xxx, ( 1.0 - _Saturation ) );
			float3 MainTexSaturate8087 = desaturateVar8084;
			float3 lerpResult6287 = lerp( float3( 1,1,1 ) , MainTexSaturate8087 , _OutlineTint);
			float4 temp_output_6228_0 = ( ifLocalVar6223 * float4( ifLocalVar6231 , 0.0 ) * float4( lerpResult6287 , 0.0 ) );
			float3 ase_vertex3Pos = mul( unity_WorldToObject, float4( i.worldPos , 1 ) );
			float4 transform698_g20282 = mul(unity_ObjectToWorld,float4( ase_vertex3Pos , 0.0 ));
			float Space701_g20282 = transform698_g20282.y;
			float ifLocalVar717_g20282 = 0;
			if( _ToggleMaterializeDirInv > 0.0 )
				ifLocalVar717_g20282 = -Space701_g20282;
			else if( _ToggleMaterializeDirInv == 0.0 )
				ifLocalVar717_g20282 = Space701_g20282;
			float3 ase_parentObjectScale = (1.0/float3( length( unity_WorldToObject[ 0 ].xyz ), length( unity_WorldToObject[ 1 ].xyz ), length( unity_WorldToObject[ 2 ].xyz ) ));
			float ObjectScale711_g20282 = max( ase_parentObjectScale.y , 1.0 );
			float temp_output_739_0_g20282 = ( ifLocalVar717_g20282 / ObjectScale711_g20282 );
			float DissolveDensity732_g20282 = exp2( _DissolveDensity );
			float temp_output_753_0_g20282 = ( ( temp_output_739_0_g20282 + (-1.0 + (_MaterializeR - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g20282 );
			float4 ifLocalVar752_g20282 = 0;
			if( 1.0 > _MaterializeVertexColor )
				ifLocalVar752_g20282 = SAMPLE_TEXTURE2D( _MaterializeTex, sampler_point_clamp, i.uv_texcoord.xy );
			else if( 1.0 == _MaterializeVertexColor )
				ifLocalVar752_g20282 = i.vertexColor;
			float temp_output_708_0_g20282 = ( _MaterializeColorLayerR / 100.0 );
			float temp_output_714_0_g20282 = ( temp_output_708_0_g20282 - 0.005 );
			float temp_output_716_0_g20282 = ( temp_output_708_0_g20282 + 0.005 );
			float2 appendResult727_g20282 = (float2(temp_output_714_0_g20282 , temp_output_716_0_g20282));
			float2 appendResult722_g20282 = (float2(-0.005 , temp_output_716_0_g20282));
			float2 appendResult720_g20282 = (float2(temp_output_714_0_g20282 , 1.005));
			float2 ifLocalVar734_g20282 = 0;
			if( 1.0 > _MaterializeLayerModeR )
				ifLocalVar734_g20282 = appendResult727_g20282;
			else if( 1.0 == _MaterializeLayerModeR )
				ifLocalVar734_g20282 = appendResult722_g20282;
			else if( 1.0 < _MaterializeLayerModeR )
				ifLocalVar734_g20282 = appendResult720_g20282;
			float2 break751_g20282 = ifLocalVar734_g20282;
			float temp_output_927_0_g20282 = ( _MaterializeColorLayerG / 100.0 );
			float temp_output_925_0_g20282 = ( temp_output_927_0_g20282 - 0.005 );
			float temp_output_922_0_g20282 = ( temp_output_927_0_g20282 + 0.005 );
			float2 appendResult919_g20282 = (float2(temp_output_925_0_g20282 , temp_output_922_0_g20282));
			float2 appendResult918_g20282 = (float2(-0.005 , temp_output_922_0_g20282));
			float2 appendResult916_g20282 = (float2(temp_output_925_0_g20282 , 1.005));
			float2 ifLocalVar921_g20282 = 0;
			if( 1.0 > _MaterializeLayerModeG )
				ifLocalVar921_g20282 = appendResult919_g20282;
			else if( 1.0 == _MaterializeLayerModeG )
				ifLocalVar921_g20282 = appendResult918_g20282;
			else if( 1.0 < _MaterializeLayerModeG )
				ifLocalVar921_g20282 = appendResult916_g20282;
			float2 break920_g20282 = ifLocalVar921_g20282;
			float temp_output_941_0_g20282 = ( _MaterializeColorLayerB / 100.0 );
			float temp_output_939_0_g20282 = ( temp_output_941_0_g20282 - 0.005 );
			float temp_output_936_0_g20282 = ( temp_output_941_0_g20282 + 0.005 );
			float2 appendResult933_g20282 = (float2(temp_output_939_0_g20282 , temp_output_936_0_g20282));
			float2 appendResult932_g20282 = (float2(-0.005 , temp_output_936_0_g20282));
			float2 appendResult930_g20282 = (float2(temp_output_939_0_g20282 , 1.005));
			float2 ifLocalVar935_g20282 = 0;
			if( 1.0 > _MaterializeLayerModeB )
				ifLocalVar935_g20282 = appendResult933_g20282;
			else if( 1.0 == _MaterializeLayerModeB )
				ifLocalVar935_g20282 = appendResult932_g20282;
			else if( 1.0 < _MaterializeLayerModeB )
				ifLocalVar935_g20282 = appendResult930_g20282;
			float2 break934_g20282 = ifLocalVar935_g20282;
			float temp_output_955_0_g20282 = ( _MaterializeColorLayerA / 100.0 );
			float temp_output_953_0_g20282 = ( temp_output_955_0_g20282 - 0.005 );
			float temp_output_950_0_g20282 = ( temp_output_955_0_g20282 + 0.005 );
			float2 appendResult947_g20282 = (float2(temp_output_953_0_g20282 , temp_output_950_0_g20282));
			float2 appendResult946_g20282 = (float2(-0.005 , temp_output_950_0_g20282));
			float2 appendResult944_g20282 = (float2(temp_output_953_0_g20282 , 1.005));
			float2 ifLocalVar949_g20282 = 0;
			if( 1.0 > _MaterializeLayerModeA )
				ifLocalVar949_g20282 = appendResult947_g20282;
			else if( 1.0 == _MaterializeLayerModeA )
				ifLocalVar949_g20282 = appendResult946_g20282;
			else if( 1.0 < _MaterializeLayerModeA )
				ifLocalVar949_g20282 = appendResult944_g20282;
			float2 break948_g20282 = ifLocalVar949_g20282;
			float4 appendResult956_g20282 = (float4(break751_g20282.x , break920_g20282.x , break934_g20282.x , break948_g20282.x));
			float4 appendResult957_g20282 = (float4(break751_g20282.y , break920_g20282.y , break934_g20282.y , break948_g20282.y));
			float4 MaterialzeLayers912_g20282 = (( ifLocalVar752_g20282 >= appendResult956_g20282 && ifLocalVar752_g20282 <= appendResult957_g20282 ) ? ifLocalVar752_g20282 :  float4( 0,0,0,0 ) );
			float4 break768_g20282 = ceil( MaterialzeLayers912_g20282 );
			float ifLocalVar817_g20282 = 0;
			if( 1.0 > saturate( _MaterializeR ) )
				ifLocalVar817_g20282 = ( ( temp_output_753_0_g20282 + 1.0 ) * break768_g20282.r );
			float temp_output_755_0_g20282 = ( ( temp_output_739_0_g20282 + (-1.0 + (_MaterializeG - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g20282 );
			float ifLocalVar812_g20282 = 0;
			if( 1.0 > saturate( _MaterializeG ) )
				ifLocalVar812_g20282 = ( ( temp_output_755_0_g20282 + 1.0 ) * break768_g20282.g );
			float temp_output_765_0_g20282 = ( ( temp_output_739_0_g20282 + (-1.0 + (_MaterializeB - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g20282 );
			float ifLocalVar823_g20282 = 0;
			if( 1.0 > saturate( _MaterializeB ) )
				ifLocalVar823_g20282 = ( ( temp_output_765_0_g20282 + 1.0 ) * break768_g20282.b );
			float temp_output_779_0_g20282 = ( ( temp_output_739_0_g20282 + (-1.0 + (_MaterializeA - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g20282 );
			float ifLocalVar820_g20282 = 0;
			if( 1.0 > saturate( _MaterializeA ) )
				ifLocalVar820_g20282 = ( ( temp_output_779_0_g20282 + 1.0 ) * break768_g20282.a );
			float ifLocalVar761_g20282 = 0;
			if( _ToggleDissolveDirInv > 0.0 )
				ifLocalVar761_g20282 = -Space701_g20282;
			else if( _ToggleDissolveDirInv == 0.0 )
				ifLocalVar761_g20282 = Space701_g20282;
			float temp_output_784_0_g20282 = ( ( ( ifLocalVar761_g20282 / ObjectScale711_g20282 ) + (-1.0 + (_DissolveModifier - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g20282 );
			float ifLocalVar818_g20282 = 0;
			if( 1.0 > _DissolveModifier )
				ifLocalVar818_g20282 = max( max( max( max( ifLocalVar817_g20282 , ifLocalVar812_g20282 ) , ifLocalVar823_g20282 ) , ifLocalVar820_g20282 ) , ( temp_output_784_0_g20282 + 1.0 ) );
			float lerpResult408_g20282 = lerp( 0.0 , saturate( ifLocalVar818_g20282 ) , saturate( ( 1.0 - ( ifLocalVar818_g20282 - 1.0 ) ) ));
			float3 ifLocalVar418_g20282 = 0;
			if( _ToggleDissolveEmission == 1.0 )
				ifLocalVar418_g20282 = ( saturate( ( MainTexSaturate8087 + 0.5 ) ) * (_EmissiveDissolveColor).rgb * lerpResult408_g20282 );
			float3 EmissiveDissolve8347 = ifLocalVar418_g20282;
			float3 worldSpaceViewDir7_g20293 = WorldSpaceViewDir( float4( 0,0,0,1 ) );
			float AlphaChannel8553 = tex2DNode8061.a;
			float temp_output_53_0_g20293 = AlphaChannel8553;
			float ifLocalVar18_g20293 = 0;
			if( 1.0 > _DitherAlphaToggle )
				ifLocalVar18_g20293 = distance( worldSpaceViewDir7_g20293 , float3( 0,0,0 ) );
			else if( 1.0 == _DitherAlphaToggle )
				ifLocalVar18_g20293 = temp_output_53_0_g20293;
			float temp_output_12_0_g20293 = ( _EndDitheringFade + _ProjectionParams.y );
			float4 ase_screenPos = float4( i.screenPos.xyz , i.screenPos.w + 0.00000000001 );
			float4 ase_screenPosNorm = ase_screenPos / ase_screenPos.w;
			ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
			float2 clipScreen23_g20293 = ase_screenPosNorm.xy * _ScreenParams.xy;
			float dither23_g20293 = Dither8x8Bayer( fmod(clipScreen23_g20293.x, 8), fmod(clipScreen23_g20293.y, 8) );
			float2 UV22_g20294 = ase_screenPosNorm.xy;
			float2 localUnStereo22_g20294 = UnStereo( UV22_g20294 );
			float4 ditherCustomScreenPos25_g20293 = float4( ( localUnStereo22_g20294 * _DitherTextureTiling ), 0.0 , 0.0 );
			float dither25_g20293 = DitherNoiseTex(ditherCustomScreenPos25_g20293, _DitherTexture, sampler_trilinear_repeat, _DitherTexture_TexelSize);
			float ifLocalVar26_g20293 = 0;
			if( 1.0 > _DitherTextureToggle )
				ifLocalVar26_g20293 = dither23_g20293;
			else if( 1.0 == _DitherTextureToggle )
				ifLocalVar26_g20293 = dither25_g20293;
			float UVSwitchProp61_g20293 = _DitherMaskUVSwitch;
			float2 UV061_g20293 = i.uv_texcoord.xy;
			float2 UV161_g20293 = i.uv2_texcoord2;
			float2 UV261_g20293 = i.uv3_texcoord3;
			float2 UV361_g20293 = i.uv4_texcoord4;
			float2 localUVSwitch61_g20293 = UVSwitch( UVSwitchProp61_g20293 , UV061_g20293 , UV161_g20293 , UV261_g20293 , UV361_g20293 );
			float ifLocalVar37_g20293 = 0;
			if( 1.0 > _DitherAlphaToggle )
				ifLocalVar37_g20293 = SAMPLE_TEXTURE2D( _DitherMask, sampler_trilinear_repeat, ( ( _DitherMask_ST.xy * localUVSwitch61_g20293 ) + _DitherMask_ST.zw ) ).g;
			else if( 1.0 == _DitherAlphaToggle )
				ifLocalVar37_g20293 = ( 1.0 - temp_output_53_0_g20293 );
			float lerpResult42_g20293 = lerp( 1.0 , ( 1.0 - ( ( ( ifLocalVar18_g20293 + -temp_output_12_0_g20293 ) / ( _StartDitheringFade - temp_output_12_0_g20293 ) ) - ifLocalVar26_g20293 ) ) , ifLocalVar37_g20293);
			float ifLocalVar44_g20293 = 0;
			if( 0.0 == ( _StartDitheringFade + _EndDitheringFade ) )
				ifLocalVar44_g20293 = 1.0;
			else if( 0.0 < ( _StartDitheringFade + _EndDitheringFade ) )
				ifLocalVar44_g20293 = lerpResult42_g20293;
			float temp_output_8975_0 = ifLocalVar44_g20293;
			float UVSwitchProp991_g20282 = _DissolvePatternUVSwitch;
			float2 UV0991_g20282 = i.uv_texcoord.xy;
			float2 UV1991_g20282 = i.uv2_texcoord2;
			float2 UV2991_g20282 = i.uv3_texcoord3;
			float2 UV3991_g20282 = i.uv4_texcoord4;
			float2 localUVSwitch991_g20282 = UVSwitch( UVSwitchProp991_g20282 , UV0991_g20282 , UV1991_g20282 , UV2991_g20282 , UV3991_g20282 );
			float2 DissolvePatternUVSwitch999_g20282 = ( ( _DissolvePattern_ST.xy * localUVSwitch991_g20282 ) + _DissolvePattern_ST.zw );
			float4 tex2DNode794_g20282 = SAMPLE_TEXTURE2D( _DissolvePattern, sampler_trilinear_repeat, DissolvePatternUVSwitch999_g20282 );
			float DissolvePattern801_g20282 = max( max( tex2DNode794_g20282.r , tex2DNode794_g20282.g ) , tex2DNode794_g20282.b );
			float2 uv_DissolveMask = i.uv_texcoord * _DissolveMask_ST.xy + _DissolveMask_ST.zw;
			float4 tex2DNode764_g20282 = SAMPLE_TEXTURE2D( _DissolveMask, sampler_trilinear_repeat, uv_DissolveMask );
			float A1_g20284 = i.vertexColor.r;
			float B1_g20284 = i.vertexColor.g;
			float localASEAnd1_g20284 = ASEAnd( A1_g20284 , B1_g20284 );
			float A1_g20283 = localASEAnd1_g20284;
			float B1_g20283 = i.vertexColor.b;
			float localASEAnd1_g20283 = ASEAnd( A1_g20283 , B1_g20283 );
			float ifLocalVar788_g20282 = 0;
			if( 1.0 > _MaterializeVertexColor )
				ifLocalVar788_g20282 = max( max( tex2DNode764_g20282.r , tex2DNode764_g20282.g ) , tex2DNode764_g20282.b );
			else if( 1.0 == _MaterializeVertexColor )
				ifLocalVar788_g20282 = localASEAnd1_g20283;
			float lerpResult795_g20282 = lerp( saturate( temp_output_784_0_g20282 ) , 1.0 , ifLocalVar788_g20282);
			clip( 1.0 - ( ( 1.0 - max( max( max( max( ( saturate( ( temp_output_753_0_g20282 + DissolvePattern801_g20282 ) ) * break768_g20282.r ) , ( saturate( ( temp_output_755_0_g20282 + DissolvePattern801_g20282 ) ) * break768_g20282.g ) ) , ( saturate( ( temp_output_765_0_g20282 + DissolvePattern801_g20282 ) ) * break768_g20282.b ) ) , ( saturate( ( temp_output_779_0_g20282 + DissolvePattern801_g20282 ) ) * break768_g20282.a ) ) , lerpResult795_g20282 ) ) + 0.005 ));
			float ifLocalVar806_g20282 = 0;
			if( 1.0 > _DissolveModifier )
				ifLocalVar806_g20282 = 1.0;
			else if( 1.0 == _DissolveModifier )
				ifLocalVar806_g20282 = 1.0;
			float temp_output_9004_0 = ifLocalVar806_g20282;
			o.Emission = ( temp_output_6228_0 + float4( EmissiveDissolve8347 , 0.0 ) ).rgb;
			clip( min( temp_output_8975_0 , temp_output_9004_0 ) - _MaskClipValue );
			o.Normal = float3(0,0,-1);
		}
		ENDCG
		

		Tags{ "RenderType" = "TransparentCutout"  "Queue" = "AlphaTest+0" "IsEmissive" = "true"  "IgnoreProjectorPlaceholder"="True" }
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
		#define ASE_USING_SAMPLING_MACROS 1
		#pragma multi_compile _ VERTEXLIGHT_ON
		#include "./cginc/AudioLink.cginc"
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
			float3 vertexToFrag2250_g20263;
			float3 vertexToFrag2251_g20263;
			float3 worldRefl;
			float4 screenPos;
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
		uniform int _FlipbookToggleAnimated;
		uniform int _RotateFlipbookAnimated;
		uniform int _MaxFramesAnimated;
		uniform int _ColumnsAnimated;
		uniform int _FlipbookColorAnimated;
		uniform int _FlipbookTintAnimated;
		uniform int _OptimizerExcludeFlipbook;
		uniform int _RowsAnimated;
		uniform int _SpeedAnimated;
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
		uniform int _DitherAlphaToggleAnimated;
		uniform int _StartDitheringFadeAnimated;
		uniform int _EndDitheringFadeAnimated;
		uniform int _DitherMaskUVSwitchAnimated;
		uniform int _DitherTextureTilingAnimated;
		uniform int _OptimizerExcludeDither;
		uniform int _DitherTextureToggleAnimated;
		uniform float _ShaderOptimizerEnabled;
		uniform int _SSSToggleAnimated;
		uniform float _BlendOpRGB;
		uniform float _CullMode;
		uniform int _OptimizerExcludeEmission;
		uniform float _DepthOffsetUnits;
		uniform float _StencilBufferFailFront;
		uniform float _AlphatoCoverage;
		uniform int _OptimizerExcludeOutline;
		uniform float _AdvancedExperimentalToggle;
		uniform float _ZWriteMode;
		uniform int _OutlineWidthAnimated;
		uniform float _StencilBufferReadMask;
		uniform int _OutlineDistancethickeningAnimated;
		uniform int _IgnoreProjector;
		uniform float _ColorMask;
		uniform int _EmissionTintAnimated;
		uniform float _DestinationBlendAlpha;
		uniform int _OutlineMaskUVSwitchAnimated;
		uniform half _SpecularSetting;
		uniform int _OutlineColorAnimated;
		uniform float _SourceBlendRGB;
		uniform float _DepthOffsetFactor;
		uniform int _EmissionUVSwitchAnimated;
		uniform int _OutlineHueSpeedAnimated;
		uniform int _CutoutAnimated;
		uniform int _SaturationAnimated;
		uniform float _StencilBufferZFailFront;
		uniform int _OptimizerExcludeMainSettings;
		uniform float _DestinationBlendRGB;
		uniform int _OutlineTintAnimated;
		uniform int _EmissionscrollColorAnimated;
		uniform int _EmissionLightscaleAnimated;
		uniform float _SourceBlendAlpha;
		uniform int _MainColorAnimated;
		uniform int _EmissionColorAnimated;
		uniform int _SpecularToggleAnimated;
		uniform float _StencilBufferReference;
		uniform int _COLORADDSUBDIFFAnimated;
		uniform float _StencilBufferComparison;
		uniform float _StencilBufferWriteMask;
		uniform int _COLORCOLORAnimated;
		uniform int _RenderingModeAnimated;
		uniform float _BlendOpAlpha;
		uniform float _StencilBufferPassFront;
		uniform int _EmissionScrollToggleAnimated;
		uniform int _OutlineModeAnimated;
		uniform int _OutlineDepthFadeDistanceAnimated;
		uniform int _MainTexUVSwitchAnimated;
		uniform float _ZTestMode;
		uniform int _EmissionScrollMaskUVSwitchAnimated;
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
		uniform float _Cutout;
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
		uniform float _OutlineMode;
		uniform half4 _OutlineColor;
		uniform float _OutlineHueSpeed;
		uniform float _OutlineTint;
		uniform half _OutlineWidth;
		uniform float _OutlineDepthFadeDistance;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_OutlineMask);
		uniform float4 _OutlineMask_ST;
		uniform float _OutlineMaskUVSwitch;
		SamplerState sampler_OutlineMask;
		uniform float _OutlineDistancethickening;


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


		float2 voronoihash64_g20286( float2 p )
		{
			
			p = float2( dot( p, float2( 127.1, 311.7 ) ), dot( p, float2( 269.5, 183.3 ) ) );
			return frac( sin( p ) *43758.5453);
		}


		float voronoi64_g20286( float2 v, float time, inout float2 id, inout float2 mr, float smoothness, inout float2 smoothId )
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
			 		float2 o = voronoihash64_g20286( n + g );
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


		float3 getUnityObjectToWorldNormal2226_g20263( float3 In0 )
		{
			return UnityObjectToWorldNormal(In0);
		}


		float3 getUnityObjectToWorldDir2223_g20263( float3 In0 )
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
			float4 transform698_g20282 = mul(unity_ObjectToWorld,float4( ase_vertex3Pos , 0.0 ));
			float Space701_g20282 = transform698_g20282.y;
			float ifLocalVar717_g20282 = 0;
			if( _ToggleMaterializeDirInv > 0.0 )
				ifLocalVar717_g20282 = -Space701_g20282;
			else if( _ToggleMaterializeDirInv == 0.0 )
				ifLocalVar717_g20282 = Space701_g20282;
			float3 ase_parentObjectScale = (1.0/float3( length( unity_WorldToObject[ 0 ].xyz ), length( unity_WorldToObject[ 1 ].xyz ), length( unity_WorldToObject[ 2 ].xyz ) ));
			float ObjectScale711_g20282 = max( ase_parentObjectScale.y , 1.0 );
			float temp_output_739_0_g20282 = ( ifLocalVar717_g20282 / ObjectScale711_g20282 );
			float DissolveDensity732_g20282 = exp2( _DissolveDensity );
			float temp_output_753_0_g20282 = ( ( temp_output_739_0_g20282 + (-1.0 + (_MaterializeR - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g20282 );
			float4 ifLocalVar752_g20282 = 0;
			if( 1.0 > _MaterializeVertexColor )
				ifLocalVar752_g20282 = SAMPLE_TEXTURE2D_LOD( _MaterializeTex, sampler_point_clamp, v.texcoord.xyz.xy, 0.0 );
			else if( 1.0 == _MaterializeVertexColor )
				ifLocalVar752_g20282 = v.color;
			float temp_output_708_0_g20282 = ( _MaterializeColorLayerR / 100.0 );
			float temp_output_714_0_g20282 = ( temp_output_708_0_g20282 - 0.005 );
			float temp_output_716_0_g20282 = ( temp_output_708_0_g20282 + 0.005 );
			float2 appendResult727_g20282 = (float2(temp_output_714_0_g20282 , temp_output_716_0_g20282));
			float2 appendResult722_g20282 = (float2(-0.005 , temp_output_716_0_g20282));
			float2 appendResult720_g20282 = (float2(temp_output_714_0_g20282 , 1.005));
			float2 ifLocalVar734_g20282 = 0;
			if( 1.0 > _MaterializeLayerModeR )
				ifLocalVar734_g20282 = appendResult727_g20282;
			else if( 1.0 == _MaterializeLayerModeR )
				ifLocalVar734_g20282 = appendResult722_g20282;
			else if( 1.0 < _MaterializeLayerModeR )
				ifLocalVar734_g20282 = appendResult720_g20282;
			float2 break751_g20282 = ifLocalVar734_g20282;
			float temp_output_927_0_g20282 = ( _MaterializeColorLayerG / 100.0 );
			float temp_output_925_0_g20282 = ( temp_output_927_0_g20282 - 0.005 );
			float temp_output_922_0_g20282 = ( temp_output_927_0_g20282 + 0.005 );
			float2 appendResult919_g20282 = (float2(temp_output_925_0_g20282 , temp_output_922_0_g20282));
			float2 appendResult918_g20282 = (float2(-0.005 , temp_output_922_0_g20282));
			float2 appendResult916_g20282 = (float2(temp_output_925_0_g20282 , 1.005));
			float2 ifLocalVar921_g20282 = 0;
			if( 1.0 > _MaterializeLayerModeG )
				ifLocalVar921_g20282 = appendResult919_g20282;
			else if( 1.0 == _MaterializeLayerModeG )
				ifLocalVar921_g20282 = appendResult918_g20282;
			else if( 1.0 < _MaterializeLayerModeG )
				ifLocalVar921_g20282 = appendResult916_g20282;
			float2 break920_g20282 = ifLocalVar921_g20282;
			float temp_output_941_0_g20282 = ( _MaterializeColorLayerB / 100.0 );
			float temp_output_939_0_g20282 = ( temp_output_941_0_g20282 - 0.005 );
			float temp_output_936_0_g20282 = ( temp_output_941_0_g20282 + 0.005 );
			float2 appendResult933_g20282 = (float2(temp_output_939_0_g20282 , temp_output_936_0_g20282));
			float2 appendResult932_g20282 = (float2(-0.005 , temp_output_936_0_g20282));
			float2 appendResult930_g20282 = (float2(temp_output_939_0_g20282 , 1.005));
			float2 ifLocalVar935_g20282 = 0;
			if( 1.0 > _MaterializeLayerModeB )
				ifLocalVar935_g20282 = appendResult933_g20282;
			else if( 1.0 == _MaterializeLayerModeB )
				ifLocalVar935_g20282 = appendResult932_g20282;
			else if( 1.0 < _MaterializeLayerModeB )
				ifLocalVar935_g20282 = appendResult930_g20282;
			float2 break934_g20282 = ifLocalVar935_g20282;
			float temp_output_955_0_g20282 = ( _MaterializeColorLayerA / 100.0 );
			float temp_output_953_0_g20282 = ( temp_output_955_0_g20282 - 0.005 );
			float temp_output_950_0_g20282 = ( temp_output_955_0_g20282 + 0.005 );
			float2 appendResult947_g20282 = (float2(temp_output_953_0_g20282 , temp_output_950_0_g20282));
			float2 appendResult946_g20282 = (float2(-0.005 , temp_output_950_0_g20282));
			float2 appendResult944_g20282 = (float2(temp_output_953_0_g20282 , 1.005));
			float2 ifLocalVar949_g20282 = 0;
			if( 1.0 > _MaterializeLayerModeA )
				ifLocalVar949_g20282 = appendResult947_g20282;
			else if( 1.0 == _MaterializeLayerModeA )
				ifLocalVar949_g20282 = appendResult946_g20282;
			else if( 1.0 < _MaterializeLayerModeA )
				ifLocalVar949_g20282 = appendResult944_g20282;
			float2 break948_g20282 = ifLocalVar949_g20282;
			float4 appendResult956_g20282 = (float4(break751_g20282.x , break920_g20282.x , break934_g20282.x , break948_g20282.x));
			float4 appendResult957_g20282 = (float4(break751_g20282.y , break920_g20282.y , break934_g20282.y , break948_g20282.y));
			float4 MaterialzeLayers912_g20282 = (( ifLocalVar752_g20282 >= appendResult956_g20282 && ifLocalVar752_g20282 <= appendResult957_g20282 ) ? ifLocalVar752_g20282 :  float4( 0,0,0,0 ) );
			float4 break768_g20282 = ceil( MaterialzeLayers912_g20282 );
			float ifLocalVar817_g20282 = 0;
			if( 1.0 > saturate( _MaterializeR ) )
				ifLocalVar817_g20282 = ( ( temp_output_753_0_g20282 + 1.0 ) * break768_g20282.r );
			float temp_output_755_0_g20282 = ( ( temp_output_739_0_g20282 + (-1.0 + (_MaterializeG - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g20282 );
			float ifLocalVar812_g20282 = 0;
			if( 1.0 > saturate( _MaterializeG ) )
				ifLocalVar812_g20282 = ( ( temp_output_755_0_g20282 + 1.0 ) * break768_g20282.g );
			float temp_output_765_0_g20282 = ( ( temp_output_739_0_g20282 + (-1.0 + (_MaterializeB - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g20282 );
			float ifLocalVar823_g20282 = 0;
			if( 1.0 > saturate( _MaterializeB ) )
				ifLocalVar823_g20282 = ( ( temp_output_765_0_g20282 + 1.0 ) * break768_g20282.b );
			float temp_output_779_0_g20282 = ( ( temp_output_739_0_g20282 + (-1.0 + (_MaterializeA - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g20282 );
			float ifLocalVar820_g20282 = 0;
			if( 1.0 > saturate( _MaterializeA ) )
				ifLocalVar820_g20282 = ( ( temp_output_779_0_g20282 + 1.0 ) * break768_g20282.a );
			float ifLocalVar761_g20282 = 0;
			if( _ToggleDissolveDirInv > 0.0 )
				ifLocalVar761_g20282 = -Space701_g20282;
			else if( _ToggleDissolveDirInv == 0.0 )
				ifLocalVar761_g20282 = Space701_g20282;
			float temp_output_784_0_g20282 = ( ( ( ifLocalVar761_g20282 / ObjectScale711_g20282 ) + (-1.0 + (_DissolveModifier - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g20282 );
			float ifLocalVar818_g20282 = 0;
			if( 1.0 > _DissolveModifier )
				ifLocalVar818_g20282 = max( max( max( max( ifLocalVar817_g20282 , ifLocalVar812_g20282 ) , ifLocalVar823_g20282 ) , ifLocalVar820_g20282 ) , ( temp_output_784_0_g20282 + 1.0 ) );
			float lerpResult408_g20282 = lerp( 0.0 , saturate( ifLocalVar818_g20282 ) , saturate( ( 1.0 - ( ifLocalVar818_g20282 - 1.0 ) ) ));
			float3 ase_vertexNormal = v.normal.xyz;
			float3 ifLocalVar422_g20282 = 0;
			if( _ToggleDissolveVertexOffset == 1.0 )
				ifLocalVar422_g20282 = ( ( ( lerpResult408_g20282 * 4.0 ) * _DissolveVertexMultiplier ) * ase_vertexNormal );
			float3 VertexOffsetDissolve8351 = ifLocalVar422_g20282;
			float3 OutlineVar8041 = 0;
			v.vertex.xyz += ( VertexOffsetDissolve8351 + OutlineVar8041 );
			v.vertex.w = 1;
			float4 ase_screenPos = ComputeScreenPos( UnityObjectToClipPos( v.vertex ) );
			o.screenPosition = ase_screenPos;
			float3 In02226_g20263 = ase_vertexNormal;
			float3 localgetUnityObjectToWorldNormal2226_g20263 = getUnityObjectToWorldNormal2226_g20263( In02226_g20263 );
			float4 ase_vertexTangent = v.tangent;
			float3 In02223_g20263 = ase_vertexTangent.xyz;
			float3 localgetUnityObjectToWorldDir2223_g20263 = getUnityObjectToWorldDir2223_g20263( In02223_g20263 );
			float3 temp_output_2222_0_g20263 = (localgetUnityObjectToWorldDir2223_g20263).xyz;
			float ase_vertexTangentSign = v.tangent.w;
			float3 normalizeResult2248_g20263 = normalize( ( cross( localgetUnityObjectToWorldNormal2226_g20263 , temp_output_2222_0_g20263 ) * ase_vertexTangentSign ) );
			o.vertexToFrag2250_g20263 = normalizeResult2248_g20263;
			float3 normalizeResult2249_g20263 = normalize( temp_output_2222_0_g20263 );
			o.vertexToFrag2251_g20263 = normalizeResult2249_g20263;
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
			float UVSwitchProp8935 = _MainTexUVSwitch;
			float2 UV08935 = i.uv_texcoord.xy;
			float2 UV18935 = i.uv2_texcoord2;
			float2 UV28935 = i.uv3_texcoord3;
			float2 UV38935 = i.uv4_texcoord4;
			float2 localUVSwitch8935 = UVSwitch( UVSwitchProp8935 , UV08935 , UV18935 , UV28935 , UV38935 );
			float2 MainTexUVSwitch8950 = ( ( _MainTex_ST.xy * localUVSwitch8935 ) + _MainTex_ST.zw );
			float4 tex2DNode8061 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, MainTexUVSwitch8950 );
			float AlphaChannelMul8318 = ( tex2DNode8061.a * _MainColor.a );
			float3 worldSpaceViewDir7_g20293 = WorldSpaceViewDir( float4( 0,0,0,1 ) );
			float AlphaChannel8553 = tex2DNode8061.a;
			float temp_output_53_0_g20293 = AlphaChannel8553;
			float ifLocalVar18_g20293 = 0;
			if( 1.0 > _DitherAlphaToggle )
				ifLocalVar18_g20293 = distance( worldSpaceViewDir7_g20293 , float3( 0,0,0 ) );
			else if( 1.0 == _DitherAlphaToggle )
				ifLocalVar18_g20293 = temp_output_53_0_g20293;
			float temp_output_12_0_g20293 = ( _EndDitheringFade + _ProjectionParams.y );
			float4 ase_screenPos = i.screenPosition;
			float4 ase_screenPosNorm = ase_screenPos / ase_screenPos.w;
			ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
			float2 clipScreen23_g20293 = ase_screenPosNorm.xy * _ScreenParams.xy;
			float dither23_g20293 = Dither8x8Bayer( fmod(clipScreen23_g20293.x, 8), fmod(clipScreen23_g20293.y, 8) );
			float2 UV22_g20294 = ase_screenPosNorm.xy;
			float2 localUnStereo22_g20294 = UnStereo( UV22_g20294 );
			float4 ditherCustomScreenPos25_g20293 = float4( ( localUnStereo22_g20294 * _DitherTextureTiling ), 0.0 , 0.0 );
			float dither25_g20293 = DitherNoiseTex(ditherCustomScreenPos25_g20293, _DitherTexture, sampler_trilinear_repeat, _DitherTexture_TexelSize);
			float ifLocalVar26_g20293 = 0;
			if( 1.0 > _DitherTextureToggle )
				ifLocalVar26_g20293 = dither23_g20293;
			else if( 1.0 == _DitherTextureToggle )
				ifLocalVar26_g20293 = dither25_g20293;
			float UVSwitchProp61_g20293 = _DitherMaskUVSwitch;
			float2 UV061_g20293 = i.uv_texcoord.xy;
			float2 UV161_g20293 = i.uv2_texcoord2;
			float2 UV261_g20293 = i.uv3_texcoord3;
			float2 UV361_g20293 = i.uv4_texcoord4;
			float2 localUVSwitch61_g20293 = UVSwitch( UVSwitchProp61_g20293 , UV061_g20293 , UV161_g20293 , UV261_g20293 , UV361_g20293 );
			float ifLocalVar37_g20293 = 0;
			if( 1.0 > _DitherAlphaToggle )
				ifLocalVar37_g20293 = SAMPLE_TEXTURE2D( _DitherMask, sampler_trilinear_repeat, ( ( _DitherMask_ST.xy * localUVSwitch61_g20293 ) + _DitherMask_ST.zw ) ).g;
			else if( 1.0 == _DitherAlphaToggle )
				ifLocalVar37_g20293 = ( 1.0 - temp_output_53_0_g20293 );
			float lerpResult42_g20293 = lerp( 1.0 , ( 1.0 - ( ( ( ifLocalVar18_g20293 + -temp_output_12_0_g20293 ) / ( _StartDitheringFade - temp_output_12_0_g20293 ) ) - ifLocalVar26_g20293 ) ) , ifLocalVar37_g20293);
			float ifLocalVar44_g20293 = 0;
			if( 0.0 == ( _StartDitheringFade + _EndDitheringFade ) )
				ifLocalVar44_g20293 = 1.0;
			else if( 0.0 < ( _StartDitheringFade + _EndDitheringFade ) )
				ifLocalVar44_g20293 = lerpResult42_g20293;
			float temp_output_8975_0 = ifLocalVar44_g20293;
			float3 Texture18_g20256 = tex2DNode8061.rgb;
			float grayscale5_g20256 = (Texture18_g20256.r + Texture18_g20256.g + Texture18_g20256.b) / 3;
			float UVSwitchProp257_g20256 = _HueMaskUVSwitch;
			float2 UV0257_g20256 = i.uv_texcoord.xy;
			float2 UV1257_g20256 = i.uv2_texcoord2;
			float2 UV2257_g20256 = i.uv3_texcoord3;
			float2 UV3257_g20256 = i.uv4_texcoord4;
			float2 localUVSwitch257_g20256 = UVSwitch( UVSwitchProp257_g20256 , UV0257_g20256 , UV1257_g20256 , UV2257_g20256 , UV3257_g20256 );
			float2 temp_output_252_0_g20256 = ( ( _HueMask_ST.xy * localUVSwitch257_g20256 ) + _HueMask_ST.zw );
			float HueMaskG53_g20256 = SAMPLE_TEXTURE2D( _HueMask, sampler_point_clamp, temp_output_252_0_g20256 ).g;
			float ifLocalVar218_g20256 = 0;
			if( 1.0 > _ToggleHueTexforSpeed )
				ifLocalVar218_g20256 = 1.0;
			else if( 1.0 == _ToggleHueTexforSpeed )
				ifLocalVar218_g20256 = HueMaskG53_g20256;
			float mulTime2_g20256 = _Time.y * ( _HueShiftSpeed * ifLocalVar218_g20256 );
			float3 hsvTorgb3_g20257 = HSVToRGB( float3(( mulTime2_g20256 + _HueShiftRandomizer ),1.0,1.0) );
			float3 ifLocalVar13_g20256 = 0;
			if( ( _HueShiftSpeed + _HueShiftRandomizer ) > 0.0 )
				ifLocalVar13_g20256 = ( grayscale5_g20256 * hsvTorgb3_g20257 );
			else if( ( _HueShiftSpeed + _HueShiftRandomizer ) == 0.0 )
				ifLocalVar13_g20256 = Texture18_g20256;
			float HueMaskR52_g20256 = SAMPLE_TEXTURE2D( _HueMask, sampler_trilinear_repeat, temp_output_252_0_g20256 ).r;
			float ifLocalVar9_g20256 = 0;
			if( 1.0 > _HueMaskinverter )
				ifLocalVar9_g20256 = HueMaskR52_g20256;
			else if( 1.0 == _HueMaskinverter )
				ifLocalVar9_g20256 = ( 1.0 - HueMaskR52_g20256 );
			float lerpResult15_g20256 = lerp( 0.0 , ifLocalVar9_g20256 , _HueShiftblend);
			float3 lerpResult16_g20256 = lerp( Texture18_g20256 , ifLocalVar13_g20256 , lerpResult15_g20256);
			clip( tex2DNode8061.a - _Cutout);
			float3 desaturateInitialColor8084 = ( lerpResult16_g20256 * (_MainColor).rgb );
			float desaturateDot8084 = dot( desaturateInitialColor8084, float3( 0.299, 0.587, 0.114 ));
			float3 desaturateVar8084 = lerp( desaturateInitialColor8084, desaturateDot8084.xxx, ( 1.0 - _Saturation ) );
			float3 MainTexSaturate8087 = desaturateVar8084;
			float3 temp_output_150_0_g20262 = MainTexSaturate8087;
			float MonochromeTogglePixelLight1337_g20262 = _ToggleMonochromePixelLight;
			float ToggleSteps66_g20262 = _ToggleSteps;
			float4 localFourLightPosX340_g20258 = FourLightPosX();
			float3 ase_worldPos = i.worldPos;
			float4 temp_cast_15 = (ase_worldPos.x).xxxx;
			float4 FourLightPosX0WorldPos286_g20258 = ( localFourLightPosX340_g20258 - temp_cast_15 );
			float4 localFourLightPosY342_g20258 = FourLightPosY();
			float4 temp_cast_16 = (ase_worldPos.y).xxxx;
			float4 FourLightPosY0WorldPos291_g20258 = ( localFourLightPosY342_g20258 - temp_cast_16 );
			float4 localFourLightPosZ296_g20258 = FourLightPosZ();
			float4 temp_cast_17 = (ase_worldPos.z).xxxx;
			float4 FourLightPosZ0WorldPos325_g20258 = ( localFourLightPosZ296_g20258 - temp_cast_17 );
			float4 temp_cast_18 = (1E-06).xxxx;
			float4 temp_output_328_0_g20258 = max( ( ( FourLightPosX0WorldPos286_g20258 * FourLightPosX0WorldPos286_g20258 ) + ( FourLightPosY0WorldPos291_g20258 * FourLightPosY0WorldPos291_g20258 ) + ( FourLightPosZ0WorldPos325_g20258 * FourLightPosZ0WorldPos325_g20258 ) ) , temp_cast_18 );
			float3 _DefaultTangentVector = float3(0,0,1);
			float UVSwitchProp88_g20255 = _NormalMapUVSwitch;
			float2 UV088_g20255 = i.uv_texcoord.xy;
			float2 UV188_g20255 = i.uv2_texcoord2;
			float2 UV288_g20255 = i.uv3_texcoord3;
			float2 UV388_g20255 = i.uv4_texcoord4;
			float2 localUVSwitch88_g20255 = UVSwitch( UVSwitchProp88_g20255 , UV088_g20255 , UV188_g20255 , UV288_g20255 , UV388_g20255 );
			float UVSwitchProp107_g20255 = _SecondaryNormalMaskUVSwitch;
			float2 UV0107_g20255 = i.uv_texcoord.xy;
			float2 UV1107_g20255 = i.uv2_texcoord2;
			float2 UV2107_g20255 = i.uv3_texcoord3;
			float2 UV3107_g20255 = i.uv4_texcoord4;
			float2 localUVSwitch107_g20255 = UVSwitch( UVSwitchProp107_g20255 , UV0107_g20255 , UV1107_g20255 , UV2107_g20255 , UV3107_g20255 );
			float4 tex2DNode65_g20255 = SAMPLE_TEXTURE2D( _SecondaryNormalMask, sampler_trilinear_repeat, ( ( _SecondaryNormalMask_ST.xy * localUVSwitch107_g20255 ) + _SecondaryNormalMask_ST.zw ) );
			float3 lerpResult63_g20255 = lerp( _DefaultTangentVector , UnpackScaleNormal( SAMPLE_TEXTURE2D( _NormalMap, sampler_trilinear_repeat, ( ( _NormalMap_ST.xy * localUVSwitch88_g20255 ) + _NormalMap_ST.zw ) ), _NormalScale ) , tex2DNode65_g20255.a);
			float UVSwitchProp98_g20255 = _SecondaryNormalUVSwitch;
			float2 UV098_g20255 = i.uv_texcoord.xy;
			float2 UV198_g20255 = i.uv2_texcoord2;
			float2 UV298_g20255 = i.uv3_texcoord3;
			float2 UV398_g20255 = i.uv4_texcoord4;
			float2 localUVSwitch98_g20255 = UVSwitch( UVSwitchProp98_g20255 , UV098_g20255 , UV198_g20255 , UV298_g20255 , UV398_g20255 );
			float3 lerpResult58_g20255 = lerp( _DefaultTangentVector , UnpackScaleNormal( SAMPLE_TEXTURE2D( _SecondaryNormal, sampler_trilinear_repeat, ( ( _SecondaryNormal_ST.xy * localUVSwitch98_g20255 ) + _SecondaryNormal_ST.zw ) ), _SecondaryNormalScale ) , tex2DNode65_g20255.g);
			float3 temp_output_54_0_g20255 = BlendNormals( lerpResult63_g20255 , lerpResult58_g20255 );
			float3 newWorldNormal50_g20255 = (WorldNormalVector( i , temp_output_54_0_g20255 ));
			float localOutlineSwitch128_g20255 = ( 0.0 );
			float3 true128_g20255 = newWorldNormal50_g20255;
			float3 false128_g20255 = -newWorldNormal50_g20255;
			float3 Out0128_g20255 = float3( 0,0,0 );
			{
			#ifdef FOROUTLINE
			Out0128_g20255 = true128_g20255; //Outline
			#else
			Out0128_g20255 = false128_g20255; //Not Outline
			#endif
			#define FOROUTLINE
			}
			float3 switchResult119_g20255 = (((i.ASEVFace>0)?(newWorldNormal50_g20255):(Out0128_g20255)));
			float3 normalizeResult53_g20255 = normalize( switchResult119_g20255 );
			float3 worldnormals8049 = normalizeResult53_g20255;
			float3 WorldNormals20_g20258 = worldnormals8049;
			float3 break295_g20258 = WorldNormals20_g20258;
			float4 temp_output_366_0_g20258 = ( rsqrt( temp_output_328_0_g20258 ) * ( ( FourLightPosX0WorldPos286_g20258 * break295_g20258.x ) + ( FourLightPosY0WorldPos291_g20258 * break295_g20258.y ) + ( FourLightPosZ0WorldPos325_g20258 * break295_g20258.z ) ) );
			float4 VertexLightNdLNONMAX8088 = temp_output_366_0_g20258;
			float NdLHalfingControl704_g20262 = _NdLHalfingControl;
			float RampOffset167_g20262 = _RampOffset;
			float4 temp_output_1224_0_g20262 = saturate( ( ( VertexLightNdLNONMAX8088 * NdLHalfingControl704_g20262 ) + RampOffset167_g20262 ) );
			float4 VertexLightUV349_g20262 = temp_output_1224_0_g20262;
			float4 break548_g20262 = VertexLightUV349_g20262;
			float2 temp_cast_19 = (break548_g20262.x).xx;
			float4 tex2DNode647_g20262 = SAMPLE_TEXTURE2D( _ToonRamp, sampler_linear_clamp, temp_cast_19 );
			float3 ToonRampTexVLOne2100_g20262 = (tex2DNode647_g20262).rgb;
			float2 uv_ShadowColorMap = i.uv_texcoord * _ShadowColorMap_ST.xy + _ShadowColorMap_ST.zw;
			float4 tex2DNode1489_g20262 = SAMPLE_TEXTURE2D( _ShadowColorMap, sampler_trilinear_clamp, uv_ShadowColorMap );
			float3 lerpResult1511_g20262 = lerp( (_RampColor).rgb , (tex2DNode1489_g20262).rgb , ( max( max( tex2DNode1489_g20262.r , tex2DNode1489_g20262.g ) , tex2DNode1489_g20262.b ) * _ShadowColorMapStrength ));
			float3 RampColorRGB42_g20262 = lerpResult1511_g20262;
			float ColoringPointLights1080_g20262 = _ColoringPointLights;
			float3 lerpResult2003_g20262 = lerp( ToonRampTexVLOne2100_g20262 , RampColorRGB42_g20262 , ColoringPointLights1080_g20262);
			half3 linearRgb1700_g20262 = tex2DNode647_g20262.rgb;
			half localgetLinearRgbToLuminance1700_g20262 = getLinearRgbToLuminance( linearRgb1700_g20262 );
			float2 temp_cast_21 = (break548_g20262.y).xx;
			float4 tex2DNode648_g20262 = SAMPLE_TEXTURE2D( _ToonRamp, sampler_linear_clamp, temp_cast_21 );
			half3 linearRgb1701_g20262 = tex2DNode648_g20262.rgb;
			half localgetLinearRgbToLuminance1701_g20262 = getLinearRgbToLuminance( linearRgb1701_g20262 );
			float2 temp_cast_23 = (break548_g20262.z).xx;
			float4 tex2DNode649_g20262 = SAMPLE_TEXTURE2D( _ToonRamp, sampler_linear_clamp, temp_cast_23 );
			half3 linearRgb1702_g20262 = tex2DNode649_g20262.rgb;
			half localgetLinearRgbToLuminance1702_g20262 = getLinearRgbToLuminance( linearRgb1702_g20262 );
			float2 temp_cast_25 = (break548_g20262.w).xx;
			float4 tex2DNode650_g20262 = SAMPLE_TEXTURE2D( _ToonRamp, sampler_linear_clamp, temp_cast_25 );
			half3 linearRgb1703_g20262 = tex2DNode650_g20262.rgb;
			half localgetLinearRgbToLuminance1703_g20262 = getLinearRgbToLuminance( linearRgb1703_g20262 );
			float4 appendResult538_g20262 = (float4(localgetLinearRgbToLuminance1700_g20262 , localgetLinearRgbToLuminance1701_g20262 , localgetLinearRgbToLuminance1702_g20262 , localgetLinearRgbToLuminance1703_g20262));
			float4 ToonRampTexVertexLightLuminanced352_g20262 = appendResult538_g20262;
			float PointSpotShadows2112_g20262 = _PointSpotShadowIntensity;
			float4 break390_g20262 = saturate( ( ToonRampTexVertexLightLuminanced352_g20262 + ( 1.0 - PointSpotShadows2112_g20262 ) ) );
			float3 lerpResult2004_g20262 = lerp( lerpResult2003_g20262 , float3( 1,1,1 ) , break390_g20262.x);
			float3 localLightColorZero385_g20262 = LightColorZero();
			float4 localFourLightAtten305_g20258 = FourLightAtten();
			float4 temp_cast_27 = (1E-06).xxxx;
			float4 temp_output_272_0_g20258 = ( localFourLightAtten305_g20258 * temp_output_328_0_g20258 );
			float4 temp_cast_28 = (1E-06).xxxx;
			float4 temp_output_343_0_g20258 = saturate( ( 1.0 - ( temp_output_272_0_g20258 / 25.0 ) ) );
			float4 temp_output_320_0_g20258 = min( ( 1.0 / ( 1.0 + temp_output_272_0_g20258 ) ) , ( temp_output_343_0_g20258 * temp_output_343_0_g20258 ) );
			float4 VertexLightAtten8093 = temp_output_320_0_g20258;
			float4 temp_output_1306_0_g20262 = VertexLightAtten8093;
			float4 break2039_g20262 = temp_output_1306_0_g20262;
			float3 ToonRampTexVLTwo2103_g20262 = (tex2DNode648_g20262).rgb;
			float3 lerpResult2029_g20262 = lerp( ToonRampTexVLTwo2103_g20262 , RampColorRGB42_g20262 , ColoringPointLights1080_g20262);
			float3 lerpResult2028_g20262 = lerp( lerpResult2029_g20262 , float3( 1,1,1 ) , break390_g20262.y);
			float3 localLightColorZOne1302_g20262 = LightColorZOne();
			float3 ToonRampTexVLThree2105_g20262 = (tex2DNode649_g20262).rgb;
			float3 lerpResult2033_g20262 = lerp( ToonRampTexVLThree2105_g20262 , RampColorRGB42_g20262 , ColoringPointLights1080_g20262);
			float3 lerpResult2032_g20262 = lerp( lerpResult2033_g20262 , float3( 1,1,1 ) , break390_g20262.z);
			float3 localLightColorZTwo1303_g20262 = LightColorZTwo();
			float3 ToonRampTexVLFour2107_g20262 = (tex2DNode650_g20262).rgb;
			float3 lerpResult2037_g20262 = lerp( ToonRampTexVLFour2107_g20262 , RampColorRGB42_g20262 , ColoringPointLights1080_g20262);
			float3 lerpResult2036_g20262 = lerp( lerpResult2037_g20262 , float3( 1,1,1 ) , break390_g20262.w);
			float3 localLightColorZThree1304_g20262 = LightColorZThree();
			int Steps30_g20262 = _Steps;
			float4 VertexLightNdLStepped2141_g20262 = saturate( ( floor( ( temp_output_1224_0_g20262 * Steps30_g20262 ) ) / ( Steps30_g20262 - 1 ) ) );
			float4 break2090_g20262 = saturate( ( VertexLightNdLStepped2141_g20262 + ( 1.0 - PointSpotShadows2112_g20262 ) ) );
			float3 temp_cast_29 = (break2090_g20262.x).xxx;
			float3 lerpResult2097_g20262 = lerp( temp_cast_29 , RampColorRGB42_g20262 , ColoringPointLights1080_g20262);
			float3 lerpResult2089_g20262 = lerp( lerpResult2097_g20262 , float3( 1,1,1 ) , break2090_g20262.x);
			float3 localLightColorZero2091_g20262 = LightColorZero();
			float4 break2074_g20262 = temp_output_1306_0_g20262;
			float3 temp_cast_30 = (break2090_g20262.y).xxx;
			float3 lerpResult2084_g20262 = lerp( temp_cast_30 , RampColorRGB42_g20262 , ColoringPointLights1080_g20262);
			float3 lerpResult2087_g20262 = lerp( lerpResult2084_g20262 , float3( 1,1,1 ) , break2090_g20262.y);
			float3 localLightColorZOne2083_g20262 = LightColorZOne();
			float3 temp_cast_31 = (break2090_g20262.z).xxx;
			float3 lerpResult2081_g20262 = lerp( temp_cast_31 , RampColorRGB42_g20262 , ColoringPointLights1080_g20262);
			float3 lerpResult2073_g20262 = lerp( lerpResult2081_g20262 , float3( 1,1,1 ) , break2090_g20262.z);
			float3 localLightColorZTwo2077_g20262 = LightColorZTwo();
			float3 temp_cast_32 = (break2090_g20262.w).xxx;
			float3 lerpResult2093_g20262 = lerp( temp_cast_32 , RampColorRGB42_g20262 , ColoringPointLights1080_g20262);
			float3 lerpResult2095_g20262 = lerp( lerpResult2093_g20262 , float3( 1,1,1 ) , break2090_g20262.w);
			float3 localLightColorZThree2080_g20262 = LightColorZThree();
			float3 ifLocalVar553_g20262 = 0;
			if( 1.0 > ToggleSteps66_g20262 )
				ifLocalVar553_g20262 = ( ( lerpResult2004_g20262 * localLightColorZero385_g20262 * break2039_g20262.x ) + ( lerpResult2028_g20262 * localLightColorZOne1302_g20262 * break2039_g20262.y ) + ( lerpResult2032_g20262 * localLightColorZTwo1303_g20262 * break2039_g20262.z ) + ( lerpResult2036_g20262 * localLightColorZThree1304_g20262 * break2039_g20262.w ) );
			else if( 1.0 == ToggleSteps66_g20262 )
				ifLocalVar553_g20262 = ( ( lerpResult2089_g20262 * localLightColorZero2091_g20262 * break2074_g20262.x ) + ( lerpResult2087_g20262 * localLightColorZOne2083_g20262 * break2074_g20262.y ) + ( lerpResult2073_g20262 * localLightColorZTwo2077_g20262 * break2074_g20262.z ) + ( lerpResult2095_g20262 * localLightColorZThree2080_g20262 * break2074_g20262.w ) );
			half3 linearRgb1433_g20262 = ifLocalVar553_g20262;
			half localgetLinearRgbToLuminance1433_g20262 = getLinearRgbToLuminance( linearRgb1433_g20262 );
			float3 temp_cast_33 = (localgetLinearRgbToLuminance1433_g20262).xxx;
			float3 ifLocalVar1341_g20262 = 0;
			if( 1.0 > MonochromeTogglePixelLight1337_g20262 )
				ifLocalVar1341_g20262 = ifLocalVar553_g20262;
			else if( 1.0 == MonochromeTogglePixelLight1337_g20262 )
				ifLocalVar1341_g20262 = temp_cast_33;
			#ifdef UNITY_PASS_FORWARDBASE
				float3 staticSwitch1927_g20262 = ifLocalVar1341_g20262;
			#else
				float3 staticSwitch1927_g20262 = float3( 0,0,0 );
			#endif
			#ifdef VERTEXLIGHT_ON
				float3 staticSwitch1928_g20262 = staticSwitch1927_g20262;
			#else
				float3 staticSwitch1928_g20262 = float3( 0,0,0 );
			#endif
			float3 DiffuseVertexLighting354_g20262 = staticSwitch1928_g20262;
			float3 temp_output_1997_0_g20262 = ( DiffuseVertexLighting354_g20262 * _MaxLightDirect );
			#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
			float4 ase_lightColor = 0;
			#else //aselc
			float4 ase_lightColor = _LightColor0;
			#endif //aselc
			#ifdef DIRECTIONAL
				float3 staticSwitch952_g20262 = ase_lightColor.rgb;
			#else
				float3 staticSwitch952_g20262 = float3( 0,0,0 );
			#endif
			half3 localAmbient1767_g20262 = Ambient();
			half3 localAmbient1820_g20262 = Ambient();
			float3 break1831_g20262 = localAmbient1820_g20262;
			float3 lerpResult1766_g20262 = lerp( ( localAmbient1767_g20262 * _AmbientBoost ) , localAmbient1767_g20262 , saturate( max( max( break1831_g20262.x , break1831_g20262.y ) , break1831_g20262.z ) ));
			float3 AmbientLightBoosted1782_g20262 = lerpResult1766_g20262;
			half3 linearRgb1430_g20262 = ( staticSwitch952_g20262 + AmbientLightBoosted1782_g20262 );
			half localgetLinearRgbToLuminance1430_g20262 = getLinearRgbToLuminance( linearRgb1430_g20262 );
			half3 linearRgb1431_g20262 = ase_lightColor.rgb;
			half localgetLinearRgbToLuminance1431_g20262 = getLinearRgbToLuminance( linearRgb1431_g20262 );
			float3 temp_cast_34 = (localgetLinearRgbToLuminance1431_g20262).xxx;
			float3 ifLocalVar1331_g20262 = 0;
			if( 1.0 > MonochromeTogglePixelLight1337_g20262 )
				ifLocalVar1331_g20262 = ase_lightColor.rgb;
			else if( 1.0 == MonochromeTogglePixelLight1337_g20262 )
				ifLocalVar1331_g20262 = temp_cast_34;
			#if defined(LIGHTMAP_ON) && UNITY_VERSION < 560 //aseld
			float3 ase_worldlightDir = 0;
			#else //aseld
			float3 ase_worldlightDir = normalize( UnityWorldSpaceLightDir( ase_worldPos ) );
			#endif //aseld
			float dotResult3_g20258 = dot( WorldNormals20_g20258 , ase_worldlightDir );
			float NdotL8095 = dotResult3_g20258;
			float NdotLHalfed204_g20262 = saturate( ( ( NdotL8095 * NdLHalfingControl704_g20262 ) + RampOffset167_g20262 ) );
			float2 temp_cast_35 = (NdotLHalfed204_g20262).xx;
			float3 ToonRampTexNDL207_g20262 = (SAMPLE_TEXTURE2D( _ToonRamp, sampler_linear_clamp, temp_cast_35 )).rgb;
			float DirectShadowIntensity163_g20262 = _DirectShadowIntensity;
			float3 lerpResult1929_g20262 = lerp( float3( 1,1,1 ) , ToonRampTexNDL207_g20262 , DirectShadowIntensity163_g20262);
			float3 lerpResult2115_g20262 = lerp( float3( 1,1,1 ) , ToonRampTexNDL207_g20262 , PointSpotShadows2112_g20262);
			#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch2068_g20262 = lerpResult2115_g20262;
			#else
				float3 staticSwitch2068_g20262 = lerpResult1929_g20262;
			#endif
			float3 _egg = float3(1,1,1);
			float TangentNormalAtten1259_g20262 = ase_lightAtten;
			float2 temp_cast_36 = (TangentNormalAtten1259_g20262).xx;
			float3 ToonRampTexATTEN216_g20262 = (SAMPLE_TEXTURE2D( _ToonRamp, sampler_linear_clamp, temp_cast_36 )).rgb;
			#ifdef DIRECTIONAL
				float3 staticSwitch1968_g20262 = ToonRampTexATTEN216_g20262;
			#else
				float3 staticSwitch1968_g20262 = _egg;
			#endif
			float3 DirectionalAttenuationRamp24_g20262 = staticSwitch1968_g20262;
			float SelfCastShadows1958_g20262 = _SelfCastShadows;
			float3 lerpResult1941_g20262 = lerp( float3( 1,1,1 ) , DirectionalAttenuationRamp24_g20262 , SelfCastShadows1958_g20262);
			float temp_output_708_0_g20262 = saturate( ( floor( ( NdotLHalfed204_g20262 * Steps30_g20262 ) ) / ( Steps30_g20262 - 1 ) ) );
			float lerpResult1945_g20262 = lerp( 1.0 , temp_output_708_0_g20262 , DirectShadowIntensity163_g20262);
			float lerpResult2131_g20262 = lerp( 1.0 , temp_output_708_0_g20262 , PointSpotShadows2112_g20262);
			#ifdef UNITY_PASS_FORWARDADD
				float staticSwitch2129_g20262 = lerpResult2131_g20262;
			#else
				float staticSwitch2129_g20262 = lerpResult1945_g20262;
			#endif
			#ifdef DIRECTIONAL
				float staticSwitch1967_g20262 = TangentNormalAtten1259_g20262;
			#else
				float staticSwitch1967_g20262 = 1.0;
			#endif
			float DirectionalAttenuationSteps1969_g20262 = staticSwitch1967_g20262;
			float temp_output_1936_0_g20262 = saturate( ( floor( ( DirectionalAttenuationSteps1969_g20262 * Steps30_g20262 ) ) / ( Steps30_g20262 - 1 ) ) );
			float lerpResult1942_g20262 = lerp( 1.0 , temp_output_1936_0_g20262 , SelfCastShadows1958_g20262);
			float3 temp_cast_37 = (min( staticSwitch2129_g20262 , lerpResult1942_g20262 )).xxx;
			float3 ifLocalVar71_g20262 = 0;
			UNITY_BRANCH 
			if( 1.0 > ToggleSteps66_g20262 )
				ifLocalVar71_g20262 = min( staticSwitch2068_g20262 , lerpResult1941_g20262 );
			else if( 1.0 == ToggleSteps66_g20262 )
				ifLocalVar71_g20262 = temp_cast_37;
			float2 uv_ShadowMask = i.uv_texcoord * _ShadowMask_ST.xy + _ShadowMask_ST.zw;
			float2 temp_output_698_0_g20262 = (SAMPLE_TEXTURE2D( _ShadowMask, sampler_trilinear_clamp, uv_ShadowMask )).rg;
			float2 ifLocalVar597_g20262 = 0;
			if( 1.0 > _ShadowMaskinvert )
				ifLocalVar597_g20262 = temp_output_698_0_g20262;
			else if( 1.0 == _ShadowMaskinvert )
				ifLocalVar597_g20262 = ( 1.0 - temp_output_698_0_g20262 );
			float2 break699_g20262 = ( ifLocalVar597_g20262 * _ShadowMaskStrength );
			float PixelShadowMask279_g20262 = break699_g20262.x;
			float3 lerpResult290_g20262 = lerp( float3( 1,1,1 ) , ifLocalVar71_g20262 , PixelShadowMask279_g20262);
			float3 LightRamp85_g20262 = lerpResult290_g20262;
			float3 lerpResult1624_g20262 = lerp( LightRamp85_g20262 , RampColorRGB42_g20262 , ColoringPointLights1080_g20262);
			half3 linearRgb2055_g20262 = LightRamp85_g20262;
			half localgetLinearRgbToLuminance2055_g20262 = getLinearRgbToLuminance( linearRgb2055_g20262 );
			float3 lerpResult1623_g20262 = lerp( lerpResult1624_g20262 , float3( 1,1,1 ) , localgetLinearRgbToLuminance2055_g20262);
			#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch1036_g20262 = ( lerpResult1623_g20262 * ase_lightAtten );
			#else
				float3 staticSwitch1036_g20262 = float3( 0,0,0 );
			#endif
			float ColoringDirectEnvLights1082_g20262 = _ColoringDirectEnvLights;
			float3 lerpResult1544_g20262 = lerp( LightRamp85_g20262 , RampColorRGB42_g20262 , ColoringDirectEnvLights1082_g20262);
			float3 lerpResult1538_g20262 = lerp( lerpResult1544_g20262 , float3( 1,1,1 ) , localgetLinearRgbToLuminance2055_g20262);
			#ifdef DIRECTIONAL
				float3 staticSwitch1035_g20262 = lerpResult1538_g20262;
			#else
				float3 staticSwitch1035_g20262 = staticSwitch1036_g20262;
			#endif
			float MonochromeToggleEnv1327_g20262 = _ToggleMonochromeEnv;
			half3 linearRgb1432_g20262 = AmbientLightBoosted1782_g20262;
			half localgetLinearRgbToLuminance1432_g20262 = getLinearRgbToLuminance( linearRgb1432_g20262 );
			float3 temp_cast_38 = (localgetLinearRgbToLuminance1432_g20262).xxx;
			float3 ifLocalVar1325_g20262 = 0;
			if( 1.0 > MonochromeToggleEnv1327_g20262 )
				ifLocalVar1325_g20262 = AmbientLightBoosted1782_g20262;
			else if( 1.0 == MonochromeToggleEnv1327_g20262 )
				ifLocalVar1325_g20262 = temp_cast_38;
			float3 localambientDir475_g20258 = ambientDir();
			float dotResult67_g20258 = dot( localambientDir475_g20258 , WorldNormals20_g20258 );
			float NdotAmbientL8094 = dotResult67_g20258;
			float AmbientUV224_g20262 = saturate( ( ( NdotAmbientL8094 * NdLHalfingControl704_g20262 ) + RampOffset167_g20262 ) );
			float2 temp_cast_39 = (AmbientUV224_g20262).xx;
			float3 ToonRampTexAmbient220_g20262 = (SAMPLE_TEXTURE2D( _ToonRamp, sampler_linear_clamp, temp_cast_39 )).rgb;
			float temp_output_709_0_g20262 = saturate( ( floor( ( AmbientUV224_g20262 * Steps30_g20262 ) ) / ( Steps30_g20262 - 1 ) ) );
			float3 temp_cast_40 = (temp_output_709_0_g20262).xxx;
			float3 ifLocalVar92_g20262 = 0;
			UNITY_BRANCH 
			if( 1.0 > ToggleSteps66_g20262 )
				ifLocalVar92_g20262 = ToonRampTexAmbient220_g20262;
			else if( 1.0 == ToggleSteps66_g20262 )
				ifLocalVar92_g20262 = temp_cast_40;
			float IndirectShadowMask688_g20262 = break699_g20262.y;
			float3 lerpResult1684_g20262 = lerp( float3( 1,1,1 ) , ifLocalVar92_g20262 , IndirectShadowMask688_g20262);
			float3 lerpResult1626_g20262 = lerp( lerpResult1684_g20262 , RampColorRGB42_g20262 , ColoringDirectEnvLights1082_g20262);
			half3 linearRgb2058_g20262 = lerpResult1684_g20262;
			half localgetLinearRgbToLuminance2058_g20262 = getLinearRgbToLuminance( linearRgb2058_g20262 );
			float3 lerpResult1627_g20262 = lerp( lerpResult1626_g20262 , float3( 1,1,1 ) , localgetLinearRgbToLuminance2058_g20262);
			float3 lerpResult284_g20262 = lerp( float3( 1,1,1 ) , lerpResult1627_g20262 , max( _IndirectShadowIntensity , 1E-06 ));
			half3 linearRgb1953_g20262 = ( ase_lightColor.rgb * staticSwitch1035_g20262 );
			half localgetLinearRgbToLuminance1953_g20262 = getLinearRgbToLuminance( linearRgb1953_g20262 );
			float3 lerpResult1661_g20262 = lerp( lerpResult284_g20262 , float3( 1,1,1 ) , saturate( localgetLinearRgbToLuminance1953_g20262 ));
			float2 uv_OcclusionMap = i.uv_texcoord * _OcclusionMap_ST.xy + _OcclusionMap_ST.zw;
			float lerpResult54_g20262 = lerp( 1.0 , SAMPLE_TEXTURE2D( _OcclusionMap, sampler_trilinear_repeat, uv_OcclusionMap ).g , _Occlusion);
			float3 FinalAmbientBakedLight132_g20262 = ( ifLocalVar1325_g20262 * lerpResult1661_g20262 * lerpResult54_g20262 );
			float3 ForFinalLightCalculation993_g20262 = ( ( ifLocalVar1331_g20262 * staticSwitch1035_g20262 ) + FinalAmbientBakedLight132_g20262 );
			float3 ifLocalVar944_g20262 = 0;
			if( ( localgetLinearRgbToLuminance1430_g20262 * _ExperimentalToggle ) <= 1.0 )
				ifLocalVar944_g20262 = ForFinalLightCalculation993_g20262;
			else
				ifLocalVar944_g20262 = ( max( float3( 0,0,0 ) , ForFinalLightCalculation993_g20262 ) / localgetLinearRgbToLuminance1430_g20262 );
			float3 temp_output_782_0_g20262 = ( ifLocalVar944_g20262 * _MaxLightDirect );
			float3 ase_worldViewDir = Unity_SafeNormalize( UnityWorldSpaceViewDir( ase_worldPos ) );
			float dotResult442_g20258 = dot( WorldNormals20_g20258 , ase_worldViewDir );
			float NdotV8069 = dotResult442_g20258;
			float smoothstepResult10_g20260 = smoothstep( min( _ShadowRimSharpness , ( 1.0 - 1E-06 ) ) , 1.0 , ( NdotV8069 + _ShadowRimRange ));
			float lerpResult11_g20260 = lerp( 1.0 , smoothstepResult10_g20260 , _ShadowRimOpacity);
			float ifLocalVar8089 = 0;
			if( 1.0 > _RimSwitch )
				ifLocalVar8089 = lerpResult11_g20260;
			else if( 1.0 == _RimSwitch )
				ifLocalVar8089 = 1.0;
			float ShadowRim8103 = ifLocalVar8089;
			float3 FinalLight8139 = ( ( ( temp_output_150_0_g20262 * temp_output_1997_0_g20262 ) + ( temp_output_782_0_g20262 * temp_output_150_0_g20262 ) ) * ShadowRim8103 );
			float3 temp_output_8349_0 = ( FinalLight8139 * AlphaChannelMul8318 );
			float3 ifLocalVar8355 = 0;
			if( 1.0 <= _RenderingMode )
				ifLocalVar8355 = temp_output_8349_0;
			else
				ifLocalVar8355 = FinalLight8139;
			float ToggleAdvanced7867 = _COLORCOLOR;
			float ToggleCubemap7866 = _COLORADDSUBDIFF;
			float temp_output_8251_0 = ( ToggleAdvanced7867 * ToggleCubemap7866 );
			float Intensity285_g20277 = _CubemapIntensity;
			float UVSwitchProp2886_g20277 = _ReflectionMaskUVSwitch;
			float2 UV02886_g20277 = i.uv_texcoord.xy;
			float2 UV12886_g20277 = i.uv2_texcoord2;
			float2 UV22886_g20277 = i.uv3_texcoord3;
			float2 UV32886_g20277 = i.uv4_texcoord4;
			float2 localUVSwitch2886_g20277 = UVSwitch( UVSwitchProp2886_g20277 , UV02886_g20277 , UV12886_g20277 , UV22886_g20277 , UV32886_g20277 );
			float2 ReflectionMaskUVSwitch2896_g20277 = ( ( _ReflectionMask_ST.xy * localUVSwitch2886_g20277 ) + _ReflectionMask_ST.zw );
			float temp_output_80_0_g20277 = ( Intensity285_g20277 * SAMPLE_TEXTURE2D( _ReflectionMask, sampler_trilinear_repeat, ReflectionMaskUVSwitch2896_g20277 ).r );
			float LinearIn2768_g20277 = _Metallic;
			float localgetGammaToLinearSpaceExact2768_g20277 = getGammaToLinearSpaceExact( LinearIn2768_g20277 );
			float Metallic302_g20277 = localgetGammaToLinearSpaceExact2768_g20277;
			float2 uv_MetallicMap = i.uv_texcoord * _MetallicMap_ST.xy + _MetallicMap_ST.zw;
			float4 tex2DNode2688_g20277 = SAMPLE_TEXTURE2D( _MetallicMap, sampler_trilinear_repeat, uv_MetallicMap );
			float MetallicTex289_g20277 = ( Metallic302_g20277 * tex2DNode2688_g20277.r );
			float ifLocalVar8671 = 0;
			if( temp_output_8251_0 > 0.0 )
				ifLocalVar8671 = ( temp_output_80_0_g20277 * MetallicTex289_g20277 );
			float CubemapLightAbsorbtion8670 = ifLocalVar8671;
			float AdvancedToggle555_g20285 = ToggleAdvanced7867;
			float temp_output_570_0_g20285 = ( _MatcapR1Toggle * AdvancedToggle555_g20285 );
			float MatcapR1Blending703_g20285 = _MatcapR1Blending;
			float UVSwitchProp912_g20285 = _ReflectionMaskMatcapUVSwitch;
			float2 UV0912_g20285 = i.uv_texcoord.xy;
			float2 UV1912_g20285 = i.uv2_texcoord2;
			float2 UV2912_g20285 = i.uv3_texcoord3;
			float2 UV3912_g20285 = i.uv4_texcoord4;
			float2 localUVSwitch912_g20285 = UVSwitch( UVSwitchProp912_g20285 , UV0912_g20285 , UV1912_g20285 , UV2912_g20285 , UV3912_g20285 );
			float2 ReflectionMaskMatcapUVSwitch914_g20285 = ( ( _ReflectionMaskMatcap_ST.xy * localUVSwitch912_g20285 ) + _ReflectionMaskMatcap_ST.zw );
			float4 break646_g20285 = SAMPLE_TEXTURE2D( _ReflectionMaskMatcap, sampler_trilinear_repeat, ReflectionMaskMatcapUVSwitch914_g20285 );
			float ReflectionMaskR199_g20285 = break646_g20285.r;
			float ifLocalVar677_g20285 = 0;
			if( 1.0 > ( _MatcapR1Mode + ( 1.0 - temp_output_570_0_g20285 ) ) )
				ifLocalVar677_g20285 = ( MatcapR1Blending703_g20285 * ReflectionMaskR199_g20285 );
			float MatcapR1LightAbsorbtion731_g20285 = ifLocalVar677_g20285;
			float temp_output_573_0_g20285 = ( _MatcapG2Toggle * AdvancedToggle555_g20285 );
			float MatcapG2Blending706_g20285 = _MatcapG2Blending;
			float ReflectionMaskG200_g20285 = break646_g20285.g;
			float ifLocalVar712_g20285 = 0;
			if( 1.0 > ( _MatcapG2Mode + ( 1.0 - temp_output_573_0_g20285 ) ) )
				ifLocalVar712_g20285 = ( MatcapG2Blending706_g20285 * ReflectionMaskG200_g20285 );
			float MatcapG2LightAbsorbtion732_g20285 = ifLocalVar712_g20285;
			float temp_output_576_0_g20285 = ( _MatcapB3Toggle * AdvancedToggle555_g20285 );
			float MatcapB3Blending708_g20285 = _MatcapB3Blending;
			float ReflectionMaskB201_g20285 = break646_g20285.b;
			float ifLocalVar715_g20285 = 0;
			if( 1.0 > ( _MatcapB3Mode + ( 1.0 - temp_output_576_0_g20285 ) ) )
				ifLocalVar715_g20285 = ( MatcapB3Blending708_g20285 * ReflectionMaskB201_g20285 );
			float MatcapB3LightAbsorbtion733_g20285 = ifLocalVar715_g20285;
			float temp_output_579_0_g20285 = ( _MatcapA4Toggle * AdvancedToggle555_g20285 );
			float MatcapA4Blending710_g20285 = _MatcapA4Blending;
			float ReflectionMaskA202_g20285 = break646_g20285.a;
			float ifLocalVar718_g20285 = 0;
			if( 1.0 > ( _MatcapA4Mode + ( 1.0 - temp_output_579_0_g20285 ) ) )
				ifLocalVar718_g20285 = ( MatcapA4Blending710_g20285 * ReflectionMaskA202_g20285 );
			float MatcapA4LightAbsorbtion734_g20285 = ifLocalVar718_g20285;
			float MatcapLightAbsorbtion8669 = saturate( ( MatcapR1LightAbsorbtion731_g20285 + MatcapG2LightAbsorbtion732_g20285 + MatcapB3LightAbsorbtion733_g20285 + MatcapA4LightAbsorbtion734_g20285 ) );
			float3 lerpResult8676 = lerp( ifLocalVar8355 , float3( 0,0,0 ) , saturate( ( CubemapLightAbsorbtion8670 + MatcapLightAbsorbtion8669 ) ));
			float locallongIF8985 = ( 0.0 );
			float3 Out8985 = float3( 0,0,0 );
			float4 break24_g20258 = ase_lightColor;
			float GrayscaledLight8090 = saturate( ( max( max( break24_g20258.r , break24_g20258.g ) , break24_g20258.b ) * break24_g20258.a ) );
			float temp_output_1739_0_g20263 = GrayscaledLight8090;
			float3 normalizeResult464_g20258 = ASESafeNormalize( ( ase_worldViewDir + ase_worldlightDir ) );
			float3 HalfVectorUnityNormalized457_g20258 = normalizeResult464_g20258;
			float dotResult42_g20258 = dot( WorldNormals20_g20258 , HalfVectorUnityNormalized457_g20258 );
			float NdotH8130 = dotResult42_g20258;
			float NdotH583_g20263 = NdotH8130;
			float HighlightOffset127_g20263 = _HighlightOffset;
			float3 WorldNormals2285_g20263 = worldnormals8049;
			float3 worldNormal2417_g20263 = WorldNormals2285_g20263;
			float UVSwitchProp2003_g20263 = _SpecularMapUVSwitch;
			float2 UV02003_g20263 = i.uv_texcoord.xy;
			float2 UV12003_g20263 = i.uv2_texcoord2;
			float2 UV22003_g20263 = i.uv3_texcoord3;
			float2 UV32003_g20263 = i.uv4_texcoord4;
			float2 localUVSwitch2003_g20263 = UVSwitch( UVSwitchProp2003_g20263 , UV02003_g20263 , UV12003_g20263 , UV22003_g20263 , UV32003_g20263 );
			float4 tex2DNode1752_g20263 = SAMPLE_TEXTURE2D( _SpecularMap, sampler_trilinear_repeat, ( ( _SpecularMap_ST.xy * localUVSwitch2003_g20263 ) + _SpecularMap_ST.zw ) );
			float4 break380_g20263 = tex2DNode1752_g20263;
			float SpecularMapa1649_g20263 = break380_g20263.a;
			float smoothness2417_g20263 = ( _HighlightSmoothness * SpecularMapa1649_g20263 );
			float localGSAA_Filament2417_g20263 = GSAA_Filament( worldNormal2417_g20263 , smoothness2417_g20263 );
			float HighlightSmoothness128_g20263 = localGSAA_Filament2417_g20263;
			float3 ColorRGB141_g20263 = (_SpecularColor).rgb;
			float temp_output_2_0_g20264 = _SpecularTint;
			float temp_output_3_0_g20264 = ( 1.0 - temp_output_2_0_g20264 );
			float3 appendResult7_g20264 = (float3(temp_output_3_0_g20264 , temp_output_3_0_g20264 , temp_output_3_0_g20264));
			float3 DiffuseTint148_g20263 = ( ( MainTexSaturate8087 * temp_output_2_0_g20264 ) + appendResult7_g20264 );
			float ColorA142_g20263 = _SpecularColor.a;
			float4 SpecularMapRGBA2289_g20263 = tex2DNode1752_g20263;
			float3 SpecularMapRGB160_g20263 = (SpecularMapRGBA2289_g20263).rgb;
			float SpecShadowMaskVar279_g20263 = _SpecShadowMaskVar;
			#ifdef UNITY_PASS_FORWARDADD
				float staticSwitch1892_g20263 = ase_lightAtten;
			#else
				float staticSwitch1892_g20263 = 1.0;
			#endif
			float NdotL595_g20263 = NdotL8095;
			half3 linearRgb2056_g20262 = min( ToonRampTexNDL207_g20262 , DirectionalAttenuationRamp24_g20262 );
			half localgetLinearRgbToLuminance2056_g20262 = getLinearRgbToLuminance( linearRgb2056_g20262 );
			float ifLocalVar1946_g20262 = 0;
			UNITY_BRANCH 
			if( 1.0 > ToggleSteps66_g20262 )
				ifLocalVar1946_g20262 = localgetLinearRgbToLuminance2056_g20262;
			else if( 1.0 == ToggleSteps66_g20262 )
				ifLocalVar1946_g20262 = min( temp_output_708_0_g20262 , temp_output_1936_0_g20262 );
			float DirectLightRamp8134 = ifLocalVar1946_g20262;
			float SpecShadowMaskPower286_g20263 = _SpecShadowMaskPower;
			float temp_output_1_0_g20265 = -max( SpecShadowMaskPower286_g20263 , -0.99 );
			float temp_output_2363_0_g20263 = ( saturate( SpecShadowMaskPower286_g20263 ) * 0.5 );
			float lerpResult2345_g20263 = lerp( ( ( DirectLightRamp8134 - temp_output_1_0_g20265 ) / ( 1.0 - temp_output_1_0_g20265 ) ) , 1.0 , ( ( SpecShadowMaskPower286_g20263 * temp_output_2363_0_g20263 ) + temp_output_2363_0_g20263 ));
			float temp_output_1878_0_g20263 = saturate( lerpResult2345_g20263 );
			#ifdef UNITY_PASS_FORWARDADD
				float staticSwitch621_g20263 = ( temp_output_1878_0_g20263 * ase_lightAtten );
			#else
				float staticSwitch621_g20263 = 0.0;
			#endif
			#ifdef DIRECTIONAL
				float staticSwitch620_g20263 = temp_output_1878_0_g20263;
			#else
				float staticSwitch620_g20263 = staticSwitch621_g20263;
			#endif
			float AdditionalShadowRamp280_g20263 = staticSwitch620_g20263;
			float ifLocalVar1904_g20263 = 0;
			UNITY_BRANCH 
			if( 1.0 > SpecShadowMaskVar279_g20263 )
				ifLocalVar1904_g20263 = staticSwitch1892_g20263;
			else if( 1.0 == SpecShadowMaskVar279_g20263 )
				ifLocalVar1904_g20263 = saturate( ( ase_lightAtten * NdotL595_g20263 ) );
			else if( 1.0 < SpecShadowMaskVar279_g20263 )
				ifLocalVar1904_g20263 = AdditionalShadowRamp280_g20263;
			float ShadowsToonAniso1905_g20263 = ifLocalVar1904_g20263;
			float3 localambientDir468_g20258 = ambientDir();
			float3 normalizeResult467_g20258 = ASESafeNormalize( ( ase_worldViewDir + localambientDir468_g20258 ) );
			float3 AmbientHalfVectorUnityNormalized469_g20258 = normalizeResult467_g20258;
			float dotResult75_g20258 = dot( WorldNormals20_g20258 , AmbientHalfVectorUnityNormalized469_g20258 );
			float NdotAmbientH8129 = dotResult75_g20258;
			float NdotAmbientH591_g20263 = NdotAmbientH8129;
			half3 localAmbient1730_g20263 = Ambient();
			float NdotAmbientL597_g20263 = NdotAmbientL8094;
			half3 linearRgb2057_g20262 = ToonRampTexAmbient220_g20262;
			half localgetLinearRgbToLuminance2057_g20262 = getLinearRgbToLuminance( linearRgb2057_g20262 );
			float ifLocalVar2059_g20262 = 0;
			UNITY_BRANCH 
			if( 1.0 > ToggleSteps66_g20262 )
				ifLocalVar2059_g20262 = localgetLinearRgbToLuminance2057_g20262;
			else if( 1.0 == ToggleSteps66_g20262 )
				ifLocalVar2059_g20262 = temp_output_709_0_g20262;
			float AmbientRamp8132 = ifLocalVar2059_g20262;
			float temp_output_1_0_g20267 = -max( SpecShadowMaskPower286_g20263 , -0.99 );
			float temp_output_2375_0_g20263 = ( saturate( SpecShadowMaskPower286_g20263 ) * 0.5 );
			float lerpResult2369_g20263 = lerp( ( ( AmbientRamp8132 - temp_output_1_0_g20267 ) / ( 1.0 - temp_output_1_0_g20267 ) ) , 1.0 , ( ( SpecShadowMaskPower286_g20263 * temp_output_2375_0_g20263 ) + temp_output_2375_0_g20263 ));
			float ifLocalVar1824_g20263 = 0;
			UNITY_BRANCH 
			if( 1.0 > SpecShadowMaskVar279_g20263 )
				ifLocalVar1824_g20263 = 1.0;
			else if( 1.0 == SpecShadowMaskVar279_g20263 )
				ifLocalVar1824_g20263 = saturate( NdotAmbientL597_g20263 );
			else if( 1.0 < SpecShadowMaskVar279_g20263 )
				ifLocalVar1824_g20263 = saturate( lerpResult2369_g20263 );
			float ShadowsIndirectNdL289_g20263 = ifLocalVar1824_g20263;
			float3 ifLocalVar1740_g20263 = 0;
			if( temp_output_1739_0_g20263 > 0.0 )
				ifLocalVar1740_g20263 = ( saturate( ( ( NdotH583_g20263 + HighlightOffset127_g20263 ) / max( HighlightSmoothness128_g20263 , 1E-06 ) ) ) * ColorRGB141_g20263 * DiffuseTint148_g20263 * ColorA142_g20263 * SpecularMapRGB160_g20263 * ase_lightColor.rgb * ShadowsToonAniso1905_g20263 );
			else if( temp_output_1739_0_g20263 == 0.0 )
				ifLocalVar1740_g20263 = ( saturate( ( ( NdotAmbientH591_g20263 + HighlightOffset127_g20263 ) / max( HighlightSmoothness128_g20263 , 1E-06 ) ) ) * ColorRGB141_g20263 * DiffuseTint148_g20263 * ColorA142_g20263 * SpecularMapRGB160_g20263 * localAmbient1730_g20263 * ShadowsIndirectNdL289_g20263 );
			float3 Toon8985 = ( ifLocalVar1740_g20263 + float3( 0,0,0 ) );
			float ifLocalVar1769_g20263 = 0;
			UNITY_BRANCH 
			if( 1.0 > SpecShadowMaskVar279_g20263 )
				ifLocalVar1769_g20263 = 1.0;
			else if( 1.0 == SpecShadowMaskVar279_g20263 )
				ifLocalVar1769_g20263 = NdotL595_g20263;
			else if( 1.0 < SpecShadowMaskVar279_g20263 )
				ifLocalVar1769_g20263 = temp_output_1878_0_g20263;
			float NdLGGX171_g20263 = ifLocalVar1769_g20263;
			float temp_output_694_0_g20263 = max( 0.0 , NdLGGX171_g20263 );
			float NdotL688_g20263 = temp_output_694_0_g20263;
			float3 viewDir443_g20258 = ase_worldViewDir;
			float3 normal443_g20258 = WorldNormals20_g20258;
			float localCorrectNegativeNdotV443_g20258 = CorrectNegativeNdotV( viewDir443_g20258 , normal443_g20258 );
			float NdotVCorr8131 = localCorrectNegativeNdotV443_g20258;
			float CorrNdotV626_g20263 = NdotVCorr8131;
			float NdotV688_g20263 = CorrNdotV626_g20263;
			float temp_output_566_0_g20263 = ( 1.0 - HighlightSmoothness128_g20263 );
			float temp_output_643_0_g20263 = max( ( temp_output_566_0_g20263 * temp_output_566_0_g20263 ) , 0.002 );
			float roughness688_g20263 = temp_output_643_0_g20263;
			float localgetSmithJointGGXVisibilityTerm688_g20263 = getSmithJointGGXVisibilityTerm( NdotL688_g20263 , NdotV688_g20263 , roughness688_g20263 );
			float GGXVisibilityTerm630_g20263 = localgetSmithJointGGXVisibilityTerm688_g20263;
			float NdotH689_g20263 = max( 0.0 , NdotH583_g20263 );
			float roughness689_g20263 = temp_output_643_0_g20263;
			float localgetGGXTerm689_g20263 = getGGXTerm( NdotH689_g20263 , roughness689_g20263 );
			float GGXTerm630_g20263 = localgetGGXTerm689_g20263;
			float NdotL630_g20263 = temp_output_694_0_g20263;
			float dotResult50_g20258 = dot( ase_worldlightDir , HalfVectorUnityNormalized457_g20258 );
			float LdotH8128 = dotResult50_g20258;
			float LdotH2104_g20263 = LdotH8128;
			float LdotH630_g20263 = max( 0.0 , LdotH2104_g20263 );
			float roughness630_g20263 = temp_output_643_0_g20263;
			float3 specColor630_g20263 = ( ColorRGB141_g20263 * DiffuseTint148_g20263 );
			float ifLocalVar1908_g20263 = 0;
			UNITY_BRANCH 
			if( 1.0 == SpecShadowMaskVar279_g20263 )
				ifLocalVar1908_g20263 = ase_lightAtten;
			else
				ifLocalVar1908_g20263 = staticSwitch1892_g20263;
			float AttenGGX1911_g20263 = ifLocalVar1908_g20263;
			float3 lightcolor630_g20263 = ( AttenGGX1911_g20263 * ase_lightColor.rgb );
			float specularTermToggle630_g20263 = 1.0;
			float3 localcalcSpecularTerm630_g20263 = calcSpecularTerm( GGXVisibilityTerm630_g20263 , GGXTerm630_g20263 , NdotL630_g20263 , LdotH630_g20263 , roughness630_g20263 , specColor630_g20263 , lightcolor630_g20263 , specularTermToggle630_g20263 );
			float temp_output_695_0_g20263 = max( 0.0 , ShadowsIndirectNdL289_g20263 );
			float NdotL690_g20263 = temp_output_695_0_g20263;
			float NdotV690_g20263 = CorrNdotV626_g20263;
			float temp_output_650_0_g20263 = ( 1.0 - HighlightSmoothness128_g20263 );
			float temp_output_648_0_g20263 = max( ( temp_output_650_0_g20263 * temp_output_650_0_g20263 ) , 0.002 );
			float roughness690_g20263 = temp_output_648_0_g20263;
			float localgetSmithJointGGXVisibilityTerm690_g20263 = getSmithJointGGXVisibilityTerm( NdotL690_g20263 , NdotV690_g20263 , roughness690_g20263 );
			float GGXVisibilityTerm666_g20263 = localgetSmithJointGGXVisibilityTerm690_g20263;
			float NdotH691_g20263 = max( 0.0 , NdotAmbientH591_g20263 );
			float roughness691_g20263 = temp_output_648_0_g20263;
			float localgetGGXTerm691_g20263 = getGGXTerm( NdotH691_g20263 , roughness691_g20263 );
			float GGXTerm666_g20263 = localgetGGXTerm691_g20263;
			float NdotL666_g20263 = temp_output_695_0_g20263;
			float3 localambientDir101_g20258 = ambientDir();
			float dotResult82_g20258 = dot( localambientDir101_g20258 , AmbientHalfVectorUnityNormalized469_g20258 );
			float AmbientLdotAmbientH8140 = dotResult82_g20258;
			float AmbientLdotAmbientH2157_g20263 = AmbientLdotAmbientH8140;
			float LdotH666_g20263 = max( 0.0 , AmbientLdotAmbientH2157_g20263 );
			float roughness666_g20263 = temp_output_648_0_g20263;
			float3 specColor666_g20263 = ( ColorRGB141_g20263 * DiffuseTint148_g20263 );
			half3 localAmbient1728_g20263 = Ambient();
			float3 lightcolor666_g20263 = localAmbient1728_g20263;
			float specularTermToggle666_g20263 = 1.0;
			float3 localcalcSpecularTerm666_g20263 = calcSpecularTerm( GGXVisibilityTerm666_g20263 , GGXTerm666_g20263 , NdotL666_g20263 , LdotH666_g20263 , roughness666_g20263 , specColor666_g20263 , lightcolor666_g20263 , specularTermToggle666_g20263 );
			float3 ifLocalVar1741_g20263 = 0;
			if( temp_output_1739_0_g20263 > 0.0 )
				ifLocalVar1741_g20263 = ( localcalcSpecularTerm630_g20263 * SpecularMapRGB160_g20263 * ColorA142_g20263 );
			else if( temp_output_1739_0_g20263 == 0.0 )
				ifLocalVar1741_g20263 = ( localcalcSpecularTerm666_g20263 * SpecularMapRGB160_g20263 * ColorA142_g20263 );
			float3 GGX8985 = ( ifLocalVar1741_g20263 + float3( 0,0,0 ) );
			float UVSwitchProp2002_g20263 = _AnisoDirUVSwitch;
			float2 UV02002_g20263 = i.uv_texcoord.xy;
			float2 UV12002_g20263 = i.uv2_texcoord2;
			float2 UV22002_g20263 = i.uv3_texcoord3;
			float2 UV32002_g20263 = i.uv4_texcoord4;
			float2 localUVSwitch2002_g20263 = UVSwitch( UVSwitchProp2002_g20263 , UV02002_g20263 , UV12002_g20263 , UV22002_g20263 , UV32002_g20263 );
			float2 AnisoDirUVSwitch2009_g20263 = ( ( _AnisoDir_ST.xy * localUVSwitch2002_g20263 ) + _AnisoDir_ST.zw );
			float3 normalizeResult77_g20263 = normalize( ( UnpackNormal( SAMPLE_TEXTURE2D( _AnisoDir, sampler_trilinear_repeat, AnisoDirUVSwitch2009_g20263 ) ) + WorldNormals2285_g20263 ) );
			float3 HdotA1339_g20263 = normalizeResult77_g20263;
			float3 normalizeResult4_g20266 = normalize( ( ase_worldViewDir + ase_worldlightDir ) );
			float dotResult76_g20263 = dot( HdotA1339_g20263 , normalizeResult4_g20266 );
			float BlinnToAniso1426_g20263 = _BlinntoAniso;
			float SpecularMapb383_g20263 = break380_g20263.b;
			float lerpResult97_g20263 = lerp( saturate( NdotH583_g20263 ) , max( 0.0 , sin( radians( ( ( dotResult76_g20263 + HighlightOffset127_g20263 ) * 180.0 ) ) ) ) , ( BlinnToAniso1426_g20263 * SpecularMapb383_g20263 ));
			float AnisoScale1344_g20263 = _AnisoScale;
			float SpecularMapg162_g20263 = break380_g20263.g;
			float AnisoSharpening1345_g20263 = _AnisoSharpening;
			float lerpResult1579_g20263 = lerp( 128.0 , 4096.0 , AnisoSharpening1345_g20263);
			float SpecularMapr161_g20263 = break380_g20263.r;
			float3 localambientDir2162_g20263 = ambientDir();
			float3 normalizeResult2164_g20263 = normalize( ( ase_worldViewDir + localambientDir2162_g20263 ) );
			float3 AmbientHalfVector2165_g20263 = normalizeResult2164_g20263;
			float dotResult341_g20263 = dot( HdotA1339_g20263 , AmbientHalfVector2165_g20263 );
			float lerpResult1443_g20263 = lerp( saturate( NdotAmbientH591_g20263 ) , max( 0.0 , sin( radians( ( ( dotResult341_g20263 + HighlightOffset127_g20263 ) * 180.0 ) ) ) ) , ( BlinnToAniso1426_g20263 * SpecularMapb383_g20263 ));
			float lerpResult1595_g20263 = lerp( 128.0 , 4096.0 , AnisoSharpening1345_g20263);
			half3 localAmbient1729_g20263 = Ambient();
			float3 ifLocalVar1738_g20263 = 0;
			if( temp_output_1739_0_g20263 > 0.0 )
				ifLocalVar1738_g20263 = ( ( saturate( ( ( pow( lerpResult97_g20263 , ( ( 1.0 - AnisoScale1344_g20263 ) * SpecularMapg162_g20263 * lerpResult1579_g20263 ) ) * SpecularMapr161_g20263 ) / ( 1.0 - AnisoSharpening1345_g20263 ) ) ) * ColorA142_g20263 ) * ( ColorRGB141_g20263 * DiffuseTint148_g20263 ) * ase_lightColor.rgb * max( ( ShadowsToonAniso1905_g20263 * 2.0 ) , 0.0 ) );
			else if( temp_output_1739_0_g20263 == 0.0 )
				ifLocalVar1738_g20263 = ( ( saturate( ( ( pow( lerpResult1443_g20263 , ( ( 1.0 - AnisoScale1344_g20263 ) * SpecularMapg162_g20263 * lerpResult1595_g20263 ) ) * SpecularMapr161_g20263 ) / ( 1.0 - AnisoSharpening1345_g20263 ) ) ) * ColorA142_g20263 ) * ( ColorRGB141_g20263 * DiffuseTint148_g20263 ) * localAmbient1729_g20263 * max( ( ShadowsIndirectNdL289_g20263 * 2.0 ) , 0.0 ) );
			float3 Anisotropic8985 = ( ifLocalVar1738_g20263 + float3( 0,0,0 ) );
			float ndl2022_g20263 = max( NdLGGX171_g20263 , 0.0 );
			float ndh2022_g20263 = max( NdotH583_g20263 , 0.0 );
			float vdn2022_g20263 = CorrNdotV626_g20263;
			float ldh2022_g20263 = max( LdotH2104_g20263 , 0.0 );
			float3 lightCol2022_g20263 = ( ShadowsToonAniso1905_g20263 * ase_lightColor.rgb );
			float3 normalizeResult4_g20268 = normalize( ( ase_worldViewDir + ase_worldlightDir ) );
			float3 halfVector2022_g20263 = normalizeResult4_g20268;
			float smoothness2022_g20263 = HighlightSmoothness128_g20263;
			float localOutlineSwitch127_g20255 = ( 0.0 );
			float3 true127_g20255 = temp_output_54_0_g20255;
			float3 false127_g20255 = -temp_output_54_0_g20255;
			float3 Out0127_g20255 = float3( 0,0,0 );
			{
			#ifdef FOROUTLINE
			Out0127_g20255 = true127_g20255; //Outline
			#else
			Out0127_g20255 = false127_g20255; //Not Outline
			#endif
			#define FOROUTLINE
			}
			float3 switchResult121_g20255 = (((i.ASEVFace>0)?(temp_output_54_0_g20255):(Out0127_g20255)));
			float3 normalizeResult52_g20255 = normalize( switchResult121_g20255 );
			float3 normals8097 = normalizeResult52_g20255;
			float3 temp_output_2254_0_g20263 = normals8097;
			float3 break2257_g20263 = temp_output_2254_0_g20263;
			float3 ase_worldNormal = WorldNormalVector( i, float3( 0, 0, 1 ) );
			float3 ase_vertexNormal = mul( unity_WorldToObject, float4( ase_worldNormal, 0 ) );
			ase_vertexNormal = normalize( ase_vertexNormal );
			float3 In02226_g20263 = ase_vertexNormal;
			float3 localgetUnityObjectToWorldNormal2226_g20263 = getUnityObjectToWorldNormal2226_g20263( In02226_g20263 );
			float3 normalizeResult2262_g20263 = normalize( ( ( break2257_g20263.x * i.vertexToFrag2251_g20263 ) + ( break2257_g20263.y * i.vertexToFrag2250_g20263 ) + ( break2257_g20263.z * localgetUnityObjectToWorldNormal2226_g20263 ) ) );
			float3 temp_output_2252_0_g20263 = cross( i.vertexToFrag2250_g20263 , normalizeResult2262_g20263 );
			float3 normalizeResult2265_g20263 = normalize( temp_output_2252_0_g20263 );
			float3 bumpedTangent2278_g20263 = normalizeResult2265_g20263;
			float3 tangent2022_g20263 = bumpedTangent2278_g20263;
			float3 normalizeResult2266_g20263 = normalize( cross( normalizeResult2262_g20263 , temp_output_2252_0_g20263 ) );
			float3 bumpedBitangent2277_g20263 = normalizeResult2266_g20263;
			float3 bitangent2022_g20263 = bumpedBitangent2277_g20263;
			float3 diffuseColor2022_g20263 = ( ColorRGB141_g20263 * DiffuseTint148_g20263 );
			float4 SpecularMap2022_g20263 = SpecularMapRGBA2289_g20263;
			float3 LightDir2022_g20263 = ase_worldlightDir;
			float3 ViewDir2022_g20263 = ase_worldViewDir;
			float3 localcalcGGXAniso2022_g20263 = calcGGXAniso( ndl2022_g20263 , ndh2022_g20263 , vdn2022_g20263 , ldh2022_g20263 , lightCol2022_g20263 , halfVector2022_g20263 , smoothness2022_g20263 , tangent2022_g20263 , bitangent2022_g20263 , diffuseColor2022_g20263 , SpecularMap2022_g20263 , LightDir2022_g20263 , ViewDir2022_g20263 );
			float ndl2410_g20263 = max( ShadowsIndirectNdL289_g20263 , 0.0 );
			float ndh2410_g20263 = max( NdotAmbientH591_g20263 , 0.0 );
			float vdn2410_g20263 = CorrNdotV626_g20263;
			float ldh2410_g20263 = max( AmbientLdotAmbientH2157_g20263 , 0.0 );
			half3 localAmbient2155_g20263 = Ambient();
			float3 lightCol2410_g20263 = ( ShadowsIndirectNdL289_g20263 * localAmbient2155_g20263 );
			float3 halfVector2410_g20263 = AmbientHalfVector2165_g20263;
			float smoothness2410_g20263 = HighlightSmoothness128_g20263;
			float3 tangent2410_g20263 = bumpedTangent2278_g20263;
			float3 bitangent2410_g20263 = bumpedBitangent2277_g20263;
			float3 diffuseColor2410_g20263 = ( ColorRGB141_g20263 * DiffuseTint148_g20263 );
			float4 SpecularMap2410_g20263 = SpecularMapRGBA2289_g20263;
			float3 localambientDir2411_g20263 = ambientDir();
			float3 LightDir2410_g20263 = localambientDir2411_g20263;
			float3 ViewDir2410_g20263 = ase_worldViewDir;
			float3 localcalcGGXAniso2410_g20263 = calcGGXAniso( ndl2410_g20263 , ndh2410_g20263 , vdn2410_g20263 , ldh2410_g20263 , lightCol2410_g20263 , halfVector2410_g20263 , smoothness2410_g20263 , tangent2410_g20263 , bitangent2410_g20263 , diffuseColor2410_g20263 , SpecularMap2410_g20263 , LightDir2410_g20263 , ViewDir2410_g20263 );
			float3 ifLocalVar2153_g20263 = 0;
			if( temp_output_1739_0_g20263 > 0.0 )
				ifLocalVar2153_g20263 = localcalcGGXAniso2022_g20263;
			else if( temp_output_1739_0_g20263 == 0.0 )
				ifLocalVar2153_g20263 = localcalcGGXAniso2410_g20263;
			float3 GGXAnisotropic8985 = ifLocalVar2153_g20263;
			{
			UNITY_BRANCH
			if (_SpecularSetting == 0)
				Out8985 = Toon8985;
			else if (_SpecularSetting == 1)
				Out8985 = GGX8985;
			else if (_SpecularSetting == 2)
				Out8985 = Anisotropic8985;
			else
				Out8985 = GGXAnisotropic8985;
			}
			float3 SpecularHighlight8256 = Out8985;
			float3 appendResult1896_g20263 = (float3(NdLGGX171_g20263 , AttenGGX1911_g20263 , ShadowsIndirectNdL289_g20263));
			float3 PixelAmbientShadows8874 = appendResult1896_g20263;
			float3 break2823_g20277 = PixelAmbientShadows8874;
			float NdLGGX2357_g20277 = break2823_g20277.x;
			float temp_output_2418_0_g20277 = max( 0.0 , NdLGGX2357_g20277 );
			float NdotL2412_g20277 = temp_output_2418_0_g20277;
			float CorrectedNdotV2507_g20277 = NdotVCorr8131;
			float NdotV2412_g20277 = CorrectedNdotV2507_g20277;
			float IgnoreNormalsToggle323_g20277 = _IgnoreNormalsCubemap;
			float3 normalizeResult28_g20277 = normalize( ase_worldNormal );
			float3 ifLocalVar46_g20277 = 0;
			if( 1.0 > IgnoreNormalsToggle323_g20277 )
				ifLocalVar46_g20277 = worldnormals8049;
			else if( 1.0 == IgnoreNormalsToggle323_g20277 )
				ifLocalVar46_g20277 = normalizeResult28_g20277;
			float3 WorldNormals305_g20277 = ifLocalVar46_g20277;
			float3 worldNormal2910_g20277 = WorldNormals305_g20277;
			float Smoothness300_g20277 = _Cubemapsmoothness;
			float smoothness2910_g20277 = ( tex2DNode2688_g20277.a * Smoothness300_g20277 );
			float localGSAA_Filament2910_g20277 = GSAA_Filament( worldNormal2910_g20277 , smoothness2910_g20277 );
			float SmoothnessTex290_g20277 = localGSAA_Filament2910_g20277;
			float perceptualRoughness2761_g20277 = ( 1.0 - SmoothnessTex290_g20277 );
			float roughness2729_g20277 = max( ( perceptualRoughness2761_g20277 * perceptualRoughness2761_g20277 ) , 0.002 );
			float roughness2412_g20277 = roughness2729_g20277;
			float localgetSmithJointGGXVisibilityTerm2412_g20277 = getSmithJointGGXVisibilityTerm( NdotL2412_g20277 , NdotV2412_g20277 , roughness2412_g20277 );
			float GGXVisibilityTerm2305_g20277 = localgetSmithJointGGXVisibilityTerm2412_g20277;
			float NdotH2416_g20277 = max( 0.0 , NdotH8130 );
			float roughness2416_g20277 = roughness2729_g20277;
			float localgetGGXTerm2416_g20277 = getGGXTerm( NdotH2416_g20277 , roughness2416_g20277 );
			float GGXTerm2305_g20277 = localgetGGXTerm2416_g20277;
			float NdotL2305_g20277 = temp_output_2418_0_g20277;
			float LdotH2305_g20277 = max( 0.0 , LdotH8128 );
			float roughness2305_g20277 = roughness2729_g20277;
			float3 MainTex312_g20277 = MainTexSaturate8087;
			half3 specColor2324_g20277 = (0).xxx;
			half oneMinusReflectivity2324_g20277 = 0;
			half3 diffuseAndSpecularFromMetallic2324_g20277 = DiffuseAndSpecularFromMetallic(MainTex312_g20277,MetallicTex289_g20277,specColor2324_g20277,oneMinusReflectivity2324_g20277);
			float3 SpecColor2715_g20277 = specColor2324_g20277;
			float3 specColor2305_g20277 = SpecColor2715_g20277;
			float AttenGGX2831_g20277 = break2823_g20277.y;
			float3 lightcolor2305_g20277 = ( ase_lightColor.rgb * AttenGGX2831_g20277 );
			float SpecularHighlightToggle2498_g20277 = _CubemapSpecularToggle;
			float specularTermToggle2305_g20277 = SpecularHighlightToggle2498_g20277;
			float3 localcalcSpecularTerm2305_g20277 = calcSpecularTerm( GGXVisibilityTerm2305_g20277 , GGXTerm2305_g20277 , NdotL2305_g20277 , LdotH2305_g20277 , roughness2305_g20277 , specColor2305_g20277 , lightcolor2305_g20277 , specularTermToggle2305_g20277 );
			float temp_output_2490_0_g20277 = max( 0.0 , NdotAmbientL8094 );
			float NdotL2496_g20277 = temp_output_2490_0_g20277;
			float NdotV2496_g20277 = CorrectedNdotV2507_g20277;
			float roughness2496_g20277 = roughness2729_g20277;
			float localgetSmithJointGGXVisibilityTerm2496_g20277 = getSmithJointGGXVisibilityTerm( NdotL2496_g20277 , NdotV2496_g20277 , roughness2496_g20277 );
			float GGXVisibilityTerm2494_g20277 = localgetSmithJointGGXVisibilityTerm2496_g20277;
			float NdotH2495_g20277 = max( 0.0 , NdotAmbientH8129 );
			float roughness2495_g20277 = roughness2729_g20277;
			float localgetGGXTerm2495_g20277 = getGGXTerm( NdotH2495_g20277 , roughness2495_g20277 );
			float GGXTerm2494_g20277 = localgetGGXTerm2495_g20277;
			float NdotL2494_g20277 = temp_output_2490_0_g20277;
			float LdotH2494_g20277 = max( 0.0 , AmbientLdotAmbientH8140 );
			float roughness2494_g20277 = roughness2729_g20277;
			float3 specColor2494_g20277 = SpecColor2715_g20277;
			half3 localAmbient2505_g20277 = Ambient();
			float AmbientShadows2824_g20277 = break2823_g20277.z;
			float3 lightcolor2494_g20277 = ( localAmbient2505_g20277 * AmbientShadows2824_g20277 );
			float specularTermToggle2494_g20277 = SpecularHighlightToggle2498_g20277;
			float3 localcalcSpecularTerm2494_g20277 = calcSpecularTerm( GGXVisibilityTerm2494_g20277 , GGXTerm2494_g20277 , NdotL2494_g20277 , LdotH2494_g20277 , roughness2494_g20277 , specColor2494_g20277 , lightcolor2494_g20277 , specularTermToggle2494_g20277 );
			float3 SHSpecular2509_g20277 = localcalcSpecularTerm2494_g20277;
			float3 ifLocalVar2672_g20277 = 0;
			if( GrayscaledLight8090 > 0.0 )
				ifLocalVar2672_g20277 = localcalcSpecularTerm2305_g20277;
			else if( GrayscaledLight8090 == 0.0 )
				ifLocalVar2672_g20277 = SHSpecular2509_g20277;
			float4 temp_output_1727_0_g20263 = max( float4( 0,0,0,0 ) , VertexLightNdLNONMAX8088 );
			float4 ifLocalVar2136_g20262 = 0;
			UNITY_BRANCH 
			if( 1.0 > ToggleSteps66_g20262 )
				ifLocalVar2136_g20262 = ToonRampTexVertexLightLuminanced352_g20262;
			else if( 1.0 == ToggleSteps66_g20262 )
				ifLocalVar2136_g20262 = VertexLightNdLStepped2141_g20262;
			float4 NdLVertexLightsShadows8846 = ifLocalVar2136_g20262;
			float4 temp_cast_43 = (-max( SpecShadowMaskPower286_g20263 , -0.99 )).xxxx;
			float temp_output_2387_0_g20263 = ( saturate( SpecShadowMaskPower286_g20263 ) * 0.5 );
			float4 lerpResult2379_g20263 = lerp( ( ( NdLVertexLightsShadows8846 - temp_cast_43 ) / ( 1.0 - -max( SpecShadowMaskPower286_g20263 , -0.99 ) ) ) , float4( 1,1,1,1 ) , ( ( SpecShadowMaskPower286_g20263 * temp_output_2387_0_g20263 ) + temp_output_2387_0_g20263 ));
			float4 temp_output_2378_0_g20263 = saturate( lerpResult2379_g20263 );
			float4 ifLocalVar1924_g20263 = 0;
			UNITY_BRANCH 
			if( 1.0 > SpecShadowMaskVar279_g20263 )
				ifLocalVar1924_g20263 = float4(1,1,1,1);
			else if( 1.0 == SpecShadowMaskVar279_g20263 )
				ifLocalVar1924_g20263 = temp_output_1727_0_g20263;
			else if( 1.0 < SpecShadowMaskVar279_g20263 )
				ifLocalVar1924_g20263 = temp_output_2378_0_g20263;
			float4 VertexLightsNdLGGX1923_g20263 = ifLocalVar1924_g20263;
			float4 VertexLightShadows8875 = VertexLightsNdLGGX1923_g20263;
			float4 break2546_g20277 = VertexLightShadows8875;
			float NdotL2576_g20277 = break2546_g20277.x;
			float NdotV2576_g20277 = CorrectedNdotV2507_g20277;
			float roughness2576_g20277 = roughness2729_g20277;
			float localgetSmithJointGGXVisibilityTerm2576_g20277 = getSmithJointGGXVisibilityTerm( NdotL2576_g20277 , NdotV2576_g20277 , roughness2576_g20277 );
			float GGXVisibilityTerm2521_g20277 = localgetSmithJointGGXVisibilityTerm2576_g20277;
			float4 break346_g20258 = FourLightPosX0WorldPos286_g20258;
			float4 break277_g20258 = FourLightPosY0WorldPos291_g20258;
			float4 break300_g20258 = FourLightPosZ0WorldPos325_g20258;
			float3 appendResult358_g20258 = (float3(break346_g20258.x , break277_g20258.x , break300_g20258.x));
			float3 normalizeResult292_g20258 = normalize( appendResult358_g20258 );
			float3 normalizeResult289_g20258 = ASESafeNormalize( ( ase_worldViewDir + normalizeResult292_g20258 ) );
			float dotResult318_g20258 = dot( WorldNormals20_g20258 , normalizeResult289_g20258 );
			float VLNdotHOne8155 = dotResult318_g20258;
			float NdotH2569_g20277 = max( VLNdotHOne8155 , 0.0 );
			float roughness2569_g20277 = roughness2729_g20277;
			float localgetGGXTerm2569_g20277 = getGGXTerm( NdotH2569_g20277 , roughness2569_g20277 );
			float GGXTerm2521_g20277 = localgetGGXTerm2569_g20277;
			float NdotL2521_g20277 = break2546_g20277.x;
			float dotResult339_g20258 = dot( normalizeResult292_g20258 , normalizeResult289_g20258 );
			float VLLdotHOne8147 = dotResult339_g20258;
			float LdotH2521_g20277 = max( VLLdotHOne8147 , 0.0 );
			float roughness2521_g20277 = roughness2729_g20277;
			float3 specColor2521_g20277 = SpecColor2715_g20277;
			float3 localLightColorZero2834_g20277 = LightColorZero();
			float4 break2841_g20277 = VertexLightAtten8093;
			float3 lightcolor2521_g20277 = ( localLightColorZero2834_g20277 * break2841_g20277.x );
			float specularTermToggle2521_g20277 = SpecularHighlightToggle2498_g20277;
			float3 localcalcSpecularTerm2521_g20277 = calcSpecularTerm( GGXVisibilityTerm2521_g20277 , GGXTerm2521_g20277 , NdotL2521_g20277 , LdotH2521_g20277 , roughness2521_g20277 , specColor2521_g20277 , lightcolor2521_g20277 , specularTermToggle2521_g20277 );
			float NdotL2601_g20277 = break2546_g20277.y;
			float NdotV2601_g20277 = CorrectedNdotV2507_g20277;
			float roughness2601_g20277 = roughness2729_g20277;
			float localgetSmithJointGGXVisibilityTerm2601_g20277 = getSmithJointGGXVisibilityTerm( NdotL2601_g20277 , NdotV2601_g20277 , roughness2601_g20277 );
			float GGXVisibilityTerm2609_g20277 = localgetSmithJointGGXVisibilityTerm2601_g20277;
			float3 appendResult321_g20258 = (float3(break346_g20258.y , break277_g20258.y , break300_g20258.y));
			float3 normalizeResult308_g20258 = normalize( appendResult321_g20258 );
			float3 normalizeResult285_g20258 = ASESafeNormalize( ( ase_worldViewDir + normalizeResult308_g20258 ) );
			float dotResult298_g20258 = dot( WorldNormals20_g20258 , normalizeResult285_g20258 );
			float VLNdotHTwo8160 = dotResult298_g20258;
			float NdotH2600_g20277 = max( VLNdotHTwo8160 , 0.0 );
			float roughness2600_g20277 = roughness2729_g20277;
			float localgetGGXTerm2600_g20277 = getGGXTerm( NdotH2600_g20277 , roughness2600_g20277 );
			float GGXTerm2609_g20277 = localgetGGXTerm2600_g20277;
			float NdotL2609_g20277 = break2546_g20277.y;
			float dotResult354_g20258 = dot( normalizeResult308_g20258 , normalizeResult285_g20258 );
			float VLLdotHTwo8161 = dotResult354_g20258;
			float LdotH2609_g20277 = max( VLLdotHTwo8161 , 0.0 );
			float roughness2609_g20277 = roughness2729_g20277;
			float3 specColor2609_g20277 = SpecColor2715_g20277;
			float3 localLightColorZOne2835_g20277 = LightColorZOne();
			float3 lightcolor2609_g20277 = ( localLightColorZOne2835_g20277 * break2841_g20277.y );
			float specularTermToggle2609_g20277 = SpecularHighlightToggle2498_g20277;
			float3 localcalcSpecularTerm2609_g20277 = calcSpecularTerm( GGXVisibilityTerm2609_g20277 , GGXTerm2609_g20277 , NdotL2609_g20277 , LdotH2609_g20277 , roughness2609_g20277 , specColor2609_g20277 , lightcolor2609_g20277 , specularTermToggle2609_g20277 );
			float NdotL2618_g20277 = break2546_g20277.z;
			float NdotV2618_g20277 = CorrectedNdotV2507_g20277;
			float roughness2618_g20277 = roughness2729_g20277;
			float localgetSmithJointGGXVisibilityTerm2618_g20277 = getSmithJointGGXVisibilityTerm( NdotL2618_g20277 , NdotV2618_g20277 , roughness2618_g20277 );
			float GGXVisibilityTerm2626_g20277 = localgetSmithJointGGXVisibilityTerm2618_g20277;
			float3 appendResult355_g20258 = (float3(break346_g20258.z , break277_g20258.z , break300_g20258.z));
			float3 normalizeResult334_g20258 = normalize( appendResult355_g20258 );
			float3 normalizeResult327_g20258 = ASESafeNormalize( ( ase_worldViewDir + normalizeResult334_g20258 ) );
			float dotResult313_g20258 = dot( WorldNormals20_g20258 , normalizeResult327_g20258 );
			float VLNdotHThree8146 = dotResult313_g20258;
			float NdotH2617_g20277 = max( VLNdotHThree8146 , 0.0 );
			float roughness2617_g20277 = roughness2729_g20277;
			float localgetGGXTerm2617_g20277 = getGGXTerm( NdotH2617_g20277 , roughness2617_g20277 );
			float GGXTerm2626_g20277 = localgetGGXTerm2617_g20277;
			float NdotL2626_g20277 = break2546_g20277.z;
			float dotResult288_g20258 = dot( normalizeResult334_g20258 , normalizeResult327_g20258 );
			float VLLdotHThree8144 = dotResult288_g20258;
			float LdotH2626_g20277 = max( VLLdotHThree8144 , 0.0 );
			float roughness2626_g20277 = roughness2729_g20277;
			float3 specColor2626_g20277 = SpecColor2715_g20277;
			float3 localLightColorZTwo2833_g20277 = LightColorZTwo();
			float3 lightcolor2626_g20277 = ( localLightColorZTwo2833_g20277 * break2841_g20277.z );
			float specularTermToggle2626_g20277 = SpecularHighlightToggle2498_g20277;
			float3 localcalcSpecularTerm2626_g20277 = calcSpecularTerm( GGXVisibilityTerm2626_g20277 , GGXTerm2626_g20277 , NdotL2626_g20277 , LdotH2626_g20277 , roughness2626_g20277 , specColor2626_g20277 , lightcolor2626_g20277 , specularTermToggle2626_g20277 );
			float NdotL2635_g20277 = break2546_g20277.w;
			float NdotV2635_g20277 = CorrectedNdotV2507_g20277;
			float roughness2635_g20277 = roughness2729_g20277;
			float localgetSmithJointGGXVisibilityTerm2635_g20277 = getSmithJointGGXVisibilityTerm( NdotL2635_g20277 , NdotV2635_g20277 , roughness2635_g20277 );
			float GGXVisibilityTerm2643_g20277 = localgetSmithJointGGXVisibilityTerm2635_g20277;
			float3 appendResult278_g20258 = (float3(break346_g20258.w , break277_g20258.w , break300_g20258.w));
			float3 normalizeResult281_g20258 = normalize( appendResult278_g20258 );
			float3 normalizeResult319_g20258 = ASESafeNormalize( ( ase_worldViewDir + normalizeResult281_g20258 ) );
			float dotResult314_g20258 = dot( WorldNormals20_g20258 , normalizeResult319_g20258 );
			float VLNdotHFour8143 = dotResult314_g20258;
			float NdotH2634_g20277 = max( VLNdotHFour8143 , 0.0 );
			float roughness2634_g20277 = roughness2729_g20277;
			float localgetGGXTerm2634_g20277 = getGGXTerm( NdotH2634_g20277 , roughness2634_g20277 );
			float GGXTerm2643_g20277 = localgetGGXTerm2634_g20277;
			float NdotL2643_g20277 = break2546_g20277.w;
			float dotResult362_g20258 = dot( normalizeResult281_g20258 , normalizeResult319_g20258 );
			float VLLdotHFour8149 = dotResult362_g20258;
			float LdotH2643_g20277 = max( VLLdotHFour8149 , 0.0 );
			float roughness2643_g20277 = roughness2729_g20277;
			float3 specColor2643_g20277 = SpecColor2715_g20277;
			float3 localLightColorZThree2840_g20277 = LightColorZThree();
			float3 lightcolor2643_g20277 = ( localLightColorZThree2840_g20277 * break2841_g20277.w );
			float specularTermToggle2643_g20277 = SpecularHighlightToggle2498_g20277;
			float3 localcalcSpecularTerm2643_g20277 = calcSpecularTerm( GGXVisibilityTerm2643_g20277 , GGXTerm2643_g20277 , NdotL2643_g20277 , LdotH2643_g20277 , roughness2643_g20277 , specColor2643_g20277 , lightcolor2643_g20277 , specularTermToggle2643_g20277 );
			#ifdef UNITY_PASS_FORWARDBASE
				float3 staticSwitch2764_g20277 = ( localcalcSpecularTerm2521_g20277 + localcalcSpecularTerm2609_g20277 + localcalcSpecularTerm2626_g20277 + localcalcSpecularTerm2643_g20277 );
			#else
				float3 staticSwitch2764_g20277 = float3( 0,0,0 );
			#endif
			#ifdef VERTEXLIGHT_ON
				float3 staticSwitch2765_g20277 = staticSwitch2764_g20277;
			#else
				float3 staticSwitch2765_g20277 = float3( 0,0,0 );
			#endif
			float3 VertexLightGGXPBRMetallicWF2533_g20277 = staticSwitch2765_g20277;
			float3 specularTerm2404_g20277 = ( ifLocalVar2672_g20277 + VertexLightGGXPBRMetallicWF2533_g20277 );
			float NdotV2404_g20277 = CorrectedNdotV2507_g20277;
			float3 specColor2404_g20277 = SpecColor2715_g20277;
			float roughness2404_g20277 = roughness2729_g20277;
			float OneMinusReflectivity2718_g20277 = oneMinusReflectivity2324_g20277;
			float oneMinusReflectivity2404_g20277 = OneMinusReflectivity2718_g20277;
			float localGetSpecCubeDimensions1255_g20277 = ( 0.0 );
			float testW1255_g20277 = 0;
			float testH1255_g20277 = 0;
			{
			#ifndef SHADER_TARGET_SURFACE_ANALYSIS
			unity_SpecCube0.GetDimensions(testW1255_g20277,testH1255_g20277);
			#endif
			}
			float3 indirectNormal2316_g20277 = WorldNormals305_g20277;
			Unity_GlossyEnvironmentData g2316_g20277 = UnityGlossyEnvironmentSetup( SmoothnessTex290_g20277, data.worldViewDir, indirectNormal2316_g20277, float3(0,0,0));
			float3 indirectSpecular2316_g20277 = UnityGI_IndirectSpecular( data, 1.0, indirectNormal2316_g20277, g2316_g20277 );
			float3 ase_worldReflection = WorldReflectionVector( i, float3( 0, 0, 1 ) );
			float3 ifLocalVar45_g20277 = 0;
			if( 1.0 > IgnoreNormalsToggle323_g20277 )
				ifLocalVar45_g20277 = WorldReflectionVector( i , normals8097 );
			else if( 1.0 == IgnoreNormalsToggle323_g20277 )
				ifLocalVar45_g20277 = ase_worldReflection;
			half3 linearRgb1631_g20262 = ( ase_lightColor.rgb * staticSwitch1035_g20262 );
			half localgetLinearRgbToLuminance1631_g20262 = getLinearRgbToLuminance( linearRgb1631_g20262 );
			half3 linearRgb1630_g20262 = ( lerpResult1661_g20262 * AmbientLightBoosted1782_g20262 );
			half localgetLinearRgbToLuminance1630_g20262 = getLinearRgbToLuminance( linearRgb1630_g20262 );
			#ifdef UNITY_PASS_FORWARDBASE
				float staticSwitch1995_g20262 = localgetLinearRgbToLuminance1433_g20262;
			#else
				float staticSwitch1995_g20262 = 0.0;
			#endif
			#ifdef VERTEXLIGHT_ON
				float staticSwitch1994_g20262 = staticSwitch1995_g20262;
			#else
				float staticSwitch1994_g20262 = 0.0;
			#endif
			float LuminancedVertexLights1991_g20262 = staticSwitch1994_g20262;
			float LuminancedLight8246 = ( ( localgetLinearRgbToLuminance1631_g20262 + localgetLinearRgbToLuminance1630_g20262 ) + LuminancedVertexLights1991_g20262 );
			float3 BakedCubemap1524_g20277 = ( (SAMPLE_TEXTURECUBE_LOD( _Cubemap, sampler_Cubemap, ifLocalVar45_g20277, ( ( 1.0 - SmoothnessTex290_g20277 ) * 10.0 ) )).rgb * saturate( LuminancedLight8246 ) );
			float3 ifLocalVar2337_g20277 = 0;
			if( testW1255_g20277 >= 16 )
				ifLocalVar2337_g20277 = indirectSpecular2316_g20277;
			else
				ifLocalVar2337_g20277 = BakedCubemap1524_g20277;
			float3 ifLocalVar2338_g20277 = 0;
			UNITY_BRANCH 
			if( 1.0 > _WorkflowSwitch )
				ifLocalVar2338_g20277 = ifLocalVar2337_g20277;
			else if( 1.0 == _WorkflowSwitch )
				ifLocalVar2338_g20277 = BakedCubemap1524_g20277;
			else if( 1.0 < _WorkflowSwitch )
				ifLocalVar2338_g20277 = indirectSpecular2316_g20277;
			float AmbientOcclusion8157 = lerpResult54_g20262;
			float AO2783_g20277 = AmbientOcclusion8157;
			float3 indirectspecular2404_g20277 = ( ifLocalVar2338_g20277 * AO2783_g20277 );
			float smoothness2404_g20277 = SmoothnessTex290_g20277;
			float perceptualRoughness2404_g20277 = perceptualRoughness2761_g20277;
			float3 localcalcSpecularBase2404_g20277 = calcSpecularBase( specularTerm2404_g20277 , NdotV2404_g20277 , specColor2404_g20277 , roughness2404_g20277 , oneMinusReflectivity2404_g20277 , indirectspecular2404_g20277 , smoothness2404_g20277 , perceptualRoughness2404_g20277 );
			float3 SpecularReflections316_g20277 = localcalcSpecularBase2404_g20277;
			float3 temp_output_8983_0 = ( SpecularReflections316_g20277 * temp_output_80_0_g20277 );
			float3 CubemapReflections8294 = ( temp_output_8983_0 * temp_output_8251_0 );
			float3 worldSpaceViewDir449_g20285 = WorldSpaceViewDir( float4( 0,0,0,1 ) );
			float3 normalizeResult803_g20285 = ASESafeNormalize( worldSpaceViewDir449_g20285 );
			float3 ifLocalVar906_g20285 = 0;
			if( 1.0 > _MatcapViewDir )
				ifLocalVar906_g20285 = ase_worldViewDir;
			else if( 1.0 == _MatcapViewDir )
				ifLocalVar906_g20285 = normalizeResult803_g20285;
			float3 _Vector0 = float3(0,1,0);
			float dotResult9_g20285 = dot( ifLocalVar906_g20285 , _Vector0 );
			float3 normalizeResult13_g20285 = normalize( ( _Vector0 - ( dotResult9_g20285 * ifLocalVar906_g20285 ) ) );
			float3 normalizeResult19_g20285 = normalize( cross( ifLocalVar906_g20285 , normalizeResult13_g20285 ) );
			float3 normalizeResult16_g20285 = normalize( ase_worldNormal );
			float3 ifLocalVar20_g20285 = 0;
			if( 1.0 > _IgnoreNormalsMatcap )
				ifLocalVar20_g20285 = worldnormals8049;
			else if( 1.0 == _IgnoreNormalsMatcap )
				ifLocalVar20_g20285 = normalizeResult16_g20285;
			float dotResult22_g20285 = dot( normalizeResult19_g20285 , ifLocalVar20_g20285 );
			float dotResult23_g20285 = dot( normalizeResult13_g20285 , ifLocalVar20_g20285 );
			float2 appendResult25_g20285 = (float2(dotResult22_g20285 , dotResult23_g20285));
			float2 MatcapUV215_g20285 = ( ( appendResult25_g20285 * 0.5 ) + 0.5 );
			float ReflectionR1Intensity224_g20285 = _ReflectionR1Intensity;
			float3 temp_output_45_0_g20285 = ( ( (SAMPLE_TEXTURE2D_LOD( _MatcapR1, sampler_trilinear_repeat, MatcapUV215_g20285, ( ( 1.0 - _MatcapR1smoothness ) * 10.0 ) )).rgb * (_MatcapR1Color).rgb * ( _MatcapR1Color.a * MatcapR1Blending703_g20285 ) ) * ReflectionR1Intensity224_g20285 );
			#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch2216_g20262 = ( ase_lightColor.rgb * ase_lightAtten );
			#else
				float3 staticSwitch2216_g20262 = ase_lightColor.rgb;
			#endif
			half3 linearRgb2203_g20262 = staticSwitch2216_g20262;
			half localgetLinearRgbToLuminance2203_g20262 = getLinearRgbToLuminance( linearRgb2203_g20262 );
			half3 linearRgb2202_g20262 = AmbientLightBoosted1782_g20262;
			half localgetLinearRgbToLuminance2202_g20262 = getLinearRgbToLuminance( linearRgb2202_g20262 );
			float LuminancedLightNoShadows9019 = ( localgetLinearRgbToLuminance2203_g20262 + localgetLinearRgbToLuminance2202_g20262 + LuminancedVertexLights1991_g20262 );
			float MatcapLighting825_g20285 = saturate( LuminancedLightNoShadows9019 );
			float3 MainTex207_g20285 = MainTexSaturate8087;
			float AmbientOcclusion834_g20285 = AmbientOcclusion8157;
			float3 PreClampFinalLight8159 = ( ForFinalLightCalculation993_g20262 + DiffuseVertexLighting354_g20262 );
			float3 MatcapLightingRGB901_g20285 = PreClampFinalLight8159;
			float3 ifLocalVar59_g20285 = 0;
			if( 1.0 > _MatcapR1Mode )
				ifLocalVar59_g20285 = ( temp_output_45_0_g20285 * MatcapLighting825_g20285 * MainTex207_g20285 * AmbientOcclusion834_g20285 );
			else if( 1.0 == _MatcapR1Mode )
				ifLocalVar59_g20285 = ( temp_output_45_0_g20285 * MatcapLightingRGB901_g20285 );
			else if( 1.0 < _MatcapR1Mode )
				ifLocalVar59_g20285 = ( ( 1.0 - temp_output_45_0_g20285 ) * MatcapLightingRGB901_g20285 );
			float3 lerpResult60_g20285 = lerp( float3( 1,1,1 ) , MainTex207_g20285 , _ReflectionR1Tint);
			float3 ifLocalVar427_g20285 = 0;
			UNITY_BRANCH 
			if( _MatcapR1Toggle > 0 )
				ifLocalVar427_g20285 = ( ifLocalVar59_g20285 * lerpResult60_g20285 * ( ReflectionR1Intensity224_g20285 * ReflectionMaskR199_g20285 ) );
			float3 MatcapR1calc419_g20285 = ( ifLocalVar427_g20285 * temp_output_570_0_g20285 );
			float ReflectionG2Intensity298_g20285 = _ReflectionG2Intensity;
			float3 temp_output_277_0_g20285 = ( ( (SAMPLE_TEXTURE2D_LOD( _MatcapG2, sampler_trilinear_repeat, MatcapUV215_g20285, ( ( 1.0 - _MatcapG2smoothness ) * 10.0 ) )).rgb * (_MatcapG2Color).rgb * ( _MatcapG2Color.a * MatcapG2Blending706_g20285 ) ) * ReflectionG2Intensity298_g20285 );
			float3 ifLocalVar262_g20285 = 0;
			if( 1.0 > _MatcapG2Mode )
				ifLocalVar262_g20285 = ( temp_output_277_0_g20285 * MatcapLighting825_g20285 * MainTex207_g20285 * AmbientOcclusion834_g20285 );
			else if( 1.0 == _MatcapG2Mode )
				ifLocalVar262_g20285 = ( temp_output_277_0_g20285 * MatcapLightingRGB901_g20285 );
			else if( 1.0 < _MatcapG2Mode )
				ifLocalVar262_g20285 = ( ( 1.0 - temp_output_277_0_g20285 ) * MatcapLightingRGB901_g20285 );
			float3 lerpResult254_g20285 = lerp( float3( 1,1,1 ) , MainTex207_g20285 , _ReflectionG2Tint);
			float3 ifLocalVar437_g20285 = 0;
			UNITY_BRANCH 
			if( _MatcapG2Toggle > 0 )
				ifLocalVar437_g20285 = ( ifLocalVar262_g20285 * lerpResult254_g20285 * ( ReflectionG2Intensity298_g20285 * ReflectionMaskG200_g20285 ) );
			float3 MatcapG2calc420_g20285 = ( ifLocalVar437_g20285 * temp_output_573_0_g20285 );
			float ReflectionB3Intensity300_g20285 = _ReflectionB3Intensity;
			float3 temp_output_361_0_g20285 = ( ( (SAMPLE_TEXTURE2D_LOD( _MatcapB3, sampler_trilinear_repeat, MatcapUV215_g20285, ( ( 1.0 - _MatcapB3smoothness ) * 10.0 ) )).rgb * (_MatcapB3Color).rgb * ( _MatcapB3Color.a * MatcapB3Blending708_g20285 ) ) * ReflectionB3Intensity300_g20285 );
			float3 ifLocalVar348_g20285 = 0;
			if( 1.0 > _MatcapB3Mode )
				ifLocalVar348_g20285 = ( temp_output_361_0_g20285 * MatcapLighting825_g20285 * MainTex207_g20285 * AmbientOcclusion834_g20285 );
			else if( 1.0 == _MatcapB3Mode )
				ifLocalVar348_g20285 = ( temp_output_361_0_g20285 * MatcapLightingRGB901_g20285 );
			else if( 1.0 < _MatcapB3Mode )
				ifLocalVar348_g20285 = ( ( 1.0 - temp_output_361_0_g20285 ) * MatcapLightingRGB901_g20285 );
			float3 lerpResult340_g20285 = lerp( float3( 1,1,1 ) , MainTex207_g20285 , _ReflectionB3Tint);
			float3 ifLocalVar438_g20285 = 0;
			UNITY_BRANCH 
			if( _MatcapB3Toggle > 0 )
				ifLocalVar438_g20285 = ( ifLocalVar348_g20285 * lerpResult340_g20285 * ( ReflectionB3Intensity300_g20285 * ReflectionMaskB201_g20285 ) );
			float3 MatcapB3calc421_g20285 = ( ifLocalVar438_g20285 * temp_output_576_0_g20285 );
			float ReflectionA4Intensity302_g20285 = _ReflectionA4Intensity;
			float3 temp_output_402_0_g20285 = ( ( (SAMPLE_TEXTURE2D_LOD( _MatcapA4, sampler_trilinear_repeat, MatcapUV215_g20285, ( ( 1.0 - _MatcapA4smoothness ) * 10.0 ) )).rgb * (_MatcapA4Color).rgb * ( _MatcapA4Color.a * MatcapA4Blending710_g20285 ) ) * ReflectionA4Intensity302_g20285 );
			float3 ifLocalVar389_g20285 = 0;
			if( 1.0 > _MatcapA4Mode )
				ifLocalVar389_g20285 = ( temp_output_402_0_g20285 * MatcapLighting825_g20285 * MainTex207_g20285 * AmbientOcclusion834_g20285 );
			else if( 1.0 == _MatcapA4Mode )
				ifLocalVar389_g20285 = ( temp_output_402_0_g20285 * MatcapLightingRGB901_g20285 );
			else if( 1.0 < _MatcapA4Mode )
				ifLocalVar389_g20285 = ( ( 1.0 - temp_output_402_0_g20285 ) * MatcapLightingRGB901_g20285 );
			float3 lerpResult381_g20285 = lerp( float3( 1,1,1 ) , MainTex207_g20285 , _ReflectionA4Tint);
			float3 ifLocalVar439_g20285 = 0;
			UNITY_BRANCH 
			if( _MatcapA4Toggle > 0 )
				ifLocalVar439_g20285 = ( ifLocalVar389_g20285 * lerpResult381_g20285 * ( ReflectionA4Intensity302_g20285 * ReflectionMaskA202_g20285 ) );
			float3 MatcapA4calc422_g20285 = ( ifLocalVar439_g20285 * temp_output_579_0_g20285 );
			float3 Matcap8301 = ( MatcapR1calc419_g20285 + MatcapG2calc420_g20285 + MatcapB3calc421_g20285 + MatcapA4calc422_g20285 );
			float DirectionToggle135_g20274 = _RimDirectionToggle;
			float RimShape196_g20274 = pow( ( 1.0 - saturate( ( NdotV8069 + _RimOffset ) ) ) , max( _RimPower , ( 1E-06 + 1E-06 ) ) );
			float3 WorldNormals127_g20274 = worldnormals8049;
			float fresnelNdotV93_g20274 = dot( WorldNormals127_g20274, ase_worldViewDir );
			float fresnelNode93_g20274 = ( _RimFresnelBias + _RimFresnelScale * pow( 1.0 - fresnelNdotV93_g20274, _RimFresnelPower ) );
			float Fresnel171_g20274 = fresnelNode93_g20274;
			float ifLocalVar274_g20274 = 0;
			if( 1.0 > DirectionToggle135_g20274 )
				ifLocalVar274_g20274 = RimShape196_g20274;
			else if( 1.0 == DirectionToggle135_g20274 )
				ifLocalVar274_g20274 = Fresnel171_g20274;
			float temp_output_2_0_g20275 = _RimTint;
			float temp_output_3_0_g20275 = ( 1.0 - temp_output_2_0_g20275 );
			float3 appendResult7_g20275 = (float3(temp_output_3_0_g20275 , temp_output_3_0_g20275 , temp_output_3_0_g20275));
			float3 temp_output_35_0_g20274 = ( ( MainTexSaturate8087 * temp_output_2_0_g20275 ) + appendResult7_g20275 );
			float UVSwitchProp340_g20274 = _RimMaskUVSwitch;
			float2 UV0340_g20274 = i.uv_texcoord.xy;
			float2 UV1340_g20274 = i.uv2_texcoord2;
			float2 UV2340_g20274 = i.uv3_texcoord3;
			float2 UV3340_g20274 = i.uv4_texcoord4;
			float2 localUVSwitch340_g20274 = UVSwitch( UVSwitchProp340_g20274 , UV0340_g20274 , UV1340_g20274 , UV2340_g20274 , UV3340_g20274 );
			float4 tex2DNode296_g20274 = SAMPLE_TEXTURE2D( _RimMask, sampler_trilinear_repeat, ( ( _RimMask_ST.xy * localUVSwitch340_g20274 ) + _RimMask_ST.zw ) );
			float ifLocalVar104_g20274 = 0;
			if( 1.0 > _RimLightMaskinv )
				ifLocalVar104_g20274 = tex2DNode296_g20274.g;
			else if( 1.0 == _RimLightMaskinv )
				ifLocalVar104_g20274 = ( 1.0 - tex2DNode296_g20274.g );
			float FinalMask165_g20274 = ifLocalVar104_g20274;
			float ifLocalVar181_g20274 = 0;
			if( 1.0 > DirectionToggle135_g20274 )
				ifLocalVar181_g20274 = RimShape196_g20274;
			else if( 1.0 == DirectionToggle135_g20274 )
				ifLocalVar181_g20274 = Fresnel171_g20274;
			float3 indirectNormal184_g20274 = WorldNormals127_g20274;
			Unity_GlossyEnvironmentData g184_g20274 = UnityGlossyEnvironmentSetup( _RimSpecLightsmoothness, data.worldViewDir, indirectNormal184_g20274, float3(0,0,0));
			float3 indirectSpecular184_g20274 = UnityGI_IndirectSpecular( data, AmbientOcclusion8157, indirectNormal184_g20274, g184_g20274 );
			float3 ifLocalVar203_g20274 = 0;
			if( 1.0 == _RimSpecToggle )
				ifLocalVar203_g20274 = ( saturate( ifLocalVar181_g20274 ) * indirectSpecular184_g20274 );
			float3 temp_output_189_0_g20274 = ( ( ( PreClampFinalLight8159 * saturate( ifLocalVar274_g20274 ) ) * temp_output_35_0_g20274 * (_RimColor).rgb * FinalMask165_g20274 ) + ( ifLocalVar203_g20274 * temp_output_35_0_g20274 * FinalMask165_g20274 * _RimOpacity ) );
			float3 switchResult252_g20274 = (((i.ASEVFace>0)?(temp_output_189_0_g20274):(float3( 0,0,0 ))));
			float3 switchResult253_g20274 = (((i.ASEVFace>0)?(float3( 0,0,0 )):(temp_output_189_0_g20274)));
			float3 ifLocalVar251_g20274 = 0;
			if( 1.0 > _RimFaceCulling )
				ifLocalVar251_g20274 = temp_output_189_0_g20274;
			else if( 1.0 == _RimFaceCulling )
				ifLocalVar251_g20274 = switchResult252_g20274;
			else if( 1.0 < _RimFaceCulling )
				ifLocalVar251_g20274 = switchResult253_g20274;
			float3 ifLocalVar8261 = 0;
			if( 1.0 == _RimToggle )
				ifLocalVar8261 = ifLocalVar251_g20274;
			float3 rimlight8291 = ( ifLocalVar8261 * ( _RimToggle * ToggleAdvanced7867 ) );
			float3 uvs_Flipbook = i.uv_texcoord;
			uvs_Flipbook.xy = i.uv_texcoord.xy * _Flipbook_ST.xy + _Flipbook_ST.zw;
			float cos16_g20270 = cos( ( _RotateFlipbook * UNITY_PI ) );
			float sin16_g20270 = sin( ( _RotateFlipbook * UNITY_PI ) );
			float2 rotator16_g20270 = mul( uvs_Flipbook.xy - float2( 0.5,0.5 ) , float2x2( cos16_g20270 , -sin16_g20270 , sin16_g20270 , cos16_g20270 )) + float2( 0.5,0.5 );
			float2 _Vector3 = float2(0,0);
			float2 temp_output_6_0_g20270 = ( 1.0 - float2( 1,1 ) );
			float2 temp_output_7_0_g20270 = ( 2.0 + float2( 0,0 ) );
			float2 _Vector2 = float2(1,1);
			float2 temp_output_19_0_g20270 = (_Vector3 + (rotator16_g20270 - ( _Vector3 + ( temp_output_6_0_g20270 / temp_output_7_0_g20270 ) )) * (_Vector2 - _Vector3) / (( _Vector2 - ( temp_output_6_0_g20270 / temp_output_7_0_g20270 ) ) - ( _Vector3 + ( temp_output_6_0_g20270 / temp_output_7_0_g20270 ) )));
			float temp_output_4_0_g20272 = (float)_Columns;
			float temp_output_5_0_g20272 = (float)_Rows;
			float2 appendResult7_g20272 = (float2(temp_output_4_0_g20272 , temp_output_5_0_g20272));
			float totalFrames39_g20272 = ( temp_output_4_0_g20272 * temp_output_5_0_g20272 );
			float2 appendResult8_g20272 = (float2(totalFrames39_g20272 , temp_output_5_0_g20272));
			float mulTime26_g20270 = _Time.y * (float)_Speed;
			float clampResult42_g20272 = clamp( 0.0 , 0.0001 , ( totalFrames39_g20272 - 1.0 ) );
			float temp_output_35_0_g20272 = frac( ( ( fmod( mulTime26_g20270 , (float)(float)_MaxFrames ) + clampResult42_g20272 ) / totalFrames39_g20272 ) );
			float2 appendResult29_g20272 = (float2(temp_output_35_0_g20272 , ( 1.0 - temp_output_35_0_g20272 )));
			float2 temp_output_15_0_g20272 = ( ( temp_output_19_0_g20270 / appendResult7_g20272 ) + ( floor( ( appendResult8_g20272 * appendResult29_g20272 ) ) / appendResult7_g20272 ) );
			float2 break20_g20270 = temp_output_19_0_g20270;
			float A1_g20271 = floor( max( break20_g20270.x , break20_g20270.y ) );
			float B1_g20271 = floor( ( 1.0 - min( break20_g20270.x , break20_g20270.y ) ) );
			float localASEOr1_g20271 = ASEOr( A1_g20271 , B1_g20271 );
			float3 PreFinalLight8133 = ( temp_output_1997_0_g20262 + temp_output_782_0_g20262 );
			float3 lerpResult43_g20270 = lerp( PreFinalLight8133 , FinalLight8139 , _FlipbookTint);
			float3 ifLocalVar8627 = 0;
			if( _FlipbookToggle == 1.0 )
				ifLocalVar8627 = ( ( (SAMPLE_TEXTURE2D( _Flipbook, sampler_Flipbook, temp_output_15_0_g20272 )).rgb * ( 1.0 - localASEOr1_g20271 ) ) * (_FlipbookColor).rgb * _FlipbookColor.a * lerpResult43_g20270 );
			float3 Flipbook8289 = ( ifLocalVar8627 * ( _FlipbookToggle * ToggleAdvanced7867 ) );
			float temp_output_142_0_g20276 = GrayscaledLight8090;
			float3 WorldNormals72_g20276 = worldnormals8049;
			float3 temp_cast_48 = (1.0).xxx;
			float UVSwitchProp449_g20276 = _SSSThicknessMapUVSwitch;
			float2 UV0449_g20276 = i.uv_texcoord.xy;
			float2 UV1449_g20276 = i.uv2_texcoord2;
			float2 UV2449_g20276 = i.uv3_texcoord3;
			float2 UV3449_g20276 = i.uv4_texcoord4;
			float2 localUVSwitch449_g20276 = UVSwitch( UVSwitchProp449_g20276 , UV0449_g20276 , UV1449_g20276 , UV2449_g20276 , UV3449_g20276 );
			float3 temp_output_349_0_g20276 = (SAMPLE_TEXTURE2D( _SSSThicknessMap, sampler_trilinear_repeat, ( ( _SSSThicknessMap_ST.xy * localUVSwitch449_g20276 ) + _SSSThicknessMap_ST.zw ) )).rgb;
			float3 ifLocalVar52_g20276 = 0;
			if( 1.0 > _SSSThicknessinv )
				ifLocalVar52_g20276 = temp_output_349_0_g20276;
			else if( 1.0 == _SSSThicknessinv )
				ifLocalVar52_g20276 = ( 1.0 - temp_output_349_0_g20276 );
			float3 ifLocalVar426_g20276 = 0;
			if( 1.0 > _SSSMapMode )
				ifLocalVar426_g20276 = temp_cast_48;
			else if( 1.0 == _SSSMapMode )
				ifLocalVar426_g20276 = ifLocalVar52_g20276;
			float3 ThicknessMapMod432_g20276 = ifLocalVar426_g20276;
			float3 break435_g20276 = ThicknessMapMod432_g20276;
			float SubsurfaceDistortionModifier73_g20276 = ( _SubsurfaceDistortionModifier * break435_g20276.z );
			float dotResult9_g20276 = dot( -( ase_worldlightDir + ( WorldNormals72_g20276 * SubsurfaceDistortionModifier73_g20276 ) ) , ase_worldViewDir );
			float SSSPower74_g20276 = ( _SSSPower * break435_g20276.y );
			float SSSIntensity75_g20276 = ( _SSSScale * break435_g20276.x );
			float temp_output_428_0_g20276 = ( saturate( pow( saturate( dotResult9_g20276 ) , SSSPower74_g20276 ) ) * SSSIntensity75_g20276 );
			float3 temp_cast_49 = (temp_output_428_0_g20276).xxx;
			float3 MainTex76_g20276 = MainTexSaturate8087;
			float SSSTint77_g20276 = _SSSTint;
			float3 lerpResult40_g20276 = lerp( temp_cast_49 , ( temp_output_428_0_g20276 * MainTex76_g20276 ) , SSSTint77_g20276);
			#ifdef UNITY_PASS_FORWARDADD
				float staticSwitch248_g20276 = ase_lightAtten;
			#else
				float staticSwitch248_g20276 = 0.0;
			#endif
			float3 TangentNormals2171_g20262 = normals8097;
			float3 temp_cast_50 = (ase_lightAtten).xxx;
			float dotResult2167_g20262 = dot( TangentNormals2171_g20262 , temp_cast_50 );
			float SSSTangentNormalAtten2169_g20262 = ( ( dotResult2167_g20262 * ( NdLHalfingControl704_g20262 + 0.5 ) ) + ( ( ( ( 1.0 - NdLHalfingControl704_g20262 ) * 0.5 ) - 0.25 ) + ( RampOffset167_g20262 - 0.5 ) ) );
			float2 temp_cast_51 = (SSSTangentNormalAtten2169_g20262).xx;
			float3 SSSToonRampTexATTEN2175_g20262 = (SAMPLE_TEXTURE2D( _ToonRamp, sampler_linear_clamp, temp_cast_51 )).rgb;
			#ifdef DIRECTIONAL
				float3 staticSwitch2152_g20262 = SSSToonRampTexATTEN2175_g20262;
			#else
				float3 staticSwitch2152_g20262 = _egg;
			#endif
			float3 SSSDirectionalAttenuationRamp2190_g20262 = staticSwitch2152_g20262;
			half3 linearRgb2154_g20262 = SSSDirectionalAttenuationRamp2190_g20262;
			half localgetLinearRgbToLuminance2154_g20262 = getLinearRgbToLuminance( linearRgb2154_g20262 );
			#ifdef DIRECTIONAL
				float staticSwitch2192_g20262 = SSSTangentNormalAtten2169_g20262;
			#else
				float staticSwitch2192_g20262 = 1.0;
			#endif
			float SSSDirectionalAttenuationSteps2194_g20262 = staticSwitch2192_g20262;
			float SSSShadowCasterSteps2195_g20262 = saturate( ( floor( ( SSSDirectionalAttenuationSteps2194_g20262 * Steps30_g20262 ) ) / ( Steps30_g20262 - 1 ) ) );
			float ifLocalVar2197_g20262 = 0;
			UNITY_BRANCH 
			if( 1.0 > ToggleSteps66_g20262 )
				ifLocalVar2197_g20262 = localgetLinearRgbToLuminance2154_g20262;
			else if( 1.0 == ToggleSteps66_g20262 )
				ifLocalVar2197_g20262 = SSSShadowCasterSteps2195_g20262;
			float SSSAtten9010 = ifLocalVar2197_g20262;
			#ifdef DIRECTIONAL
				float staticSwitch120_g20276 = SSSAtten9010;
			#else
				float staticSwitch120_g20276 = staticSwitch248_g20276;
			#endif
			float3 temp_output_56_0_g20276 = ( ase_lightColor.rgb * staticSwitch120_g20276 );
			float3 localambientDir58_g20276 = ambientDir();
			float dotResult92_g20276 = dot( -( localambientDir58_g20276 + ( WorldNormals72_g20276 * SubsurfaceDistortionModifier73_g20276 ) ) , ase_worldViewDir );
			float temp_output_427_0_g20276 = ( saturate( pow( saturate( dotResult92_g20276 ) , SSSPower74_g20276 ) ) * SSSIntensity75_g20276 );
			float3 temp_cast_52 = (temp_output_427_0_g20276).xxx;
			float3 lerpResult98_g20276 = lerp( temp_cast_52 , ( temp_output_427_0_g20276 * MainTex76_g20276 ) , SSSTint77_g20276);
			half3 localAmbient319_g20276 = Ambient();
			float3 ifLocalVar351_g20276 = 0;
			if( temp_output_142_0_g20276 > 0.0 )
				ifLocalVar351_g20276 = ( lerpResult40_g20276 * temp_output_56_0_g20276 );
			else if( temp_output_142_0_g20276 == 0.0 )
				ifLocalVar351_g20276 = ( lerpResult98_g20276 * localAmbient319_g20276 );
			float3 temp_cast_53 = (1.0).xxx;
			float3 ifLocalVar424_g20276 = 0;
			if( 1.0 > _SSSMapMode )
				ifLocalVar424_g20276 = ifLocalVar52_g20276;
			else if( 1.0 == _SSSMapMode )
				ifLocalVar424_g20276 = temp_cast_53;
			float3 ThicknessMapColor431_g20276 = ifLocalVar424_g20276;
			half3 linearRgb390_g20276 = ase_lightColor.rgb;
			half localgetLinearRgbToLuminance390_g20276 = getLinearRgbToLuminance( linearRgb390_g20276 );
			half3 linearRgb391_g20276 = localAmbient319_g20276;
			half localgetLinearRgbToLuminance391_g20276 = getLinearRgbToLuminance( linearRgb391_g20276 );
			float3 ifLocalVar388_g20276 = 0;
			if( temp_output_142_0_g20276 > 0.0 )
				ifLocalVar388_g20276 = ( lerpResult40_g20276 * staticSwitch120_g20276 * localgetLinearRgbToLuminance390_g20276 );
			else if( temp_output_142_0_g20276 == 0.0 )
				ifLocalVar388_g20276 = ( lerpResult98_g20276 * localgetLinearRgbToLuminance391_g20276 );
			float3 SSSColor84_g20276 = (_SSSColor).rgb;
			float3 ifLocalVar389_g20276 = 0;
			if( temp_output_142_0_g20276 > 0.0 )
				ifLocalVar389_g20276 = ( lerpResult40_g20276 * temp_output_56_0_g20276 );
			else if( temp_output_142_0_g20276 == 0.0 )
				ifLocalVar389_g20276 = ( lerpResult98_g20276 * localAmbient319_g20276 );
			float3 ifLocalVar8236 = 0;
			if( 1.0 > _SSSSetting )
				ifLocalVar8236 = ( ifLocalVar351_g20276 * ThicknessMapColor431_g20276 );
			else if( 1.0 == _SSSSetting )
				ifLocalVar8236 = ( ifLocalVar388_g20276 * ThicknessMapColor431_g20276 * SSSColor84_g20276 );
			else if( 1.0 < _SSSSetting )
				ifLocalVar8236 = ( ifLocalVar389_g20276 * ThicknessMapColor431_g20276 * SSSColor84_g20276 );
			float3 SSS8245 = ifLocalVar8236;
			float3 temp_output_8329_0 = ( ( SpecularHighlight8256 * ( ToggleAdvanced7867 * _SpecularToggle ) ) + CubemapReflections8294 + Matcap8301 + rimlight8291 + Flipbook8289 + ( SSS8245 * ( ToggleAdvanced7867 * _SSSToggle ) ) );
			float3 ifLocalVar8350 = 0;
			if( 1.0 == _RenderingMode )
				ifLocalVar8350 = ( temp_output_8329_0 * AlphaChannelMul8318 );
			else
				ifLocalVar8350 = temp_output_8329_0;
			float UVSwitchProp8943 = _EmissionUVSwitch;
			float2 UV08943 = i.uv_texcoord.xy;
			float2 UV18943 = i.uv2_texcoord2;
			float2 UV28943 = i.uv3_texcoord3;
			float2 UV38943 = i.uv4_texcoord4;
			float2 localUVSwitch8943 = UVSwitch( UVSwitchProp8943 , UV08943 , UV18943 , UV28943 , UV38943 );
			float2 EmissionUVSwitch8949 = ( ( _Emission_ST.xy * localUVSwitch8943 ) + _Emission_ST.zw );
			float3 lerpResult8296 = lerp( float3( 1,1,1 ) , MainTexSaturate8087 , _EmissionTint);
			float3 lerpResult8326 = lerp( ( (SAMPLE_TEXTURE2D( _Emission, sampler_MainTex, EmissionUVSwitch8949 )).rgb * (_EmissionColor).rgb * lerpResult8296 ) , float3( 0,0,0 ) , saturate( ( _EmissionLightscale * LuminancedLight8246 ) ));
			#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch8902 = float3( 0,0,0 );
			#else
				float3 staticSwitch8902 = lerpResult8326;
			#endif
			float3 BasicEmission8348 = staticSwitch8902;
			float3 ase_vertex3Pos = mul( unity_WorldToObject, float4( i.worldPos , 1 ) );
			float4 transform698_g20282 = mul(unity_ObjectToWorld,float4( ase_vertex3Pos , 0.0 ));
			float Space701_g20282 = transform698_g20282.y;
			float ifLocalVar717_g20282 = 0;
			if( _ToggleMaterializeDirInv > 0.0 )
				ifLocalVar717_g20282 = -Space701_g20282;
			else if( _ToggleMaterializeDirInv == 0.0 )
				ifLocalVar717_g20282 = Space701_g20282;
			float3 ase_parentObjectScale = (1.0/float3( length( unity_WorldToObject[ 0 ].xyz ), length( unity_WorldToObject[ 1 ].xyz ), length( unity_WorldToObject[ 2 ].xyz ) ));
			float ObjectScale711_g20282 = max( ase_parentObjectScale.y , 1.0 );
			float temp_output_739_0_g20282 = ( ifLocalVar717_g20282 / ObjectScale711_g20282 );
			float DissolveDensity732_g20282 = exp2( _DissolveDensity );
			float temp_output_753_0_g20282 = ( ( temp_output_739_0_g20282 + (-1.0 + (_MaterializeR - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g20282 );
			float UVSwitchProp991_g20282 = _DissolvePatternUVSwitch;
			float2 UV0991_g20282 = i.uv_texcoord.xy;
			float2 UV1991_g20282 = i.uv2_texcoord2;
			float2 UV2991_g20282 = i.uv3_texcoord3;
			float2 UV3991_g20282 = i.uv4_texcoord4;
			float2 localUVSwitch991_g20282 = UVSwitch( UVSwitchProp991_g20282 , UV0991_g20282 , UV1991_g20282 , UV2991_g20282 , UV3991_g20282 );
			float2 DissolvePatternUVSwitch999_g20282 = ( ( _DissolvePattern_ST.xy * localUVSwitch991_g20282 ) + _DissolvePattern_ST.zw );
			float4 tex2DNode794_g20282 = SAMPLE_TEXTURE2D( _DissolvePattern, sampler_trilinear_repeat, DissolvePatternUVSwitch999_g20282 );
			float DissolvePattern801_g20282 = max( max( tex2DNode794_g20282.r , tex2DNode794_g20282.g ) , tex2DNode794_g20282.b );
			float4 ifLocalVar752_g20282 = 0;
			if( 1.0 > _MaterializeVertexColor )
				ifLocalVar752_g20282 = SAMPLE_TEXTURE2D( _MaterializeTex, sampler_point_clamp, i.uv_texcoord.xy );
			else if( 1.0 == _MaterializeVertexColor )
				ifLocalVar752_g20282 = i.vertexColor;
			float temp_output_708_0_g20282 = ( _MaterializeColorLayerR / 100.0 );
			float temp_output_714_0_g20282 = ( temp_output_708_0_g20282 - 0.005 );
			float temp_output_716_0_g20282 = ( temp_output_708_0_g20282 + 0.005 );
			float2 appendResult727_g20282 = (float2(temp_output_714_0_g20282 , temp_output_716_0_g20282));
			float2 appendResult722_g20282 = (float2(-0.005 , temp_output_716_0_g20282));
			float2 appendResult720_g20282 = (float2(temp_output_714_0_g20282 , 1.005));
			float2 ifLocalVar734_g20282 = 0;
			if( 1.0 > _MaterializeLayerModeR )
				ifLocalVar734_g20282 = appendResult727_g20282;
			else if( 1.0 == _MaterializeLayerModeR )
				ifLocalVar734_g20282 = appendResult722_g20282;
			else if( 1.0 < _MaterializeLayerModeR )
				ifLocalVar734_g20282 = appendResult720_g20282;
			float2 break751_g20282 = ifLocalVar734_g20282;
			float temp_output_927_0_g20282 = ( _MaterializeColorLayerG / 100.0 );
			float temp_output_925_0_g20282 = ( temp_output_927_0_g20282 - 0.005 );
			float temp_output_922_0_g20282 = ( temp_output_927_0_g20282 + 0.005 );
			float2 appendResult919_g20282 = (float2(temp_output_925_0_g20282 , temp_output_922_0_g20282));
			float2 appendResult918_g20282 = (float2(-0.005 , temp_output_922_0_g20282));
			float2 appendResult916_g20282 = (float2(temp_output_925_0_g20282 , 1.005));
			float2 ifLocalVar921_g20282 = 0;
			if( 1.0 > _MaterializeLayerModeG )
				ifLocalVar921_g20282 = appendResult919_g20282;
			else if( 1.0 == _MaterializeLayerModeG )
				ifLocalVar921_g20282 = appendResult918_g20282;
			else if( 1.0 < _MaterializeLayerModeG )
				ifLocalVar921_g20282 = appendResult916_g20282;
			float2 break920_g20282 = ifLocalVar921_g20282;
			float temp_output_941_0_g20282 = ( _MaterializeColorLayerB / 100.0 );
			float temp_output_939_0_g20282 = ( temp_output_941_0_g20282 - 0.005 );
			float temp_output_936_0_g20282 = ( temp_output_941_0_g20282 + 0.005 );
			float2 appendResult933_g20282 = (float2(temp_output_939_0_g20282 , temp_output_936_0_g20282));
			float2 appendResult932_g20282 = (float2(-0.005 , temp_output_936_0_g20282));
			float2 appendResult930_g20282 = (float2(temp_output_939_0_g20282 , 1.005));
			float2 ifLocalVar935_g20282 = 0;
			if( 1.0 > _MaterializeLayerModeB )
				ifLocalVar935_g20282 = appendResult933_g20282;
			else if( 1.0 == _MaterializeLayerModeB )
				ifLocalVar935_g20282 = appendResult932_g20282;
			else if( 1.0 < _MaterializeLayerModeB )
				ifLocalVar935_g20282 = appendResult930_g20282;
			float2 break934_g20282 = ifLocalVar935_g20282;
			float temp_output_955_0_g20282 = ( _MaterializeColorLayerA / 100.0 );
			float temp_output_953_0_g20282 = ( temp_output_955_0_g20282 - 0.005 );
			float temp_output_950_0_g20282 = ( temp_output_955_0_g20282 + 0.005 );
			float2 appendResult947_g20282 = (float2(temp_output_953_0_g20282 , temp_output_950_0_g20282));
			float2 appendResult946_g20282 = (float2(-0.005 , temp_output_950_0_g20282));
			float2 appendResult944_g20282 = (float2(temp_output_953_0_g20282 , 1.005));
			float2 ifLocalVar949_g20282 = 0;
			if( 1.0 > _MaterializeLayerModeA )
				ifLocalVar949_g20282 = appendResult947_g20282;
			else if( 1.0 == _MaterializeLayerModeA )
				ifLocalVar949_g20282 = appendResult946_g20282;
			else if( 1.0 < _MaterializeLayerModeA )
				ifLocalVar949_g20282 = appendResult944_g20282;
			float2 break948_g20282 = ifLocalVar949_g20282;
			float4 appendResult956_g20282 = (float4(break751_g20282.x , break920_g20282.x , break934_g20282.x , break948_g20282.x));
			float4 appendResult957_g20282 = (float4(break751_g20282.y , break920_g20282.y , break934_g20282.y , break948_g20282.y));
			float4 MaterialzeLayers912_g20282 = (( ifLocalVar752_g20282 >= appendResult956_g20282 && ifLocalVar752_g20282 <= appendResult957_g20282 ) ? ifLocalVar752_g20282 :  float4( 0,0,0,0 ) );
			float4 break768_g20282 = ceil( MaterialzeLayers912_g20282 );
			float temp_output_755_0_g20282 = ( ( temp_output_739_0_g20282 + (-1.0 + (_MaterializeG - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g20282 );
			float temp_output_765_0_g20282 = ( ( temp_output_739_0_g20282 + (-1.0 + (_MaterializeB - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g20282 );
			float temp_output_779_0_g20282 = ( ( temp_output_739_0_g20282 + (-1.0 + (_MaterializeA - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g20282 );
			float ifLocalVar761_g20282 = 0;
			if( _ToggleDissolveDirInv > 0.0 )
				ifLocalVar761_g20282 = -Space701_g20282;
			else if( _ToggleDissolveDirInv == 0.0 )
				ifLocalVar761_g20282 = Space701_g20282;
			float temp_output_784_0_g20282 = ( ( ( ifLocalVar761_g20282 / ObjectScale711_g20282 ) + (-1.0 + (_DissolveModifier - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g20282 );
			float2 uv_DissolveMask = i.uv_texcoord * _DissolveMask_ST.xy + _DissolveMask_ST.zw;
			float4 tex2DNode764_g20282 = SAMPLE_TEXTURE2D( _DissolveMask, sampler_trilinear_repeat, uv_DissolveMask );
			float A1_g20284 = i.vertexColor.r;
			float B1_g20284 = i.vertexColor.g;
			float localASEAnd1_g20284 = ASEAnd( A1_g20284 , B1_g20284 );
			float A1_g20283 = localASEAnd1_g20284;
			float B1_g20283 = i.vertexColor.b;
			float localASEAnd1_g20283 = ASEAnd( A1_g20283 , B1_g20283 );
			float ifLocalVar788_g20282 = 0;
			if( 1.0 > _MaterializeVertexColor )
				ifLocalVar788_g20282 = max( max( tex2DNode764_g20282.r , tex2DNode764_g20282.g ) , tex2DNode764_g20282.b );
			else if( 1.0 == _MaterializeVertexColor )
				ifLocalVar788_g20282 = localASEAnd1_g20283;
			float lerpResult795_g20282 = lerp( saturate( temp_output_784_0_g20282 ) , 1.0 , ifLocalVar788_g20282);
			clip( 1.0 - ( ( 1.0 - max( max( max( max( ( saturate( ( temp_output_753_0_g20282 + DissolvePattern801_g20282 ) ) * break768_g20282.r ) , ( saturate( ( temp_output_755_0_g20282 + DissolvePattern801_g20282 ) ) * break768_g20282.g ) ) , ( saturate( ( temp_output_765_0_g20282 + DissolvePattern801_g20282 ) ) * break768_g20282.b ) ) , ( saturate( ( temp_output_779_0_g20282 + DissolvePattern801_g20282 ) ) * break768_g20282.a ) ) , lerpResult795_g20282 ) ) + 0.005 ));
			float ifLocalVar806_g20282 = 0;
			if( 1.0 > _DissolveModifier )
				ifLocalVar806_g20282 = 1.0;
			else if( 1.0 == _DissolveModifier )
				ifLocalVar806_g20282 = 1.0;
			float temp_output_9004_0 = ifLocalVar806_g20282;
			c.rgb = ( ( lerpResult8676 + ifLocalVar8350 + BasicEmission8348 ) * temp_output_9004_0 );
			c.a = AlphaChannelMul8318;
			clip( temp_output_8975_0 - _MaskClipValue );
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
			float mulTime7_g20292 = _Time.y * _NoiseSpeed;
			float UVSwitchProp79_g20292 = _NoiseTextureUVSwitch;
			float2 UV079_g20292 = i.uv_texcoord.xy;
			float2 UV179_g20292 = i.uv2_texcoord2;
			float2 UV279_g20292 = i.uv3_texcoord3;
			float2 UV379_g20292 = i.uv4_texcoord4;
			float2 localUVSwitch79_g20292 = UVSwitch( UVSwitchProp79_g20292 , UV079_g20292 , UV179_g20292 , UV279_g20292 , UV379_g20292 );
			float2 NoiseTextureUVSwitch90_g20292 = ( ( _NoiseTexture_ST.xy * localUVSwitch79_g20292 ) + _NoiseTexture_ST.zw );
			float2 panner17_g20292 = ( mulTime7_g20292 * _NoiseVectorXY + NoiseTextureUVSwitch90_g20292);
			float mulTime4_g20292 = _Time.y * _NoiseSpeed;
			float2 panner12_g20292 = ( ( mulTime4_g20292 * 2.179 ) * _NoiseVectorXY + ( 1.0 - NoiseTextureUVSwitch90_g20292 ));
			float mulTime16_g20292 = _Time.y * _Emiossionscrollspeed;
			float UVSwitchProp80_g20292 = _EmissionscrollUVSwitch;
			float2 UV080_g20292 = i.uv_texcoord.xy;
			float2 UV180_g20292 = i.uv2_texcoord2;
			float2 UV280_g20292 = i.uv3_texcoord3;
			float2 UV380_g20292 = i.uv4_texcoord4;
			float2 localUVSwitch80_g20292 = UVSwitch( UVSwitchProp80_g20292 , UV080_g20292 , UV180_g20292 , UV280_g20292 , UV380_g20292 );
			float2 EmissionscrollUVSwitch88_g20292 = ( ( _Emissionscroll_ST.xy * localUVSwitch80_g20292 ) + _Emissionscroll_ST.zw );
			float2 panner21_g20292 = ( mulTime16_g20292 * _VectorXY + EmissionscrollUVSwitch88_g20292);
			float4 Emissionsscrollcolor8110 = _EmissionscrollColor;
			float UVSwitchProp8939 = _EmissionScrollMaskUVSwitch;
			float2 UV08939 = i.uv_texcoord.xy;
			float2 UV18939 = i.uv2_texcoord2;
			float2 UV28939 = i.uv3_texcoord3;
			float2 UV38939 = i.uv4_texcoord4;
			float2 localUVSwitch8939 = UVSwitch( UVSwitchProp8939 , UV08939 , UV18939 , UV28939 , UV38939 );
			float2 EmissionScrollMaskUVSwitch8948 = ( ( _EmissionScrollMask_ST.xy * localUVSwitch8939 ) + _EmissionScrollMask_ST.zw );
			float4 tex2DNode8229 = SAMPLE_TEXTURE2D( _EmissionScrollMask, sampler_MainTex, EmissionScrollMaskUVSwitch8948 );
			float local_AudioTextureDimensions287_g20286 = ( 0.0 );
			float w287_g20286 = 0;
			float h287_g20286 = 0;
			{
			#ifndef SHADER_TARGET_SURFACE_ANALYSIS
			_AudioTexture.GetDimensions(w287_g20286, h287_g20286);
			#endif
			}
			float temp_output_840_0_g20286 = ( w287_g20286 + _AudioLinkSwitch );
			float A1_g20287 = (( temp_output_840_0_g20286 >= 33.0 && temp_output_840_0_g20286 <= 35.0 ) ? 1.0 :  0.0 );
			float B1_g20287 = (( temp_output_840_0_g20286 >= 129.0 && temp_output_840_0_g20286 <= 131.0 ) ? 1.0 :  0.0 );
			float localASEOr1_g20287 = ASEOr( A1_g20287 , B1_g20287 );
			float AudioTextureCheck808_g20286 = localASEOr1_g20287;
			float mulTime5_g20286 = _Time.y * _ESSpeed;
			float locallongIF931_g20286 = ( 0.0 );
			float2 Out931_g20286 = float2( 0,0 );
			float3 _DefaultTangentVector = float3(0,0,1);
			float UVSwitchProp88_g20255 = _NormalMapUVSwitch;
			float2 UV088_g20255 = i.uv_texcoord.xy;
			float2 UV188_g20255 = i.uv2_texcoord2;
			float2 UV288_g20255 = i.uv3_texcoord3;
			float2 UV388_g20255 = i.uv4_texcoord4;
			float2 localUVSwitch88_g20255 = UVSwitch( UVSwitchProp88_g20255 , UV088_g20255 , UV188_g20255 , UV288_g20255 , UV388_g20255 );
			float UVSwitchProp107_g20255 = _SecondaryNormalMaskUVSwitch;
			float2 UV0107_g20255 = i.uv_texcoord.xy;
			float2 UV1107_g20255 = i.uv2_texcoord2;
			float2 UV2107_g20255 = i.uv3_texcoord3;
			float2 UV3107_g20255 = i.uv4_texcoord4;
			float2 localUVSwitch107_g20255 = UVSwitch( UVSwitchProp107_g20255 , UV0107_g20255 , UV1107_g20255 , UV2107_g20255 , UV3107_g20255 );
			float4 tex2DNode65_g20255 = SAMPLE_TEXTURE2D( _SecondaryNormalMask, sampler_trilinear_repeat, ( ( _SecondaryNormalMask_ST.xy * localUVSwitch107_g20255 ) + _SecondaryNormalMask_ST.zw ) );
			float3 lerpResult63_g20255 = lerp( _DefaultTangentVector , UnpackScaleNormal( SAMPLE_TEXTURE2D( _NormalMap, sampler_trilinear_repeat, ( ( _NormalMap_ST.xy * localUVSwitch88_g20255 ) + _NormalMap_ST.zw ) ), _NormalScale ) , tex2DNode65_g20255.a);
			float UVSwitchProp98_g20255 = _SecondaryNormalUVSwitch;
			float2 UV098_g20255 = i.uv_texcoord.xy;
			float2 UV198_g20255 = i.uv2_texcoord2;
			float2 UV298_g20255 = i.uv3_texcoord3;
			float2 UV398_g20255 = i.uv4_texcoord4;
			float2 localUVSwitch98_g20255 = UVSwitch( UVSwitchProp98_g20255 , UV098_g20255 , UV198_g20255 , UV298_g20255 , UV398_g20255 );
			float3 lerpResult58_g20255 = lerp( _DefaultTangentVector , UnpackScaleNormal( SAMPLE_TEXTURE2D( _SecondaryNormal, sampler_trilinear_repeat, ( ( _SecondaryNormal_ST.xy * localUVSwitch98_g20255 ) + _SecondaryNormal_ST.zw ) ), _SecondaryNormalScale ) , tex2DNode65_g20255.g);
			float3 temp_output_54_0_g20255 = BlendNormals( lerpResult63_g20255 , lerpResult58_g20255 );
			float localOutlineSwitch127_g20255 = ( 0.0 );
			float3 true127_g20255 = temp_output_54_0_g20255;
			float3 false127_g20255 = -temp_output_54_0_g20255;
			float3 Out0127_g20255 = float3( 0,0,0 );
			{
			#ifdef FOROUTLINE
			Out0127_g20255 = true127_g20255; //Outline
			#else
			Out0127_g20255 = false127_g20255; //Not Outline
			#endif
			#define FOROUTLINE
			}
			float3 switchResult121_g20255 = (((i.ASEVFace>0)?(temp_output_54_0_g20255):(Out0127_g20255)));
			float3 normalizeResult52_g20255 = normalize( switchResult121_g20255 );
			float3 normals8097 = normalizeResult52_g20255;
			float3 ifLocalVar112_g20286 = 0;
			if( 1.0 > _IgnoreNormalsESv2 )
				ifLocalVar112_g20286 = normals8097;
			else if( 1.0 == _IgnoreNormalsESv2 )
				ifLocalVar112_g20286 = float3(0,0,0);
			float3 break437_g20286 = ifLocalVar112_g20286;
			float3 ase_worldNormal = WorldNormalVector( i, float3( 0, 0, 1 ) );
			float3 ase_vertexNormal = mul( unity_WorldToObject, float4( ase_worldNormal, 0 ) );
			ase_vertexNormal = normalize( ase_vertexNormal );
			float2 appendResult113_g20286 = (float2(( break437_g20286.x + ase_vertexNormal.x ) , ( break437_g20286.y + ase_vertexNormal.y )));
			float2 VertexNormal244_g20286 = appendResult113_g20286;
			float2 VertexNormal931_g20286 = VertexNormal244_g20286;
			float3 ase_worldPos = i.worldPos;
			float3 ase_worldViewDir = Unity_SafeNormalize( UnityWorldSpaceViewDir( ase_worldPos ) );
			float3 newWorldNormal50_g20255 = (WorldNormalVector( i , temp_output_54_0_g20255 ));
			float localOutlineSwitch128_g20255 = ( 0.0 );
			float3 true128_g20255 = newWorldNormal50_g20255;
			float3 false128_g20255 = -newWorldNormal50_g20255;
			float3 Out0128_g20255 = float3( 0,0,0 );
			{
			#ifdef FOROUTLINE
			Out0128_g20255 = true128_g20255; //Outline
			#else
			Out0128_g20255 = false128_g20255; //Not Outline
			#endif
			#define FOROUTLINE
			}
			float3 switchResult119_g20255 = (((i.ASEVFace>0)?(newWorldNormal50_g20255):(Out0128_g20255)));
			float3 normalizeResult53_g20255 = normalize( switchResult119_g20255 );
			float3 worldnormals8049 = normalizeResult53_g20255;
			float3 normalizeResult85_g20286 = normalize( ase_worldNormal );
			float3 ifLocalVar86_g20286 = 0;
			if( 1.0 > _IgnoreNormalsESv2 )
				ifLocalVar86_g20286 = worldnormals8049;
			else if( 1.0 == _IgnoreNormalsESv2 )
				ifLocalVar86_g20286 = normalizeResult85_g20286;
			float fresnelNdotV58_g20286 = dot( ifLocalVar86_g20286, ase_worldViewDir );
			float fresnelNode58_g20286 = ( 0.0 + 1.0 * pow( 1.0 - fresnelNdotV58_g20286, 5.0 ) );
			float FresnelCamera248_g20286 = fresnelNode58_g20286;
			float FresnelCamera931_g20286 = FresnelCamera248_g20286;
			float3 ase_vertex3Pos = mul( unity_WorldToObject, float4( i.worldPos , 1 ) );
			float4 transform187_g20286 = mul(unity_ObjectToWorld,float4( ase_vertex3Pos , 0.0 ));
			float2 appendResult209_g20286 = (float2(( transform187_g20286.x + break437_g20286.x ) , ( transform187_g20286.y + break437_g20286.y )));
			float2 VertextoWorldPos251_g20286 = appendResult209_g20286;
			float2 VertextoWorldPos931_g20286 = VertextoWorldPos251_g20286;
			float mulTime62_g20286 = _Time.y * _ESVoronoiSpeed;
			float time64_g20286 = mulTime62_g20286;
			float2 voronoiSmoothId64_g20286 = 0;
			float2 coords64_g20286 = VertextoWorldPos251_g20286 * _ESVoronoiScale;
			float2 id64_g20286 = 0;
			float2 uv64_g20286 = 0;
			float voroi64_g20286 = voronoi64_g20286( coords64_g20286, time64_g20286, id64_g20286, uv64_g20286, 0, voronoiSmoothId64_g20286 );
			float Voronoi255_g20286 = voroi64_g20286;
			float Voronoi931_g20286 = Voronoi255_g20286;
			float2 appendResult482_g20286 = (float2(( break437_g20286.x + i.uv_texcoord.xy.x ) , ( break437_g20286.y + i.uv_texcoord.xy.y )));
			float2 VertexUV481_g20286 = appendResult482_g20286;
			float2 VertexUV931_g20286 = VertexUV481_g20286;
			{
			if (_ESRenderMethod == 0)
				Out931_g20286 = VertexNormal931_g20286;
			else if (_ESRenderMethod == 1)
				Out931_g20286 = FresnelCamera931_g20286;
			else if (_ESRenderMethod == 2)
				Out931_g20286 = VertextoWorldPos931_g20286;
			else if (_ESRenderMethod == 3)
				Out931_g20286 = Voronoi931_g20286;
			else if (_ESRenderMethod == 4)
				Out931_g20286 = VertexUV931_g20286;
			}
			float dotResult6_g20286 = dot( Out931_g20286 , _ESCoordinates );
			float ifLocalVar728_g20286 = 0;
			if( 1.0 > AudioTextureCheck808_g20286 )
				ifLocalVar728_g20286 = _ESSize;
			else if( 1.0 == AudioTextureCheck808_g20286 )
				ifLocalVar728_g20286 = 1.0;
			float ifLocalVar732_g20286 = 0;
			if( 1.0 > AudioTextureCheck808_g20286 )
				ifLocalVar732_g20286 = _ESSharpness;
			float temp_output_18_0_g20286 = saturate( ( ( pow( ( 1.0 - ( frac( ( ( mulTime5_g20286 + _ESScrollOffset ) - dotResult6_g20286 ) ) / ifLocalVar728_g20286 ) ) , ( 1.0 - ifLocalVar732_g20286 ) ) + 1E-06 ) + _ESLevelOffset ) );
			float2 break742_g20286 = tex2DNode8229.rg;
			float ESMaskR738_g20286 = break742_g20286.x;
			int Band697_g20286 = (int)i.uv_texcoord.xy.y;
			float ifLocalVar846_g20286 = 0;
			if( 32.0 == w287_g20286 )
				ifLocalVar846_g20286 = 32.0;
			else if( 32.0 < w287_g20286 )
				ifLocalVar846_g20286 = _AudioLinkBandHistory;
			float VectorCalculation793_g20286 = temp_output_18_0_g20286;
			float temp_output_845_0_g20286 = ( ifLocalVar846_g20286 * VectorCalculation793_g20286 );
			float Delay697_g20286 = temp_output_845_0_g20286;
			float localAudioLinkLerp697_g20286 = AudioLinkLerp( Band697_g20286 , Delay697_g20286 );
			int Band702_g20286 = (int)( i.uv_texcoord.xy.y + 1.0 );
			float Delay702_g20286 = temp_output_845_0_g20286;
			float localAudioLinkLerp702_g20286 = AudioLinkLerp( Band702_g20286 , Delay702_g20286 );
			int Band706_g20286 = (int)( i.uv_texcoord.xy.y + 2.0 );
			float Delay706_g20286 = temp_output_845_0_g20286;
			float localAudioLinkLerp706_g20286 = AudioLinkLerp( Band706_g20286 , Delay706_g20286 );
			int Band710_g20286 = (int)( i.uv_texcoord.xy.y + 3.0 );
			float Delay710_g20286 = temp_output_845_0_g20286;
			float localAudioLinkLerp710_g20286 = AudioLinkLerp( Band710_g20286 , Delay710_g20286 );
			float AudioLinkV1V2Bands800_g20286 = ( ( ( localAudioLinkLerp697_g20286 * _AudioBandIntensity.x ) + ( localAudioLinkLerp702_g20286 * _AudioBandIntensity.y ) + ( localAudioLinkLerp706_g20286 * _AudioBandIntensity.z ) + ( localAudioLinkLerp710_g20286 * _AudioBandIntensity.w ) ) * ESMaskR738_g20286 );
			float2 appendResult608_g20286 = (float2(_WaveformCoordinates.x , _WaveformCoordinates.y));
			float2 appendResult609_g20286 = (float2(_WaveformCoordinates.z , _WaveformCoordinates.w));
			float2 uvs_TexCoord606_g20286 = i.uv_texcoord;
			uvs_TexCoord606_g20286.xy = i.uv_texcoord.xy * appendResult608_g20286 + appendResult609_g20286;
			float cos593_g20286 = cos( ( _WaveformRotation * UNITY_PI ) );
			float sin593_g20286 = sin( ( _WaveformRotation * UNITY_PI ) );
			float2 rotator593_g20286 = mul( uvs_TexCoord606_g20286.xy - float2( 0.5,0.5 ) , float2x2( cos593_g20286 , -sin593_g20286 , sin593_g20286 , cos593_g20286 )) + float2( 0.5,0.5 );
			float2 _Vec001a = float2(0,0);
			float2 temp_output_581_0_g20286 = ( 1.0 - float2( 1,1 ) );
			float2 temp_output_589_0_g20286 = ( 2.0 + float2( 0,0 ) );
			float2 _Vec111a = float2(1,1);
			float2 temp_output_587_0_g20286 = (_Vec001a + (rotator593_g20286 - ( _Vec001a + ( temp_output_581_0_g20286 / temp_output_589_0_g20286 ) )) * (_Vec111a - _Vec001a) / (( _Vec111a - ( temp_output_581_0_g20286 / temp_output_589_0_g20286 ) ) - ( _Vec001a + ( temp_output_581_0_g20286 / temp_output_589_0_g20286 ) )));
			float2 uv564_g20286 = temp_output_587_0_g20286;
			float thickness564_g20286 = _WaveformThickness;
			float2 localAudioLinkWaveformsample564_g20286 = AudioLinkWaveformsample( uv564_g20286 , thickness564_g20286 );
			float cos869_g20286 = cos( ( _WaveformRotation * UNITY_PI ) );
			float sin869_g20286 = sin( ( _WaveformRotation * UNITY_PI ) );
			float2 rotator869_g20286 = mul( uvs_TexCoord606_g20286.xy - float2( 0.5,0.5 ) , float2x2( cos869_g20286 , -sin869_g20286 , sin869_g20286 , cos869_g20286 )) + float2( 0.5,0.5 );
			float2 break905_g20286 = rotator869_g20286;
			float2 appendResult906_g20286 = (float2(break905_g20286.x , ( 1.0 - break905_g20286.y )));
			float2 _Vector2a = float2(0,0);
			float2 temp_output_866_0_g20286 = ( 1.0 - float2( 1,1 ) );
			float2 temp_output_855_0_g20286 = ( 2.0 + float2( 0,0 ) );
			float2 _Vector0a = float2(1,1);
			float2 temp_output_871_0_g20286 = (_Vector2a + (appendResult906_g20286 - ( _Vector2a + ( temp_output_866_0_g20286 / temp_output_855_0_g20286 ) )) * (_Vector0a - _Vector2a) / (( _Vector0a - ( temp_output_866_0_g20286 / temp_output_855_0_g20286 ) ) - ( _Vector2a + ( temp_output_866_0_g20286 / temp_output_855_0_g20286 ) )));
			float2 uv881_g20286 = temp_output_871_0_g20286;
			float thickness881_g20286 = _WaveformThickness;
			float2 localAudioLinkWaveformsample881_g20286 = AudioLinkWaveformsample( uv881_g20286 , thickness881_g20286 );
			float2 break874_g20286 = temp_output_871_0_g20286;
			float A1_g20290 = floor( max( break874_g20286.x , break874_g20286.y ) );
			float B1_g20290 = floor( ( 1.0 - min( break874_g20286.x , break874_g20286.y ) ) );
			float localASEOr1_g20290 = ASEOr( A1_g20290 , B1_g20290 );
			float2 uv922_g20286 = temp_output_587_0_g20286;
			float2 localAudioLinkWaveformsampleMirror922_g20286 = AudioLinkWaveformsampleMirror( uv922_g20286 );
			float ifLocalVar924_g20286 = 0;
			if( 1.0 > _AudioLinkWaveformMirrorToggle )
				ifLocalVar924_g20286 = localAudioLinkWaveformsample564_g20286.y;
			else if( 1.0 == _AudioLinkWaveformMirrorToggle )
				ifLocalVar924_g20286 = max( localAudioLinkWaveformsample564_g20286.y , ( localAudioLinkWaveformsample881_g20286.y * ( 1.0 - localASEOr1_g20290 ) ) );
			else if( 1.0 < _AudioLinkWaveformMirrorToggle )
				ifLocalVar924_g20286 = localAudioLinkWaveformsampleMirror922_g20286.y;
			float2 break571_g20286 = temp_output_587_0_g20286;
			float A1_g20289 = floor( max( break571_g20286.x , break571_g20286.y ) );
			float B1_g20289 = floor( ( 1.0 - min( break571_g20286.x , break571_g20286.y ) ) );
			float localASEOr1_g20289 = ASEOr( A1_g20289 , B1_g20289 );
			float4 break419_g20286 = _AudioLinkColor;
			float ESMaskG743_g20286 = break742_g20286.y;
			float AudioLinkV2Waveform801_g20286 = ( ( ifLocalVar924_g20286 * ( 1.0 - localASEOr1_g20289 ) ) * break419_g20286.a * ESMaskG743_g20286 );
			float ifLocalVar600_g20286 = 0;
			if( 2.0 > _AudioLinkSwitch )
				ifLocalVar600_g20286 = AudioLinkV1V2Bands800_g20286;
			else if( 2.0 == _AudioLinkSwitch )
				ifLocalVar600_g20286 = AudioLinkV2Waveform801_g20286;
			else if( 2.0 < _AudioLinkSwitch )
				ifLocalVar600_g20286 = ( AudioLinkV1V2Bands800_g20286 + AudioLinkV2Waveform801_g20286 );
			float mulTime301_g20286 = _Time.y * _AudioHueSpeed;
			float3 hsvTorgb3_g20288 = HSVToRGB( float3(mulTime301_g20286,1.0,1.0) );
			float3 ifLocalVar416_g20286 = 0;
			if( _AudioHueSpeed > 0.0 )
				ifLocalVar416_g20286 = ( hsvTorgb3_g20288 * max( max( break419_g20286.r , break419_g20286.g ) , break419_g20286.b ) );
			else if( _AudioHueSpeed == 0.0 )
				ifLocalVar416_g20286 = (_AudioLinkColor).rgb;
			float3 ifLocalVar289_g20286 = 0;
			if( 1.0 > AudioTextureCheck808_g20286 )
				ifLocalVar289_g20286 = ( temp_output_18_0_g20286 * (Emissionsscrollcolor8110).rgb * ESMaskR738_g20286 );
			else if( 1.0 == AudioTextureCheck808_g20286 )
				ifLocalVar289_g20286 = ( ifLocalVar600_g20286 * ifLocalVar416_g20286 );
			float UVSwitchProp8935 = _MainTexUVSwitch;
			float2 UV08935 = i.uv_texcoord.xy;
			float2 UV18935 = i.uv2_texcoord2;
			float2 UV28935 = i.uv3_texcoord3;
			float2 UV38935 = i.uv4_texcoord4;
			float2 localUVSwitch8935 = UVSwitch( UVSwitchProp8935 , UV08935 , UV18935 , UV28935 , UV38935 );
			float2 MainTexUVSwitch8950 = ( ( _MainTex_ST.xy * localUVSwitch8935 ) + _MainTex_ST.zw );
			float4 tex2DNode8061 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, MainTexUVSwitch8950 );
			float3 Texture18_g20256 = tex2DNode8061.rgb;
			float grayscale5_g20256 = (Texture18_g20256.r + Texture18_g20256.g + Texture18_g20256.b) / 3;
			float UVSwitchProp257_g20256 = _HueMaskUVSwitch;
			float2 UV0257_g20256 = i.uv_texcoord.xy;
			float2 UV1257_g20256 = i.uv2_texcoord2;
			float2 UV2257_g20256 = i.uv3_texcoord3;
			float2 UV3257_g20256 = i.uv4_texcoord4;
			float2 localUVSwitch257_g20256 = UVSwitch( UVSwitchProp257_g20256 , UV0257_g20256 , UV1257_g20256 , UV2257_g20256 , UV3257_g20256 );
			float2 temp_output_252_0_g20256 = ( ( _HueMask_ST.xy * localUVSwitch257_g20256 ) + _HueMask_ST.zw );
			float HueMaskG53_g20256 = SAMPLE_TEXTURE2D( _HueMask, sampler_point_clamp, temp_output_252_0_g20256 ).g;
			float ifLocalVar218_g20256 = 0;
			if( 1.0 > _ToggleHueTexforSpeed )
				ifLocalVar218_g20256 = 1.0;
			else if( 1.0 == _ToggleHueTexforSpeed )
				ifLocalVar218_g20256 = HueMaskG53_g20256;
			float mulTime2_g20256 = _Time.y * ( _HueShiftSpeed * ifLocalVar218_g20256 );
			float3 hsvTorgb3_g20257 = HSVToRGB( float3(( mulTime2_g20256 + _HueShiftRandomizer ),1.0,1.0) );
			float3 ifLocalVar13_g20256 = 0;
			if( ( _HueShiftSpeed + _HueShiftRandomizer ) > 0.0 )
				ifLocalVar13_g20256 = ( grayscale5_g20256 * hsvTorgb3_g20257 );
			else if( ( _HueShiftSpeed + _HueShiftRandomizer ) == 0.0 )
				ifLocalVar13_g20256 = Texture18_g20256;
			float HueMaskR52_g20256 = SAMPLE_TEXTURE2D( _HueMask, sampler_trilinear_repeat, temp_output_252_0_g20256 ).r;
			float ifLocalVar9_g20256 = 0;
			if( 1.0 > _HueMaskinverter )
				ifLocalVar9_g20256 = HueMaskR52_g20256;
			else if( 1.0 == _HueMaskinverter )
				ifLocalVar9_g20256 = ( 1.0 - HueMaskR52_g20256 );
			float lerpResult15_g20256 = lerp( 0.0 , ifLocalVar9_g20256 , _HueShiftblend);
			float3 lerpResult16_g20256 = lerp( Texture18_g20256 , ifLocalVar13_g20256 , lerpResult15_g20256);
			clip( tex2DNode8061.a - _Cutout);
			float3 desaturateInitialColor8084 = ( lerpResult16_g20256 * (_MainColor).rgb );
			float desaturateDot8084 = dot( desaturateInitialColor8084, float3( 0.299, 0.587, 0.114 ));
			float3 desaturateVar8084 = lerp( desaturateInitialColor8084, desaturateDot8084.xxx, ( 1.0 - _Saturation ) );
			float3 MainTexSaturate8087 = desaturateVar8084;
			float3 lerpResult369_g20286 = lerp( ifLocalVar289_g20286 , ( ifLocalVar289_g20286 * MainTexSaturate8087 ) , _EmissionscrollTint);
			float3 EmissionScrollV28156 = lerpResult369_g20286;
			float3 ifLocalVar8230 = 0;
			if( 1.0 == _EmissionScrollToggle )
				ifLocalVar8230 = ( ( ( (SAMPLE_TEXTURE2D( _NoiseTexture, sampler_trilinear_repeat, ( panner17_g20292 + 0.25 ) )).rgb * (SAMPLE_TEXTURE2D( _NoiseTexture, sampler_NoiseTexture, ( 1.0 - panner12_g20292 ) )).rgb ) * ( (SAMPLE_TEXTURE2D( _Emissionscroll, sampler_trilinear_repeat, panner21_g20292 )).rgb * (Emissionsscrollcolor8110).rgb ) ) * tex2DNode8229.r );
			else if( 1.0 < _EmissionScrollToggle )
				ifLocalVar8230 = EmissionScrollV28156;
			float ToggleAdvanced7867 = _COLORCOLOR;
			float3 temp_output_8275_0 = ( ifLocalVar8230 * ( saturate( _EmissionScrollToggle ) * ToggleAdvanced7867 ) );
			float3 Emissionscroll8300 = temp_output_8275_0;
			float3 WorldNormals20_g20258 = worldnormals8049;
			float dotResult442_g20258 = dot( WorldNormals20_g20258 , ase_worldViewDir );
			float NdotV8069 = dotResult442_g20258;
			float smoothstepResult10_g20260 = smoothstep( min( _ShadowRimSharpness , ( 1.0 - 1E-06 ) ) , 1.0 , ( NdotV8069 + _ShadowRimRange ));
			float lerpResult11_g20260 = lerp( 1.0 , smoothstepResult10_g20260 , _ShadowRimOpacity);
			float mulTime25_g20260 = _Time.y * _RimHueSpeed;
			float3 hsvTorgb3_g20261 = HSVToRGB( float3(mulTime25_g20260,1.0,1.0) );
			float3 temp_cast_7 = 1;
			float3 ifLocalVar27_g20260 = 0;
			if( _RimHueSpeed > 0.0 )
				ifLocalVar27_g20260 = hsvTorgb3_g20261;
			else if( _RimHueSpeed == 0.0 )
				ifLocalVar27_g20260 = temp_cast_7;
			float3 ifLocalVar8292 = 0;
			if( 1.0 == _RimSwitch )
				ifLocalVar8292 = ( ( ( 1.0 - lerpResult11_g20260 ) * (_EmissiveRimColor).rgb ) * ifLocalVar27_g20260 );
			float3 EmissiveRim8307 = ifLocalVar8292;
			float4 transform698_g20282 = mul(unity_ObjectToWorld,float4( ase_vertex3Pos , 0.0 ));
			float Space701_g20282 = transform698_g20282.y;
			float ifLocalVar717_g20282 = 0;
			if( _ToggleMaterializeDirInv > 0.0 )
				ifLocalVar717_g20282 = -Space701_g20282;
			else if( _ToggleMaterializeDirInv == 0.0 )
				ifLocalVar717_g20282 = Space701_g20282;
			float3 ase_parentObjectScale = (1.0/float3( length( unity_WorldToObject[ 0 ].xyz ), length( unity_WorldToObject[ 1 ].xyz ), length( unity_WorldToObject[ 2 ].xyz ) ));
			float ObjectScale711_g20282 = max( ase_parentObjectScale.y , 1.0 );
			float temp_output_739_0_g20282 = ( ifLocalVar717_g20282 / ObjectScale711_g20282 );
			float DissolveDensity732_g20282 = exp2( _DissolveDensity );
			float temp_output_753_0_g20282 = ( ( temp_output_739_0_g20282 + (-1.0 + (_MaterializeR - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g20282 );
			float4 ifLocalVar752_g20282 = 0;
			if( 1.0 > _MaterializeVertexColor )
				ifLocalVar752_g20282 = SAMPLE_TEXTURE2D( _MaterializeTex, sampler_point_clamp, i.uv_texcoord.xy );
			else if( 1.0 == _MaterializeVertexColor )
				ifLocalVar752_g20282 = i.vertexColor;
			float temp_output_708_0_g20282 = ( _MaterializeColorLayerR / 100.0 );
			float temp_output_714_0_g20282 = ( temp_output_708_0_g20282 - 0.005 );
			float temp_output_716_0_g20282 = ( temp_output_708_0_g20282 + 0.005 );
			float2 appendResult727_g20282 = (float2(temp_output_714_0_g20282 , temp_output_716_0_g20282));
			float2 appendResult722_g20282 = (float2(-0.005 , temp_output_716_0_g20282));
			float2 appendResult720_g20282 = (float2(temp_output_714_0_g20282 , 1.005));
			float2 ifLocalVar734_g20282 = 0;
			if( 1.0 > _MaterializeLayerModeR )
				ifLocalVar734_g20282 = appendResult727_g20282;
			else if( 1.0 == _MaterializeLayerModeR )
				ifLocalVar734_g20282 = appendResult722_g20282;
			else if( 1.0 < _MaterializeLayerModeR )
				ifLocalVar734_g20282 = appendResult720_g20282;
			float2 break751_g20282 = ifLocalVar734_g20282;
			float temp_output_927_0_g20282 = ( _MaterializeColorLayerG / 100.0 );
			float temp_output_925_0_g20282 = ( temp_output_927_0_g20282 - 0.005 );
			float temp_output_922_0_g20282 = ( temp_output_927_0_g20282 + 0.005 );
			float2 appendResult919_g20282 = (float2(temp_output_925_0_g20282 , temp_output_922_0_g20282));
			float2 appendResult918_g20282 = (float2(-0.005 , temp_output_922_0_g20282));
			float2 appendResult916_g20282 = (float2(temp_output_925_0_g20282 , 1.005));
			float2 ifLocalVar921_g20282 = 0;
			if( 1.0 > _MaterializeLayerModeG )
				ifLocalVar921_g20282 = appendResult919_g20282;
			else if( 1.0 == _MaterializeLayerModeG )
				ifLocalVar921_g20282 = appendResult918_g20282;
			else if( 1.0 < _MaterializeLayerModeG )
				ifLocalVar921_g20282 = appendResult916_g20282;
			float2 break920_g20282 = ifLocalVar921_g20282;
			float temp_output_941_0_g20282 = ( _MaterializeColorLayerB / 100.0 );
			float temp_output_939_0_g20282 = ( temp_output_941_0_g20282 - 0.005 );
			float temp_output_936_0_g20282 = ( temp_output_941_0_g20282 + 0.005 );
			float2 appendResult933_g20282 = (float2(temp_output_939_0_g20282 , temp_output_936_0_g20282));
			float2 appendResult932_g20282 = (float2(-0.005 , temp_output_936_0_g20282));
			float2 appendResult930_g20282 = (float2(temp_output_939_0_g20282 , 1.005));
			float2 ifLocalVar935_g20282 = 0;
			if( 1.0 > _MaterializeLayerModeB )
				ifLocalVar935_g20282 = appendResult933_g20282;
			else if( 1.0 == _MaterializeLayerModeB )
				ifLocalVar935_g20282 = appendResult932_g20282;
			else if( 1.0 < _MaterializeLayerModeB )
				ifLocalVar935_g20282 = appendResult930_g20282;
			float2 break934_g20282 = ifLocalVar935_g20282;
			float temp_output_955_0_g20282 = ( _MaterializeColorLayerA / 100.0 );
			float temp_output_953_0_g20282 = ( temp_output_955_0_g20282 - 0.005 );
			float temp_output_950_0_g20282 = ( temp_output_955_0_g20282 + 0.005 );
			float2 appendResult947_g20282 = (float2(temp_output_953_0_g20282 , temp_output_950_0_g20282));
			float2 appendResult946_g20282 = (float2(-0.005 , temp_output_950_0_g20282));
			float2 appendResult944_g20282 = (float2(temp_output_953_0_g20282 , 1.005));
			float2 ifLocalVar949_g20282 = 0;
			if( 1.0 > _MaterializeLayerModeA )
				ifLocalVar949_g20282 = appendResult947_g20282;
			else if( 1.0 == _MaterializeLayerModeA )
				ifLocalVar949_g20282 = appendResult946_g20282;
			else if( 1.0 < _MaterializeLayerModeA )
				ifLocalVar949_g20282 = appendResult944_g20282;
			float2 break948_g20282 = ifLocalVar949_g20282;
			float4 appendResult956_g20282 = (float4(break751_g20282.x , break920_g20282.x , break934_g20282.x , break948_g20282.x));
			float4 appendResult957_g20282 = (float4(break751_g20282.y , break920_g20282.y , break934_g20282.y , break948_g20282.y));
			float4 MaterialzeLayers912_g20282 = (( ifLocalVar752_g20282 >= appendResult956_g20282 && ifLocalVar752_g20282 <= appendResult957_g20282 ) ? ifLocalVar752_g20282 :  float4( 0,0,0,0 ) );
			float4 break768_g20282 = ceil( MaterialzeLayers912_g20282 );
			float ifLocalVar817_g20282 = 0;
			if( 1.0 > saturate( _MaterializeR ) )
				ifLocalVar817_g20282 = ( ( temp_output_753_0_g20282 + 1.0 ) * break768_g20282.r );
			float temp_output_755_0_g20282 = ( ( temp_output_739_0_g20282 + (-1.0 + (_MaterializeG - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g20282 );
			float ifLocalVar812_g20282 = 0;
			if( 1.0 > saturate( _MaterializeG ) )
				ifLocalVar812_g20282 = ( ( temp_output_755_0_g20282 + 1.0 ) * break768_g20282.g );
			float temp_output_765_0_g20282 = ( ( temp_output_739_0_g20282 + (-1.0 + (_MaterializeB - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g20282 );
			float ifLocalVar823_g20282 = 0;
			if( 1.0 > saturate( _MaterializeB ) )
				ifLocalVar823_g20282 = ( ( temp_output_765_0_g20282 + 1.0 ) * break768_g20282.b );
			float temp_output_779_0_g20282 = ( ( temp_output_739_0_g20282 + (-1.0 + (_MaterializeA - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g20282 );
			float ifLocalVar820_g20282 = 0;
			if( 1.0 > saturate( _MaterializeA ) )
				ifLocalVar820_g20282 = ( ( temp_output_779_0_g20282 + 1.0 ) * break768_g20282.a );
			float ifLocalVar761_g20282 = 0;
			if( _ToggleDissolveDirInv > 0.0 )
				ifLocalVar761_g20282 = -Space701_g20282;
			else if( _ToggleDissolveDirInv == 0.0 )
				ifLocalVar761_g20282 = Space701_g20282;
			float temp_output_784_0_g20282 = ( ( ( ifLocalVar761_g20282 / ObjectScale711_g20282 ) + (-1.0 + (_DissolveModifier - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g20282 );
			float ifLocalVar818_g20282 = 0;
			if( 1.0 > _DissolveModifier )
				ifLocalVar818_g20282 = max( max( max( max( ifLocalVar817_g20282 , ifLocalVar812_g20282 ) , ifLocalVar823_g20282 ) , ifLocalVar820_g20282 ) , ( temp_output_784_0_g20282 + 1.0 ) );
			float lerpResult408_g20282 = lerp( 0.0 , saturate( ifLocalVar818_g20282 ) , saturate( ( 1.0 - ( ifLocalVar818_g20282 - 1.0 ) ) ));
			float3 ifLocalVar418_g20282 = 0;
			if( _ToggleDissolveEmission == 1.0 )
				ifLocalVar418_g20282 = ( saturate( ( MainTexSaturate8087 + 0.5 ) ) * (_EmissiveDissolveColor).rgb * lerpResult408_g20282 );
			float3 EmissiveDissolve8347 = ifLocalVar418_g20282;
			o.Emission = ( Emissionscroll8300 + EmissiveRim8307 + EmissiveDissolve8347 );
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
				o.customPack5.xyz = customInputData.vertexToFrag2250_g20263;
				o.customPack6.xyz = customInputData.vertexToFrag2251_g20263;
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
				surfIN.vertexToFrag2250_g20263 = IN.customPack5.xyz;
				surfIN.vertexToFrag2251_g20263 = IN.customPack6.xyz;
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
	Fallback "Legacy Shaders/Transparent/Cutout/VertexLit"
	CustomEditor "MorisMaterialInspector"
}
/*ASEBEGIN
Version=18935
1611;58;2040;919;-4596.573;-100.7129;1;True;False
Node;AmplifyShaderEditor.CommentaryNode;8928;-3760,-1120;Inherit;False;1592.821;638.8351;;25;8950;8949;8948;8947;8946;8945;8944;8943;8942;8941;8940;8939;8938;8937;8936;8935;8934;8933;8932;8931;8930;8929;8980;8981;8982;UV Switch;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;8929;-3696,-1072;Inherit;False;Property;_MainTexUVSwitch;Main Tex UV Switch;108;1;[Enum];Create;True;0;4;UV0;0;UV1;1;UV2;2;UV3;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexCoordVertexDataNode;8933;-3424,-784;Inherit;False;2;2;0;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TexCoordVertexDataNode;8931;-3424,-896;Inherit;False;1;2;0;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TexCoordVertexDataNode;8930;-3424,-1008;Inherit;False;0;2;0;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TexCoordVertexDataNode;8932;-3424,-672;Inherit;False;3;2;0;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TextureTransformNode;8934;-2976,-1072;Inherit;False;8061;False;1;0;SAMPLER2D;;False;2;FLOAT2;0;FLOAT2;1
Node;AmplifyShaderEditor.CustomExpressionNode;8935;-3200,-1072;Inherit;False;if (UVSwitchProp == 0)$	return UV0@$else if (UVSwitchProp == 1)$	return UV1@$else if (UVSwitchProp == 2)$	return UV2@$else$	return UV3@;2;Create;5;True;UVSwitchProp;FLOAT;0;In;;Inherit;False;True;UV0;FLOAT2;0,0;In;;Inherit;False;True;UV1;FLOAT2;0,0;In;;Inherit;False;True;UV2;FLOAT2;0,0;In;;Inherit;False;True;UV3;FLOAT2;0,0;In;;Inherit;False;UVSwitch;False;False;0;;False;5;0;FLOAT;0;False;1;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;8936;-2720,-1072;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;8937;-2592,-1072;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8950;-2464,-1072;Inherit;False;MainTexUVSwitch;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CommentaryNode;8052;-2272.4,-224;Inherit;False;1810.127;435.1317;;14;8951;8318;8553;8288;8087;8084;8075;8076;8065;8066;8406;8058;8407;8061;Main Texture;0,0.1310344,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;8951;-2240,-160;Inherit;False;8950;MainTexUVSwitch;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FunctionNode;9145;-2032,512;Inherit;False;Normals and World Normals;357;;20255;a9b4a0b5166a58041907936d7f327add;0;0;2;FLOAT3;0;FLOAT3;14
Node;AmplifyShaderEditor.CommentaryNode;8046;-2080,416;Inherit;False;693.5416;284.4319;;2;8097;8049;Normals;0.5019608,0.5019608,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8049;-1616,480;Inherit;False;worldnormals;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;8050;-2076.8,-1632;Inherit;False;2343.285;1144.981;;36;8153;8357;8364;8370;8358;8396;8379;8366;8148;8167;8369;8154;8360;8401;8391;8160;8161;8143;8147;8149;8155;8146;8144;8090;8131;8140;8129;8128;8130;8094;8095;8088;8093;8069;8843;8056;Utilities;1,1,1,1;0;0
Node;AmplifyShaderEditor.SamplerNode;8061;-2032,-176;Inherit;True;Property;_MainTex;Main Tex;481;0;Create;True;0;0;0;False;0;False;-1;None;dac4bffc20f8af64eb5b42c088b4ca24;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;1;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;8058;-2032,16;Inherit;False;Property;_MainColor;Main Color;480;0;Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;8407;-1712,-96;Inherit;False;Property;_Cutout;Cutout;315;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;8976;-1728,-176;Inherit;False;Hue Shift;341;;20256;ba913d8caaf7acd4a97eca4685e47654;0;1;17;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;8056;-2032,-1584;Inherit;False;8049;worldnormals;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;8843;-1760,-1584;Inherit;False;Utilities;-1;;20258;9d926cf50a172564e8b49022db15d05a;0;1;19;FLOAT3;0,0,0;False;40;FLOAT;0;FLOAT;14;FLOAT;17;FLOAT;15;FLOAT;16;FLOAT;60;FLOAT;62;FLOAT;63;FLOAT;64;FLOAT;65;FLOAT;13;FLOAT;446;FLOAT;18;FLOAT;114;FLOAT4;372;FLOAT4;373;FLOAT4;374;FLOAT4;375;FLOAT4;397;FLOAT4;376;FLOAT3;377;FLOAT3;378;FLOAT3;379;FLOAT3;380;FLOAT3;382;FLOAT3;384;FLOAT3;386;FLOAT3;388;FLOAT;381;FLOAT;383;FLOAT;385;FLOAT;387;FLOAT;389;FLOAT;390;FLOAT;391;FLOAT;392;FLOAT3;393;FLOAT3;394;FLOAT3;395;FLOAT3;396
Node;AmplifyShaderEditor.ClipNode;8406;-1424,-176;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT;0.5;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;8066;-1424,-48;Inherit;False;Property;_Saturation;Saturation;479;0;Create;True;0;0;0;False;0;False;1;1;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;8065;-1840,16;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.OneMinusNode;8075;-1152,-48;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8069;-1264,-1104;Inherit;False;NdotV;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;8074;-2080,3488;Inherit;False;1042.624;425.8316;;7;8307;8292;8103;8089;8082;8081;8077;Shadow Rim;0,0,0,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;8076;-1232,-176;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;8077;-2064,3616;Inherit;False;8069;NdotV;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.DesaturateOpNode;8084;-960,-176;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8093;-544,-1264;Inherit;False;VertexLightAtten;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8088;-544,-1344;Inherit;False;VertexLightNdLNONMAX;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.CommentaryNode;8091;-160,-224;Inherit;False;1258.118;1090.2;;19;8811;8139;8157;8246;8133;8159;9010;8120;8111;8132;8846;8134;8107;8099;8108;8101;8102;8104;9019;Lighting;1,0.9782155,0.759434,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8095;-1264,-1584;Inherit;False;NdotL;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8097;-1616,592;Inherit;False;normals;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8094;-1264,-1344;Inherit;False;NdotAmbientL;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8087;-704,-176;Inherit;False;MainTexSaturate;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;8711;-1872,3616;Inherit;False;Shadow Emissive Rim;460;;20260;4fa91309dca2f3c428e54f87b3f4adf3;0;1;34;FLOAT;0;False;2;FLOAT;0;FLOAT3;22
Node;AmplifyShaderEditor.RangedFloatNode;8082;-1600,3728;Inherit;False;Constant;_Float22;Float 22;192;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;8081;-1616,3568;Inherit;False;Property;_RimSwitch;Rim Switch;494;1;[Enum];Create;True;0;2;Shadow;0;Emissive;1;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8099;-128,144;Inherit;False;8093;VertexLightAtten;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.ConditionalIfNode;8089;-1424,3568;Inherit;False;False;5;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8101;-128,224;Inherit;False;8088;VertexLightNdLNONMAX;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;8108;-128,-16;Inherit;False;8095;NdotL;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8107;-128,64;Inherit;False;8094;NdotAmbientL;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8104;-128,-96;Inherit;False;8087;MainTexSaturate;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;8102;-128,-176;Inherit;False;8097;normals;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;8938;-3696,-848;Inherit;False;Property;_EmissionScrollMaskUVSwitch;Emission Scroll Mask UV Switch;106;1;[Enum];Create;True;0;4;UV0;0;UV1;1;UV2;2;UV3;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8103;-1264,3568;Inherit;False;ShadowRim;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;9147;192,0;Inherit;False;Lighting;270;;20262;f969bc2898d94ca4199b47c9b757495b;0;6;1258;FLOAT3;0,0,1;False;150;FLOAT3;0,0,0;False;1264;FLOAT;0;False;1263;FLOAT;0;False;1306;FLOAT4;0,0,0,0;False;1305;FLOAT4;0,0,0,0;False;12;FLOAT3;0;FLOAT3;198;FLOAT3;1309;FLOAT3;2205;FLOAT;210;FLOAT;1989;FLOAT;211;FLOAT;1361;FLOAT;2199;FLOAT;638;FLOAT;2155;FLOAT4;2137
Node;AmplifyShaderEditor.RangedFloatNode;8941;-3696,-656;Inherit;False;Property;_EmissionUVSwitch;Emission UV Switch;107;1;[Enum];Create;True;0;4;UV0;0;UV1;1;UV2;2;UV3;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8132;800,304;Inherit;False;AmbientRamp;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;8943;-3200,-656;Inherit;False;if (UVSwitchProp == 0)$	return UV0@$else if (UVSwitchProp == 1)$	return UV1@$else if (UVSwitchProp == 2)$	return UV2@$else$	return UV3@;2;Create;5;True;UVSwitchProp;FLOAT;0;In;;Inherit;False;True;UV0;FLOAT2;0,0;In;;Inherit;False;True;UV1;FLOAT2;0,0;In;;Inherit;False;True;UV2;FLOAT2;0,0;In;;Inherit;False;True;UV3;FLOAT2;0,0;In;;Inherit;False;UVSwitch;False;False;0;;False;5;0;FLOAT;0;False;1;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CommentaryNode;6225;6268.076,2016;Inherit;False;1710.043;1811.582;;7;7703;8041;7702;8797;7650;7654;9012;Outline;0.254717,0.254717,0.254717,1;0;0
Node;AmplifyShaderEditor.TextureTransformNode;8942;-2976,-656;Inherit;False;8280;False;1;0;SAMPLER2D;;False;2;FLOAT2;0;FLOAT2;1
Node;AmplifyShaderEditor.RegisterLocalVarNode;8131;-1264,-1024;Inherit;False;NdotVCorr;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8846;800,784;Inherit;False;NdLVertexLightsShadows;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8140;-1264,-1184;Inherit;False;AmbientLdotAmbientH;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8090;-928,-1584;Inherit;False;GrayscaledLight;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8128;-1264,-1424;Inherit;False;LdotH;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8111;416,-80;Inherit;False;8103;ShadowRim;1;0;OBJECT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TextureTransformNode;8940;-2976,-848;Inherit;False;8229;False;1;0;SAMPLER2D;;False;2;FLOAT2;0;FLOAT2;1
Node;AmplifyShaderEditor.RegisterLocalVarNode;8130;-1264,-1504;Inherit;False;NdotH;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;8939;-3200,-848;Inherit;False;if (UVSwitchProp == 0)$	return UV0@$else if (UVSwitchProp == 1)$	return UV1@$else if (UVSwitchProp == 2)$	return UV2@$else$	return UV3@;2;Create;5;True;UVSwitchProp;FLOAT;0;In;;Inherit;False;True;UV0;FLOAT2;0,0;In;;Inherit;False;True;UV1;FLOAT2;0,0;In;;Inherit;False;True;UV2;FLOAT2;0,0;In;;Inherit;False;True;UV3;FLOAT2;0,0;In;;Inherit;False;UVSwitch;False;False;0;;False;5;0;FLOAT;0;False;1;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CommentaryNode;7900;8544,528;Inherit;False;891.5;452.2001;Kaj Optimizer;4;7899;7861;8602;9023;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8134;800,112;Inherit;False;DirectLightRamp;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8129;-1264,-1264;Inherit;False;NdotAmbientH;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;8138;-2080,2208;Inherit;False;1826.504;1092.717;;33;8256;8847;8848;8849;8850;8851;8852;8853;8854;8855;8856;8857;8858;8859;8860;8861;8862;8863;8864;8865;8866;8867;8868;8869;8870;8871;8872;8873;8874;8875;8985;8986;8987;Specular Highlights;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;8858;-2048,2432;Inherit;False;8088;VertexLightNdLNONMAX;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;8856;-1568,2592;Inherit;False;8129;NdotAmbientH;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8872;-2048,2352;Inherit;False;8846;NdLVertexLightsShadows;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;8873;-1776,2432;Inherit;False;8095;NdotL;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8847;-1776,2512;Inherit;False;8131;NdotVCorr;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;7654;6320,2704;Inherit;False;1554.054;1072.946;Width Calculation;2;7655;7656;;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;8855;-1520,2672;Inherit;False;8090;GrayscaledLight;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;8945;-2720,-656;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;8853;-1776,2352;Inherit;False;8134;DirectLightRamp;1;0;OBJECT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8987;-1968,2272;Inherit;False;8097;normals;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;8852;-1776,2272;Inherit;False;8049;worldnormals;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;8857;-1584,2512;Inherit;False;8128;LdotH;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8854;-1600,2432;Inherit;False;8130;NdotH;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8849;-1568,2272;Inherit;False;8087;MainTexSaturate;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;7899;8592,688;Inherit;False;784.9004;263.6;If Optimizer is toggled, make sure nothing is accidentally activated when its set to Off;6;7873;7867;7864;7866;8717;8718;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;8085;439,-1760;Inherit;False;2694.81;1276.184;;19;8953;8618;8300;8328;8348;8902;8275;8230;8247;8252;8231;8203;8228;8209;8229;8208;8116;8234;8092;Emission;1,0.724138,0,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;8850;-1776,2592;Inherit;False;8094;NdotAmbientL;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;8944;-2720,-848;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;8851;-1776,2672;Inherit;False;8140;AmbientLdotAmbientH;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8848;-1552,2352;Inherit;False;8132;AmbientRamp;1;0;OBJECT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;8120;656,-176;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;9139;-1232,2352;Inherit;False;Specular Highlights;424;;20263;f01d465b622765446a78e511544ff258;0;28;2254;FLOAT3;0,0,0;False;44;FLOAT3;0,0,0;False;49;FLOAT3;0,0,0;False;1922;FLOAT4;0,0,0,0;False;1665;FLOAT4;0,0,0,0;False;192;FLOAT;1;False;293;FLOAT;1;False;594;FLOAT;0;False;578;FLOAT;0;False;1737;FLOAT;0;False;634;FLOAT;0;False;596;FLOAT;0;False;579;FLOAT;0;False;671;FLOAT;0;False;1739;FLOAT;0;False;1666;FLOAT4;0,0,0,0;False;1671;FLOAT3;0,0,0;False;1672;FLOAT3;0,0,0;False;1673;FLOAT3;0,0,0;False;1674;FLOAT3;0,0,0;False;1675;FLOAT;0;False;1676;FLOAT;0;False;1677;FLOAT;0;False;1678;FLOAT;0;False;1679;FLOAT;0;False;1680;FLOAT;0;False;1681;FLOAT;0;False;1682;FLOAT;0;False;6;FLOAT3;0;FLOAT3;58;FLOAT3;125;FLOAT3;2152;FLOAT3;1894;FLOAT4;1933
Node;AmplifyShaderEditor.RangedFloatNode;7873;8624,848;Inherit;False;Property;_COLORCOLOR;Toggle Advanced;189;0;Create;False;0;0;0;False;1;ToggleOff(_COLORCOLOR_ON);False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9010;800,688;Inherit;False;SSSAtten;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;7656;6348.076,2768;Inherit;False;1494.927;601.5664;Distance Fade + Mask;12;8804;6254;8806;7646;6276;6145;6262;8726;6266;6257;6268;8810;;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleAddOpNode;8947;-2592,-656;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8157;800,592;Inherit;False;AmbientOcclusion;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8139;800,-176;Inherit;False;FinalLight;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;8092;515,-1424;Inherit;False;941.7302;238.8046;Emission Scroll V1;3;8615;8110;8098;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;8166;-2085,928;Inherit;False;1201.111;498.6198;;11;8710;8235;8291;8266;8261;8260;8237;8182;8211;8200;8210;Rim Light;1,1,0,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8159;800,16;Inherit;False;PreClampFinalLight;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;8946;-2592,-848;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;7864;8624,752;Inherit;False;Property;_COLORADDSUBDIFF;Cubemap Toggle;188;0;Create;False;0;0;0;False;1;ToggleOff(_COLORADDSUBDIFF_ON);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8133;800,-80;Inherit;False;PreFinalLight;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;8624;-160,2208;Inherit;False;1273.458;361.4141;;8;8632;8631;8629;8628;8627;8626;8625;8289;Flipbook;1,0,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;8136;-2080,1568;Inherit;False;1227.628;453.2062;;12;8395;8387;8386;8382;8362;8245;8236;8206;8158;8152;8142;9009;Subsurface Scattering;1,0.4009434,0.4009434,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;8954;5040,3040;Inherit;False;1216.331;524.6264;;10;8963;8962;8961;8960;8959;8958;8957;8956;8955;8969;UV Switch;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8246;800,400;Inherit;False;LuminancedLight;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8875;-672,2592;Inherit;False;VertexLightShadows;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;8158;-1808,1920;Inherit;False;8090;GrayscaledLight;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;9009;-1856,1824;Inherit;False;9010;SSSAtten;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8149;-32,-1024;Inherit;False;VLLdotHFour;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8152;-1856,1744;Inherit;False;8087;MainTexSaturate;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;7655;6672,3392;Inherit;False;824;348;Distance Thickening;6;7651;7636;7648;7635;7634;8722;;1,1,1,1;0;0
Node;AmplifyShaderEditor.TexCoordVertexDataNode;8960;5328,3200;Inherit;False;1;2;0;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;8146;-32,-1424;Inherit;False;VLNdotHThree;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;8234;478,-960;Inherit;False;1617.396;440.0833;Emission;19;8249;8952;8638;8637;8635;8636;8326;8317;8319;8299;8303;8296;8298;8280;8272;8274;8278;8277;8268;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;7650;6320,2080;Inherit;False;872;597;Color Claculation;15;6229;6143;6144;6227;6288;6230;6142;6277;6226;6224;6287;6231;6223;6228;8800;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8949;-2464,-656;Inherit;False;EmissionUVSwitch;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CommentaryNode;8315;6272,1408;Inherit;False;922.2013;441.0284;;4;8351;8347;8333;8809;Dissolve;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;6268;6400,3008;Inherit;False;Property;_OutlineDepthFadeDistance;Outline Depth Fade Distance;476;0;Create;True;0;0;0;False;0;False;5;0;0;50;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;8963;5088,3200;Inherit;False;Property;_OutlineMaskUVSwitch;Outline Mask UV Switch;89;1;[Enum];Create;True;0;4;UV0;0;UV1;1;UV2;2;UV3;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexCoordVertexDataNode;8959;5328,3088;Inherit;False;0;2;0;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TexCoordVertexDataNode;8962;5328,3424;Inherit;False;3;2;0;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TexCoordVertexDataNode;8961;5328,3312;Inherit;False;2;2;0;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;8144;-32,-1104;Inherit;False;VLLdotHThree;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8161;-32,-1184;Inherit;False;VLLdotHTwo;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8142;-1856,1664;Inherit;False;8049;worldnormals;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;8182;-2048,1168;Inherit;False;8087;MainTexSaturate;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8948;-2464,-848;Inherit;False;EmissionScrollMaskUVSwitch;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;8710;-2048,1328;Inherit;False;8157;AmbientOcclusion;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7867;8848,848;Inherit;False;ToggleAdvanced;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8629;-128,2432;Inherit;False;8139;FinalLight;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode;8098;544,-1360;Inherit;False;Property;_EmissionscrollColor;Emission scroll Color;484;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,0;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;8628;-128,2352;Inherit;False;8133;PreFinalLight;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8143;-32,-1344;Inherit;False;VLNdotHFour;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8200;-2048,1008;Inherit;False;8159;PreClampFinalLight;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;8211;-2048,1248;Inherit;False;8069;NdotV;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7866;8848,752;Inherit;False;ToggleCubemap;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8210;-2048,1088;Inherit;False;8049;worldnormals;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8160;-32,-1504;Inherit;False;VLNdotHTwo;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8155;-32,-1584;Inherit;False;VLNdotHOne;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8874;-672,2512;Inherit;False;PixelAmbientShadows;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;8145;-160,1392;Inherit;False;2207.719;714.6574;;32;8670;8294;8671;8267;8251;8258;8239;8241;8898;8897;8896;8895;8894;8893;8892;8891;8890;8889;8888;8887;8886;8885;8884;8883;8882;8881;8880;8879;8878;8877;8876;8983;Cubemap;0,0.5019608,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8147;-32,-1264;Inherit;False;VLLdotHOne;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PosVertexDataNode;7634;6736,3552;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;8898;144,1440;Inherit;False;8874;PixelAmbientShadows;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;8878;144,1520;Inherit;False;8049;worldnormals;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;8895;400,1440;Inherit;False;8246;LuminancedLight;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8881;-128,1568;Inherit;False;8155;VLNdotHOne;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8884;352,1840;Inherit;False;8129;NdotAmbientH;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8892;-128,1760;Inherit;False;8143;VLNdotHFour;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8877;-128,2016;Inherit;False;8149;VLLdotHFour;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8885;320,1760;Inherit;False;8128;LdotH;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8879;368,1680;Inherit;False;8130;NdotH;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8880;144,1840;Inherit;False;8094;NdotAmbientL;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8893;144,1760;Inherit;False;8131;NdotVCorr;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8894;368,1600;Inherit;False;8157;AmbientOcclusion;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8891;144,1920;Inherit;False;8140;AmbientLdotAmbientH;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8333;6304,1584;Inherit;False;8087;MainTexSaturate;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;8887;-128,1632;Inherit;False;8160;VLNdotHTwo;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.CameraDepthFade;6257;6720,3088;Inherit;False;3;2;FLOAT3;0,0,0;False;0;FLOAT;1;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;6229;6368,2592;Inherit;False;Property;_OutlineHueSpeed;Outline Hue Speed;474;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.TextureTransformNode;8957;5776,3200;Inherit;False;6276;False;1;0;SAMPLER2D;;False;2;FLOAT2;0;FLOAT2;1
Node;AmplifyShaderEditor.SamplerStateNode;8249;528,-816;Inherit;False;0;0;0;2;8061;None;1;0;SAMPLER2D;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.CustomExpressionNode;8958;5552,3200;Inherit;False;if (UVSwitchProp == 0)$	return UV0@$else if (UVSwitchProp == 1)$	return UV1@$else if (UVSwitchProp == 2)$	return UV2@$else$	return UV3@;2;Create;5;True;UVSwitchProp;FLOAT;0;In;;Inherit;False;True;UV0;FLOAT2;0,0;In;;Inherit;False;True;UV1;FLOAT2;0,0;In;;Inherit;False;True;UV2;FLOAT2;0,0;In;;Inherit;False;True;UV3;FLOAT2;0,0;In;;Inherit;False;UVSwitch;False;False;0;;False;5;0;FLOAT;0;False;1;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;8952;496,-896;Inherit;False;8949;EmissionUVSwitch;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;8888;144,1680;Inherit;False;8090;GrayscaledLight;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8882;352,1520;Inherit;False;8097;normals;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;8897;-128,1696;Inherit;False;8146;VLNdotHThree;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8876;-128,1952;Inherit;False;8144;VLLdotHThree;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8239;1200,1584;Inherit;False;7867;ToggleAdvanced;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8631;320,2464;Inherit;False;7867;ToggleAdvanced;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8235;-1696,1232;Inherit;False;7867;ToggleAdvanced;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;8964;128,2368;Inherit;False;Clamped Flipbook;1;;20270;87fba7ae5c66562488908889b8d68bfa;0;2;51;FLOAT3;1,1,1;False;52;FLOAT3;1,1,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;8241;1200,1664;Inherit;False;7866;ToggleCubemap;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;8237;-1632,992;Inherit;False;Property;_RimToggle;Rim Toggle;492;0;Create;True;0;2;Off;0;On;1;0;False;1;ToggleUI;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;8632;176,2288;Inherit;False;Property;_FlipbookToggle;Flipbook Toggle;478;0;Create;True;0;2;Off;0;On;1;0;False;1;ToggleUI;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;8116;512,-1696;Inherit;False;1146.265;258.0206;Emission Scroll V2;6;8156;8126;8123;8122;8117;8923;;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;8953;512,-1152;Inherit;False;8948;EmissionScrollMaskUVSwitch;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9019;800,496;Inherit;False;LuminancedLightNoShadows;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerStateNode;8208;608,-1072;Inherit;False;0;0;0;2;8061;None;1;0;SAMPLER2D;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.FunctionNode;8973;-1776,1072;Inherit;False;Rim Light;372;;20274;6b1931f25cd84864d9988266c3b81246;0;5;271;FLOAT3;0,0,0;False;22;FLOAT3;0,0,0;False;33;FLOAT3;0,0,0;False;260;FLOAT;0;False;322;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;8826;-160,928;Inherit;False;1230.348;391.565;;8;8669;8301;8837;8836;8834;8833;8901;9020;Matcap;0,0.5019608,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;8889;-128,1504;Inherit;False;8093;VertexLightAtten;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;8883;-128,1440;Inherit;False;8875;VertexLightShadows;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;8890;-128,1824;Inherit;False;8147;VLLdotHOne;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8886;144,1600;Inherit;False;8087;MainTexSaturate;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;9127;-1584,1712;Inherit;False;Subsurface scattering;404;;20276;b3a8a731faf6b9a4bbb4cf58bc679816;0;9;24;FLOAT3;0,0,0;False;41;FLOAT3;0,0,0;False;445;FLOAT;0;False;142;FLOAT;0;False;169;FLOAT3;0,0,0;False;176;FLOAT3;0,0,0;False;186;FLOAT3;0,0,0;False;194;FLOAT3;0,0,0;False;237;FLOAT4;0,0,0,0;False;3;FLOAT3;35;FLOAT3;36;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8110;768,-1360;Inherit;False;Emissionsscrollcolor;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;8206;-1424,1632;Inherit;False;Property;_SSSSetting;SSS Setting;487;1;[Enum];Create;True;0;3;Light Based;0;Color Based;1;Mixed;2;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8896;-128,1888;Inherit;False;8161;VLLdotHTwo;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;7648;6864,3472;Inherit;False;Property;_OutlineDistancethickening;Outline Distance thickening;488;0;Create;True;0;0;0;False;0;False;0;0;0;50;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleTimeNode;6227;6640,2464;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;8268;912,-640;Inherit;False;Property;_EmissionTint;Emission Tint;486;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;8272;1376,-688;Inherit;False;Property;_EmissionLightscale;Emission Lightscale;496;0;Create;True;0;0;0;False;1;ToggleUI;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.NegateNode;6266;6976,3088;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;9004;6544,1584;Inherit;False;Dissolve;118;;20282;82730ad0d4bfc13408a9f4bccf476772;0;1;424;FLOAT3;0,0,0;False;4;FLOAT;0;FLOAT;310;FLOAT3;425;FLOAT3;426
Node;AmplifyShaderEditor.GetLocalVarNode;6143;6368,2176;Inherit;False;8133;PreFinalLight;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode;8278;704,-720;Inherit;False;Property;_EmissionColor;Emission Color;482;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,0;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;8277;944,-720;Inherit;False;8087;MainTexSaturate;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;8274;1376,-608;Inherit;False;8246;LuminancedLight;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;6144;6368,2256;Half;False;Property;_OutlineColor;OutlineColor;265;1;[HDR];Create;True;0;0;0;False;0;False;0.09803922,0.09803922,0.09803922,0;1,0.6043571,0.4669811,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;8123;640,-1632;Inherit;False;8097;normals;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;8956;6000,3200;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.UnityObjToClipPosHlpNode;7635;6928,3552;Inherit;False;1;0;FLOAT3;0,0,0;False;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;8280;704,-912;Inherit;True;Property;_Emission;Emission;483;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;8626;592,2320;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;8236;-1232,1664;Inherit;False;False;5;0;FLOAT;1;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;8251;1440,1616;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;8627;384,2304;Inherit;False;False;5;0;FLOAT;1;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;8901;-128,1072;Inherit;False;8159;PreClampFinalLight;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ConditionalIfNode;8261;-1440,1008;Inherit;False;False;5;0;FLOAT;1;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;8117;816,-1632;Inherit;False;8049;worldnormals;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;9020;80,1072;Inherit;False;9019;LuminancedLightNoShadows;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8126;544,-1552;Inherit;False;8087;MainTexSaturate;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;8834;-128,1152;Inherit;False;8157;AmbientOcclusion;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8122;784,-1552;Inherit;False;8110;Emissionsscrollcolor;1;0;OBJECT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;8836;80,992;Inherit;False;8087;MainTexSaturate;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CustomExpressionNode;8985;-704,2336;Inherit;False;UNITY_BRANCH$if (_SpecularSetting == 0)$	Out = Toon@$else if (_SpecularSetting == 1)$	Out = GGX@$else if (_SpecularSetting == 2)$	Out = Anisotropic@$else$	Out = GGXAnisotropic@;1;Call;5;True;Out;FLOAT3;0,0,0;Out;;Inherit;False;True;Toon;FLOAT3;0,0,0;In;;Inherit;False;True;GGX;FLOAT3;0,0,0;In;;Inherit;False;True;Anisotropic;FLOAT3;0,0,0;In;;Inherit;False;True;GGXAnisotropic;FLOAT3;0,0,0;In;;Inherit;False;longIF;False;False;0;;False;6;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;2;FLOAT;0;FLOAT3;2
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;8260;-1424,1184;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;8983;704,1472;Inherit;False;Baked Cubemap and Ambient Reflections;316;;20277;eb37bac9792209a4a9e79fa57ed77ae1;0;25;2903;SAMPLERSTATE;0;False;2821;FLOAT3;0,0,0;False;2817;FLOAT;0;False;2191;FLOAT3;0,0,0;False;86;FLOAT3;0,0,0;False;93;FLOAT3;0,0,0;False;89;FLOAT3;1,1,1;False;1847;FLOAT;1;False;2674;FLOAT;1;False;2409;FLOAT;0;False;2671;FLOAT;0;False;2411;FLOAT;0;False;2500;FLOAT;0;False;2501;FLOAT;0;False;2502;FLOAT;0;False;2545;FLOAT4;0,0,0,0;False;2842;FLOAT4;0,0,0,0;False;2590;FLOAT;0;False;2602;FLOAT;0;False;2619;FLOAT;0;False;2636;FLOAT;0;False;2543;FLOAT;0;False;2604;FLOAT;0;False;2621;FLOAT;0;False;2638;FLOAT;0;False;2;FLOAT3;0;FLOAT;2705
Node;AmplifyShaderEditor.GetLocalVarNode;8837;96,1152;Inherit;False;7867;ToggleAdvanced;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;8229;784,-1168;Inherit;True;Property;_EmissionScrollMask;Emission Scroll Mask;485;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;8833;-128,992;Inherit;False;8049;worldnormals;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;8598;6272,1088;Inherit;False;563.6001;257.8;;1;8600;Dither;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;6224;6624,2160;Inherit;False;Property;_OutlineMode;Outline Mode;356;1;[Enum];Create;True;0;2;Light Scaled;0;Emissive;1;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;8955;6128,3200;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;8299;1600,-688;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8553;-1440,32;Inherit;False;AlphaChannel;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;8296;1216,-736;Inherit;False;3;0;FLOAT3;1,1,1;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SaturateNode;6262;7104,3088;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;8722;7152,3472;Inherit;False;Constant;_Float16;Float 16;90;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMinOpNode;7636;7152,3552;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;8303;992,-912;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ConditionalIfNode;8671;1584,1616;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;8288;-1568,96;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;8298;992,-816;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8809;6928,1600;Inherit;False;DissolveVector;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;8726;7104,3008;Inherit;False;Constant;_Float24;Float 24;90;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;6226;6816,2368;Inherit;False;Simple HUE;-1;;20291;32abb5f0db087604486c2db83a2e817a;0;1;1;FLOAT;0;False;4;FLOAT3;6;FLOAT;7;FLOAT;5;FLOAT;8
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;8625;736,2320;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;6288;6368,2512;Inherit;False;Property;_OutlineTint;Outline Tint;475;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;9021;368,992;Inherit;False;Matcap;19;;20285;9363e9c7b7d1f2d4ab0056224472b0d9;0;6;65;FLOAT3;0,0,0;False;72;FLOAT3;0,0,0;False;900;FLOAT3;0,0,0;False;890;FLOAT;0;False;833;FLOAT;0;False;581;FLOAT;0;False;2;FLOAT3;0;FLOAT;647
Node;AmplifyShaderEditor.RangedFloatNode;8273;4400,1152;Inherit;False;Property;_SSSToggle;SSS Toggle;489;0;Create;True;0;2;Off;0;On;1;0;False;1;ToggleOff(_SUNDISK_NONE);False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;8265;4368,624;Inherit;False;Property;_SpecularToggle;Specular Toggle;490;0;Create;True;0;2;Off;0;On;1;0;False;1;ToggleOff(_REQUIRE_UV2);False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;8923;1056,-1632;Inherit;False;Emission Scroll V2;194;;20286;995e6dd10a2936e4a88f19546ea48650;0;5;70;FLOAT3;0,0,0;False;71;FLOAT3;0,0,1;False;30;FLOAT3;0,0,0;False;28;COLOR;1,1,1,1;False;725;FLOAT2;0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;8270;4368,544;Inherit;False;7867;ToggleAdvanced;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8245;-1056,1664;Inherit;False;SSS;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;8267;1616,1488;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;6230;6816,2512;Inherit;False;Constant;_Float5;Float 5;31;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8271;4400,1072;Inherit;False;7867;ToggleAdvanced;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;8266;-1248,1008;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;6142;6656,2240;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;6277;6368,2432;Inherit;False;8087;MainTexSaturate;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8256;-464,2352;Inherit;False;SpecularHighlight;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SaturateNode;8317;1728,-688;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8670;1760,1616;Inherit;False;CubemapLightAbsorbtion;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;6276;7200,3168;Inherit;True;Property;_OutlineMask;Outline Mask;477;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;8600;6336,1184;Inherit;False;8553;AlphaChannel;1;0;OBJECT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;6145;7200,2912;Half;False;Property;_OutlineWidth;OutlineWidth;269;0;Create;True;0;0;0;False;0;False;0.0005;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8347;6928,1680;Inherit;False;EmissiveDissolve;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8318;-1440,112;Inherit;False;AlphaChannelMul;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;6287;6656,2336;Inherit;False;3;0;FLOAT3;1,1,1;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ConditionalIfNode;7651;7312,3456;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;8319;1408,-912;Inherit;True;3;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8669;800,1072;Inherit;False;MatcapLightAbsorbtion;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;7646;7328,2992;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8810;7248,2832;Inherit;False;8809;DissolveVector;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;6231;6992,2320;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ConditionalIfNode;6223;6816,2208;Inherit;False;False;5;0;FLOAT;1;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;8974;1056,-1360;Inherit;False;Emission Scroll V1;243;;20292;b2dc8236d7837514dbd2e9707c89d6c6;0;1;32;COLOR;1,1,1,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;8209;1664,-1424;Inherit;False;Property;_EmissionScrollToggle;Emission Scroll Toggle;493;1;[Enum];Create;True;0;3;Off;0;ES v1;1;ES v2;2;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8289;880,2320;Inherit;False;Flipbook;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8156;1408,-1632;Inherit;False;EmissionScrollV2;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;8287;4688,1104;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8264;4448,992;Inherit;False;8245;SSS;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;8263;4368,464;Inherit;False;8256;SpecularHighlight;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8301;800,992;Inherit;False;Matcap;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;8295;4672,576;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8291;-1104,1008;Inherit;False;rimlight;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8294;1760,1488;Inherit;False;CubemapReflections;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;8673;5344,368;Inherit;False;8669;MatcapLightAbsorbtion;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;8975;6560,1184;Inherit;False;Dither;90;;20293;043df5c2e430b6241a679a3821a80d10;0;1;53;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8306;4816,672;Inherit;False;8294;CubemapReflections;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;6254;7520,2992;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;8806;7520,2896;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0.001;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;8326;1936,-912;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;8341;5392,528;Inherit;False;8318;AlphaChannelMul;1;0;OBJECT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8800;6944,2128;Inherit;False;8347;EmissiveDissolve;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;8340;5392,448;Inherit;False;8139;FinalLight;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;8672;5344,288;Inherit;False;8670;CubemapLightAbsorbtion;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;6228;6992,2208;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;8308;4864,992;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;8203;1648,-1264;Inherit;False;8156;EmissionScrollV2;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;8228;2160,-1248;Inherit;False;7867;ToggleAdvanced;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;8252;1504,-1360;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SaturateNode;8231;2160,-1328;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8309;4816,752;Inherit;False;8301;Matcap;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;8316;4816,912;Inherit;False;8289;Flipbook;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;8313;4848,464;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;8321;4816,832;Inherit;False;8291;rimlight;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;8902;2112,-912;Inherit;False;Property;_Keyword0;Keyword 0;162;0;Create;True;0;0;0;False;0;False;0;0;0;False;UNITY_PASS_FORWARDADD;Toggle;2;Key0;Key1;Fetch;False;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ConditionalIfNode;8230;1920,-1424;Inherit;False;False;5;0;FLOAT;1;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;8674;5664,304;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMinOpNode;8707;7232,1472;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;8804;7696,2896;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;8349;5616,480;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;8343;5136,416;Inherit;False;Property;_RenderingMode;Rendering Mode;495;1;[Enum];Create;True;0;3;Opaque;0;Fade;1;Transparent;2;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;8329;5136,656;Inherit;True;6;6;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;8325;5136,576;Inherit;False;8318;AlphaChannelMul;1;0;OBJECT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;8247;2400,-1328;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;8797;7312,2208;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ConditionalIfNode;8292;-1424,3744;Inherit;False;False;5;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ConditionalIfNode;8355;5776,400;Inherit;False;False;5;0;FLOAT;1;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.OutlineNode;7702;7504,2192;Inherit;False;0;False;Masked;0;0;Front;True;True;True;True;0;False;-1;3;0;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8348;2416,-912;Inherit;False;BasicEmission;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;8342;5424,672;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;8275;2544,-1424;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SaturateNode;8675;5792,304;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;8350;5584,608;Inherit;False;False;5;0;FLOAT;1;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8351;6928,1760;Inherit;False;VertexOffsetDissolve;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;8354;5840,720;Inherit;False;8348;BasicEmission;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;8676;5968,400;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8300;2928,-1424;Inherit;False;Emissionscroll;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8041;7760,2192;Inherit;False;OutlineVar;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8307;-1264,3744;Inherit;False;EmissiveRim;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;6172;6848,320;Inherit;False;1625.112;461.4236;Custom Rendering Options;8;6192;6191;6184;6176;6175;6174;6173;7860;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;6175;6880,384;Inherit;False;259;291;Blend RGB;3;6193;6181;6177;;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;8327;6128,272;Inherit;False;8307;EmissiveRim;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;6173;7152,384;Inherit;False;263;291;Blend Alpha;3;6196;6186;6182;;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;8403;6192,768;Inherit;False;8041;OutlineVar;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;7703;7216,2352;Inherit;False;524;175;"Stenciled Outlines" just not really stenciled (queue issue);1;6141;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;6176;8016,384;Inherit;False;434.1172;215.0966;Depth;4;6188;6187;6180;6179;;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;8383;6128,688;Inherit;False;8351;VertexOffsetDissolve;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;8320;6128,192;Inherit;False;8300;Emissionscroll;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;7091;8544,320;Inherit;False;371;165;Custom Inspector Settings;1;7093;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;8684;5769.6,2016;Inherit;False;367.4004;705.8;Shader Optimizer Animated States;8;8694;8692;8689;8685;8688;8693;8690;8696;;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleAddOpNode;8361;6192,544;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;6174;7424,384;Inherit;False;568.8174;379.8966;Stencil;7;6195;6194;6190;6189;6185;6183;6178;;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;8352;6128,352;Inherit;False;8347;EmissiveDissolve;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;8603;-2768,-224;Inherit;False;391;431.3881;Shader Optimizer Animated States;4;8606;8605;8604;8608;;0,0.1294118,1,1;0;0
Node;AmplifyShaderEditor.StaticSwitch;8290;4624,992;Inherit;False;Property;_SSSToggle;SSS Toggle;125;0;Create;False;0;0;0;False;0;False;0;0;0;False;_SUNDISK_NONE;ToggleOff;2;OFF;ON;Create;True;False;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;8258;1328,1472;Inherit;False;Property;_COLORADDSUBDIFF;Cubemap Toggle;125;0;Create;False;0;0;0;False;0;False;0;0;0;False;_COLORADDSUBDIFF_ON;ToggleOff;2;OFF;ON;Create;True;False;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;8859;-1776,3008;Inherit;False;8384;VLHalfVectorFour;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;6194;7728,432;Inherit;False;Property;_StencilBufferComparison;Stencil Buffer Comparison;261;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.CompareFunction;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;8718;9072,752;Inherit;False;Property;_COLORADDSUBDIFFAnimated;_COLORADDSUBDIFF;182;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.RangedFloatNode;6195;7440,432;Inherit;False;Property;_StencilBufferReference;Stencil Buffer Reference;242;0;Create;True;0;0;1;UnityEngine.Rendering.BlendMode;True;0;False;0;0;0;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;8900;6400,288;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.IntNode;8715;4368,704;Inherit;False;Property;_SpecularToggleAnimated;_SpecularToggle;177;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.IntNode;8635;1888,-784;Inherit;False;Property;_EmissionColorAnimated;_EmissionColor;178;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8396;-544,-784;Inherit;False;VLHalfVectorOne;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;8702;6416,544;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CustomExpressionNode;9012;7264,2096;Inherit;False;i.ASEVFace = 1@;1;Call;0;VFace inverter hah that would fix thousands of lines but needs to be first line, ok never mind i found a way to switch by Outline (see in normals node);False;False;0;;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;8293;4608,464;Inherit;False;Property;_SpecularToggle;Specular Toggle;125;0;Create;False;0;0;0;False;0;False;0;0;0;False;_REQUIRE_UV2;ToggleOff;2;OFF;ON;Create;True;False;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;8796;6416,720;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.IntNode;8605;-2704,-96;Inherit;False;Property;_MainColorAnimated;_MainColor;186;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.RangedFloatNode;6186;7168,432;Inherit;False;Property;_SourceBlendAlpha;Source Blend Alpha;266;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.BlendMode;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;8637;1872,-624;Inherit;False;Property;_EmissionLightscaleAnimated;_EmissionLightscale;179;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.IntNode;8615;768,-1280;Inherit;False;Property;_EmissionscrollColorAnimated;_EmissionscrollColor;183;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.IntNode;8688;5808,2304;Inherit;False;Property;_OutlineTintAnimated;_OutlineTint;115;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.RangedFloatNode;8602;8880,592;Inherit;False;Property;_LockTooltip;LockTooltip;239;0;Create;True;0;0;0;False;1;HelpBox(3);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;6177;6896,512;Inherit;False;Property;_DestinationBlendRGB;Destination Blend RGB;236;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.BlendMode;True;0;False;0;10;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8369;-32,-784;Inherit;False;VLDirThree;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8360;-32,-944;Inherit;False;VLDirOne;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8401;-544,-1184;Inherit;False;VertexLightAttenNdL;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.IntNode;8604;-2704,-176;Inherit;False;Property;_OptimizerExcludeMainSettings;OptimizerExcludeMainSettings;187;0;Create;True;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.IntNode;8981;-3696,-768;Inherit;False;Property;_EmissionScrollMaskUVSwitchAnimated;_EmissionScrollMaskUVSwitch;171;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8357;-544,-624;Inherit;False;VLHalfVectorThree;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8366;-544,-1584;Inherit;False;FourLightPosX0WorldPos;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8167;-544,-1104;Inherit;False;VLFinalOne;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;6188;8032,512;Inherit;False;Property;_ZTestMode;ZTest Mode;262;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.CompareFunction;True;0;False;4;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8811;800,208;Inherit;False;DirectionalAttenuation;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8153;-544,-1024;Inherit;False;VLFinalTwo;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.IntNode;8980;-3696,-992;Inherit;False;Property;_MainTexUVSwitchAnimated;_MainTexUVSwitch;173;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8387;-2032,1920;Inherit;False;8093;VertexLightAtten;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.IntNode;8689;5808,2464;Inherit;False;Property;_OutlineDepthFadeDistanceAnimated;_OutlineDepthFadeDistance;114;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.RangedFloatNode;6185;7440,592;Inherit;False;Property;_StencilBufferWriteMask;Stencil Buffer Write Mask;237;0;Create;True;0;0;1;UnityEngine.Rendering.BlendMode;True;0;False;255;255;0;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;8690;5808,2144;Inherit;False;Property;_OutlineModeAnimated;_OutlineMode;113;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8391;-544,-1424;Inherit;False;FourLightPosZ0WorldPos;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;6189;7728,512;Inherit;False;Property;_StencilBufferPassFront;Stencil Buffer Pass Front;264;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.StencilOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8370;-544,-704;Inherit;False;VLHalfVectorTwo;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.OutlineNode;6141;7408,2400;Inherit;False;0;False;Masked;2;0;Off;True;True;True;True;0;False;-1;3;0;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;6196;7168,592;Inherit;False;Property;_BlendOpAlpha;Blend Op Alpha;191;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.BlendOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;8716;5136,496;Inherit;False;Property;_RenderingModeAnimated;_RenderingMode;176;0;Create;False;0;0;0;True;1;ToggleUI;False;1;1;False;0;1;INT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8868;-1520,3200;Inherit;False;8149;VLLdotHFour;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8379;-32,-864;Inherit;False;VLDirTwo;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;8394;6368,464;Inherit;False;8318;AlphaChannelMul;1;0;OBJECT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;8717;9072,848;Inherit;False;Property;_COLORCOLORAnimated;_COLORCOLOR;180;0;Create;False;0;0;0;True;1;ToggleUI;False;1;1;False;0;1;INT;0
Node;AmplifyShaderEditor.IntNode;8618;1664,-1504;Inherit;False;Property;_EmissionScrollToggleAnimated;_EmissionScrollToggle;184;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8382;-2032,1856;Inherit;False;8358;VLDirFour;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;8867;-1520,2816;Inherit;False;8160;VLNdotHTwo;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8362;-2032,1664;Inherit;False;8360;VLDirOne;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.IntNode;8692;5808,2544;Inherit;False;Property;_OutlineWidthAnimated;_OutlineWidth;112;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.RangedFloatNode;6187;8032,432;Inherit;False;Property;_ZWriteMode;ZWrite Mode;457;1;[Enum];Create;True;0;2;Off;0;On;1;0;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;7093;8592,384;Inherit;False;Property;_AdvancedExperimentalToggle;Advanced Experimental Toggle;263;1;[Enum];Create;True;0;3;Basic;0;Advanced;1;Advanced Plus;2;0;True;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;7860;8032,640;Inherit;False;Property;_MaskClipValue;Mask Clip Value;491;0;Create;True;0;0;1;;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;8696;5808,2064;Inherit;False;Property;_OptimizerExcludeOutline;OptimizerExcludeOutline;109;0;Create;True;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.RangedFloatNode;6191;7040,688;Inherit;False;Property;_AlphatoCoverage;Alpha to Coverage;458;1;[Enum];Create;True;0;2;Off;0;On;1;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;6178;7728,592;Inherit;False;Property;_StencilBufferFailFront;Stencil Buffer Fail Front;259;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.StencilOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;6180;8224,512;Inherit;False;Property;_DepthOffsetUnits;Depth Offset Units;241;0;Create;True;0;0;1;UnityEngine.Rendering.BlendMode;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;8638;1616,-784;Inherit;False;Property;_OptimizerExcludeEmission;OptimizerExcludeEmission;181;0;Create;True;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.RangedFloatNode;6192;6896,688;Float;False;Property;_CullMode;Cull Mode;268;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.CullMode;True;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8871;-1520,3136;Inherit;False;8144;VLLdotHThree;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8869;-1520,2752;Inherit;False;8155;VLNdotHOne;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;6193;6896,592;Inherit;False;Property;_BlendOpRGB;Blend Op RGB;193;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.BlendOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8384;-544,-544;Inherit;False;VLHalfVectorFour;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;8866;-1520,2880;Inherit;False;8146;VLNdotHThree;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8863;-1776,2752;Inherit;False;8093;VertexLightAtten;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.IntNode;8714;4400,1232;Inherit;False;Property;_SSSToggleAnimated;_SSSToggle;175;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.RangedFloatNode;7861;8592,592;Inherit;False;Property;_ShaderOptimizerEnabled;Shader Optimizer Enabled;0;0;Create;True;0;3;Basic;0;Advanced;1;Advanced Plus;2;0;True;1;ShaderOptimizerLockButton;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8870;-1520,3072;Inherit;False;8161;VLLdotHTwo;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;8328;2688,-1424;Inherit;False;Property;_COLORCOLOR3;Toggle Advanced;129;0;Create;False;0;0;0;False;0;False;0;0;0;True;_GLOSSYREFLECTIONS;Toggle;2;OFF;ON;Reference;8353;False;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;8353;5824,608;Inherit;False;Property;_COLORCOLOR;Toggle Advanced;129;0;Create;False;0;0;0;False;0;False;0;0;0;False;_COLORCOLOR_ON;ToggleOff;2;OFF;ON;Create;True;False;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;8862;-1776,2880;Inherit;False;8370;VLHalfVectorTwo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8148;-544,-944;Inherit;False;VLFinalThree;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;8864;-1520,3008;Inherit;False;8147;VLLdotHOne;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8154;-544,-864;Inherit;False;VLFinalFour;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.IntNode;8606;-2704,-16;Inherit;False;Property;_SaturationAnimated;_Saturation;185;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.IntNode;8608;-2704,64;Inherit;False;Property;_CutoutAnimated;_Cutout;190;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8865;-1520,2944;Inherit;False;8143;VLNdotHFour;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;8685;5808,2384;Inherit;False;Property;_OutlineHueSpeedAnimated;_OutlineHueSpeed;116;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8860;-1776,2944;Inherit;False;8357;VLHalfVectorThree;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.IntNode;8982;-3696,-576;Inherit;False;Property;_EmissionUVSwitchAnimated;_EmissionUVSwitch;172;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8364;-544,-1504;Inherit;False;FourLightPosY0WorldPos;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;8386;-2032,1792;Inherit;False;8369;VLDirThree;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;6179;8224,432;Inherit;False;Property;_DepthOffsetFactor;Depth Offset Factor;240;0;Create;True;0;0;1;UnityEngine.Rendering.BlendMode;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;6181;6896,432;Inherit;False;Property;_SourceBlendRGB;Source Blend RGB;267;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.BlendMode;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;6183;7728,672;Inherit;False;Property;_StencilBufferZFailFront;Stencil Buffer ZFail Front;260;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.StencilOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;8693;5808,2224;Inherit;False;Property;_OutlineColorAnimated;_OutlineColor;110;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.IntNode;8969;5088,3280;Inherit;False;Property;_OutlineMaskUVSwitchAnimated;_OutlineMaskUVSwitch;174;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8395;-2032,1728;Inherit;False;8379;VLDirTwo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;6182;7168,512;Inherit;False;Property;_DestinationBlendAlpha;Destination Blend Alpha;192;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.BlendMode;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;8636;1888,-704;Inherit;False;Property;_EmissionTintAnimated;_EmissionTint;117;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.RangedFloatNode;6184;7248,688;Inherit;False;Property;_ColorMask;Color Mask;459;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.ColorWriteMask;True;0;False;15;15;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;9023;9088,592;Inherit;False;Property;_IgnoreProjector;IgnoreProjector;88;0;Create;True;0;0;0;True;1;OverrideTagToggle(IgnoreProjector);False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8861;-1776,2816;Inherit;False;8396;VLHalfVectorOne;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.IntNode;8694;5808,2624;Inherit;False;Property;_OutlineDistancethickeningAnimated;_OutlineDistancethickening;111;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8358;-32,-704;Inherit;False;VLDirFour;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;6190;7440,512;Inherit;False;Property;_StencilBufferReadMask;Stencil Buffer Read Mask;238;0;Create;True;0;0;1;UnityEngine.Rendering.BlendMode;True;0;False;255;255;0;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;8986;-672,2256;Half;False;Property;_SpecularSetting;Specular Setting;473;1;[Enum];Create;True;0;4;Toon;0;Unity Standard GGX;1;Anisotropic by James OHare;2;Anisotropic GGX;3;0;True;0;False;0;2;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;6608,320;Float;False;True;-1;7;MorisMaterialInspector;0;0;CustomLighting;Moriohs Shaders/Moris Toon Shader/Outlined;False;False;False;False;True;True;True;True;True;False;True;False;False;False;False;False;False;False;False;False;False;Back;0;True;6187;0;True;6188;True;0;True;6179;0;True;6180;False;0;Custom;0.5;True;True;0;True;TransparentCutout;;AlphaTest;ForwardOnly;5;d3d11;glcore;gles3;vulkan;nomrt;True;True;True;True;0;True;6184;True;0;True;6195;255;True;6190;255;True;6185;0;True;6194;0;True;6189;0;True;6178;0;True;6183;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;0;4;10;25;False;0.5;True;1;5;True;6181;10;True;6177;1;0;True;6186;0;True;6182;5;True;6193;4;True;6196;0;False;5E-06;0,0,0,0;VertexOffset;True;False;Cylindrical;False;True;Relative;0;Legacy Shaders/Transparent/Cutout/VertexLit;-1;-1;-1;-1;1;IgnoreProjectorPlaceholder=True;False;0;0;True;6192;-1;0;True;7860;0;0;0;False;0.1;False;-1;0;True;6191;True;15;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;8935;0;8929;0
WireConnection;8935;1;8930;0
WireConnection;8935;2;8931;0
WireConnection;8935;3;8933;0
WireConnection;8935;4;8932;0
WireConnection;8936;0;8934;0
WireConnection;8936;1;8935;0
WireConnection;8937;0;8936;0
WireConnection;8937;1;8934;1
WireConnection;8950;0;8937;0
WireConnection;8049;0;9145;0
WireConnection;8061;1;8951;0
WireConnection;8976;17;8061;0
WireConnection;8843;19;8056;0
WireConnection;8406;0;8976;0
WireConnection;8406;1;8061;4
WireConnection;8406;2;8407;0
WireConnection;8065;0;8058;0
WireConnection;8075;0;8066;0
WireConnection;8069;0;8843;13
WireConnection;8076;0;8406;0
WireConnection;8076;1;8065;0
WireConnection;8084;0;8076;0
WireConnection;8084;1;8075;0
WireConnection;8093;0;8843;397
WireConnection;8088;0;8843;375
WireConnection;8095;0;8843;0
WireConnection;8097;0;9145;14
WireConnection;8094;0;8843;60
WireConnection;8087;0;8084;0
WireConnection;8711;34;8077;0
WireConnection;8089;1;8081;0
WireConnection;8089;2;8711;0
WireConnection;8089;3;8082;0
WireConnection;8103;0;8089;0
WireConnection;9147;1258;8102;0
WireConnection;9147;150;8104;0
WireConnection;9147;1264;8108;0
WireConnection;9147;1263;8107;0
WireConnection;9147;1306;8099;0
WireConnection;9147;1305;8101;0
WireConnection;8132;0;9147;211
WireConnection;8943;0;8941;0
WireConnection;8943;1;8930;0
WireConnection;8943;2;8931;0
WireConnection;8943;3;8933;0
WireConnection;8943;4;8932;0
WireConnection;8131;0;8843;446
WireConnection;8846;0;9147;2137
WireConnection;8140;0;8843;64
WireConnection;8090;0;8843;18
WireConnection;8128;0;8843;15
WireConnection;8130;0;8843;14
WireConnection;8939;0;8938;0
WireConnection;8939;1;8930;0
WireConnection;8939;2;8931;0
WireConnection;8939;3;8933;0
WireConnection;8939;4;8932;0
WireConnection;8134;0;9147;210
WireConnection;8129;0;8843;62
WireConnection;8945;0;8942;0
WireConnection;8945;1;8943;0
WireConnection;8944;0;8940;0
WireConnection;8944;1;8939;0
WireConnection;8120;0;9147;0
WireConnection;8120;1;8111;0
WireConnection;9139;2254;8987;0
WireConnection;9139;44;8852;0
WireConnection;9139;49;8849;0
WireConnection;9139;1922;8872;0
WireConnection;9139;1665;8858;0
WireConnection;9139;192;8853;0
WireConnection;9139;293;8848;0
WireConnection;9139;594;8873;0
WireConnection;9139;578;8854;0
WireConnection;9139;1737;8847;0
WireConnection;9139;634;8857;0
WireConnection;9139;596;8850;0
WireConnection;9139;579;8856;0
WireConnection;9139;671;8851;0
WireConnection;9139;1739;8855;0
WireConnection;9010;0;9147;2155
WireConnection;8947;0;8945;0
WireConnection;8947;1;8942;1
WireConnection;8157;0;9147;638
WireConnection;8139;0;8120;0
WireConnection;8159;0;9147;1309
WireConnection;8946;0;8944;0
WireConnection;8946;1;8940;1
WireConnection;8133;0;9147;198
WireConnection;8246;0;9147;1361
WireConnection;8875;0;9139;1933
WireConnection;8149;0;8843;392
WireConnection;8146;0;8843;385
WireConnection;8949;0;8947;0
WireConnection;8144;0;8843;391
WireConnection;8161;0;8843;390
WireConnection;8948;0;8946;0
WireConnection;7867;0;7873;0
WireConnection;8143;0;8843;387
WireConnection;7866;0;7864;0
WireConnection;8160;0;8843;383
WireConnection;8155;0;8843;381
WireConnection;8874;0;9139;1894
WireConnection;8147;0;8843;389
WireConnection;6257;1;6268;0
WireConnection;8958;0;8963;0
WireConnection;8958;1;8959;0
WireConnection;8958;2;8960;0
WireConnection;8958;3;8961;0
WireConnection;8958;4;8962;0
WireConnection;8964;51;8628;0
WireConnection;8964;52;8629;0
WireConnection;9019;0;9147;2199
WireConnection;8973;271;8200;0
WireConnection;8973;22;8210;0
WireConnection;8973;33;8182;0
WireConnection;8973;260;8211;0
WireConnection;8973;322;8710;0
WireConnection;9127;24;8142;0
WireConnection;9127;41;8152;0
WireConnection;9127;445;9009;0
WireConnection;9127;142;8158;0
WireConnection;8110;0;8098;0
WireConnection;6227;0;6229;0
WireConnection;6266;0;6257;0
WireConnection;9004;424;8333;0
WireConnection;8956;0;8957;0
WireConnection;8956;1;8958;0
WireConnection;7635;0;7634;0
WireConnection;8280;1;8952;0
WireConnection;8280;7;8249;0
WireConnection;8626;0;8632;0
WireConnection;8626;1;8631;0
WireConnection;8236;1;8206;0
WireConnection;8236;2;9127;35
WireConnection;8236;3;9127;36
WireConnection;8236;4;9127;0
WireConnection;8251;0;8239;0
WireConnection;8251;1;8241;0
WireConnection;8627;0;8632;0
WireConnection;8627;3;8964;0
WireConnection;8261;1;8237;0
WireConnection;8261;3;8973;0
WireConnection;8985;2;9139;0
WireConnection;8985;3;9139;58
WireConnection;8985;4;9139;125
WireConnection;8985;5;9139;2152
WireConnection;8260;0;8237;0
WireConnection;8260;1;8235;0
WireConnection;8983;2821;8898;0
WireConnection;8983;2817;8895;0
WireConnection;8983;86;8878;0
WireConnection;8983;93;8882;0
WireConnection;8983;89;8886;0
WireConnection;8983;1847;8894;0
WireConnection;8983;2674;8888;0
WireConnection;8983;2409;8879;0
WireConnection;8983;2671;8893;0
WireConnection;8983;2411;8885;0
WireConnection;8983;2500;8880;0
WireConnection;8983;2501;8884;0
WireConnection;8983;2502;8891;0
WireConnection;8983;2545;8883;0
WireConnection;8983;2842;8889;0
WireConnection;8983;2590;8881;0
WireConnection;8983;2602;8887;0
WireConnection;8983;2619;8897;0
WireConnection;8983;2636;8892;0
WireConnection;8983;2543;8890;0
WireConnection;8983;2604;8896;0
WireConnection;8983;2621;8876;0
WireConnection;8983;2638;8877;0
WireConnection;8229;1;8953;0
WireConnection;8229;7;8208;0
WireConnection;8955;0;8956;0
WireConnection;8955;1;8957;1
WireConnection;8299;0;8272;0
WireConnection;8299;1;8274;0
WireConnection;8553;0;8061;4
WireConnection;8296;1;8277;0
WireConnection;8296;2;8268;0
WireConnection;6262;0;6266;0
WireConnection;7636;0;7635;4
WireConnection;7636;1;7648;0
WireConnection;8303;0;8280;0
WireConnection;8671;0;8251;0
WireConnection;8671;2;8983;2705
WireConnection;8288;0;8061;4
WireConnection;8288;1;8058;4
WireConnection;8298;0;8278;0
WireConnection;8809;0;9004;310
WireConnection;6226;1;6227;0
WireConnection;8625;0;8627;0
WireConnection;8625;1;8626;0
WireConnection;9021;65;8833;0
WireConnection;9021;72;8836;0
WireConnection;9021;900;8901;0
WireConnection;9021;890;9020;0
WireConnection;9021;833;8834;0
WireConnection;9021;581;8837;0
WireConnection;8923;70;8117;0
WireConnection;8923;71;8123;0
WireConnection;8923;30;8126;0
WireConnection;8923;28;8122;0
WireConnection;8923;725;8229;0
WireConnection;8245;0;8236;0
WireConnection;8267;0;8983;0
WireConnection;8267;1;8251;0
WireConnection;8266;0;8261;0
WireConnection;8266;1;8260;0
WireConnection;6142;0;6143;0
WireConnection;6142;1;6144;0
WireConnection;8256;0;8985;2
WireConnection;8317;0;8299;0
WireConnection;8670;0;8671;0
WireConnection;6276;1;8955;0
WireConnection;8347;0;9004;425
WireConnection;8318;0;8288;0
WireConnection;6287;1;6277;0
WireConnection;6287;2;6288;0
WireConnection;7651;1;7648;0
WireConnection;7651;3;8722;0
WireConnection;7651;4;7636;0
WireConnection;8319;0;8303;0
WireConnection;8319;1;8298;0
WireConnection;8319;2;8296;0
WireConnection;8669;0;9021;647
WireConnection;7646;1;6268;0
WireConnection;7646;3;8726;0
WireConnection;7646;4;6262;0
WireConnection;6231;0;6229;0
WireConnection;6231;2;6226;6
WireConnection;6231;3;6230;0
WireConnection;6223;1;6224;0
WireConnection;6223;2;6142;0
WireConnection;6223;3;6144;0
WireConnection;8974;32;8110;0
WireConnection;8289;0;8625;0
WireConnection;8156;0;8923;0
WireConnection;8287;0;8271;0
WireConnection;8287;1;8273;0
WireConnection;8301;0;9021;0
WireConnection;8295;0;8270;0
WireConnection;8295;1;8265;0
WireConnection;8291;0;8266;0
WireConnection;8294;0;8267;0
WireConnection;8975;53;8600;0
WireConnection;6254;0;7646;0
WireConnection;6254;1;6145;0
WireConnection;6254;2;6276;1
WireConnection;6254;3;7651;0
WireConnection;8806;0;8810;0
WireConnection;8806;1;6145;0
WireConnection;8326;0;8319;0
WireConnection;8326;2;8317;0
WireConnection;6228;0;6223;0
WireConnection;6228;1;6231;0
WireConnection;6228;2;6287;0
WireConnection;8308;0;8264;0
WireConnection;8308;1;8287;0
WireConnection;8252;0;8974;0
WireConnection;8252;1;8229;1
WireConnection;8231;0;8209;0
WireConnection;8313;0;8263;0
WireConnection;8313;1;8295;0
WireConnection;8902;1;8326;0
WireConnection;8230;1;8209;0
WireConnection;8230;3;8252;0
WireConnection;8230;4;8203;0
WireConnection;8674;0;8672;0
WireConnection;8674;1;8673;0
WireConnection;8707;0;8975;0
WireConnection;8707;1;9004;0
WireConnection;8804;0;8806;0
WireConnection;8804;1;6254;0
WireConnection;8349;0;8340;0
WireConnection;8349;1;8341;0
WireConnection;8329;0;8313;0
WireConnection;8329;1;8306;0
WireConnection;8329;2;8309;0
WireConnection;8329;3;8321;0
WireConnection;8329;4;8316;0
WireConnection;8329;5;8308;0
WireConnection;8247;0;8231;0
WireConnection;8247;1;8228;0
WireConnection;8797;0;6228;0
WireConnection;8797;1;8800;0
WireConnection;8292;1;8081;0
WireConnection;8292;3;8711;22
WireConnection;8355;1;8343;0
WireConnection;8355;2;8340;0
WireConnection;8355;3;8349;0
WireConnection;8355;4;8349;0
WireConnection;7702;0;8797;0
WireConnection;7702;2;8707;0
WireConnection;7702;1;8804;0
WireConnection;8348;0;8902;0
WireConnection;8342;0;8329;0
WireConnection;8342;1;8325;0
WireConnection;8275;0;8230;0
WireConnection;8275;1;8247;0
WireConnection;8675;0;8674;0
WireConnection;8350;1;8343;0
WireConnection;8350;2;8329;0
WireConnection;8350;3;8342;0
WireConnection;8350;4;8329;0
WireConnection;8351;0;9004;426
WireConnection;8676;0;8355;0
WireConnection;8676;2;8675;0
WireConnection;8300;0;8275;0
WireConnection;8041;0;7702;0
WireConnection;8307;0;8292;0
WireConnection;8361;0;8676;0
WireConnection;8361;1;8350;0
WireConnection;8361;2;8354;0
WireConnection;8290;1;8264;0
WireConnection;8258;1;8983;0
WireConnection;8900;0;8320;0
WireConnection;8900;1;8327;0
WireConnection;8900;2;8352;0
WireConnection;8396;0;8843;382
WireConnection;8702;0;8361;0
WireConnection;8702;1;9004;0
WireConnection;8293;1;8263;0
WireConnection;8796;0;8383;0
WireConnection;8796;1;8403;0
WireConnection;8369;0;8843;395
WireConnection;8360;0;8843;393
WireConnection;8401;0;8843;376
WireConnection;8357;0;8843;386
WireConnection;8366;0;8843;372
WireConnection;8167;0;8843;377
WireConnection;8811;0;9147;1989
WireConnection;8153;0;8843;378
WireConnection;8391;0;8843;374
WireConnection;8370;0;8843;384
WireConnection;6141;0;6228;0
WireConnection;6141;1;8804;0
WireConnection;8379;0;8843;394
WireConnection;8384;0;8843;388
WireConnection;8328;1;8275;0
WireConnection;8353;1;8350;0
WireConnection;8148;0;8843;379
WireConnection;8154;0;8843;380
WireConnection;8364;0;8843;373
WireConnection;8358;0;8843;396
WireConnection;0;2;8900;0
WireConnection;0;9;8394;0
WireConnection;0;10;8975;0
WireConnection;0;13;8702;0
WireConnection;0;11;8796;0
ASEEND*/
//CHKSM=3CB29D483AFD138B553A805CFC84D8246A218F0B