// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Moriohs Shaders/Moris Toon Shader/Transparent"
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
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] _texcoord2( "", 2D ) = "white" {}
		[HideInInspector] _texcoord4( "", 2D ) = "white" {}
		[ToggleUI]_DitherMaskUVSwitchAnimated("_DitherMaskUVSwitch", Int) = 0
		[HideInInspector] _texcoord3( "", 2D ) = "white" {}
		_DitherTexture("Dither Texture", 2D) = "white" {}
		[Enum(Off,0,On,1)]_DitherTextureToggle("DitherTextureToggle", Float) = 0
		_DitherTextureTiling("Dither Texture Tiling", Float) = 1
		[Enum(Object Center to Camera Distance,0,Diffuse Alpha,1)]_DitherAlphaToggle("DitherAlphaToggle", Float) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3)]_EmissionScrollMaskUVSwitch("Emission Scroll Mask UV Switch", Float) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3)]_EmissionUVSwitch("Emission UV Switch", Float) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3)]_MainTexUVSwitch("Main Tex UV Switch", Float) = 0
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
		[ToggleUI]_EmissionscrollColorAnimated("_EmissionscrollColor", Int) = 0
		[ToggleUI]_EmissionScrollToggleAnimated("_EmissionScrollToggle", Int) = 0
		[ToggleUI]_SSSToggleAnimated("_SSSToggle", Int) = 0
		[ToggleUI]_RenderingModeAnimated("_RenderingMode", Int) = 1
		[ToggleUI]_SpecularToggleAnimated("_SpecularToggle", Int) = 0
		[ToggleUI]_EmissionScrollMaskUVSwitchAnimated("_EmissionScrollMaskUVSwitch", Int) = 0
		[ToggleUI]_COLORCOLORAnimated("_COLORCOLOR", Int) = 1
		[ToggleUI]_COLORADDSUBDIFFAnimated("_COLORADDSUBDIFF", Int) = 0
		[ToggleUI]_EmissionUVSwitchAnimated("_EmissionUVSwitch", Int) = 0
		[ToggleUI]_SaturationAnimated("_Saturation", Int) = 0
		[ToggleUI]_MainTexUVSwitchAnimated("_MainTexUVSwitch", Int) = 0
		[ToggleUI]_OptimizerExcludeMainSettings("OptimizerExcludeMainSettings", Int) = 0
		[ToggleOff(_COLORADDSUBDIFF_ON)]_COLORADDSUBDIFF("Cubemap Toggle", Float) = 0
		[ToggleUI]_CutoutAnimated("_Cutout", Int) = 0
		[ToggleOff(_COLORCOLOR_ON)]_COLORCOLOR("Toggle Advanced", Float) = 0
		[Enum(UnityEngine.Rendering.BlendOp)]_BlendOpAlpha("Blend Op Alpha", Float) = 0
		[ToggleUI]_MainColorAnimated("_MainColor", Int) = 0
		[Enum(UnityEngine.Rendering.BlendMode)]_DestinationBlendAlpha("Destination Blend Alpha", Float) = 10
		[Enum(UnityEngine.Rendering.BlendOp)]_BlendOpRGB("Blend Op RGB", Float) = 0
		[Enum(UnityEngine.Rendering.BlendMode)]_DestinationBlendRGB("Destination Blend RGB", Float) = 10
		_StencilBufferWriteMask("Stencil Buffer Write Mask", Range( 0 , 255)) = 255
		_StencilBufferReadMask("Stencil Buffer Read Mask", Range( 0 , 255)) = 255
		_DepthOffsetFactor("Depth Offset Factor", Float) = 0
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
		_DepthOffsetUnits("Depth Offset Units", Float) = 0
		_StencilBufferReference("Stencil Buffer Reference", Range( 0 , 255)) = 0
		[Enum(UnityEngine.Rendering.StencilOp)]_StencilBufferFailFront("Stencil Buffer Fail Front", Float) = 0
		[Enum(UnityEngine.Rendering.StencilOp)]_StencilBufferZFailFront("Stencil Buffer ZFail Front", Float) = 0
		[Enum(UnityEngine.Rendering.CompareFunction)]_StencilBufferComparison("Stencil Buffer Comparison", Float) = 0
		[Enum(UnityEngine.Rendering.CompareFunction)]_ZTestMode("ZTest Mode", Float) = 4
		[Enum(Basic,0,Advanced,1,Advanced Plus,2)]_AdvancedExperimentalToggle("Advanced Experimental Toggle", Float) = 0
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
		[Enum(UnityEngine.Rendering.StencilOp)]_StencilBufferPassFront("Stencil Buffer Pass Front", Float) = 0
		[Enum(UnityEngine.Rendering.BlendMode)]_SourceBlendAlpha("Source Blend Alpha", Float) = 1
		[Enum(UnityEngine.Rendering.BlendMode)]_SourceBlendRGB("Source Blend RGB", Float) = 1
		[Enum(UnityEngine.Rendering.CullMode)]_CullMode("Cull Mode", Float) = 2
		_Cutout("Cutout", Range( 0 , 1)) = 0
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
		[ToggleOff(_REQUIRE_UV2)]_SpecularToggle("Specular Toggle", Float) = 0
		[ToggleOff(_SUNDISK_NONE)]_SSSToggle("SSS Toggle", Float) = 0
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
		[Enum(Off,0,On,1)]_ZWriteMode("ZWrite Mode", Float) = 1
		[Enum(Off,0,On,1)]_AlphatoCoverage("Alpha to Coverage", Float) = 0
		[Enum(UnityEngine.Rendering.ColorWriteMask)]_ColorMask("Color Mask", Float) = 15
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
		_Saturation("Saturation", Range( 0 , 10)) = 1
		_MainColor("Main Color", Color) = (1,1,1,1)
		_MainTex("Main Tex", 2D) = "white" {}
		[HDR]_EmissionColor("Emission Color", Color) = (1,1,1,0)
		_Emission("Emission", 2D) = "black" {}
		[HDR]_EmissionscrollColor("Emission scroll Color", Color) = (1,1,1,1)
		[ToggleUI]_FlipbookToggle("Flipbook Toggle", Float) = 0
		_EmissionScrollMask("Emission Scroll Mask", 2D) = "white" {}
		_EmissionTint("Emission Tint", Range( 0 , 1)) = 1
		_MaskClipValue("Mask Clip Value", Range( 0 , 1)) = 0.5
		[Enum(Toon,0,Unity Standard GGX,1,Anisotropic by James OHare,2,Anisotropic GGX,3)]_SpecularSetting("Specular Setting", Float) = 0
		[Enum(Light Based,0,Color Based,1,Mixed,2)]_SSSSetting("SSS Setting", Float) = 0
		[Enum(Opaque,0,Fade,1,Transparent,2)]_RenderingMode("Rendering Mode", Float) = 1
		[ToggleUI]_RimToggle("Rim Toggle", Float) = 0
		[Enum(Off,0,ES v1,1,ES v2,2)]_EmissionScrollToggle("Emission Scroll Toggle", Float) = 0
		[Enum(Shadow,0,Emissive,1)]_RimSwitch("Rim Switch", Float) = 0
		[ToggleUI]_EmissionLightscale("Emission Lightscale", Float) = 0
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "TransparentCutout"  "Queue" = "AlphaTest+50" "IgnoreProjector" = "True" "IsEmissive" = "true"  }
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
			float3 vertexToFrag2250_g20186;
			float3 vertexToFrag2251_g20186;
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
		uniform float _DepthOffsetFactor;
		uniform int _EmissionLightscaleAnimated;
		uniform int _CutoutAnimated;
		uniform int _COLORADDSUBDIFFAnimated;
		uniform float _StencilBufferComparison;
		uniform float _BlendOpRGB;
		uniform float _AdvancedExperimentalToggle;
		uniform half _SpecularSetting;
		uniform float _StencilBufferZFailFront;
		uniform float _SourceBlendRGB;
		uniform float _StencilBufferFailFront;
		uniform float _AlphatoCoverage;
		uniform int _EmissionScrollToggleAnimated;
		uniform int _EmissionUVSwitchAnimated;
		uniform int _OptimizerExcludeMainSettings;
		uniform float _StencilBufferReadMask;
		uniform int _MainTexUVSwitchAnimated;
		uniform int _EmissionTintAnimated;
		uniform int _EmissionScrollMaskUVSwitchAnimated;
		uniform float _SourceBlendAlpha;
		uniform float _StencilBufferPassFront;
		uniform float _BlendOpAlpha;
		uniform float _DepthOffsetUnits;
		uniform float _StencilBufferReference;
		uniform int _SSSToggleAnimated;
		uniform int _EmissionscrollColorAnimated;
		uniform int _MainColorAnimated;
		uniform float _ZWriteMode;
		uniform int _SaturationAnimated;
		uniform float _ShaderOptimizerEnabled;
		uniform int _DitherAlphaToggleAnimated;
		uniform int _StartDitheringFadeAnimated;
		uniform int _EndDitheringFadeAnimated;
		uniform int _DitherMaskUVSwitchAnimated;
		uniform int _DitherTextureTilingAnimated;
		uniform int _OptimizerExcludeDither;
		uniform int _DitherTextureToggleAnimated;
		uniform float _ZTestMode;
		uniform float _CullMode;
		uniform float _DestinationBlendAlpha;
		uniform int _SpecularToggleAnimated;
		uniform float _DestinationBlendRGB;
		uniform float _ColorMask;
		uniform int _OptimizerExcludeEmission;
		uniform int _EmissionColorAnimated;
		uniform int _IgnoreProjector;
		uniform float _StencilBufferWriteMask;
		uniform int _COLORCOLORAnimated;
		uniform int _RenderingModeAnimated;
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


		float2 voronoihash64_g20204( float2 p )
		{
			
			p = float2( dot( p, float2( 127.1, 311.7 ) ), dot( p, float2( 269.5, 183.3 ) ) );
			return frac( sin( p ) *43758.5453);
		}


		float voronoi64_g20204( float2 v, float time, inout float2 id, inout float2 mr, float smoothness, inout float2 smoothId )
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
			 		float2 o = voronoihash64_g20204( n + g );
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


		float3 getUnityObjectToWorldNormal2226_g20186( float3 In0 )
		{
			return UnityObjectToWorldNormal(In0);
		}


		float3 getUnityObjectToWorldDir2223_g20186( float3 In0 )
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
			float4 transform698_g20211 = mul(unity_ObjectToWorld,float4( ase_vertex3Pos , 0.0 ));
			float Space701_g20211 = transform698_g20211.y;
			float ifLocalVar717_g20211 = 0;
			if( _ToggleMaterializeDirInv > 0.0 )
				ifLocalVar717_g20211 = -Space701_g20211;
			else if( _ToggleMaterializeDirInv == 0.0 )
				ifLocalVar717_g20211 = Space701_g20211;
			float3 ase_parentObjectScale = (1.0/float3( length( unity_WorldToObject[ 0 ].xyz ), length( unity_WorldToObject[ 1 ].xyz ), length( unity_WorldToObject[ 2 ].xyz ) ));
			float ObjectScale711_g20211 = max( ase_parentObjectScale.y , 1.0 );
			float temp_output_739_0_g20211 = ( ifLocalVar717_g20211 / ObjectScale711_g20211 );
			float DissolveDensity732_g20211 = exp2( _DissolveDensity );
			float temp_output_753_0_g20211 = ( ( temp_output_739_0_g20211 + (-1.0 + (_MaterializeR - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g20211 );
			float4 ifLocalVar752_g20211 = 0;
			if( 1.0 > _MaterializeVertexColor )
				ifLocalVar752_g20211 = SAMPLE_TEXTURE2D_LOD( _MaterializeTex, sampler_point_clamp, v.texcoord.xyz.xy, 0.0 );
			else if( 1.0 == _MaterializeVertexColor )
				ifLocalVar752_g20211 = v.color;
			float temp_output_708_0_g20211 = ( _MaterializeColorLayerR / 100.0 );
			float temp_output_714_0_g20211 = ( temp_output_708_0_g20211 - 0.005 );
			float temp_output_716_0_g20211 = ( temp_output_708_0_g20211 + 0.005 );
			float2 appendResult727_g20211 = (float2(temp_output_714_0_g20211 , temp_output_716_0_g20211));
			float2 appendResult722_g20211 = (float2(-0.005 , temp_output_716_0_g20211));
			float2 appendResult720_g20211 = (float2(temp_output_714_0_g20211 , 1.005));
			float2 ifLocalVar734_g20211 = 0;
			if( 1.0 > _MaterializeLayerModeR )
				ifLocalVar734_g20211 = appendResult727_g20211;
			else if( 1.0 == _MaterializeLayerModeR )
				ifLocalVar734_g20211 = appendResult722_g20211;
			else if( 1.0 < _MaterializeLayerModeR )
				ifLocalVar734_g20211 = appendResult720_g20211;
			float2 break751_g20211 = ifLocalVar734_g20211;
			float temp_output_927_0_g20211 = ( _MaterializeColorLayerG / 100.0 );
			float temp_output_925_0_g20211 = ( temp_output_927_0_g20211 - 0.005 );
			float temp_output_922_0_g20211 = ( temp_output_927_0_g20211 + 0.005 );
			float2 appendResult919_g20211 = (float2(temp_output_925_0_g20211 , temp_output_922_0_g20211));
			float2 appendResult918_g20211 = (float2(-0.005 , temp_output_922_0_g20211));
			float2 appendResult916_g20211 = (float2(temp_output_925_0_g20211 , 1.005));
			float2 ifLocalVar921_g20211 = 0;
			if( 1.0 > _MaterializeLayerModeG )
				ifLocalVar921_g20211 = appendResult919_g20211;
			else if( 1.0 == _MaterializeLayerModeG )
				ifLocalVar921_g20211 = appendResult918_g20211;
			else if( 1.0 < _MaterializeLayerModeG )
				ifLocalVar921_g20211 = appendResult916_g20211;
			float2 break920_g20211 = ifLocalVar921_g20211;
			float temp_output_941_0_g20211 = ( _MaterializeColorLayerB / 100.0 );
			float temp_output_939_0_g20211 = ( temp_output_941_0_g20211 - 0.005 );
			float temp_output_936_0_g20211 = ( temp_output_941_0_g20211 + 0.005 );
			float2 appendResult933_g20211 = (float2(temp_output_939_0_g20211 , temp_output_936_0_g20211));
			float2 appendResult932_g20211 = (float2(-0.005 , temp_output_936_0_g20211));
			float2 appendResult930_g20211 = (float2(temp_output_939_0_g20211 , 1.005));
			float2 ifLocalVar935_g20211 = 0;
			if( 1.0 > _MaterializeLayerModeB )
				ifLocalVar935_g20211 = appendResult933_g20211;
			else if( 1.0 == _MaterializeLayerModeB )
				ifLocalVar935_g20211 = appendResult932_g20211;
			else if( 1.0 < _MaterializeLayerModeB )
				ifLocalVar935_g20211 = appendResult930_g20211;
			float2 break934_g20211 = ifLocalVar935_g20211;
			float temp_output_955_0_g20211 = ( _MaterializeColorLayerA / 100.0 );
			float temp_output_953_0_g20211 = ( temp_output_955_0_g20211 - 0.005 );
			float temp_output_950_0_g20211 = ( temp_output_955_0_g20211 + 0.005 );
			float2 appendResult947_g20211 = (float2(temp_output_953_0_g20211 , temp_output_950_0_g20211));
			float2 appendResult946_g20211 = (float2(-0.005 , temp_output_950_0_g20211));
			float2 appendResult944_g20211 = (float2(temp_output_953_0_g20211 , 1.005));
			float2 ifLocalVar949_g20211 = 0;
			if( 1.0 > _MaterializeLayerModeA )
				ifLocalVar949_g20211 = appendResult947_g20211;
			else if( 1.0 == _MaterializeLayerModeA )
				ifLocalVar949_g20211 = appendResult946_g20211;
			else if( 1.0 < _MaterializeLayerModeA )
				ifLocalVar949_g20211 = appendResult944_g20211;
			float2 break948_g20211 = ifLocalVar949_g20211;
			float4 appendResult956_g20211 = (float4(break751_g20211.x , break920_g20211.x , break934_g20211.x , break948_g20211.x));
			float4 appendResult957_g20211 = (float4(break751_g20211.y , break920_g20211.y , break934_g20211.y , break948_g20211.y));
			float4 MaterialzeLayers912_g20211 = (( ifLocalVar752_g20211 >= appendResult956_g20211 && ifLocalVar752_g20211 <= appendResult957_g20211 ) ? ifLocalVar752_g20211 :  float4( 0,0,0,0 ) );
			float4 break768_g20211 = ceil( MaterialzeLayers912_g20211 );
			float ifLocalVar817_g20211 = 0;
			if( 1.0 > saturate( _MaterializeR ) )
				ifLocalVar817_g20211 = ( ( temp_output_753_0_g20211 + 1.0 ) * break768_g20211.r );
			float temp_output_755_0_g20211 = ( ( temp_output_739_0_g20211 + (-1.0 + (_MaterializeG - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g20211 );
			float ifLocalVar812_g20211 = 0;
			if( 1.0 > saturate( _MaterializeG ) )
				ifLocalVar812_g20211 = ( ( temp_output_755_0_g20211 + 1.0 ) * break768_g20211.g );
			float temp_output_765_0_g20211 = ( ( temp_output_739_0_g20211 + (-1.0 + (_MaterializeB - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g20211 );
			float ifLocalVar823_g20211 = 0;
			if( 1.0 > saturate( _MaterializeB ) )
				ifLocalVar823_g20211 = ( ( temp_output_765_0_g20211 + 1.0 ) * break768_g20211.b );
			float temp_output_779_0_g20211 = ( ( temp_output_739_0_g20211 + (-1.0 + (_MaterializeA - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g20211 );
			float ifLocalVar820_g20211 = 0;
			if( 1.0 > saturate( _MaterializeA ) )
				ifLocalVar820_g20211 = ( ( temp_output_779_0_g20211 + 1.0 ) * break768_g20211.a );
			float ifLocalVar761_g20211 = 0;
			if( _ToggleDissolveDirInv > 0.0 )
				ifLocalVar761_g20211 = -Space701_g20211;
			else if( _ToggleDissolveDirInv == 0.0 )
				ifLocalVar761_g20211 = Space701_g20211;
			float temp_output_784_0_g20211 = ( ( ( ifLocalVar761_g20211 / ObjectScale711_g20211 ) + (-1.0 + (_DissolveModifier - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g20211 );
			float ifLocalVar818_g20211 = 0;
			if( 1.0 > _DissolveModifier )
				ifLocalVar818_g20211 = max( max( max( max( ifLocalVar817_g20211 , ifLocalVar812_g20211 ) , ifLocalVar823_g20211 ) , ifLocalVar820_g20211 ) , ( temp_output_784_0_g20211 + 1.0 ) );
			float lerpResult408_g20211 = lerp( 0.0 , saturate( ifLocalVar818_g20211 ) , saturate( ( 1.0 - ( ifLocalVar818_g20211 - 1.0 ) ) ));
			float3 ase_vertexNormal = v.normal.xyz;
			float3 ifLocalVar422_g20211 = 0;
			if( _ToggleDissolveVertexOffset == 1.0 )
				ifLocalVar422_g20211 = ( ( ( lerpResult408_g20211 * 4.0 ) * _DissolveVertexMultiplier ) * ase_vertexNormal );
			float3 VertexOffsetDissolve9857 = ifLocalVar422_g20211;
			v.vertex.xyz += VertexOffsetDissolve9857;
			v.vertex.w = 1;
			float4 ase_screenPos = ComputeScreenPos( UnityObjectToClipPos( v.vertex ) );
			o.screenPosition = ase_screenPos;
			float3 In02226_g20186 = ase_vertexNormal;
			float3 localgetUnityObjectToWorldNormal2226_g20186 = getUnityObjectToWorldNormal2226_g20186( In02226_g20186 );
			float4 ase_vertexTangent = v.tangent;
			float3 In02223_g20186 = ase_vertexTangent.xyz;
			float3 localgetUnityObjectToWorldDir2223_g20186 = getUnityObjectToWorldDir2223_g20186( In02223_g20186 );
			float3 temp_output_2222_0_g20186 = (localgetUnityObjectToWorldDir2223_g20186).xyz;
			float ase_vertexTangentSign = v.tangent.w;
			float3 normalizeResult2248_g20186 = normalize( ( cross( localgetUnityObjectToWorldNormal2226_g20186 , temp_output_2222_0_g20186 ) * ase_vertexTangentSign ) );
			o.vertexToFrag2250_g20186 = normalizeResult2248_g20186;
			float3 normalizeResult2249_g20186 = normalize( temp_output_2222_0_g20186 );
			o.vertexToFrag2251_g20186 = normalizeResult2249_g20186;
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
			float UVSwitchProp10529 = _MainTexUVSwitch;
			float2 UV010529 = i.uv_texcoord.xy;
			float2 UV110529 = i.uv2_texcoord2;
			float2 UV210529 = i.uv3_texcoord3;
			float2 UV310529 = i.uv4_texcoord4;
			float2 localUVSwitch10529 = UVSwitch( UVSwitchProp10529 , UV010529 , UV110529 , UV210529 , UV310529 );
			float2 MainTexUVSwitch10544 = ( ( _MainTex_ST.xy * localUVSwitch10529 ) + _MainTex_ST.zw );
			float4 tex2DNode9554 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, MainTexUVSwitch10544 );
			float AlphaChannelMul9750 = ( tex2DNode9554.a * _MainColor.a );
			float3 worldSpaceViewDir7_g20214 = WorldSpaceViewDir( float4( 0,0,0,1 ) );
			float AlphaChannel9912 = tex2DNode9554.a;
			float temp_output_53_0_g20214 = AlphaChannel9912;
			float ifLocalVar18_g20214 = 0;
			if( 1.0 > _DitherAlphaToggle )
				ifLocalVar18_g20214 = distance( worldSpaceViewDir7_g20214 , float3( 0,0,0 ) );
			else if( 1.0 == _DitherAlphaToggle )
				ifLocalVar18_g20214 = temp_output_53_0_g20214;
			float temp_output_12_0_g20214 = ( _EndDitheringFade + _ProjectionParams.y );
			float4 ase_screenPos = i.screenPosition;
			float4 ase_screenPosNorm = ase_screenPos / ase_screenPos.w;
			ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
			float2 clipScreen23_g20214 = ase_screenPosNorm.xy * _ScreenParams.xy;
			float dither23_g20214 = Dither8x8Bayer( fmod(clipScreen23_g20214.x, 8), fmod(clipScreen23_g20214.y, 8) );
			float2 UV22_g20215 = ase_screenPosNorm.xy;
			float2 localUnStereo22_g20215 = UnStereo( UV22_g20215 );
			float4 ditherCustomScreenPos25_g20214 = float4( ( localUnStereo22_g20215 * _DitherTextureTiling ), 0.0 , 0.0 );
			float dither25_g20214 = DitherNoiseTex(ditherCustomScreenPos25_g20214, _DitherTexture, sampler_trilinear_repeat, _DitherTexture_TexelSize);
			float ifLocalVar26_g20214 = 0;
			if( 1.0 > _DitherTextureToggle )
				ifLocalVar26_g20214 = dither23_g20214;
			else if( 1.0 == _DitherTextureToggle )
				ifLocalVar26_g20214 = dither25_g20214;
			float UVSwitchProp61_g20214 = _DitherMaskUVSwitch;
			float2 UV061_g20214 = i.uv_texcoord.xy;
			float2 UV161_g20214 = i.uv2_texcoord2;
			float2 UV261_g20214 = i.uv3_texcoord3;
			float2 UV361_g20214 = i.uv4_texcoord4;
			float2 localUVSwitch61_g20214 = UVSwitch( UVSwitchProp61_g20214 , UV061_g20214 , UV161_g20214 , UV261_g20214 , UV361_g20214 );
			float ifLocalVar37_g20214 = 0;
			if( 1.0 > _DitherAlphaToggle )
				ifLocalVar37_g20214 = SAMPLE_TEXTURE2D( _DitherMask, sampler_trilinear_repeat, ( ( _DitherMask_ST.xy * localUVSwitch61_g20214 ) + _DitherMask_ST.zw ) ).g;
			else if( 1.0 == _DitherAlphaToggle )
				ifLocalVar37_g20214 = ( 1.0 - temp_output_53_0_g20214 );
			float lerpResult42_g20214 = lerp( 1.0 , ( 1.0 - ( ( ( ifLocalVar18_g20214 + -temp_output_12_0_g20214 ) / ( _StartDitheringFade - temp_output_12_0_g20214 ) ) - ifLocalVar26_g20214 ) ) , ifLocalVar37_g20214);
			float ifLocalVar44_g20214 = 0;
			if( 0.0 == ( _StartDitheringFade + _EndDitheringFade ) )
				ifLocalVar44_g20214 = 1.0;
			else if( 0.0 < ( _StartDitheringFade + _EndDitheringFade ) )
				ifLocalVar44_g20214 = lerpResult42_g20214;
			float3 Texture18_g2 = tex2DNode9554.rgb;
			float grayscale5_g2 = (Texture18_g2.r + Texture18_g2.g + Texture18_g2.b) / 3;
			float UVSwitchProp257_g2 = _HueMaskUVSwitch;
			float2 UV0257_g2 = i.uv_texcoord.xy;
			float2 UV1257_g2 = i.uv2_texcoord2;
			float2 UV2257_g2 = i.uv3_texcoord3;
			float2 UV3257_g2 = i.uv4_texcoord4;
			float2 localUVSwitch257_g2 = UVSwitch( UVSwitchProp257_g2 , UV0257_g2 , UV1257_g2 , UV2257_g2 , UV3257_g2 );
			float2 temp_output_252_0_g2 = ( ( _HueMask_ST.xy * localUVSwitch257_g2 ) + _HueMask_ST.zw );
			float HueMaskG53_g2 = SAMPLE_TEXTURE2D( _HueMask, sampler_point_clamp, temp_output_252_0_g2 ).g;
			float ifLocalVar218_g2 = 0;
			if( 1.0 > _ToggleHueTexforSpeed )
				ifLocalVar218_g2 = 1.0;
			else if( 1.0 == _ToggleHueTexforSpeed )
				ifLocalVar218_g2 = HueMaskG53_g2;
			float mulTime2_g2 = _Time.y * ( _HueShiftSpeed * ifLocalVar218_g2 );
			float3 hsvTorgb3_g6469 = HSVToRGB( float3(( mulTime2_g2 + _HueShiftRandomizer ),1.0,1.0) );
			float3 ifLocalVar13_g2 = 0;
			if( ( _HueShiftSpeed + _HueShiftRandomizer ) > 0.0 )
				ifLocalVar13_g2 = ( grayscale5_g2 * hsvTorgb3_g6469 );
			else if( ( _HueShiftSpeed + _HueShiftRandomizer ) == 0.0 )
				ifLocalVar13_g2 = Texture18_g2;
			float HueMaskR52_g2 = SAMPLE_TEXTURE2D( _HueMask, sampler_trilinear_repeat, temp_output_252_0_g2 ).r;
			float ifLocalVar9_g2 = 0;
			if( 1.0 > _HueMaskinverter )
				ifLocalVar9_g2 = HueMaskR52_g2;
			else if( 1.0 == _HueMaskinverter )
				ifLocalVar9_g2 = ( 1.0 - HueMaskR52_g2 );
			float lerpResult15_g2 = lerp( 0.0 , ifLocalVar9_g2 , _HueShiftblend);
			float3 lerpResult16_g2 = lerp( Texture18_g2 , ifLocalVar13_g2 , lerpResult15_g2);
			clip( tex2DNode9554.a - _Cutout);
			float3 desaturateInitialColor9584 = ( lerpResult16_g2 * (_MainColor).rgb );
			float desaturateDot9584 = dot( desaturateInitialColor9584, float3( 0.299, 0.587, 0.114 ));
			float3 desaturateVar9584 = lerp( desaturateInitialColor9584, desaturateDot9584.xxx, ( 1.0 - _Saturation ) );
			float3 MainTexSaturate9595 = desaturateVar9584;
			float3 temp_output_150_0_g20185 = MainTexSaturate9595;
			float MonochromeTogglePixelLight1337_g20185 = _ToggleMonochromePixelLight;
			float ToggleSteps66_g20185 = _ToggleSteps;
			float4 localFourLightPosX340_g19717 = FourLightPosX();
			float3 ase_worldPos = i.worldPos;
			float4 temp_cast_15 = (ase_worldPos.x).xxxx;
			float4 FourLightPosX0WorldPos286_g19717 = ( localFourLightPosX340_g19717 - temp_cast_15 );
			float4 localFourLightPosY342_g19717 = FourLightPosY();
			float4 temp_cast_16 = (ase_worldPos.y).xxxx;
			float4 FourLightPosY0WorldPos291_g19717 = ( localFourLightPosY342_g19717 - temp_cast_16 );
			float4 localFourLightPosZ296_g19717 = FourLightPosZ();
			float4 temp_cast_17 = (ase_worldPos.z).xxxx;
			float4 FourLightPosZ0WorldPos325_g19717 = ( localFourLightPosZ296_g19717 - temp_cast_17 );
			float4 temp_cast_18 = (1E-06).xxxx;
			float4 temp_output_328_0_g19717 = max( ( ( FourLightPosX0WorldPos286_g19717 * FourLightPosX0WorldPos286_g19717 ) + ( FourLightPosY0WorldPos291_g19717 * FourLightPosY0WorldPos291_g19717 ) + ( FourLightPosZ0WorldPos325_g19717 * FourLightPosZ0WorldPos325_g19717 ) ) , temp_cast_18 );
			float3 _DefaultTangentVector = float3(0,0,1);
			float UVSwitchProp88_g1 = _NormalMapUVSwitch;
			float2 UV088_g1 = i.uv_texcoord.xy;
			float2 UV188_g1 = i.uv2_texcoord2;
			float2 UV288_g1 = i.uv3_texcoord3;
			float2 UV388_g1 = i.uv4_texcoord4;
			float2 localUVSwitch88_g1 = UVSwitch( UVSwitchProp88_g1 , UV088_g1 , UV188_g1 , UV288_g1 , UV388_g1 );
			float UVSwitchProp107_g1 = _SecondaryNormalMaskUVSwitch;
			float2 UV0107_g1 = i.uv_texcoord.xy;
			float2 UV1107_g1 = i.uv2_texcoord2;
			float2 UV2107_g1 = i.uv3_texcoord3;
			float2 UV3107_g1 = i.uv4_texcoord4;
			float2 localUVSwitch107_g1 = UVSwitch( UVSwitchProp107_g1 , UV0107_g1 , UV1107_g1 , UV2107_g1 , UV3107_g1 );
			float4 tex2DNode65_g1 = SAMPLE_TEXTURE2D( _SecondaryNormalMask, sampler_trilinear_repeat, ( ( _SecondaryNormalMask_ST.xy * localUVSwitch107_g1 ) + _SecondaryNormalMask_ST.zw ) );
			float3 lerpResult63_g1 = lerp( _DefaultTangentVector , UnpackScaleNormal( SAMPLE_TEXTURE2D( _NormalMap, sampler_trilinear_repeat, ( ( _NormalMap_ST.xy * localUVSwitch88_g1 ) + _NormalMap_ST.zw ) ), _NormalScale ) , tex2DNode65_g1.a);
			float UVSwitchProp98_g1 = _SecondaryNormalUVSwitch;
			float2 UV098_g1 = i.uv_texcoord.xy;
			float2 UV198_g1 = i.uv2_texcoord2;
			float2 UV298_g1 = i.uv3_texcoord3;
			float2 UV398_g1 = i.uv4_texcoord4;
			float2 localUVSwitch98_g1 = UVSwitch( UVSwitchProp98_g1 , UV098_g1 , UV198_g1 , UV298_g1 , UV398_g1 );
			float3 lerpResult58_g1 = lerp( _DefaultTangentVector , UnpackScaleNormal( SAMPLE_TEXTURE2D( _SecondaryNormal, sampler_trilinear_repeat, ( ( _SecondaryNormal_ST.xy * localUVSwitch98_g1 ) + _SecondaryNormal_ST.zw ) ), _SecondaryNormalScale ) , tex2DNode65_g1.g);
			float3 temp_output_54_0_g1 = BlendNormals( lerpResult63_g1 , lerpResult58_g1 );
			float3 newWorldNormal50_g1 = (WorldNormalVector( i , temp_output_54_0_g1 ));
			float localOutlineSwitch128_g1 = ( 0.0 );
			float3 true128_g1 = newWorldNormal50_g1;
			float3 false128_g1 = -newWorldNormal50_g1;
			float3 Out0128_g1 = float3( 0,0,0 );
			{
			#ifdef FOROUTLINE
			Out0128_g1 = true128_g1; //Outline
			#else
			Out0128_g1 = false128_g1; //Not Outline
			#endif
			#define FOROUTLINE
			}
			float3 switchResult119_g1 = (((i.ASEVFace>0)?(newWorldNormal50_g1):(Out0128_g1)));
			float3 normalizeResult53_g1 = normalize( switchResult119_g1 );
			float3 worldnormals9552 = normalizeResult53_g1;
			float3 WorldNormals20_g19717 = worldnormals9552;
			float3 break295_g19717 = WorldNormals20_g19717;
			float4 temp_output_366_0_g19717 = ( rsqrt( temp_output_328_0_g19717 ) * ( ( FourLightPosX0WorldPos286_g19717 * break295_g19717.x ) + ( FourLightPosY0WorldPos291_g19717 * break295_g19717.y ) + ( FourLightPosZ0WorldPos325_g19717 * break295_g19717.z ) ) );
			float4 VertexLightNdLNONMAX9597 = temp_output_366_0_g19717;
			float NdLHalfingControl704_g20185 = _NdLHalfingControl;
			float RampOffset167_g20185 = _RampOffset;
			float4 temp_output_1224_0_g20185 = saturate( ( ( VertexLightNdLNONMAX9597 * NdLHalfingControl704_g20185 ) + RampOffset167_g20185 ) );
			float4 VertexLightUV349_g20185 = temp_output_1224_0_g20185;
			float4 break548_g20185 = VertexLightUV349_g20185;
			float2 temp_cast_19 = (break548_g20185.x).xx;
			float4 tex2DNode647_g20185 = SAMPLE_TEXTURE2D( _ToonRamp, sampler_linear_clamp, temp_cast_19 );
			float3 ToonRampTexVLOne2100_g20185 = (tex2DNode647_g20185).rgb;
			float2 uv_ShadowColorMap = i.uv_texcoord * _ShadowColorMap_ST.xy + _ShadowColorMap_ST.zw;
			float4 tex2DNode1489_g20185 = SAMPLE_TEXTURE2D( _ShadowColorMap, sampler_trilinear_clamp, uv_ShadowColorMap );
			float3 lerpResult1511_g20185 = lerp( (_RampColor).rgb , (tex2DNode1489_g20185).rgb , ( max( max( tex2DNode1489_g20185.r , tex2DNode1489_g20185.g ) , tex2DNode1489_g20185.b ) * _ShadowColorMapStrength ));
			float3 RampColorRGB42_g20185 = lerpResult1511_g20185;
			float ColoringPointLights1080_g20185 = _ColoringPointLights;
			float3 lerpResult2003_g20185 = lerp( ToonRampTexVLOne2100_g20185 , RampColorRGB42_g20185 , ColoringPointLights1080_g20185);
			half3 linearRgb1700_g20185 = tex2DNode647_g20185.rgb;
			half localgetLinearRgbToLuminance1700_g20185 = getLinearRgbToLuminance( linearRgb1700_g20185 );
			float2 temp_cast_21 = (break548_g20185.y).xx;
			float4 tex2DNode648_g20185 = SAMPLE_TEXTURE2D( _ToonRamp, sampler_linear_clamp, temp_cast_21 );
			half3 linearRgb1701_g20185 = tex2DNode648_g20185.rgb;
			half localgetLinearRgbToLuminance1701_g20185 = getLinearRgbToLuminance( linearRgb1701_g20185 );
			float2 temp_cast_23 = (break548_g20185.z).xx;
			float4 tex2DNode649_g20185 = SAMPLE_TEXTURE2D( _ToonRamp, sampler_linear_clamp, temp_cast_23 );
			half3 linearRgb1702_g20185 = tex2DNode649_g20185.rgb;
			half localgetLinearRgbToLuminance1702_g20185 = getLinearRgbToLuminance( linearRgb1702_g20185 );
			float2 temp_cast_25 = (break548_g20185.w).xx;
			float4 tex2DNode650_g20185 = SAMPLE_TEXTURE2D( _ToonRamp, sampler_linear_clamp, temp_cast_25 );
			half3 linearRgb1703_g20185 = tex2DNode650_g20185.rgb;
			half localgetLinearRgbToLuminance1703_g20185 = getLinearRgbToLuminance( linearRgb1703_g20185 );
			float4 appendResult538_g20185 = (float4(localgetLinearRgbToLuminance1700_g20185 , localgetLinearRgbToLuminance1701_g20185 , localgetLinearRgbToLuminance1702_g20185 , localgetLinearRgbToLuminance1703_g20185));
			float4 ToonRampTexVertexLightLuminanced352_g20185 = appendResult538_g20185;
			float PointSpotShadows2112_g20185 = _PointSpotShadowIntensity;
			float4 break390_g20185 = saturate( ( ToonRampTexVertexLightLuminanced352_g20185 + ( 1.0 - PointSpotShadows2112_g20185 ) ) );
			float3 lerpResult2004_g20185 = lerp( lerpResult2003_g20185 , float3( 1,1,1 ) , break390_g20185.x);
			float3 localLightColorZero385_g20185 = LightColorZero();
			float4 localFourLightAtten305_g19717 = FourLightAtten();
			float4 temp_cast_27 = (1E-06).xxxx;
			float4 temp_output_272_0_g19717 = ( localFourLightAtten305_g19717 * temp_output_328_0_g19717 );
			float4 temp_cast_28 = (1E-06).xxxx;
			float4 temp_output_343_0_g19717 = saturate( ( 1.0 - ( temp_output_272_0_g19717 / 25.0 ) ) );
			float4 temp_output_320_0_g19717 = min( ( 1.0 / ( 1.0 + temp_output_272_0_g19717 ) ) , ( temp_output_343_0_g19717 * temp_output_343_0_g19717 ) );
			float4 VertexLightAtten9596 = temp_output_320_0_g19717;
			float4 temp_output_1306_0_g20185 = VertexLightAtten9596;
			float4 break2039_g20185 = temp_output_1306_0_g20185;
			float3 ToonRampTexVLTwo2103_g20185 = (tex2DNode648_g20185).rgb;
			float3 lerpResult2029_g20185 = lerp( ToonRampTexVLTwo2103_g20185 , RampColorRGB42_g20185 , ColoringPointLights1080_g20185);
			float3 lerpResult2028_g20185 = lerp( lerpResult2029_g20185 , float3( 1,1,1 ) , break390_g20185.y);
			float3 localLightColorZOne1302_g20185 = LightColorZOne();
			float3 ToonRampTexVLThree2105_g20185 = (tex2DNode649_g20185).rgb;
			float3 lerpResult2033_g20185 = lerp( ToonRampTexVLThree2105_g20185 , RampColorRGB42_g20185 , ColoringPointLights1080_g20185);
			float3 lerpResult2032_g20185 = lerp( lerpResult2033_g20185 , float3( 1,1,1 ) , break390_g20185.z);
			float3 localLightColorZTwo1303_g20185 = LightColorZTwo();
			float3 ToonRampTexVLFour2107_g20185 = (tex2DNode650_g20185).rgb;
			float3 lerpResult2037_g20185 = lerp( ToonRampTexVLFour2107_g20185 , RampColorRGB42_g20185 , ColoringPointLights1080_g20185);
			float3 lerpResult2036_g20185 = lerp( lerpResult2037_g20185 , float3( 1,1,1 ) , break390_g20185.w);
			float3 localLightColorZThree1304_g20185 = LightColorZThree();
			int Steps30_g20185 = _Steps;
			float4 VertexLightNdLStepped2141_g20185 = saturate( ( floor( ( temp_output_1224_0_g20185 * Steps30_g20185 ) ) / ( Steps30_g20185 - 1 ) ) );
			float4 break2090_g20185 = saturate( ( VertexLightNdLStepped2141_g20185 + ( 1.0 - PointSpotShadows2112_g20185 ) ) );
			float3 temp_cast_29 = (break2090_g20185.x).xxx;
			float3 lerpResult2097_g20185 = lerp( temp_cast_29 , RampColorRGB42_g20185 , ColoringPointLights1080_g20185);
			float3 lerpResult2089_g20185 = lerp( lerpResult2097_g20185 , float3( 1,1,1 ) , break2090_g20185.x);
			float3 localLightColorZero2091_g20185 = LightColorZero();
			float4 break2074_g20185 = temp_output_1306_0_g20185;
			float3 temp_cast_30 = (break2090_g20185.y).xxx;
			float3 lerpResult2084_g20185 = lerp( temp_cast_30 , RampColorRGB42_g20185 , ColoringPointLights1080_g20185);
			float3 lerpResult2087_g20185 = lerp( lerpResult2084_g20185 , float3( 1,1,1 ) , break2090_g20185.y);
			float3 localLightColorZOne2083_g20185 = LightColorZOne();
			float3 temp_cast_31 = (break2090_g20185.z).xxx;
			float3 lerpResult2081_g20185 = lerp( temp_cast_31 , RampColorRGB42_g20185 , ColoringPointLights1080_g20185);
			float3 lerpResult2073_g20185 = lerp( lerpResult2081_g20185 , float3( 1,1,1 ) , break2090_g20185.z);
			float3 localLightColorZTwo2077_g20185 = LightColorZTwo();
			float3 temp_cast_32 = (break2090_g20185.w).xxx;
			float3 lerpResult2093_g20185 = lerp( temp_cast_32 , RampColorRGB42_g20185 , ColoringPointLights1080_g20185);
			float3 lerpResult2095_g20185 = lerp( lerpResult2093_g20185 , float3( 1,1,1 ) , break2090_g20185.w);
			float3 localLightColorZThree2080_g20185 = LightColorZThree();
			float3 ifLocalVar553_g20185 = 0;
			if( 1.0 > ToggleSteps66_g20185 )
				ifLocalVar553_g20185 = ( ( lerpResult2004_g20185 * localLightColorZero385_g20185 * break2039_g20185.x ) + ( lerpResult2028_g20185 * localLightColorZOne1302_g20185 * break2039_g20185.y ) + ( lerpResult2032_g20185 * localLightColorZTwo1303_g20185 * break2039_g20185.z ) + ( lerpResult2036_g20185 * localLightColorZThree1304_g20185 * break2039_g20185.w ) );
			else if( 1.0 == ToggleSteps66_g20185 )
				ifLocalVar553_g20185 = ( ( lerpResult2089_g20185 * localLightColorZero2091_g20185 * break2074_g20185.x ) + ( lerpResult2087_g20185 * localLightColorZOne2083_g20185 * break2074_g20185.y ) + ( lerpResult2073_g20185 * localLightColorZTwo2077_g20185 * break2074_g20185.z ) + ( lerpResult2095_g20185 * localLightColorZThree2080_g20185 * break2074_g20185.w ) );
			half3 linearRgb1433_g20185 = ifLocalVar553_g20185;
			half localgetLinearRgbToLuminance1433_g20185 = getLinearRgbToLuminance( linearRgb1433_g20185 );
			float3 temp_cast_33 = (localgetLinearRgbToLuminance1433_g20185).xxx;
			float3 ifLocalVar1341_g20185 = 0;
			if( 1.0 > MonochromeTogglePixelLight1337_g20185 )
				ifLocalVar1341_g20185 = ifLocalVar553_g20185;
			else if( 1.0 == MonochromeTogglePixelLight1337_g20185 )
				ifLocalVar1341_g20185 = temp_cast_33;
			#ifdef UNITY_PASS_FORWARDBASE
				float3 staticSwitch1927_g20185 = ifLocalVar1341_g20185;
			#else
				float3 staticSwitch1927_g20185 = float3( 0,0,0 );
			#endif
			#ifdef VERTEXLIGHT_ON
				float3 staticSwitch1928_g20185 = staticSwitch1927_g20185;
			#else
				float3 staticSwitch1928_g20185 = float3( 0,0,0 );
			#endif
			float3 DiffuseVertexLighting354_g20185 = staticSwitch1928_g20185;
			float3 temp_output_1997_0_g20185 = ( DiffuseVertexLighting354_g20185 * _MaxLightDirect );
			#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
			float4 ase_lightColor = 0;
			#else //aselc
			float4 ase_lightColor = _LightColor0;
			#endif //aselc
			#ifdef DIRECTIONAL
				float3 staticSwitch952_g20185 = ase_lightColor.rgb;
			#else
				float3 staticSwitch952_g20185 = float3( 0,0,0 );
			#endif
			half3 localAmbient1767_g20185 = Ambient();
			half3 localAmbient1820_g20185 = Ambient();
			float3 break1831_g20185 = localAmbient1820_g20185;
			float3 lerpResult1766_g20185 = lerp( ( localAmbient1767_g20185 * _AmbientBoost ) , localAmbient1767_g20185 , saturate( max( max( break1831_g20185.x , break1831_g20185.y ) , break1831_g20185.z ) ));
			float3 AmbientLightBoosted1782_g20185 = lerpResult1766_g20185;
			half3 linearRgb1430_g20185 = ( staticSwitch952_g20185 + AmbientLightBoosted1782_g20185 );
			half localgetLinearRgbToLuminance1430_g20185 = getLinearRgbToLuminance( linearRgb1430_g20185 );
			half3 linearRgb1431_g20185 = ase_lightColor.rgb;
			half localgetLinearRgbToLuminance1431_g20185 = getLinearRgbToLuminance( linearRgb1431_g20185 );
			float3 temp_cast_34 = (localgetLinearRgbToLuminance1431_g20185).xxx;
			float3 ifLocalVar1331_g20185 = 0;
			if( 1.0 > MonochromeTogglePixelLight1337_g20185 )
				ifLocalVar1331_g20185 = ase_lightColor.rgb;
			else if( 1.0 == MonochromeTogglePixelLight1337_g20185 )
				ifLocalVar1331_g20185 = temp_cast_34;
			#if defined(LIGHTMAP_ON) && UNITY_VERSION < 560 //aseld
			float3 ase_worldlightDir = 0;
			#else //aseld
			float3 ase_worldlightDir = normalize( UnityWorldSpaceLightDir( ase_worldPos ) );
			#endif //aseld
			float dotResult3_g19717 = dot( WorldNormals20_g19717 , ase_worldlightDir );
			float NdotL9593 = dotResult3_g19717;
			float NdotLHalfed204_g20185 = saturate( ( ( NdotL9593 * NdLHalfingControl704_g20185 ) + RampOffset167_g20185 ) );
			float2 temp_cast_35 = (NdotLHalfed204_g20185).xx;
			float3 ToonRampTexNDL207_g20185 = (SAMPLE_TEXTURE2D( _ToonRamp, sampler_linear_clamp, temp_cast_35 )).rgb;
			float DirectShadowIntensity163_g20185 = _DirectShadowIntensity;
			float3 lerpResult1929_g20185 = lerp( float3( 1,1,1 ) , ToonRampTexNDL207_g20185 , DirectShadowIntensity163_g20185);
			float3 lerpResult2115_g20185 = lerp( float3( 1,1,1 ) , ToonRampTexNDL207_g20185 , PointSpotShadows2112_g20185);
			#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch2068_g20185 = lerpResult2115_g20185;
			#else
				float3 staticSwitch2068_g20185 = lerpResult1929_g20185;
			#endif
			float3 _egg = float3(1,1,1);
			float TangentNormalAtten1259_g20185 = ase_lightAtten;
			float2 temp_cast_36 = (TangentNormalAtten1259_g20185).xx;
			float3 ToonRampTexATTEN216_g20185 = (SAMPLE_TEXTURE2D( _ToonRamp, sampler_linear_clamp, temp_cast_36 )).rgb;
			#ifdef DIRECTIONAL
				float3 staticSwitch1968_g20185 = ToonRampTexATTEN216_g20185;
			#else
				float3 staticSwitch1968_g20185 = _egg;
			#endif
			float3 DirectionalAttenuationRamp24_g20185 = staticSwitch1968_g20185;
			float SelfCastShadows1958_g20185 = _SelfCastShadows;
			float3 lerpResult1941_g20185 = lerp( float3( 1,1,1 ) , DirectionalAttenuationRamp24_g20185 , SelfCastShadows1958_g20185);
			float temp_output_708_0_g20185 = saturate( ( floor( ( NdotLHalfed204_g20185 * Steps30_g20185 ) ) / ( Steps30_g20185 - 1 ) ) );
			float lerpResult1945_g20185 = lerp( 1.0 , temp_output_708_0_g20185 , DirectShadowIntensity163_g20185);
			float lerpResult2131_g20185 = lerp( 1.0 , temp_output_708_0_g20185 , PointSpotShadows2112_g20185);
			#ifdef UNITY_PASS_FORWARDADD
				float staticSwitch2129_g20185 = lerpResult2131_g20185;
			#else
				float staticSwitch2129_g20185 = lerpResult1945_g20185;
			#endif
			#ifdef DIRECTIONAL
				float staticSwitch1967_g20185 = TangentNormalAtten1259_g20185;
			#else
				float staticSwitch1967_g20185 = 1.0;
			#endif
			float DirectionalAttenuationSteps1969_g20185 = staticSwitch1967_g20185;
			float temp_output_1936_0_g20185 = saturate( ( floor( ( DirectionalAttenuationSteps1969_g20185 * Steps30_g20185 ) ) / ( Steps30_g20185 - 1 ) ) );
			float lerpResult1942_g20185 = lerp( 1.0 , temp_output_1936_0_g20185 , SelfCastShadows1958_g20185);
			float3 temp_cast_37 = (min( staticSwitch2129_g20185 , lerpResult1942_g20185 )).xxx;
			float3 ifLocalVar71_g20185 = 0;
			UNITY_BRANCH 
			if( 1.0 > ToggleSteps66_g20185 )
				ifLocalVar71_g20185 = min( staticSwitch2068_g20185 , lerpResult1941_g20185 );
			else if( 1.0 == ToggleSteps66_g20185 )
				ifLocalVar71_g20185 = temp_cast_37;
			float2 uv_ShadowMask = i.uv_texcoord * _ShadowMask_ST.xy + _ShadowMask_ST.zw;
			float2 temp_output_698_0_g20185 = (SAMPLE_TEXTURE2D( _ShadowMask, sampler_trilinear_clamp, uv_ShadowMask )).rg;
			float2 ifLocalVar597_g20185 = 0;
			if( 1.0 > _ShadowMaskinvert )
				ifLocalVar597_g20185 = temp_output_698_0_g20185;
			else if( 1.0 == _ShadowMaskinvert )
				ifLocalVar597_g20185 = ( 1.0 - temp_output_698_0_g20185 );
			float2 break699_g20185 = ( ifLocalVar597_g20185 * _ShadowMaskStrength );
			float PixelShadowMask279_g20185 = break699_g20185.x;
			float3 lerpResult290_g20185 = lerp( float3( 1,1,1 ) , ifLocalVar71_g20185 , PixelShadowMask279_g20185);
			float3 LightRamp85_g20185 = lerpResult290_g20185;
			float3 lerpResult1624_g20185 = lerp( LightRamp85_g20185 , RampColorRGB42_g20185 , ColoringPointLights1080_g20185);
			half3 linearRgb2055_g20185 = LightRamp85_g20185;
			half localgetLinearRgbToLuminance2055_g20185 = getLinearRgbToLuminance( linearRgb2055_g20185 );
			float3 lerpResult1623_g20185 = lerp( lerpResult1624_g20185 , float3( 1,1,1 ) , localgetLinearRgbToLuminance2055_g20185);
			#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch1036_g20185 = ( lerpResult1623_g20185 * ase_lightAtten );
			#else
				float3 staticSwitch1036_g20185 = float3( 0,0,0 );
			#endif
			float ColoringDirectEnvLights1082_g20185 = _ColoringDirectEnvLights;
			float3 lerpResult1544_g20185 = lerp( LightRamp85_g20185 , RampColorRGB42_g20185 , ColoringDirectEnvLights1082_g20185);
			float3 lerpResult1538_g20185 = lerp( lerpResult1544_g20185 , float3( 1,1,1 ) , localgetLinearRgbToLuminance2055_g20185);
			#ifdef DIRECTIONAL
				float3 staticSwitch1035_g20185 = lerpResult1538_g20185;
			#else
				float3 staticSwitch1035_g20185 = staticSwitch1036_g20185;
			#endif
			float MonochromeToggleEnv1327_g20185 = _ToggleMonochromeEnv;
			half3 linearRgb1432_g20185 = AmbientLightBoosted1782_g20185;
			half localgetLinearRgbToLuminance1432_g20185 = getLinearRgbToLuminance( linearRgb1432_g20185 );
			float3 temp_cast_38 = (localgetLinearRgbToLuminance1432_g20185).xxx;
			float3 ifLocalVar1325_g20185 = 0;
			if( 1.0 > MonochromeToggleEnv1327_g20185 )
				ifLocalVar1325_g20185 = AmbientLightBoosted1782_g20185;
			else if( 1.0 == MonochromeToggleEnv1327_g20185 )
				ifLocalVar1325_g20185 = temp_cast_38;
			float3 localambientDir475_g19717 = ambientDir();
			float dotResult67_g19717 = dot( localambientDir475_g19717 , WorldNormals20_g19717 );
			float NdotAmbientL9592 = dotResult67_g19717;
			float AmbientUV224_g20185 = saturate( ( ( NdotAmbientL9592 * NdLHalfingControl704_g20185 ) + RampOffset167_g20185 ) );
			float2 temp_cast_39 = (AmbientUV224_g20185).xx;
			float3 ToonRampTexAmbient220_g20185 = (SAMPLE_TEXTURE2D( _ToonRamp, sampler_linear_clamp, temp_cast_39 )).rgb;
			float temp_output_709_0_g20185 = saturate( ( floor( ( AmbientUV224_g20185 * Steps30_g20185 ) ) / ( Steps30_g20185 - 1 ) ) );
			float3 temp_cast_40 = (temp_output_709_0_g20185).xxx;
			float3 ifLocalVar92_g20185 = 0;
			UNITY_BRANCH 
			if( 1.0 > ToggleSteps66_g20185 )
				ifLocalVar92_g20185 = ToonRampTexAmbient220_g20185;
			else if( 1.0 == ToggleSteps66_g20185 )
				ifLocalVar92_g20185 = temp_cast_40;
			float IndirectShadowMask688_g20185 = break699_g20185.y;
			float3 lerpResult1684_g20185 = lerp( float3( 1,1,1 ) , ifLocalVar92_g20185 , IndirectShadowMask688_g20185);
			float3 lerpResult1626_g20185 = lerp( lerpResult1684_g20185 , RampColorRGB42_g20185 , ColoringDirectEnvLights1082_g20185);
			half3 linearRgb2058_g20185 = lerpResult1684_g20185;
			half localgetLinearRgbToLuminance2058_g20185 = getLinearRgbToLuminance( linearRgb2058_g20185 );
			float3 lerpResult1627_g20185 = lerp( lerpResult1626_g20185 , float3( 1,1,1 ) , localgetLinearRgbToLuminance2058_g20185);
			float3 lerpResult284_g20185 = lerp( float3( 1,1,1 ) , lerpResult1627_g20185 , max( _IndirectShadowIntensity , 1E-06 ));
			half3 linearRgb1953_g20185 = ( ase_lightColor.rgb * staticSwitch1035_g20185 );
			half localgetLinearRgbToLuminance1953_g20185 = getLinearRgbToLuminance( linearRgb1953_g20185 );
			float3 lerpResult1661_g20185 = lerp( lerpResult284_g20185 , float3( 1,1,1 ) , saturate( localgetLinearRgbToLuminance1953_g20185 ));
			float2 uv_OcclusionMap = i.uv_texcoord * _OcclusionMap_ST.xy + _OcclusionMap_ST.zw;
			float lerpResult54_g20185 = lerp( 1.0 , SAMPLE_TEXTURE2D( _OcclusionMap, sampler_trilinear_repeat, uv_OcclusionMap ).g , _Occlusion);
			float3 FinalAmbientBakedLight132_g20185 = ( ifLocalVar1325_g20185 * lerpResult1661_g20185 * lerpResult54_g20185 );
			float3 ForFinalLightCalculation993_g20185 = ( ( ifLocalVar1331_g20185 * staticSwitch1035_g20185 ) + FinalAmbientBakedLight132_g20185 );
			float3 ifLocalVar944_g20185 = 0;
			if( ( localgetLinearRgbToLuminance1430_g20185 * _ExperimentalToggle ) <= 1.0 )
				ifLocalVar944_g20185 = ForFinalLightCalculation993_g20185;
			else
				ifLocalVar944_g20185 = ( max( float3( 0,0,0 ) , ForFinalLightCalculation993_g20185 ) / localgetLinearRgbToLuminance1430_g20185 );
			float3 temp_output_782_0_g20185 = ( ifLocalVar944_g20185 * _MaxLightDirect );
			float3 ase_worldViewDir = Unity_SafeNormalize( UnityWorldSpaceViewDir( ase_worldPos ) );
			float dotResult442_g19717 = dot( WorldNormals20_g19717 , ase_worldViewDir );
			float NdotV9567 = dotResult442_g19717;
			float smoothstepResult10_g19719 = smoothstep( min( _ShadowRimSharpness , ( 1.0 - 1E-06 ) ) , 1.0 , ( NdotV9567 + _ShadowRimRange ));
			float lerpResult11_g19719 = lerp( 1.0 , smoothstepResult10_g19719 , _ShadowRimOpacity);
			float ifLocalVar9590 = 0;
			if( 1.0 > _RimSwitch )
				ifLocalVar9590 = lerpResult11_g19719;
			else if( 1.0 == _RimSwitch )
				ifLocalVar9590 = 1.0;
			float ShadowRim9608 = ifLocalVar9590;
			float3 FinalLight9634 = ( ( ( temp_output_150_0_g20185 * temp_output_1997_0_g20185 ) + ( temp_output_782_0_g20185 * temp_output_150_0_g20185 ) ) * ShadowRim9608 );
			float3 temp_output_9852_0 = ( FinalLight9634 * AlphaChannelMul9750 );
			float3 ifLocalVar9858 = 0;
			if( 1.0 <= _RenderingMode )
				ifLocalVar9858 = temp_output_9852_0;
			else
				ifLocalVar9858 = FinalLight9634;
			float ToggleAdvanced9452 = _COLORCOLOR;
			float ToggleCubemap9451 = _COLORADDSUBDIFF;
			float temp_output_9752_0 = ( ToggleAdvanced9452 * ToggleCubemap9451 );
			float Intensity285_g20203 = _CubemapIntensity;
			float UVSwitchProp2886_g20203 = _ReflectionMaskUVSwitch;
			float2 UV02886_g20203 = i.uv_texcoord.xy;
			float2 UV12886_g20203 = i.uv2_texcoord2;
			float2 UV22886_g20203 = i.uv3_texcoord3;
			float2 UV32886_g20203 = i.uv4_texcoord4;
			float2 localUVSwitch2886_g20203 = UVSwitch( UVSwitchProp2886_g20203 , UV02886_g20203 , UV12886_g20203 , UV22886_g20203 , UV32886_g20203 );
			float2 ReflectionMaskUVSwitch2896_g20203 = ( ( _ReflectionMask_ST.xy * localUVSwitch2886_g20203 ) + _ReflectionMask_ST.zw );
			float temp_output_80_0_g20203 = ( Intensity285_g20203 * SAMPLE_TEXTURE2D( _ReflectionMask, sampler_trilinear_repeat, ReflectionMaskUVSwitch2896_g20203 ).r );
			float LinearIn2768_g20203 = _Metallic;
			float localgetGammaToLinearSpaceExact2768_g20203 = getGammaToLinearSpaceExact( LinearIn2768_g20203 );
			float Metallic302_g20203 = localgetGammaToLinearSpaceExact2768_g20203;
			float2 uv_MetallicMap = i.uv_texcoord * _MetallicMap_ST.xy + _MetallicMap_ST.zw;
			float4 tex2DNode2688_g20203 = SAMPLE_TEXTURE2D( _MetallicMap, sampler_trilinear_repeat, uv_MetallicMap );
			float MetallicTex289_g20203 = ( Metallic302_g20203 * tex2DNode2688_g20203.r );
			float ifLocalVar10003 = 0;
			if( temp_output_9752_0 > 0.0 )
				ifLocalVar10003 = ( temp_output_80_0_g20203 * MetallicTex289_g20203 );
			float CubemapLightAbsorbtion10002 = ifLocalVar10003;
			float AdvancedToggle555_g20209 = ToggleAdvanced9452;
			float temp_output_570_0_g20209 = ( _MatcapR1Toggle * AdvancedToggle555_g20209 );
			float MatcapR1Blending703_g20209 = _MatcapR1Blending;
			float UVSwitchProp912_g20209 = _ReflectionMaskMatcapUVSwitch;
			float2 UV0912_g20209 = i.uv_texcoord.xy;
			float2 UV1912_g20209 = i.uv2_texcoord2;
			float2 UV2912_g20209 = i.uv3_texcoord3;
			float2 UV3912_g20209 = i.uv4_texcoord4;
			float2 localUVSwitch912_g20209 = UVSwitch( UVSwitchProp912_g20209 , UV0912_g20209 , UV1912_g20209 , UV2912_g20209 , UV3912_g20209 );
			float2 ReflectionMaskMatcapUVSwitch914_g20209 = ( ( _ReflectionMaskMatcap_ST.xy * localUVSwitch912_g20209 ) + _ReflectionMaskMatcap_ST.zw );
			float4 break646_g20209 = SAMPLE_TEXTURE2D( _ReflectionMaskMatcap, sampler_trilinear_repeat, ReflectionMaskMatcapUVSwitch914_g20209 );
			float ReflectionMaskR199_g20209 = break646_g20209.r;
			float ifLocalVar677_g20209 = 0;
			if( 1.0 > ( _MatcapR1Mode + ( 1.0 - temp_output_570_0_g20209 ) ) )
				ifLocalVar677_g20209 = ( MatcapR1Blending703_g20209 * ReflectionMaskR199_g20209 );
			float MatcapR1LightAbsorbtion731_g20209 = ifLocalVar677_g20209;
			float temp_output_573_0_g20209 = ( _MatcapG2Toggle * AdvancedToggle555_g20209 );
			float MatcapG2Blending706_g20209 = _MatcapG2Blending;
			float ReflectionMaskG200_g20209 = break646_g20209.g;
			float ifLocalVar712_g20209 = 0;
			if( 1.0 > ( _MatcapG2Mode + ( 1.0 - temp_output_573_0_g20209 ) ) )
				ifLocalVar712_g20209 = ( MatcapG2Blending706_g20209 * ReflectionMaskG200_g20209 );
			float MatcapG2LightAbsorbtion732_g20209 = ifLocalVar712_g20209;
			float temp_output_576_0_g20209 = ( _MatcapB3Toggle * AdvancedToggle555_g20209 );
			float MatcapB3Blending708_g20209 = _MatcapB3Blending;
			float ReflectionMaskB201_g20209 = break646_g20209.b;
			float ifLocalVar715_g20209 = 0;
			if( 1.0 > ( _MatcapB3Mode + ( 1.0 - temp_output_576_0_g20209 ) ) )
				ifLocalVar715_g20209 = ( MatcapB3Blending708_g20209 * ReflectionMaskB201_g20209 );
			float MatcapB3LightAbsorbtion733_g20209 = ifLocalVar715_g20209;
			float temp_output_579_0_g20209 = ( _MatcapA4Toggle * AdvancedToggle555_g20209 );
			float MatcapA4Blending710_g20209 = _MatcapA4Blending;
			float ReflectionMaskA202_g20209 = break646_g20209.a;
			float ifLocalVar718_g20209 = 0;
			if( 1.0 > ( _MatcapA4Mode + ( 1.0 - temp_output_579_0_g20209 ) ) )
				ifLocalVar718_g20209 = ( MatcapA4Blending710_g20209 * ReflectionMaskA202_g20209 );
			float MatcapA4LightAbsorbtion734_g20209 = ifLocalVar718_g20209;
			float MatcapLightAbsorbtion10001 = saturate( ( MatcapR1LightAbsorbtion731_g20209 + MatcapG2LightAbsorbtion732_g20209 + MatcapB3LightAbsorbtion733_g20209 + MatcapA4LightAbsorbtion734_g20209 ) );
			float3 lerpResult10008 = lerp( ifLocalVar9858 , float3( 0,0,0 ) , saturate( ( CubemapLightAbsorbtion10002 + MatcapLightAbsorbtion10001 ) ));
			float locallongIF10564 = ( 0.0 );
			float3 Out10564 = float3( 0,0,0 );
			float4 break24_g19717 = ase_lightColor;
			float GrayscaledLight9594 = saturate( ( max( max( break24_g19717.r , break24_g19717.g ) , break24_g19717.b ) * break24_g19717.a ) );
			float temp_output_1739_0_g20186 = GrayscaledLight9594;
			float3 normalizeResult464_g19717 = ASESafeNormalize( ( ase_worldViewDir + ase_worldlightDir ) );
			float3 HalfVectorUnityNormalized457_g19717 = normalizeResult464_g19717;
			float dotResult42_g19717 = dot( WorldNormals20_g19717 , HalfVectorUnityNormalized457_g19717 );
			float NdotH9640 = dotResult42_g19717;
			float NdotH583_g20186 = NdotH9640;
			float HighlightOffset127_g20186 = _HighlightOffset;
			float3 WorldNormals2285_g20186 = worldnormals9552;
			float3 worldNormal2417_g20186 = WorldNormals2285_g20186;
			float UVSwitchProp2003_g20186 = _SpecularMapUVSwitch;
			float2 UV02003_g20186 = i.uv_texcoord.xy;
			float2 UV12003_g20186 = i.uv2_texcoord2;
			float2 UV22003_g20186 = i.uv3_texcoord3;
			float2 UV32003_g20186 = i.uv4_texcoord4;
			float2 localUVSwitch2003_g20186 = UVSwitch( UVSwitchProp2003_g20186 , UV02003_g20186 , UV12003_g20186 , UV22003_g20186 , UV32003_g20186 );
			float4 tex2DNode1752_g20186 = SAMPLE_TEXTURE2D( _SpecularMap, sampler_trilinear_repeat, ( ( _SpecularMap_ST.xy * localUVSwitch2003_g20186 ) + _SpecularMap_ST.zw ) );
			float4 break380_g20186 = tex2DNode1752_g20186;
			float SpecularMapa1649_g20186 = break380_g20186.a;
			float smoothness2417_g20186 = ( _HighlightSmoothness * SpecularMapa1649_g20186 );
			float localGSAA_Filament2417_g20186 = GSAA_Filament( worldNormal2417_g20186 , smoothness2417_g20186 );
			float HighlightSmoothness128_g20186 = localGSAA_Filament2417_g20186;
			float3 ColorRGB141_g20186 = (_SpecularColor).rgb;
			float temp_output_2_0_g20187 = _SpecularTint;
			float temp_output_3_0_g20187 = ( 1.0 - temp_output_2_0_g20187 );
			float3 appendResult7_g20187 = (float3(temp_output_3_0_g20187 , temp_output_3_0_g20187 , temp_output_3_0_g20187));
			float3 DiffuseTint148_g20186 = ( ( MainTexSaturate9595 * temp_output_2_0_g20187 ) + appendResult7_g20187 );
			float ColorA142_g20186 = _SpecularColor.a;
			float4 SpecularMapRGBA2289_g20186 = tex2DNode1752_g20186;
			float3 SpecularMapRGB160_g20186 = (SpecularMapRGBA2289_g20186).rgb;
			float SpecShadowMaskVar279_g20186 = _SpecShadowMaskVar;
			#ifdef UNITY_PASS_FORWARDADD
				float staticSwitch1892_g20186 = ase_lightAtten;
			#else
				float staticSwitch1892_g20186 = 1.0;
			#endif
			float NdotL595_g20186 = NdotL9593;
			half3 linearRgb2056_g20185 = min( ToonRampTexNDL207_g20185 , DirectionalAttenuationRamp24_g20185 );
			half localgetLinearRgbToLuminance2056_g20185 = getLinearRgbToLuminance( linearRgb2056_g20185 );
			float ifLocalVar1946_g20185 = 0;
			UNITY_BRANCH 
			if( 1.0 > ToggleSteps66_g20185 )
				ifLocalVar1946_g20185 = localgetLinearRgbToLuminance2056_g20185;
			else if( 1.0 == ToggleSteps66_g20185 )
				ifLocalVar1946_g20185 = min( temp_output_708_0_g20185 , temp_output_1936_0_g20185 );
			float DirectLightRamp9631 = ifLocalVar1946_g20185;
			float SpecShadowMaskPower286_g20186 = _SpecShadowMaskPower;
			float temp_output_1_0_g20188 = -max( SpecShadowMaskPower286_g20186 , -0.99 );
			float temp_output_2363_0_g20186 = ( saturate( SpecShadowMaskPower286_g20186 ) * 0.5 );
			float lerpResult2345_g20186 = lerp( ( ( DirectLightRamp9631 - temp_output_1_0_g20188 ) / ( 1.0 - temp_output_1_0_g20188 ) ) , 1.0 , ( ( SpecShadowMaskPower286_g20186 * temp_output_2363_0_g20186 ) + temp_output_2363_0_g20186 ));
			float temp_output_1878_0_g20186 = saturate( lerpResult2345_g20186 );
			#ifdef UNITY_PASS_FORWARDADD
				float staticSwitch621_g20186 = ( temp_output_1878_0_g20186 * ase_lightAtten );
			#else
				float staticSwitch621_g20186 = 0.0;
			#endif
			#ifdef DIRECTIONAL
				float staticSwitch620_g20186 = temp_output_1878_0_g20186;
			#else
				float staticSwitch620_g20186 = staticSwitch621_g20186;
			#endif
			float AdditionalShadowRamp280_g20186 = staticSwitch620_g20186;
			float ifLocalVar1904_g20186 = 0;
			UNITY_BRANCH 
			if( 1.0 > SpecShadowMaskVar279_g20186 )
				ifLocalVar1904_g20186 = staticSwitch1892_g20186;
			else if( 1.0 == SpecShadowMaskVar279_g20186 )
				ifLocalVar1904_g20186 = saturate( ( ase_lightAtten * NdotL595_g20186 ) );
			else if( 1.0 < SpecShadowMaskVar279_g20186 )
				ifLocalVar1904_g20186 = AdditionalShadowRamp280_g20186;
			float ShadowsToonAniso1905_g20186 = ifLocalVar1904_g20186;
			float3 localambientDir468_g19717 = ambientDir();
			float3 normalizeResult467_g19717 = ASESafeNormalize( ( ase_worldViewDir + localambientDir468_g19717 ) );
			float3 AmbientHalfVectorUnityNormalized469_g19717 = normalizeResult467_g19717;
			float dotResult75_g19717 = dot( WorldNormals20_g19717 , AmbientHalfVectorUnityNormalized469_g19717 );
			float NdotAmbientH9641 = dotResult75_g19717;
			float NdotAmbientH591_g20186 = NdotAmbientH9641;
			half3 localAmbient1730_g20186 = Ambient();
			float NdotAmbientL597_g20186 = NdotAmbientL9592;
			half3 linearRgb2057_g20185 = ToonRampTexAmbient220_g20185;
			half localgetLinearRgbToLuminance2057_g20185 = getLinearRgbToLuminance( linearRgb2057_g20185 );
			float ifLocalVar2059_g20185 = 0;
			UNITY_BRANCH 
			if( 1.0 > ToggleSteps66_g20185 )
				ifLocalVar2059_g20185 = localgetLinearRgbToLuminance2057_g20185;
			else if( 1.0 == ToggleSteps66_g20185 )
				ifLocalVar2059_g20185 = temp_output_709_0_g20185;
			float AmbientRamp9642 = ifLocalVar2059_g20185;
			float temp_output_1_0_g20190 = -max( SpecShadowMaskPower286_g20186 , -0.99 );
			float temp_output_2375_0_g20186 = ( saturate( SpecShadowMaskPower286_g20186 ) * 0.5 );
			float lerpResult2369_g20186 = lerp( ( ( AmbientRamp9642 - temp_output_1_0_g20190 ) / ( 1.0 - temp_output_1_0_g20190 ) ) , 1.0 , ( ( SpecShadowMaskPower286_g20186 * temp_output_2375_0_g20186 ) + temp_output_2375_0_g20186 ));
			float ifLocalVar1824_g20186 = 0;
			UNITY_BRANCH 
			if( 1.0 > SpecShadowMaskVar279_g20186 )
				ifLocalVar1824_g20186 = 1.0;
			else if( 1.0 == SpecShadowMaskVar279_g20186 )
				ifLocalVar1824_g20186 = saturate( NdotAmbientL597_g20186 );
			else if( 1.0 < SpecShadowMaskVar279_g20186 )
				ifLocalVar1824_g20186 = saturate( lerpResult2369_g20186 );
			float ShadowsIndirectNdL289_g20186 = ifLocalVar1824_g20186;
			float3 ifLocalVar1740_g20186 = 0;
			if( temp_output_1739_0_g20186 > 0.0 )
				ifLocalVar1740_g20186 = ( saturate( ( ( NdotH583_g20186 + HighlightOffset127_g20186 ) / max( HighlightSmoothness128_g20186 , 1E-06 ) ) ) * ColorRGB141_g20186 * DiffuseTint148_g20186 * ColorA142_g20186 * SpecularMapRGB160_g20186 * ase_lightColor.rgb * ShadowsToonAniso1905_g20186 );
			else if( temp_output_1739_0_g20186 == 0.0 )
				ifLocalVar1740_g20186 = ( saturate( ( ( NdotAmbientH591_g20186 + HighlightOffset127_g20186 ) / max( HighlightSmoothness128_g20186 , 1E-06 ) ) ) * ColorRGB141_g20186 * DiffuseTint148_g20186 * ColorA142_g20186 * SpecularMapRGB160_g20186 * localAmbient1730_g20186 * ShadowsIndirectNdL289_g20186 );
			float3 Toon10564 = ( ifLocalVar1740_g20186 + float3( 0,0,0 ) );
			float ifLocalVar1769_g20186 = 0;
			UNITY_BRANCH 
			if( 1.0 > SpecShadowMaskVar279_g20186 )
				ifLocalVar1769_g20186 = 1.0;
			else if( 1.0 == SpecShadowMaskVar279_g20186 )
				ifLocalVar1769_g20186 = NdotL595_g20186;
			else if( 1.0 < SpecShadowMaskVar279_g20186 )
				ifLocalVar1769_g20186 = temp_output_1878_0_g20186;
			float NdLGGX171_g20186 = ifLocalVar1769_g20186;
			float temp_output_694_0_g20186 = max( 0.0 , NdLGGX171_g20186 );
			float NdotL688_g20186 = temp_output_694_0_g20186;
			float3 viewDir443_g19717 = ase_worldViewDir;
			float3 normal443_g19717 = WorldNormals20_g19717;
			float localCorrectNegativeNdotV443_g19717 = CorrectNegativeNdotV( viewDir443_g19717 , normal443_g19717 );
			float NdotVCorr9635 = localCorrectNegativeNdotV443_g19717;
			float CorrNdotV626_g20186 = NdotVCorr9635;
			float NdotV688_g20186 = CorrNdotV626_g20186;
			float temp_output_566_0_g20186 = ( 1.0 - HighlightSmoothness128_g20186 );
			float temp_output_643_0_g20186 = max( ( temp_output_566_0_g20186 * temp_output_566_0_g20186 ) , 0.002 );
			float roughness688_g20186 = temp_output_643_0_g20186;
			float localgetSmithJointGGXVisibilityTerm688_g20186 = getSmithJointGGXVisibilityTerm( NdotL688_g20186 , NdotV688_g20186 , roughness688_g20186 );
			float GGXVisibilityTerm630_g20186 = localgetSmithJointGGXVisibilityTerm688_g20186;
			float NdotH689_g20186 = max( 0.0 , NdotH583_g20186 );
			float roughness689_g20186 = temp_output_643_0_g20186;
			float localgetGGXTerm689_g20186 = getGGXTerm( NdotH689_g20186 , roughness689_g20186 );
			float GGXTerm630_g20186 = localgetGGXTerm689_g20186;
			float NdotL630_g20186 = temp_output_694_0_g20186;
			float dotResult50_g19717 = dot( ase_worldlightDir , HalfVectorUnityNormalized457_g19717 );
			float LdotH9637 = dotResult50_g19717;
			float LdotH2104_g20186 = LdotH9637;
			float LdotH630_g20186 = max( 0.0 , LdotH2104_g20186 );
			float roughness630_g20186 = temp_output_643_0_g20186;
			float3 specColor630_g20186 = ( ColorRGB141_g20186 * DiffuseTint148_g20186 );
			float ifLocalVar1908_g20186 = 0;
			UNITY_BRANCH 
			if( 1.0 == SpecShadowMaskVar279_g20186 )
				ifLocalVar1908_g20186 = ase_lightAtten;
			else
				ifLocalVar1908_g20186 = staticSwitch1892_g20186;
			float AttenGGX1911_g20186 = ifLocalVar1908_g20186;
			float3 lightcolor630_g20186 = ( AttenGGX1911_g20186 * ase_lightColor.rgb );
			float specularTermToggle630_g20186 = 1.0;
			float3 localcalcSpecularTerm630_g20186 = calcSpecularTerm( GGXVisibilityTerm630_g20186 , GGXTerm630_g20186 , NdotL630_g20186 , LdotH630_g20186 , roughness630_g20186 , specColor630_g20186 , lightcolor630_g20186 , specularTermToggle630_g20186 );
			float temp_output_695_0_g20186 = max( 0.0 , ShadowsIndirectNdL289_g20186 );
			float NdotL690_g20186 = temp_output_695_0_g20186;
			float NdotV690_g20186 = CorrNdotV626_g20186;
			float temp_output_650_0_g20186 = ( 1.0 - HighlightSmoothness128_g20186 );
			float temp_output_648_0_g20186 = max( ( temp_output_650_0_g20186 * temp_output_650_0_g20186 ) , 0.002 );
			float roughness690_g20186 = temp_output_648_0_g20186;
			float localgetSmithJointGGXVisibilityTerm690_g20186 = getSmithJointGGXVisibilityTerm( NdotL690_g20186 , NdotV690_g20186 , roughness690_g20186 );
			float GGXVisibilityTerm666_g20186 = localgetSmithJointGGXVisibilityTerm690_g20186;
			float NdotH691_g20186 = max( 0.0 , NdotAmbientH591_g20186 );
			float roughness691_g20186 = temp_output_648_0_g20186;
			float localgetGGXTerm691_g20186 = getGGXTerm( NdotH691_g20186 , roughness691_g20186 );
			float GGXTerm666_g20186 = localgetGGXTerm691_g20186;
			float NdotL666_g20186 = temp_output_695_0_g20186;
			float3 localambientDir101_g19717 = ambientDir();
			float dotResult82_g19717 = dot( localambientDir101_g19717 , AmbientHalfVectorUnityNormalized469_g19717 );
			float AmbientLdotAmbientH9633 = dotResult82_g19717;
			float AmbientLdotAmbientH2157_g20186 = AmbientLdotAmbientH9633;
			float LdotH666_g20186 = max( 0.0 , AmbientLdotAmbientH2157_g20186 );
			float roughness666_g20186 = temp_output_648_0_g20186;
			float3 specColor666_g20186 = ( ColorRGB141_g20186 * DiffuseTint148_g20186 );
			half3 localAmbient1728_g20186 = Ambient();
			float3 lightcolor666_g20186 = localAmbient1728_g20186;
			float specularTermToggle666_g20186 = 1.0;
			float3 localcalcSpecularTerm666_g20186 = calcSpecularTerm( GGXVisibilityTerm666_g20186 , GGXTerm666_g20186 , NdotL666_g20186 , LdotH666_g20186 , roughness666_g20186 , specColor666_g20186 , lightcolor666_g20186 , specularTermToggle666_g20186 );
			float3 ifLocalVar1741_g20186 = 0;
			if( temp_output_1739_0_g20186 > 0.0 )
				ifLocalVar1741_g20186 = ( localcalcSpecularTerm630_g20186 * SpecularMapRGB160_g20186 * ColorA142_g20186 );
			else if( temp_output_1739_0_g20186 == 0.0 )
				ifLocalVar1741_g20186 = ( localcalcSpecularTerm666_g20186 * SpecularMapRGB160_g20186 * ColorA142_g20186 );
			float3 GGX10564 = ( ifLocalVar1741_g20186 + float3( 0,0,0 ) );
			float UVSwitchProp2002_g20186 = _AnisoDirUVSwitch;
			float2 UV02002_g20186 = i.uv_texcoord.xy;
			float2 UV12002_g20186 = i.uv2_texcoord2;
			float2 UV22002_g20186 = i.uv3_texcoord3;
			float2 UV32002_g20186 = i.uv4_texcoord4;
			float2 localUVSwitch2002_g20186 = UVSwitch( UVSwitchProp2002_g20186 , UV02002_g20186 , UV12002_g20186 , UV22002_g20186 , UV32002_g20186 );
			float2 AnisoDirUVSwitch2009_g20186 = ( ( _AnisoDir_ST.xy * localUVSwitch2002_g20186 ) + _AnisoDir_ST.zw );
			float3 normalizeResult77_g20186 = normalize( ( UnpackNormal( SAMPLE_TEXTURE2D( _AnisoDir, sampler_trilinear_repeat, AnisoDirUVSwitch2009_g20186 ) ) + WorldNormals2285_g20186 ) );
			float3 HdotA1339_g20186 = normalizeResult77_g20186;
			float3 normalizeResult4_g20189 = normalize( ( ase_worldViewDir + ase_worldlightDir ) );
			float dotResult76_g20186 = dot( HdotA1339_g20186 , normalizeResult4_g20189 );
			float BlinnToAniso1426_g20186 = _BlinntoAniso;
			float SpecularMapb383_g20186 = break380_g20186.b;
			float lerpResult97_g20186 = lerp( saturate( NdotH583_g20186 ) , max( 0.0 , sin( radians( ( ( dotResult76_g20186 + HighlightOffset127_g20186 ) * 180.0 ) ) ) ) , ( BlinnToAniso1426_g20186 * SpecularMapb383_g20186 ));
			float AnisoScale1344_g20186 = _AnisoScale;
			float SpecularMapg162_g20186 = break380_g20186.g;
			float AnisoSharpening1345_g20186 = _AnisoSharpening;
			float lerpResult1579_g20186 = lerp( 128.0 , 4096.0 , AnisoSharpening1345_g20186);
			float SpecularMapr161_g20186 = break380_g20186.r;
			float3 localambientDir2162_g20186 = ambientDir();
			float3 normalizeResult2164_g20186 = normalize( ( ase_worldViewDir + localambientDir2162_g20186 ) );
			float3 AmbientHalfVector2165_g20186 = normalizeResult2164_g20186;
			float dotResult341_g20186 = dot( HdotA1339_g20186 , AmbientHalfVector2165_g20186 );
			float lerpResult1443_g20186 = lerp( saturate( NdotAmbientH591_g20186 ) , max( 0.0 , sin( radians( ( ( dotResult341_g20186 + HighlightOffset127_g20186 ) * 180.0 ) ) ) ) , ( BlinnToAniso1426_g20186 * SpecularMapb383_g20186 ));
			float lerpResult1595_g20186 = lerp( 128.0 , 4096.0 , AnisoSharpening1345_g20186);
			half3 localAmbient1729_g20186 = Ambient();
			float3 ifLocalVar1738_g20186 = 0;
			if( temp_output_1739_0_g20186 > 0.0 )
				ifLocalVar1738_g20186 = ( ( saturate( ( ( pow( lerpResult97_g20186 , ( ( 1.0 - AnisoScale1344_g20186 ) * SpecularMapg162_g20186 * lerpResult1579_g20186 ) ) * SpecularMapr161_g20186 ) / ( 1.0 - AnisoSharpening1345_g20186 ) ) ) * ColorA142_g20186 ) * ( ColorRGB141_g20186 * DiffuseTint148_g20186 ) * ase_lightColor.rgb * max( ( ShadowsToonAniso1905_g20186 * 2.0 ) , 0.0 ) );
			else if( temp_output_1739_0_g20186 == 0.0 )
				ifLocalVar1738_g20186 = ( ( saturate( ( ( pow( lerpResult1443_g20186 , ( ( 1.0 - AnisoScale1344_g20186 ) * SpecularMapg162_g20186 * lerpResult1595_g20186 ) ) * SpecularMapr161_g20186 ) / ( 1.0 - AnisoSharpening1345_g20186 ) ) ) * ColorA142_g20186 ) * ( ColorRGB141_g20186 * DiffuseTint148_g20186 ) * localAmbient1729_g20186 * max( ( ShadowsIndirectNdL289_g20186 * 2.0 ) , 0.0 ) );
			float3 Anisotropic10564 = ( ifLocalVar1738_g20186 + float3( 0,0,0 ) );
			float ndl2022_g20186 = max( NdLGGX171_g20186 , 0.0 );
			float ndh2022_g20186 = max( NdotH583_g20186 , 0.0 );
			float vdn2022_g20186 = CorrNdotV626_g20186;
			float ldh2022_g20186 = max( LdotH2104_g20186 , 0.0 );
			float3 lightCol2022_g20186 = ( ShadowsToonAniso1905_g20186 * ase_lightColor.rgb );
			float3 normalizeResult4_g20191 = normalize( ( ase_worldViewDir + ase_worldlightDir ) );
			float3 halfVector2022_g20186 = normalizeResult4_g20191;
			float smoothness2022_g20186 = HighlightSmoothness128_g20186;
			float localOutlineSwitch127_g1 = ( 0.0 );
			float3 true127_g1 = temp_output_54_0_g1;
			float3 false127_g1 = -temp_output_54_0_g1;
			float3 Out0127_g1 = float3( 0,0,0 );
			{
			#ifdef FOROUTLINE
			Out0127_g1 = true127_g1; //Outline
			#else
			Out0127_g1 = false127_g1; //Not Outline
			#endif
			#define FOROUTLINE
			}
			float3 switchResult121_g1 = (((i.ASEVFace>0)?(temp_output_54_0_g1):(Out0127_g1)));
			float3 normalizeResult52_g1 = normalize( switchResult121_g1 );
			float3 normals9591 = normalizeResult52_g1;
			float3 temp_output_2254_0_g20186 = normals9591;
			float3 break2257_g20186 = temp_output_2254_0_g20186;
			float3 ase_worldNormal = WorldNormalVector( i, float3( 0, 0, 1 ) );
			float3 ase_vertexNormal = mul( unity_WorldToObject, float4( ase_worldNormal, 0 ) );
			ase_vertexNormal = normalize( ase_vertexNormal );
			float3 In02226_g20186 = ase_vertexNormal;
			float3 localgetUnityObjectToWorldNormal2226_g20186 = getUnityObjectToWorldNormal2226_g20186( In02226_g20186 );
			float3 normalizeResult2262_g20186 = normalize( ( ( break2257_g20186.x * i.vertexToFrag2251_g20186 ) + ( break2257_g20186.y * i.vertexToFrag2250_g20186 ) + ( break2257_g20186.z * localgetUnityObjectToWorldNormal2226_g20186 ) ) );
			float3 temp_output_2252_0_g20186 = cross( i.vertexToFrag2250_g20186 , normalizeResult2262_g20186 );
			float3 normalizeResult2265_g20186 = normalize( temp_output_2252_0_g20186 );
			float3 bumpedTangent2278_g20186 = normalizeResult2265_g20186;
			float3 tangent2022_g20186 = bumpedTangent2278_g20186;
			float3 normalizeResult2266_g20186 = normalize( cross( normalizeResult2262_g20186 , temp_output_2252_0_g20186 ) );
			float3 bumpedBitangent2277_g20186 = normalizeResult2266_g20186;
			float3 bitangent2022_g20186 = bumpedBitangent2277_g20186;
			float3 diffuseColor2022_g20186 = ( ColorRGB141_g20186 * DiffuseTint148_g20186 );
			float4 SpecularMap2022_g20186 = SpecularMapRGBA2289_g20186;
			float3 LightDir2022_g20186 = ase_worldlightDir;
			float3 ViewDir2022_g20186 = ase_worldViewDir;
			float3 localcalcGGXAniso2022_g20186 = calcGGXAniso( ndl2022_g20186 , ndh2022_g20186 , vdn2022_g20186 , ldh2022_g20186 , lightCol2022_g20186 , halfVector2022_g20186 , smoothness2022_g20186 , tangent2022_g20186 , bitangent2022_g20186 , diffuseColor2022_g20186 , SpecularMap2022_g20186 , LightDir2022_g20186 , ViewDir2022_g20186 );
			float ndl2410_g20186 = max( ShadowsIndirectNdL289_g20186 , 0.0 );
			float ndh2410_g20186 = max( NdotAmbientH591_g20186 , 0.0 );
			float vdn2410_g20186 = CorrNdotV626_g20186;
			float ldh2410_g20186 = max( AmbientLdotAmbientH2157_g20186 , 0.0 );
			half3 localAmbient2155_g20186 = Ambient();
			float3 lightCol2410_g20186 = ( ShadowsIndirectNdL289_g20186 * localAmbient2155_g20186 );
			float3 halfVector2410_g20186 = AmbientHalfVector2165_g20186;
			float smoothness2410_g20186 = HighlightSmoothness128_g20186;
			float3 tangent2410_g20186 = bumpedTangent2278_g20186;
			float3 bitangent2410_g20186 = bumpedBitangent2277_g20186;
			float3 diffuseColor2410_g20186 = ( ColorRGB141_g20186 * DiffuseTint148_g20186 );
			float4 SpecularMap2410_g20186 = SpecularMapRGBA2289_g20186;
			float3 localambientDir2411_g20186 = ambientDir();
			float3 LightDir2410_g20186 = localambientDir2411_g20186;
			float3 ViewDir2410_g20186 = ase_worldViewDir;
			float3 localcalcGGXAniso2410_g20186 = calcGGXAniso( ndl2410_g20186 , ndh2410_g20186 , vdn2410_g20186 , ldh2410_g20186 , lightCol2410_g20186 , halfVector2410_g20186 , smoothness2410_g20186 , tangent2410_g20186 , bitangent2410_g20186 , diffuseColor2410_g20186 , SpecularMap2410_g20186 , LightDir2410_g20186 , ViewDir2410_g20186 );
			float3 ifLocalVar2153_g20186 = 0;
			if( temp_output_1739_0_g20186 > 0.0 )
				ifLocalVar2153_g20186 = localcalcGGXAniso2022_g20186;
			else if( temp_output_1739_0_g20186 == 0.0 )
				ifLocalVar2153_g20186 = localcalcGGXAniso2410_g20186;
			float3 GGXAnisotropic10564 = ifLocalVar2153_g20186;
			{
			UNITY_BRANCH
			if (_SpecularSetting == 0)
				Out10564 = Toon10564;
			else if (_SpecularSetting == 1)
				Out10564 = GGX10564;
			else if (_SpecularSetting == 2)
				Out10564 = Anisotropic10564;
			else
				Out10564 = GGXAnisotropic10564;
			}
			float3 SpecularHighlight9763 = Out10564;
			float3 appendResult1896_g20186 = (float3(NdLGGX171_g20186 , AttenGGX1911_g20186 , ShadowsIndirectNdL289_g20186));
			float3 PixelAmbientShadows10489 = appendResult1896_g20186;
			float3 break2823_g20203 = PixelAmbientShadows10489;
			float NdLGGX2357_g20203 = break2823_g20203.x;
			float temp_output_2418_0_g20203 = max( 0.0 , NdLGGX2357_g20203 );
			float NdotL2412_g20203 = temp_output_2418_0_g20203;
			float CorrectedNdotV2507_g20203 = NdotVCorr9635;
			float NdotV2412_g20203 = CorrectedNdotV2507_g20203;
			float IgnoreNormalsToggle323_g20203 = _IgnoreNormalsCubemap;
			float3 normalizeResult28_g20203 = normalize( ase_worldNormal );
			float3 ifLocalVar46_g20203 = 0;
			if( 1.0 > IgnoreNormalsToggle323_g20203 )
				ifLocalVar46_g20203 = worldnormals9552;
			else if( 1.0 == IgnoreNormalsToggle323_g20203 )
				ifLocalVar46_g20203 = normalizeResult28_g20203;
			float3 WorldNormals305_g20203 = ifLocalVar46_g20203;
			float3 worldNormal2910_g20203 = WorldNormals305_g20203;
			float Smoothness300_g20203 = _Cubemapsmoothness;
			float smoothness2910_g20203 = ( tex2DNode2688_g20203.a * Smoothness300_g20203 );
			float localGSAA_Filament2910_g20203 = GSAA_Filament( worldNormal2910_g20203 , smoothness2910_g20203 );
			float SmoothnessTex290_g20203 = localGSAA_Filament2910_g20203;
			float perceptualRoughness2761_g20203 = ( 1.0 - SmoothnessTex290_g20203 );
			float roughness2729_g20203 = max( ( perceptualRoughness2761_g20203 * perceptualRoughness2761_g20203 ) , 0.002 );
			float roughness2412_g20203 = roughness2729_g20203;
			float localgetSmithJointGGXVisibilityTerm2412_g20203 = getSmithJointGGXVisibilityTerm( NdotL2412_g20203 , NdotV2412_g20203 , roughness2412_g20203 );
			float GGXVisibilityTerm2305_g20203 = localgetSmithJointGGXVisibilityTerm2412_g20203;
			float NdotH2416_g20203 = max( 0.0 , NdotH9640 );
			float roughness2416_g20203 = roughness2729_g20203;
			float localgetGGXTerm2416_g20203 = getGGXTerm( NdotH2416_g20203 , roughness2416_g20203 );
			float GGXTerm2305_g20203 = localgetGGXTerm2416_g20203;
			float NdotL2305_g20203 = temp_output_2418_0_g20203;
			float LdotH2305_g20203 = max( 0.0 , LdotH9637 );
			float roughness2305_g20203 = roughness2729_g20203;
			float3 MainTex312_g20203 = MainTexSaturate9595;
			half3 specColor2324_g20203 = (0).xxx;
			half oneMinusReflectivity2324_g20203 = 0;
			half3 diffuseAndSpecularFromMetallic2324_g20203 = DiffuseAndSpecularFromMetallic(MainTex312_g20203,MetallicTex289_g20203,specColor2324_g20203,oneMinusReflectivity2324_g20203);
			float3 SpecColor2715_g20203 = specColor2324_g20203;
			float3 specColor2305_g20203 = SpecColor2715_g20203;
			float AttenGGX2831_g20203 = break2823_g20203.y;
			float3 lightcolor2305_g20203 = ( ase_lightColor.rgb * AttenGGX2831_g20203 );
			float SpecularHighlightToggle2498_g20203 = _CubemapSpecularToggle;
			float specularTermToggle2305_g20203 = SpecularHighlightToggle2498_g20203;
			float3 localcalcSpecularTerm2305_g20203 = calcSpecularTerm( GGXVisibilityTerm2305_g20203 , GGXTerm2305_g20203 , NdotL2305_g20203 , LdotH2305_g20203 , roughness2305_g20203 , specColor2305_g20203 , lightcolor2305_g20203 , specularTermToggle2305_g20203 );
			float temp_output_2490_0_g20203 = max( 0.0 , NdotAmbientL9592 );
			float NdotL2496_g20203 = temp_output_2490_0_g20203;
			float NdotV2496_g20203 = CorrectedNdotV2507_g20203;
			float roughness2496_g20203 = roughness2729_g20203;
			float localgetSmithJointGGXVisibilityTerm2496_g20203 = getSmithJointGGXVisibilityTerm( NdotL2496_g20203 , NdotV2496_g20203 , roughness2496_g20203 );
			float GGXVisibilityTerm2494_g20203 = localgetSmithJointGGXVisibilityTerm2496_g20203;
			float NdotH2495_g20203 = max( 0.0 , NdotAmbientH9641 );
			float roughness2495_g20203 = roughness2729_g20203;
			float localgetGGXTerm2495_g20203 = getGGXTerm( NdotH2495_g20203 , roughness2495_g20203 );
			float GGXTerm2494_g20203 = localgetGGXTerm2495_g20203;
			float NdotL2494_g20203 = temp_output_2490_0_g20203;
			float LdotH2494_g20203 = max( 0.0 , AmbientLdotAmbientH9633 );
			float roughness2494_g20203 = roughness2729_g20203;
			float3 specColor2494_g20203 = SpecColor2715_g20203;
			half3 localAmbient2505_g20203 = Ambient();
			float AmbientShadows2824_g20203 = break2823_g20203.z;
			float3 lightcolor2494_g20203 = ( localAmbient2505_g20203 * AmbientShadows2824_g20203 );
			float specularTermToggle2494_g20203 = SpecularHighlightToggle2498_g20203;
			float3 localcalcSpecularTerm2494_g20203 = calcSpecularTerm( GGXVisibilityTerm2494_g20203 , GGXTerm2494_g20203 , NdotL2494_g20203 , LdotH2494_g20203 , roughness2494_g20203 , specColor2494_g20203 , lightcolor2494_g20203 , specularTermToggle2494_g20203 );
			float3 SHSpecular2509_g20203 = localcalcSpecularTerm2494_g20203;
			float3 ifLocalVar2672_g20203 = 0;
			if( GrayscaledLight9594 > 0.0 )
				ifLocalVar2672_g20203 = localcalcSpecularTerm2305_g20203;
			else if( GrayscaledLight9594 == 0.0 )
				ifLocalVar2672_g20203 = SHSpecular2509_g20203;
			float4 temp_output_1727_0_g20186 = max( float4( 0,0,0,0 ) , VertexLightNdLNONMAX9597 );
			float4 ifLocalVar2136_g20185 = 0;
			UNITY_BRANCH 
			if( 1.0 > ToggleSteps66_g20185 )
				ifLocalVar2136_g20185 = ToonRampTexVertexLightLuminanced352_g20185;
			else if( 1.0 == ToggleSteps66_g20185 )
				ifLocalVar2136_g20185 = VertexLightNdLStepped2141_g20185;
			float4 NdLVertexLightsShadows10461 = ifLocalVar2136_g20185;
			float4 temp_cast_43 = (-max( SpecShadowMaskPower286_g20186 , -0.99 )).xxxx;
			float temp_output_2387_0_g20186 = ( saturate( SpecShadowMaskPower286_g20186 ) * 0.5 );
			float4 lerpResult2379_g20186 = lerp( ( ( NdLVertexLightsShadows10461 - temp_cast_43 ) / ( 1.0 - -max( SpecShadowMaskPower286_g20186 , -0.99 ) ) ) , float4( 1,1,1,1 ) , ( ( SpecShadowMaskPower286_g20186 * temp_output_2387_0_g20186 ) + temp_output_2387_0_g20186 ));
			float4 temp_output_2378_0_g20186 = saturate( lerpResult2379_g20186 );
			float4 ifLocalVar1924_g20186 = 0;
			UNITY_BRANCH 
			if( 1.0 > SpecShadowMaskVar279_g20186 )
				ifLocalVar1924_g20186 = float4(1,1,1,1);
			else if( 1.0 == SpecShadowMaskVar279_g20186 )
				ifLocalVar1924_g20186 = temp_output_1727_0_g20186;
			else if( 1.0 < SpecShadowMaskVar279_g20186 )
				ifLocalVar1924_g20186 = temp_output_2378_0_g20186;
			float4 VertexLightsNdLGGX1923_g20186 = ifLocalVar1924_g20186;
			float4 VertexLightShadows10490 = VertexLightsNdLGGX1923_g20186;
			float4 break2546_g20203 = VertexLightShadows10490;
			float NdotL2576_g20203 = break2546_g20203.x;
			float NdotV2576_g20203 = CorrectedNdotV2507_g20203;
			float roughness2576_g20203 = roughness2729_g20203;
			float localgetSmithJointGGXVisibilityTerm2576_g20203 = getSmithJointGGXVisibilityTerm( NdotL2576_g20203 , NdotV2576_g20203 , roughness2576_g20203 );
			float GGXVisibilityTerm2521_g20203 = localgetSmithJointGGXVisibilityTerm2576_g20203;
			float4 break346_g19717 = FourLightPosX0WorldPos286_g19717;
			float4 break277_g19717 = FourLightPosY0WorldPos291_g19717;
			float4 break300_g19717 = FourLightPosZ0WorldPos325_g19717;
			float3 appendResult358_g19717 = (float3(break346_g19717.x , break277_g19717.x , break300_g19717.x));
			float3 normalizeResult292_g19717 = normalize( appendResult358_g19717 );
			float3 normalizeResult289_g19717 = ASESafeNormalize( ( ase_worldViewDir + normalizeResult292_g19717 ) );
			float dotResult318_g19717 = dot( WorldNormals20_g19717 , normalizeResult289_g19717 );
			float VLNdotHOne9670 = dotResult318_g19717;
			float NdotH2569_g20203 = max( VLNdotHOne9670 , 0.0 );
			float roughness2569_g20203 = roughness2729_g20203;
			float localgetGGXTerm2569_g20203 = getGGXTerm( NdotH2569_g20203 , roughness2569_g20203 );
			float GGXTerm2521_g20203 = localgetGGXTerm2569_g20203;
			float NdotL2521_g20203 = break2546_g20203.x;
			float dotResult339_g19717 = dot( normalizeResult292_g19717 , normalizeResult289_g19717 );
			float VLLdotHOne9676 = dotResult339_g19717;
			float LdotH2521_g20203 = max( VLLdotHOne9676 , 0.0 );
			float roughness2521_g20203 = roughness2729_g20203;
			float3 specColor2521_g20203 = SpecColor2715_g20203;
			float3 localLightColorZero2834_g20203 = LightColorZero();
			float4 break2841_g20203 = VertexLightAtten9596;
			float3 lightcolor2521_g20203 = ( localLightColorZero2834_g20203 * break2841_g20203.x );
			float specularTermToggle2521_g20203 = SpecularHighlightToggle2498_g20203;
			float3 localcalcSpecularTerm2521_g20203 = calcSpecularTerm( GGXVisibilityTerm2521_g20203 , GGXTerm2521_g20203 , NdotL2521_g20203 , LdotH2521_g20203 , roughness2521_g20203 , specColor2521_g20203 , lightcolor2521_g20203 , specularTermToggle2521_g20203 );
			float NdotL2601_g20203 = break2546_g20203.y;
			float NdotV2601_g20203 = CorrectedNdotV2507_g20203;
			float roughness2601_g20203 = roughness2729_g20203;
			float localgetSmithJointGGXVisibilityTerm2601_g20203 = getSmithJointGGXVisibilityTerm( NdotL2601_g20203 , NdotV2601_g20203 , roughness2601_g20203 );
			float GGXVisibilityTerm2609_g20203 = localgetSmithJointGGXVisibilityTerm2601_g20203;
			float3 appendResult321_g19717 = (float3(break346_g19717.y , break277_g19717.y , break300_g19717.y));
			float3 normalizeResult308_g19717 = normalize( appendResult321_g19717 );
			float3 normalizeResult285_g19717 = ASESafeNormalize( ( ase_worldViewDir + normalizeResult308_g19717 ) );
			float dotResult298_g19717 = dot( WorldNormals20_g19717 , normalizeResult285_g19717 );
			float VLNdotHTwo9645 = dotResult298_g19717;
			float NdotH2600_g20203 = max( VLNdotHTwo9645 , 0.0 );
			float roughness2600_g20203 = roughness2729_g20203;
			float localgetGGXTerm2600_g20203 = getGGXTerm( NdotH2600_g20203 , roughness2600_g20203 );
			float GGXTerm2609_g20203 = localgetGGXTerm2600_g20203;
			float NdotL2609_g20203 = break2546_g20203.y;
			float dotResult354_g19717 = dot( normalizeResult308_g19717 , normalizeResult285_g19717 );
			float VLLdotHTwo9652 = dotResult354_g19717;
			float LdotH2609_g20203 = max( VLLdotHTwo9652 , 0.0 );
			float roughness2609_g20203 = roughness2729_g20203;
			float3 specColor2609_g20203 = SpecColor2715_g20203;
			float3 localLightColorZOne2835_g20203 = LightColorZOne();
			float3 lightcolor2609_g20203 = ( localLightColorZOne2835_g20203 * break2841_g20203.y );
			float specularTermToggle2609_g20203 = SpecularHighlightToggle2498_g20203;
			float3 localcalcSpecularTerm2609_g20203 = calcSpecularTerm( GGXVisibilityTerm2609_g20203 , GGXTerm2609_g20203 , NdotL2609_g20203 , LdotH2609_g20203 , roughness2609_g20203 , specColor2609_g20203 , lightcolor2609_g20203 , specularTermToggle2609_g20203 );
			float NdotL2618_g20203 = break2546_g20203.z;
			float NdotV2618_g20203 = CorrectedNdotV2507_g20203;
			float roughness2618_g20203 = roughness2729_g20203;
			float localgetSmithJointGGXVisibilityTerm2618_g20203 = getSmithJointGGXVisibilityTerm( NdotL2618_g20203 , NdotV2618_g20203 , roughness2618_g20203 );
			float GGXVisibilityTerm2626_g20203 = localgetSmithJointGGXVisibilityTerm2618_g20203;
			float3 appendResult355_g19717 = (float3(break346_g19717.z , break277_g19717.z , break300_g19717.z));
			float3 normalizeResult334_g19717 = normalize( appendResult355_g19717 );
			float3 normalizeResult327_g19717 = ASESafeNormalize( ( ase_worldViewDir + normalizeResult334_g19717 ) );
			float dotResult313_g19717 = dot( WorldNormals20_g19717 , normalizeResult327_g19717 );
			float VLNdotHThree9650 = dotResult313_g19717;
			float NdotH2617_g20203 = max( VLNdotHThree9650 , 0.0 );
			float roughness2617_g20203 = roughness2729_g20203;
			float localgetGGXTerm2617_g20203 = getGGXTerm( NdotH2617_g20203 , roughness2617_g20203 );
			float GGXTerm2626_g20203 = localgetGGXTerm2617_g20203;
			float NdotL2626_g20203 = break2546_g20203.z;
			float dotResult288_g19717 = dot( normalizeResult334_g19717 , normalizeResult327_g19717 );
			float VLLdotHThree9662 = dotResult288_g19717;
			float LdotH2626_g20203 = max( VLLdotHThree9662 , 0.0 );
			float roughness2626_g20203 = roughness2729_g20203;
			float3 specColor2626_g20203 = SpecColor2715_g20203;
			float3 localLightColorZTwo2833_g20203 = LightColorZTwo();
			float3 lightcolor2626_g20203 = ( localLightColorZTwo2833_g20203 * break2841_g20203.z );
			float specularTermToggle2626_g20203 = SpecularHighlightToggle2498_g20203;
			float3 localcalcSpecularTerm2626_g20203 = calcSpecularTerm( GGXVisibilityTerm2626_g20203 , GGXTerm2626_g20203 , NdotL2626_g20203 , LdotH2626_g20203 , roughness2626_g20203 , specColor2626_g20203 , lightcolor2626_g20203 , specularTermToggle2626_g20203 );
			float NdotL2635_g20203 = break2546_g20203.w;
			float NdotV2635_g20203 = CorrectedNdotV2507_g20203;
			float roughness2635_g20203 = roughness2729_g20203;
			float localgetSmithJointGGXVisibilityTerm2635_g20203 = getSmithJointGGXVisibilityTerm( NdotL2635_g20203 , NdotV2635_g20203 , roughness2635_g20203 );
			float GGXVisibilityTerm2643_g20203 = localgetSmithJointGGXVisibilityTerm2635_g20203;
			float3 appendResult278_g19717 = (float3(break346_g19717.w , break277_g19717.w , break300_g19717.w));
			float3 normalizeResult281_g19717 = normalize( appendResult278_g19717 );
			float3 normalizeResult319_g19717 = ASESafeNormalize( ( ase_worldViewDir + normalizeResult281_g19717 ) );
			float dotResult314_g19717 = dot( WorldNormals20_g19717 , normalizeResult319_g19717 );
			float VLNdotHFour9656 = dotResult314_g19717;
			float NdotH2634_g20203 = max( VLNdotHFour9656 , 0.0 );
			float roughness2634_g20203 = roughness2729_g20203;
			float localgetGGXTerm2634_g20203 = getGGXTerm( NdotH2634_g20203 , roughness2634_g20203 );
			float GGXTerm2643_g20203 = localgetGGXTerm2634_g20203;
			float NdotL2643_g20203 = break2546_g20203.w;
			float dotResult362_g19717 = dot( normalizeResult281_g19717 , normalizeResult319_g19717 );
			float VLLdotHFour9669 = dotResult362_g19717;
			float LdotH2643_g20203 = max( VLLdotHFour9669 , 0.0 );
			float roughness2643_g20203 = roughness2729_g20203;
			float3 specColor2643_g20203 = SpecColor2715_g20203;
			float3 localLightColorZThree2840_g20203 = LightColorZThree();
			float3 lightcolor2643_g20203 = ( localLightColorZThree2840_g20203 * break2841_g20203.w );
			float specularTermToggle2643_g20203 = SpecularHighlightToggle2498_g20203;
			float3 localcalcSpecularTerm2643_g20203 = calcSpecularTerm( GGXVisibilityTerm2643_g20203 , GGXTerm2643_g20203 , NdotL2643_g20203 , LdotH2643_g20203 , roughness2643_g20203 , specColor2643_g20203 , lightcolor2643_g20203 , specularTermToggle2643_g20203 );
			#ifdef UNITY_PASS_FORWARDBASE
				float3 staticSwitch2764_g20203 = ( localcalcSpecularTerm2521_g20203 + localcalcSpecularTerm2609_g20203 + localcalcSpecularTerm2626_g20203 + localcalcSpecularTerm2643_g20203 );
			#else
				float3 staticSwitch2764_g20203 = float3( 0,0,0 );
			#endif
			#ifdef VERTEXLIGHT_ON
				float3 staticSwitch2765_g20203 = staticSwitch2764_g20203;
			#else
				float3 staticSwitch2765_g20203 = float3( 0,0,0 );
			#endif
			float3 VertexLightGGXPBRMetallicWF2533_g20203 = staticSwitch2765_g20203;
			float3 specularTerm2404_g20203 = ( ifLocalVar2672_g20203 + VertexLightGGXPBRMetallicWF2533_g20203 );
			float NdotV2404_g20203 = CorrectedNdotV2507_g20203;
			float3 specColor2404_g20203 = SpecColor2715_g20203;
			float roughness2404_g20203 = roughness2729_g20203;
			float OneMinusReflectivity2718_g20203 = oneMinusReflectivity2324_g20203;
			float oneMinusReflectivity2404_g20203 = OneMinusReflectivity2718_g20203;
			float localGetSpecCubeDimensions1255_g20203 = ( 0.0 );
			float testW1255_g20203 = 0;
			float testH1255_g20203 = 0;
			{
			#ifndef SHADER_TARGET_SURFACE_ANALYSIS
			unity_SpecCube0.GetDimensions(testW1255_g20203,testH1255_g20203);
			#endif
			}
			float3 indirectNormal2316_g20203 = WorldNormals305_g20203;
			Unity_GlossyEnvironmentData g2316_g20203 = UnityGlossyEnvironmentSetup( SmoothnessTex290_g20203, data.worldViewDir, indirectNormal2316_g20203, float3(0,0,0));
			float3 indirectSpecular2316_g20203 = UnityGI_IndirectSpecular( data, 1.0, indirectNormal2316_g20203, g2316_g20203 );
			float3 ase_worldReflection = WorldReflectionVector( i, float3( 0, 0, 1 ) );
			float3 ifLocalVar45_g20203 = 0;
			if( 1.0 > IgnoreNormalsToggle323_g20203 )
				ifLocalVar45_g20203 = WorldReflectionVector( i , normals9591 );
			else if( 1.0 == IgnoreNormalsToggle323_g20203 )
				ifLocalVar45_g20203 = ase_worldReflection;
			half3 linearRgb1631_g20185 = ( ase_lightColor.rgb * staticSwitch1035_g20185 );
			half localgetLinearRgbToLuminance1631_g20185 = getLinearRgbToLuminance( linearRgb1631_g20185 );
			half3 linearRgb1630_g20185 = ( lerpResult1661_g20185 * AmbientLightBoosted1782_g20185 );
			half localgetLinearRgbToLuminance1630_g20185 = getLinearRgbToLuminance( linearRgb1630_g20185 );
			#ifdef UNITY_PASS_FORWARDBASE
				float staticSwitch1995_g20185 = localgetLinearRgbToLuminance1433_g20185;
			#else
				float staticSwitch1995_g20185 = 0.0;
			#endif
			#ifdef VERTEXLIGHT_ON
				float staticSwitch1994_g20185 = staticSwitch1995_g20185;
			#else
				float staticSwitch1994_g20185 = 0.0;
			#endif
			float LuminancedVertexLights1991_g20185 = staticSwitch1994_g20185;
			float LuminancedLight9749 = ( ( localgetLinearRgbToLuminance1631_g20185 + localgetLinearRgbToLuminance1630_g20185 ) + LuminancedVertexLights1991_g20185 );
			float3 BakedCubemap1524_g20203 = ( (SAMPLE_TEXTURECUBE_LOD( _Cubemap, sampler_Cubemap, ifLocalVar45_g20203, ( ( 1.0 - SmoothnessTex290_g20203 ) * 10.0 ) )).rgb * saturate( LuminancedLight9749 ) );
			float3 ifLocalVar2337_g20203 = 0;
			if( testW1255_g20203 >= 16 )
				ifLocalVar2337_g20203 = indirectSpecular2316_g20203;
			else
				ifLocalVar2337_g20203 = BakedCubemap1524_g20203;
			float3 ifLocalVar2338_g20203 = 0;
			UNITY_BRANCH 
			if( 1.0 > _WorkflowSwitch )
				ifLocalVar2338_g20203 = ifLocalVar2337_g20203;
			else if( 1.0 == _WorkflowSwitch )
				ifLocalVar2338_g20203 = BakedCubemap1524_g20203;
			else if( 1.0 < _WorkflowSwitch )
				ifLocalVar2338_g20203 = indirectSpecular2316_g20203;
			float AmbientOcclusion9664 = lerpResult54_g20185;
			float AO2783_g20203 = AmbientOcclusion9664;
			float3 indirectspecular2404_g20203 = ( ifLocalVar2338_g20203 * AO2783_g20203 );
			float smoothness2404_g20203 = SmoothnessTex290_g20203;
			float perceptualRoughness2404_g20203 = perceptualRoughness2761_g20203;
			float3 localcalcSpecularBase2404_g20203 = calcSpecularBase( specularTerm2404_g20203 , NdotV2404_g20203 , specColor2404_g20203 , roughness2404_g20203 , oneMinusReflectivity2404_g20203 , indirectspecular2404_g20203 , smoothness2404_g20203 , perceptualRoughness2404_g20203 );
			float3 SpecularReflections316_g20203 = localcalcSpecularBase2404_g20203;
			float3 temp_output_10562_0 = ( SpecularReflections316_g20203 * temp_output_80_0_g20203 );
			float3 CubemapReflections9801 = ( temp_output_10562_0 * temp_output_9752_0 );
			float3 worldSpaceViewDir449_g20209 = WorldSpaceViewDir( float4( 0,0,0,1 ) );
			float3 normalizeResult803_g20209 = ASESafeNormalize( worldSpaceViewDir449_g20209 );
			float3 ifLocalVar906_g20209 = 0;
			if( 1.0 > _MatcapViewDir )
				ifLocalVar906_g20209 = ase_worldViewDir;
			else if( 1.0 == _MatcapViewDir )
				ifLocalVar906_g20209 = normalizeResult803_g20209;
			float3 _Vector0 = float3(0,1,0);
			float dotResult9_g20209 = dot( ifLocalVar906_g20209 , _Vector0 );
			float3 normalizeResult13_g20209 = normalize( ( _Vector0 - ( dotResult9_g20209 * ifLocalVar906_g20209 ) ) );
			float3 normalizeResult19_g20209 = normalize( cross( ifLocalVar906_g20209 , normalizeResult13_g20209 ) );
			float3 normalizeResult16_g20209 = normalize( ase_worldNormal );
			float3 ifLocalVar20_g20209 = 0;
			if( 1.0 > _IgnoreNormalsMatcap )
				ifLocalVar20_g20209 = worldnormals9552;
			else if( 1.0 == _IgnoreNormalsMatcap )
				ifLocalVar20_g20209 = normalizeResult16_g20209;
			float dotResult22_g20209 = dot( normalizeResult19_g20209 , ifLocalVar20_g20209 );
			float dotResult23_g20209 = dot( normalizeResult13_g20209 , ifLocalVar20_g20209 );
			float2 appendResult25_g20209 = (float2(dotResult22_g20209 , dotResult23_g20209));
			float2 MatcapUV215_g20209 = ( ( appendResult25_g20209 * 0.5 ) + 0.5 );
			float ReflectionR1Intensity224_g20209 = _ReflectionR1Intensity;
			float3 temp_output_45_0_g20209 = ( ( (SAMPLE_TEXTURE2D_LOD( _MatcapR1, sampler_trilinear_repeat, MatcapUV215_g20209, ( ( 1.0 - _MatcapR1smoothness ) * 10.0 ) )).rgb * (_MatcapR1Color).rgb * ( _MatcapR1Color.a * MatcapR1Blending703_g20209 ) ) * ReflectionR1Intensity224_g20209 );
			#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch2216_g20185 = ( ase_lightColor.rgb * ase_lightAtten );
			#else
				float3 staticSwitch2216_g20185 = ase_lightColor.rgb;
			#endif
			half3 linearRgb2203_g20185 = staticSwitch2216_g20185;
			half localgetLinearRgbToLuminance2203_g20185 = getLinearRgbToLuminance( linearRgb2203_g20185 );
			half3 linearRgb2202_g20185 = AmbientLightBoosted1782_g20185;
			half localgetLinearRgbToLuminance2202_g20185 = getLinearRgbToLuminance( linearRgb2202_g20185 );
			float LuminancedLightNoShadows10595 = ( localgetLinearRgbToLuminance2203_g20185 + localgetLinearRgbToLuminance2202_g20185 + LuminancedVertexLights1991_g20185 );
			float MatcapLighting825_g20209 = saturate( LuminancedLightNoShadows10595 );
			float3 MainTex207_g20209 = MainTexSaturate9595;
			float AmbientOcclusion834_g20209 = AmbientOcclusion9664;
			float3 PreClampFinalLight9649 = ( ForFinalLightCalculation993_g20185 + DiffuseVertexLighting354_g20185 );
			float3 MatcapLightingRGB901_g20209 = PreClampFinalLight9649;
			float3 ifLocalVar59_g20209 = 0;
			if( 1.0 > _MatcapR1Mode )
				ifLocalVar59_g20209 = ( temp_output_45_0_g20209 * MatcapLighting825_g20209 * MainTex207_g20209 * AmbientOcclusion834_g20209 );
			else if( 1.0 == _MatcapR1Mode )
				ifLocalVar59_g20209 = ( temp_output_45_0_g20209 * MatcapLightingRGB901_g20209 );
			else if( 1.0 < _MatcapR1Mode )
				ifLocalVar59_g20209 = ( ( 1.0 - temp_output_45_0_g20209 ) * MatcapLightingRGB901_g20209 );
			float3 lerpResult60_g20209 = lerp( float3( 1,1,1 ) , MainTex207_g20209 , _ReflectionR1Tint);
			float3 ifLocalVar427_g20209 = 0;
			UNITY_BRANCH 
			if( _MatcapR1Toggle > 0 )
				ifLocalVar427_g20209 = ( ifLocalVar59_g20209 * lerpResult60_g20209 * ( ReflectionR1Intensity224_g20209 * ReflectionMaskR199_g20209 ) );
			float3 MatcapR1calc419_g20209 = ( ifLocalVar427_g20209 * temp_output_570_0_g20209 );
			float ReflectionG2Intensity298_g20209 = _ReflectionG2Intensity;
			float3 temp_output_277_0_g20209 = ( ( (SAMPLE_TEXTURE2D_LOD( _MatcapG2, sampler_trilinear_repeat, MatcapUV215_g20209, ( ( 1.0 - _MatcapG2smoothness ) * 10.0 ) )).rgb * (_MatcapG2Color).rgb * ( _MatcapG2Color.a * MatcapG2Blending706_g20209 ) ) * ReflectionG2Intensity298_g20209 );
			float3 ifLocalVar262_g20209 = 0;
			if( 1.0 > _MatcapG2Mode )
				ifLocalVar262_g20209 = ( temp_output_277_0_g20209 * MatcapLighting825_g20209 * MainTex207_g20209 * AmbientOcclusion834_g20209 );
			else if( 1.0 == _MatcapG2Mode )
				ifLocalVar262_g20209 = ( temp_output_277_0_g20209 * MatcapLightingRGB901_g20209 );
			else if( 1.0 < _MatcapG2Mode )
				ifLocalVar262_g20209 = ( ( 1.0 - temp_output_277_0_g20209 ) * MatcapLightingRGB901_g20209 );
			float3 lerpResult254_g20209 = lerp( float3( 1,1,1 ) , MainTex207_g20209 , _ReflectionG2Tint);
			float3 ifLocalVar437_g20209 = 0;
			UNITY_BRANCH 
			if( _MatcapG2Toggle > 0 )
				ifLocalVar437_g20209 = ( ifLocalVar262_g20209 * lerpResult254_g20209 * ( ReflectionG2Intensity298_g20209 * ReflectionMaskG200_g20209 ) );
			float3 MatcapG2calc420_g20209 = ( ifLocalVar437_g20209 * temp_output_573_0_g20209 );
			float ReflectionB3Intensity300_g20209 = _ReflectionB3Intensity;
			float3 temp_output_361_0_g20209 = ( ( (SAMPLE_TEXTURE2D_LOD( _MatcapB3, sampler_trilinear_repeat, MatcapUV215_g20209, ( ( 1.0 - _MatcapB3smoothness ) * 10.0 ) )).rgb * (_MatcapB3Color).rgb * ( _MatcapB3Color.a * MatcapB3Blending708_g20209 ) ) * ReflectionB3Intensity300_g20209 );
			float3 ifLocalVar348_g20209 = 0;
			if( 1.0 > _MatcapB3Mode )
				ifLocalVar348_g20209 = ( temp_output_361_0_g20209 * MatcapLighting825_g20209 * MainTex207_g20209 * AmbientOcclusion834_g20209 );
			else if( 1.0 == _MatcapB3Mode )
				ifLocalVar348_g20209 = ( temp_output_361_0_g20209 * MatcapLightingRGB901_g20209 );
			else if( 1.0 < _MatcapB3Mode )
				ifLocalVar348_g20209 = ( ( 1.0 - temp_output_361_0_g20209 ) * MatcapLightingRGB901_g20209 );
			float3 lerpResult340_g20209 = lerp( float3( 1,1,1 ) , MainTex207_g20209 , _ReflectionB3Tint);
			float3 ifLocalVar438_g20209 = 0;
			UNITY_BRANCH 
			if( _MatcapB3Toggle > 0 )
				ifLocalVar438_g20209 = ( ifLocalVar348_g20209 * lerpResult340_g20209 * ( ReflectionB3Intensity300_g20209 * ReflectionMaskB201_g20209 ) );
			float3 MatcapB3calc421_g20209 = ( ifLocalVar438_g20209 * temp_output_576_0_g20209 );
			float ReflectionA4Intensity302_g20209 = _ReflectionA4Intensity;
			float3 temp_output_402_0_g20209 = ( ( (SAMPLE_TEXTURE2D_LOD( _MatcapA4, sampler_trilinear_repeat, MatcapUV215_g20209, ( ( 1.0 - _MatcapA4smoothness ) * 10.0 ) )).rgb * (_MatcapA4Color).rgb * ( _MatcapA4Color.a * MatcapA4Blending710_g20209 ) ) * ReflectionA4Intensity302_g20209 );
			float3 ifLocalVar389_g20209 = 0;
			if( 1.0 > _MatcapA4Mode )
				ifLocalVar389_g20209 = ( temp_output_402_0_g20209 * MatcapLighting825_g20209 * MainTex207_g20209 * AmbientOcclusion834_g20209 );
			else if( 1.0 == _MatcapA4Mode )
				ifLocalVar389_g20209 = ( temp_output_402_0_g20209 * MatcapLightingRGB901_g20209 );
			else if( 1.0 < _MatcapA4Mode )
				ifLocalVar389_g20209 = ( ( 1.0 - temp_output_402_0_g20209 ) * MatcapLightingRGB901_g20209 );
			float3 lerpResult381_g20209 = lerp( float3( 1,1,1 ) , MainTex207_g20209 , _ReflectionA4Tint);
			float3 ifLocalVar439_g20209 = 0;
			UNITY_BRANCH 
			if( _MatcapA4Toggle > 0 )
				ifLocalVar439_g20209 = ( ifLocalVar389_g20209 * lerpResult381_g20209 * ( ReflectionA4Intensity302_g20209 * ReflectionMaskA202_g20209 ) );
			float3 MatcapA4calc422_g20209 = ( ifLocalVar439_g20209 * temp_output_579_0_g20209 );
			float3 Matcap9792 = ( MatcapR1calc419_g20209 + MatcapG2calc420_g20209 + MatcapB3calc421_g20209 + MatcapA4calc422_g20209 );
			float DirectionToggle135_g20197 = _RimDirectionToggle;
			float RimShape196_g20197 = pow( ( 1.0 - saturate( ( NdotV9567 + _RimOffset ) ) ) , max( _RimPower , ( 1E-06 + 1E-06 ) ) );
			float3 WorldNormals127_g20197 = worldnormals9552;
			float fresnelNdotV93_g20197 = dot( WorldNormals127_g20197, ase_worldViewDir );
			float fresnelNode93_g20197 = ( _RimFresnelBias + _RimFresnelScale * pow( 1.0 - fresnelNdotV93_g20197, _RimFresnelPower ) );
			float Fresnel171_g20197 = fresnelNode93_g20197;
			float ifLocalVar274_g20197 = 0;
			if( 1.0 > DirectionToggle135_g20197 )
				ifLocalVar274_g20197 = RimShape196_g20197;
			else if( 1.0 == DirectionToggle135_g20197 )
				ifLocalVar274_g20197 = Fresnel171_g20197;
			float temp_output_2_0_g20198 = _RimTint;
			float temp_output_3_0_g20198 = ( 1.0 - temp_output_2_0_g20198 );
			float3 appendResult7_g20198 = (float3(temp_output_3_0_g20198 , temp_output_3_0_g20198 , temp_output_3_0_g20198));
			float3 temp_output_35_0_g20197 = ( ( MainTexSaturate9595 * temp_output_2_0_g20198 ) + appendResult7_g20198 );
			float UVSwitchProp340_g20197 = _RimMaskUVSwitch;
			float2 UV0340_g20197 = i.uv_texcoord.xy;
			float2 UV1340_g20197 = i.uv2_texcoord2;
			float2 UV2340_g20197 = i.uv3_texcoord3;
			float2 UV3340_g20197 = i.uv4_texcoord4;
			float2 localUVSwitch340_g20197 = UVSwitch( UVSwitchProp340_g20197 , UV0340_g20197 , UV1340_g20197 , UV2340_g20197 , UV3340_g20197 );
			float4 tex2DNode296_g20197 = SAMPLE_TEXTURE2D( _RimMask, sampler_trilinear_repeat, ( ( _RimMask_ST.xy * localUVSwitch340_g20197 ) + _RimMask_ST.zw ) );
			float ifLocalVar104_g20197 = 0;
			if( 1.0 > _RimLightMaskinv )
				ifLocalVar104_g20197 = tex2DNode296_g20197.g;
			else if( 1.0 == _RimLightMaskinv )
				ifLocalVar104_g20197 = ( 1.0 - tex2DNode296_g20197.g );
			float FinalMask165_g20197 = ifLocalVar104_g20197;
			float ifLocalVar181_g20197 = 0;
			if( 1.0 > DirectionToggle135_g20197 )
				ifLocalVar181_g20197 = RimShape196_g20197;
			else if( 1.0 == DirectionToggle135_g20197 )
				ifLocalVar181_g20197 = Fresnel171_g20197;
			float3 indirectNormal184_g20197 = WorldNormals127_g20197;
			Unity_GlossyEnvironmentData g184_g20197 = UnityGlossyEnvironmentSetup( _RimSpecLightsmoothness, data.worldViewDir, indirectNormal184_g20197, float3(0,0,0));
			float3 indirectSpecular184_g20197 = UnityGI_IndirectSpecular( data, AmbientOcclusion9664, indirectNormal184_g20197, g184_g20197 );
			float3 ifLocalVar203_g20197 = 0;
			if( 1.0 == _RimSpecToggle )
				ifLocalVar203_g20197 = ( saturate( ifLocalVar181_g20197 ) * indirectSpecular184_g20197 );
			float3 temp_output_189_0_g20197 = ( ( ( PreClampFinalLight9649 * saturate( ifLocalVar274_g20197 ) ) * temp_output_35_0_g20197 * (_RimColor).rgb * FinalMask165_g20197 ) + ( ifLocalVar203_g20197 * temp_output_35_0_g20197 * FinalMask165_g20197 * _RimOpacity ) );
			float3 switchResult252_g20197 = (((i.ASEVFace>0)?(temp_output_189_0_g20197):(float3( 0,0,0 ))));
			float3 switchResult253_g20197 = (((i.ASEVFace>0)?(float3( 0,0,0 )):(temp_output_189_0_g20197)));
			float3 ifLocalVar251_g20197 = 0;
			if( 1.0 > _RimFaceCulling )
				ifLocalVar251_g20197 = temp_output_189_0_g20197;
			else if( 1.0 == _RimFaceCulling )
				ifLocalVar251_g20197 = switchResult252_g20197;
			else if( 1.0 < _RimFaceCulling )
				ifLocalVar251_g20197 = switchResult253_g20197;
			float3 ifLocalVar9759 = 0;
			if( 1.0 == _RimToggle )
				ifLocalVar9759 = ifLocalVar251_g20197;
			float3 rimlight9802 = ( ifLocalVar9759 * ( _RimToggle * ToggleAdvanced9452 ) );
			float3 uvs_Flipbook = i.uv_texcoord;
			uvs_Flipbook.xy = i.uv_texcoord.xy * _Flipbook_ST.xy + _Flipbook_ST.zw;
			float cos16_g20199 = cos( ( _RotateFlipbook * UNITY_PI ) );
			float sin16_g20199 = sin( ( _RotateFlipbook * UNITY_PI ) );
			float2 rotator16_g20199 = mul( uvs_Flipbook.xy - float2( 0.5,0.5 ) , float2x2( cos16_g20199 , -sin16_g20199 , sin16_g20199 , cos16_g20199 )) + float2( 0.5,0.5 );
			float2 _Vector3 = float2(0,0);
			float2 temp_output_6_0_g20199 = ( 1.0 - float2( 1,1 ) );
			float2 temp_output_7_0_g20199 = ( 2.0 + float2( 0,0 ) );
			float2 _Vector2 = float2(1,1);
			float2 temp_output_19_0_g20199 = (_Vector3 + (rotator16_g20199 - ( _Vector3 + ( temp_output_6_0_g20199 / temp_output_7_0_g20199 ) )) * (_Vector2 - _Vector3) / (( _Vector2 - ( temp_output_6_0_g20199 / temp_output_7_0_g20199 ) ) - ( _Vector3 + ( temp_output_6_0_g20199 / temp_output_7_0_g20199 ) )));
			float temp_output_4_0_g20201 = (float)_Columns;
			float temp_output_5_0_g20201 = (float)_Rows;
			float2 appendResult7_g20201 = (float2(temp_output_4_0_g20201 , temp_output_5_0_g20201));
			float totalFrames39_g20201 = ( temp_output_4_0_g20201 * temp_output_5_0_g20201 );
			float2 appendResult8_g20201 = (float2(totalFrames39_g20201 , temp_output_5_0_g20201));
			float mulTime26_g20199 = _Time.y * (float)_Speed;
			float clampResult42_g20201 = clamp( 0.0 , 0.0001 , ( totalFrames39_g20201 - 1.0 ) );
			float temp_output_35_0_g20201 = frac( ( ( fmod( mulTime26_g20199 , (float)(float)_MaxFrames ) + clampResult42_g20201 ) / totalFrames39_g20201 ) );
			float2 appendResult29_g20201 = (float2(temp_output_35_0_g20201 , ( 1.0 - temp_output_35_0_g20201 )));
			float2 temp_output_15_0_g20201 = ( ( temp_output_19_0_g20199 / appendResult7_g20201 ) + ( floor( ( appendResult8_g20201 * appendResult29_g20201 ) ) / appendResult7_g20201 ) );
			float2 break20_g20199 = temp_output_19_0_g20199;
			float A1_g20200 = floor( max( break20_g20199.x , break20_g20199.y ) );
			float B1_g20200 = floor( ( 1.0 - min( break20_g20199.x , break20_g20199.y ) ) );
			float localASEOr1_g20200 = ASEOr( A1_g20200 , B1_g20200 );
			float3 PreFinalLight9638 = ( temp_output_1997_0_g20185 + temp_output_782_0_g20185 );
			float3 lerpResult43_g20199 = lerp( PreFinalLight9638 , FinalLight9634 , _FlipbookTint);
			float3 ifLocalVar9987 = 0;
			if( _FlipbookToggle == 1.0 )
				ifLocalVar9987 = ( ( (SAMPLE_TEXTURE2D( _Flipbook, sampler_Flipbook, temp_output_15_0_g20201 )).rgb * ( 1.0 - localASEOr1_g20200 ) ) * (_FlipbookColor).rgb * _FlipbookColor.a * lerpResult43_g20199 );
			float3 Flipbook9810 = ( ifLocalVar9987 * ( _FlipbookToggle * ToggleAdvanced9452 ) );
			float temp_output_142_0_g20202 = GrayscaledLight9594;
			float3 WorldNormals72_g20202 = worldnormals9552;
			float3 temp_cast_48 = (1.0).xxx;
			float UVSwitchProp449_g20202 = _SSSThicknessMapUVSwitch;
			float2 UV0449_g20202 = i.uv_texcoord.xy;
			float2 UV1449_g20202 = i.uv2_texcoord2;
			float2 UV2449_g20202 = i.uv3_texcoord3;
			float2 UV3449_g20202 = i.uv4_texcoord4;
			float2 localUVSwitch449_g20202 = UVSwitch( UVSwitchProp449_g20202 , UV0449_g20202 , UV1449_g20202 , UV2449_g20202 , UV3449_g20202 );
			float3 temp_output_349_0_g20202 = (SAMPLE_TEXTURE2D( _SSSThicknessMap, sampler_trilinear_repeat, ( ( _SSSThicknessMap_ST.xy * localUVSwitch449_g20202 ) + _SSSThicknessMap_ST.zw ) )).rgb;
			float3 ifLocalVar52_g20202 = 0;
			if( 1.0 > _SSSThicknessinv )
				ifLocalVar52_g20202 = temp_output_349_0_g20202;
			else if( 1.0 == _SSSThicknessinv )
				ifLocalVar52_g20202 = ( 1.0 - temp_output_349_0_g20202 );
			float3 ifLocalVar426_g20202 = 0;
			if( 1.0 > _SSSMapMode )
				ifLocalVar426_g20202 = temp_cast_48;
			else if( 1.0 == _SSSMapMode )
				ifLocalVar426_g20202 = ifLocalVar52_g20202;
			float3 ThicknessMapMod432_g20202 = ifLocalVar426_g20202;
			float3 break435_g20202 = ThicknessMapMod432_g20202;
			float SubsurfaceDistortionModifier73_g20202 = ( _SubsurfaceDistortionModifier * break435_g20202.z );
			float dotResult9_g20202 = dot( -( ase_worldlightDir + ( WorldNormals72_g20202 * SubsurfaceDistortionModifier73_g20202 ) ) , ase_worldViewDir );
			float SSSPower74_g20202 = ( _SSSPower * break435_g20202.y );
			float SSSIntensity75_g20202 = ( _SSSScale * break435_g20202.x );
			float temp_output_428_0_g20202 = ( saturate( pow( saturate( dotResult9_g20202 ) , SSSPower74_g20202 ) ) * SSSIntensity75_g20202 );
			float3 temp_cast_49 = (temp_output_428_0_g20202).xxx;
			float3 MainTex76_g20202 = MainTexSaturate9595;
			float SSSTint77_g20202 = _SSSTint;
			float3 lerpResult40_g20202 = lerp( temp_cast_49 , ( temp_output_428_0_g20202 * MainTex76_g20202 ) , SSSTint77_g20202);
			#ifdef UNITY_PASS_FORWARDADD
				float staticSwitch248_g20202 = ase_lightAtten;
			#else
				float staticSwitch248_g20202 = 0.0;
			#endif
			float3 TangentNormals2171_g20185 = normals9591;
			float3 temp_cast_50 = (ase_lightAtten).xxx;
			float dotResult2167_g20185 = dot( TangentNormals2171_g20185 , temp_cast_50 );
			float SSSTangentNormalAtten2169_g20185 = ( ( dotResult2167_g20185 * ( NdLHalfingControl704_g20185 + 0.5 ) ) + ( ( ( ( 1.0 - NdLHalfingControl704_g20185 ) * 0.5 ) - 0.25 ) + ( RampOffset167_g20185 - 0.5 ) ) );
			float2 temp_cast_51 = (SSSTangentNormalAtten2169_g20185).xx;
			float3 SSSToonRampTexATTEN2175_g20185 = (SAMPLE_TEXTURE2D( _ToonRamp, sampler_linear_clamp, temp_cast_51 )).rgb;
			#ifdef DIRECTIONAL
				float3 staticSwitch2152_g20185 = SSSToonRampTexATTEN2175_g20185;
			#else
				float3 staticSwitch2152_g20185 = _egg;
			#endif
			float3 SSSDirectionalAttenuationRamp2190_g20185 = staticSwitch2152_g20185;
			half3 linearRgb2154_g20185 = SSSDirectionalAttenuationRamp2190_g20185;
			half localgetLinearRgbToLuminance2154_g20185 = getLinearRgbToLuminance( linearRgb2154_g20185 );
			#ifdef DIRECTIONAL
				float staticSwitch2192_g20185 = SSSTangentNormalAtten2169_g20185;
			#else
				float staticSwitch2192_g20185 = 1.0;
			#endif
			float SSSDirectionalAttenuationSteps2194_g20185 = staticSwitch2192_g20185;
			float SSSShadowCasterSteps2195_g20185 = saturate( ( floor( ( SSSDirectionalAttenuationSteps2194_g20185 * Steps30_g20185 ) ) / ( Steps30_g20185 - 1 ) ) );
			float ifLocalVar2197_g20185 = 0;
			UNITY_BRANCH 
			if( 1.0 > ToggleSteps66_g20185 )
				ifLocalVar2197_g20185 = localgetLinearRgbToLuminance2154_g20185;
			else if( 1.0 == ToggleSteps66_g20185 )
				ifLocalVar2197_g20185 = SSSShadowCasterSteps2195_g20185;
			float SSSAtten10594 = ifLocalVar2197_g20185;
			#ifdef DIRECTIONAL
				float staticSwitch120_g20202 = SSSAtten10594;
			#else
				float staticSwitch120_g20202 = staticSwitch248_g20202;
			#endif
			float3 temp_output_56_0_g20202 = ( ase_lightColor.rgb * staticSwitch120_g20202 );
			float3 localambientDir58_g20202 = ambientDir();
			float dotResult92_g20202 = dot( -( localambientDir58_g20202 + ( WorldNormals72_g20202 * SubsurfaceDistortionModifier73_g20202 ) ) , ase_worldViewDir );
			float temp_output_427_0_g20202 = ( saturate( pow( saturate( dotResult92_g20202 ) , SSSPower74_g20202 ) ) * SSSIntensity75_g20202 );
			float3 temp_cast_52 = (temp_output_427_0_g20202).xxx;
			float3 lerpResult98_g20202 = lerp( temp_cast_52 , ( temp_output_427_0_g20202 * MainTex76_g20202 ) , SSSTint77_g20202);
			half3 localAmbient319_g20202 = Ambient();
			float3 ifLocalVar351_g20202 = 0;
			if( temp_output_142_0_g20202 > 0.0 )
				ifLocalVar351_g20202 = ( lerpResult40_g20202 * temp_output_56_0_g20202 );
			else if( temp_output_142_0_g20202 == 0.0 )
				ifLocalVar351_g20202 = ( lerpResult98_g20202 * localAmbient319_g20202 );
			float3 temp_cast_53 = (1.0).xxx;
			float3 ifLocalVar424_g20202 = 0;
			if( 1.0 > _SSSMapMode )
				ifLocalVar424_g20202 = ifLocalVar52_g20202;
			else if( 1.0 == _SSSMapMode )
				ifLocalVar424_g20202 = temp_cast_53;
			float3 ThicknessMapColor431_g20202 = ifLocalVar424_g20202;
			half3 linearRgb390_g20202 = ase_lightColor.rgb;
			half localgetLinearRgbToLuminance390_g20202 = getLinearRgbToLuminance( linearRgb390_g20202 );
			half3 linearRgb391_g20202 = localAmbient319_g20202;
			half localgetLinearRgbToLuminance391_g20202 = getLinearRgbToLuminance( linearRgb391_g20202 );
			float3 ifLocalVar388_g20202 = 0;
			if( temp_output_142_0_g20202 > 0.0 )
				ifLocalVar388_g20202 = ( lerpResult40_g20202 * staticSwitch120_g20202 * localgetLinearRgbToLuminance390_g20202 );
			else if( temp_output_142_0_g20202 == 0.0 )
				ifLocalVar388_g20202 = ( lerpResult98_g20202 * localgetLinearRgbToLuminance391_g20202 );
			float3 SSSColor84_g20202 = (_SSSColor).rgb;
			float3 ifLocalVar389_g20202 = 0;
			if( temp_output_142_0_g20202 > 0.0 )
				ifLocalVar389_g20202 = ( lerpResult40_g20202 * temp_output_56_0_g20202 );
			else if( temp_output_142_0_g20202 == 0.0 )
				ifLocalVar389_g20202 = ( lerpResult98_g20202 * localAmbient319_g20202 );
			float3 ifLocalVar9740 = 0;
			if( 1.0 > _SSSSetting )
				ifLocalVar9740 = ( ifLocalVar351_g20202 * ThicknessMapColor431_g20202 );
			else if( 1.0 == _SSSSetting )
				ifLocalVar9740 = ( ifLocalVar388_g20202 * ThicknessMapColor431_g20202 * SSSColor84_g20202 );
			else if( 1.0 < _SSSSetting )
				ifLocalVar9740 = ( ifLocalVar389_g20202 * ThicknessMapColor431_g20202 * SSSColor84_g20202 );
			float3 SSS9765 = ifLocalVar9740;
			float3 temp_output_9830_0 = ( ( SpecularHighlight9763 * ( ToggleAdvanced9452 * _SpecularToggle ) ) + CubemapReflections9801 + Matcap9792 + rimlight9802 + Flipbook9810 + ( SSS9765 * ( ToggleAdvanced9452 * _SSSToggle ) ) );
			float3 ifLocalVar9853 = 0;
			if( 1.0 == _RenderingMode )
				ifLocalVar9853 = ( temp_output_9830_0 * AlphaChannelMul9750 );
			else
				ifLocalVar9853 = temp_output_9830_0;
			float UVSwitchProp10537 = _EmissionUVSwitch;
			float2 UV010537 = i.uv_texcoord.xy;
			float2 UV110537 = i.uv2_texcoord2;
			float2 UV210537 = i.uv3_texcoord3;
			float2 UV310537 = i.uv4_texcoord4;
			float2 localUVSwitch10537 = UVSwitch( UVSwitchProp10537 , UV010537 , UV110537 , UV210537 , UV310537 );
			float2 EmissionUVSwitch10543 = ( ( _Emission_ST.xy * localUVSwitch10537 ) + _Emission_ST.zw );
			float3 lerpResult9794 = lerp( float3( 1,1,1 ) , MainTexSaturate9595 , _EmissionTint);
			float3 lerpResult9839 = lerp( ( (SAMPLE_TEXTURE2D( _Emission, sampler_MainTex, EmissionUVSwitch10543 )).rgb * (_EmissionColor).rgb * lerpResult9794 ) , float3( 0,0,0 ) , saturate( ( _EmissionLightscale * LuminancedLight9749 ) ));
			#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch10517 = float3( 0,0,0 );
			#else
				float3 staticSwitch10517 = lerpResult9839;
			#endif
			float3 BasicEmission9855 = staticSwitch10517;
			float3 ase_vertex3Pos = mul( unity_WorldToObject, float4( i.worldPos , 1 ) );
			float4 transform698_g20211 = mul(unity_ObjectToWorld,float4( ase_vertex3Pos , 0.0 ));
			float Space701_g20211 = transform698_g20211.y;
			float ifLocalVar717_g20211 = 0;
			if( _ToggleMaterializeDirInv > 0.0 )
				ifLocalVar717_g20211 = -Space701_g20211;
			else if( _ToggleMaterializeDirInv == 0.0 )
				ifLocalVar717_g20211 = Space701_g20211;
			float3 ase_parentObjectScale = (1.0/float3( length( unity_WorldToObject[ 0 ].xyz ), length( unity_WorldToObject[ 1 ].xyz ), length( unity_WorldToObject[ 2 ].xyz ) ));
			float ObjectScale711_g20211 = max( ase_parentObjectScale.y , 1.0 );
			float temp_output_739_0_g20211 = ( ifLocalVar717_g20211 / ObjectScale711_g20211 );
			float DissolveDensity732_g20211 = exp2( _DissolveDensity );
			float temp_output_753_0_g20211 = ( ( temp_output_739_0_g20211 + (-1.0 + (_MaterializeR - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g20211 );
			float UVSwitchProp991_g20211 = _DissolvePatternUVSwitch;
			float2 UV0991_g20211 = i.uv_texcoord.xy;
			float2 UV1991_g20211 = i.uv2_texcoord2;
			float2 UV2991_g20211 = i.uv3_texcoord3;
			float2 UV3991_g20211 = i.uv4_texcoord4;
			float2 localUVSwitch991_g20211 = UVSwitch( UVSwitchProp991_g20211 , UV0991_g20211 , UV1991_g20211 , UV2991_g20211 , UV3991_g20211 );
			float2 DissolvePatternUVSwitch999_g20211 = ( ( _DissolvePattern_ST.xy * localUVSwitch991_g20211 ) + _DissolvePattern_ST.zw );
			float4 tex2DNode794_g20211 = SAMPLE_TEXTURE2D( _DissolvePattern, sampler_trilinear_repeat, DissolvePatternUVSwitch999_g20211 );
			float DissolvePattern801_g20211 = max( max( tex2DNode794_g20211.r , tex2DNode794_g20211.g ) , tex2DNode794_g20211.b );
			float4 ifLocalVar752_g20211 = 0;
			if( 1.0 > _MaterializeVertexColor )
				ifLocalVar752_g20211 = SAMPLE_TEXTURE2D( _MaterializeTex, sampler_point_clamp, i.uv_texcoord.xy );
			else if( 1.0 == _MaterializeVertexColor )
				ifLocalVar752_g20211 = i.vertexColor;
			float temp_output_708_0_g20211 = ( _MaterializeColorLayerR / 100.0 );
			float temp_output_714_0_g20211 = ( temp_output_708_0_g20211 - 0.005 );
			float temp_output_716_0_g20211 = ( temp_output_708_0_g20211 + 0.005 );
			float2 appendResult727_g20211 = (float2(temp_output_714_0_g20211 , temp_output_716_0_g20211));
			float2 appendResult722_g20211 = (float2(-0.005 , temp_output_716_0_g20211));
			float2 appendResult720_g20211 = (float2(temp_output_714_0_g20211 , 1.005));
			float2 ifLocalVar734_g20211 = 0;
			if( 1.0 > _MaterializeLayerModeR )
				ifLocalVar734_g20211 = appendResult727_g20211;
			else if( 1.0 == _MaterializeLayerModeR )
				ifLocalVar734_g20211 = appendResult722_g20211;
			else if( 1.0 < _MaterializeLayerModeR )
				ifLocalVar734_g20211 = appendResult720_g20211;
			float2 break751_g20211 = ifLocalVar734_g20211;
			float temp_output_927_0_g20211 = ( _MaterializeColorLayerG / 100.0 );
			float temp_output_925_0_g20211 = ( temp_output_927_0_g20211 - 0.005 );
			float temp_output_922_0_g20211 = ( temp_output_927_0_g20211 + 0.005 );
			float2 appendResult919_g20211 = (float2(temp_output_925_0_g20211 , temp_output_922_0_g20211));
			float2 appendResult918_g20211 = (float2(-0.005 , temp_output_922_0_g20211));
			float2 appendResult916_g20211 = (float2(temp_output_925_0_g20211 , 1.005));
			float2 ifLocalVar921_g20211 = 0;
			if( 1.0 > _MaterializeLayerModeG )
				ifLocalVar921_g20211 = appendResult919_g20211;
			else if( 1.0 == _MaterializeLayerModeG )
				ifLocalVar921_g20211 = appendResult918_g20211;
			else if( 1.0 < _MaterializeLayerModeG )
				ifLocalVar921_g20211 = appendResult916_g20211;
			float2 break920_g20211 = ifLocalVar921_g20211;
			float temp_output_941_0_g20211 = ( _MaterializeColorLayerB / 100.0 );
			float temp_output_939_0_g20211 = ( temp_output_941_0_g20211 - 0.005 );
			float temp_output_936_0_g20211 = ( temp_output_941_0_g20211 + 0.005 );
			float2 appendResult933_g20211 = (float2(temp_output_939_0_g20211 , temp_output_936_0_g20211));
			float2 appendResult932_g20211 = (float2(-0.005 , temp_output_936_0_g20211));
			float2 appendResult930_g20211 = (float2(temp_output_939_0_g20211 , 1.005));
			float2 ifLocalVar935_g20211 = 0;
			if( 1.0 > _MaterializeLayerModeB )
				ifLocalVar935_g20211 = appendResult933_g20211;
			else if( 1.0 == _MaterializeLayerModeB )
				ifLocalVar935_g20211 = appendResult932_g20211;
			else if( 1.0 < _MaterializeLayerModeB )
				ifLocalVar935_g20211 = appendResult930_g20211;
			float2 break934_g20211 = ifLocalVar935_g20211;
			float temp_output_955_0_g20211 = ( _MaterializeColorLayerA / 100.0 );
			float temp_output_953_0_g20211 = ( temp_output_955_0_g20211 - 0.005 );
			float temp_output_950_0_g20211 = ( temp_output_955_0_g20211 + 0.005 );
			float2 appendResult947_g20211 = (float2(temp_output_953_0_g20211 , temp_output_950_0_g20211));
			float2 appendResult946_g20211 = (float2(-0.005 , temp_output_950_0_g20211));
			float2 appendResult944_g20211 = (float2(temp_output_953_0_g20211 , 1.005));
			float2 ifLocalVar949_g20211 = 0;
			if( 1.0 > _MaterializeLayerModeA )
				ifLocalVar949_g20211 = appendResult947_g20211;
			else if( 1.0 == _MaterializeLayerModeA )
				ifLocalVar949_g20211 = appendResult946_g20211;
			else if( 1.0 < _MaterializeLayerModeA )
				ifLocalVar949_g20211 = appendResult944_g20211;
			float2 break948_g20211 = ifLocalVar949_g20211;
			float4 appendResult956_g20211 = (float4(break751_g20211.x , break920_g20211.x , break934_g20211.x , break948_g20211.x));
			float4 appendResult957_g20211 = (float4(break751_g20211.y , break920_g20211.y , break934_g20211.y , break948_g20211.y));
			float4 MaterialzeLayers912_g20211 = (( ifLocalVar752_g20211 >= appendResult956_g20211 && ifLocalVar752_g20211 <= appendResult957_g20211 ) ? ifLocalVar752_g20211 :  float4( 0,0,0,0 ) );
			float4 break768_g20211 = ceil( MaterialzeLayers912_g20211 );
			float temp_output_755_0_g20211 = ( ( temp_output_739_0_g20211 + (-1.0 + (_MaterializeG - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g20211 );
			float temp_output_765_0_g20211 = ( ( temp_output_739_0_g20211 + (-1.0 + (_MaterializeB - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g20211 );
			float temp_output_779_0_g20211 = ( ( temp_output_739_0_g20211 + (-1.0 + (_MaterializeA - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g20211 );
			float ifLocalVar761_g20211 = 0;
			if( _ToggleDissolveDirInv > 0.0 )
				ifLocalVar761_g20211 = -Space701_g20211;
			else if( _ToggleDissolveDirInv == 0.0 )
				ifLocalVar761_g20211 = Space701_g20211;
			float temp_output_784_0_g20211 = ( ( ( ifLocalVar761_g20211 / ObjectScale711_g20211 ) + (-1.0 + (_DissolveModifier - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g20211 );
			float2 uv_DissolveMask = i.uv_texcoord * _DissolveMask_ST.xy + _DissolveMask_ST.zw;
			float4 tex2DNode764_g20211 = SAMPLE_TEXTURE2D( _DissolveMask, sampler_trilinear_repeat, uv_DissolveMask );
			float A1_g20213 = i.vertexColor.r;
			float B1_g20213 = i.vertexColor.g;
			float localASEAnd1_g20213 = ASEAnd( A1_g20213 , B1_g20213 );
			float A1_g20212 = localASEAnd1_g20213;
			float B1_g20212 = i.vertexColor.b;
			float localASEAnd1_g20212 = ASEAnd( A1_g20212 , B1_g20212 );
			float ifLocalVar788_g20211 = 0;
			if( 1.0 > _MaterializeVertexColor )
				ifLocalVar788_g20211 = max( max( tex2DNode764_g20211.r , tex2DNode764_g20211.g ) , tex2DNode764_g20211.b );
			else if( 1.0 == _MaterializeVertexColor )
				ifLocalVar788_g20211 = localASEAnd1_g20212;
			float lerpResult795_g20211 = lerp( saturate( temp_output_784_0_g20211 ) , 1.0 , ifLocalVar788_g20211);
			clip( 1.0 - ( ( 1.0 - max( max( max( max( ( saturate( ( temp_output_753_0_g20211 + DissolvePattern801_g20211 ) ) * break768_g20211.r ) , ( saturate( ( temp_output_755_0_g20211 + DissolvePattern801_g20211 ) ) * break768_g20211.g ) ) , ( saturate( ( temp_output_765_0_g20211 + DissolvePattern801_g20211 ) ) * break768_g20211.b ) ) , ( saturate( ( temp_output_779_0_g20211 + DissolvePattern801_g20211 ) ) * break768_g20211.a ) ) , lerpResult795_g20211 ) ) + 0.005 ));
			float ifLocalVar806_g20211 = 0;
			if( 1.0 > _DissolveModifier )
				ifLocalVar806_g20211 = 1.0;
			else if( 1.0 == _DissolveModifier )
				ifLocalVar806_g20211 = 1.0;
			c.rgb = ( ( lerpResult10008 + ifLocalVar9853 + BasicEmission9855 ) * ifLocalVar806_g20211 );
			c.a = AlphaChannelMul9750;
			clip( ifLocalVar44_g20214 - _MaskClipValue );
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
			float mulTime7_g20210 = _Time.y * _NoiseSpeed;
			float UVSwitchProp79_g20210 = _NoiseTextureUVSwitch;
			float2 UV079_g20210 = i.uv_texcoord.xy;
			float2 UV179_g20210 = i.uv2_texcoord2;
			float2 UV279_g20210 = i.uv3_texcoord3;
			float2 UV379_g20210 = i.uv4_texcoord4;
			float2 localUVSwitch79_g20210 = UVSwitch( UVSwitchProp79_g20210 , UV079_g20210 , UV179_g20210 , UV279_g20210 , UV379_g20210 );
			float2 NoiseTextureUVSwitch90_g20210 = ( ( _NoiseTexture_ST.xy * localUVSwitch79_g20210 ) + _NoiseTexture_ST.zw );
			float2 panner17_g20210 = ( mulTime7_g20210 * _NoiseVectorXY + NoiseTextureUVSwitch90_g20210);
			float mulTime4_g20210 = _Time.y * _NoiseSpeed;
			float2 panner12_g20210 = ( ( mulTime4_g20210 * 2.179 ) * _NoiseVectorXY + ( 1.0 - NoiseTextureUVSwitch90_g20210 ));
			float mulTime16_g20210 = _Time.y * _Emiossionscrollspeed;
			float UVSwitchProp80_g20210 = _EmissionscrollUVSwitch;
			float2 UV080_g20210 = i.uv_texcoord.xy;
			float2 UV180_g20210 = i.uv2_texcoord2;
			float2 UV280_g20210 = i.uv3_texcoord3;
			float2 UV380_g20210 = i.uv4_texcoord4;
			float2 localUVSwitch80_g20210 = UVSwitch( UVSwitchProp80_g20210 , UV080_g20210 , UV180_g20210 , UV280_g20210 , UV380_g20210 );
			float2 EmissionscrollUVSwitch88_g20210 = ( ( _Emissionscroll_ST.xy * localUVSwitch80_g20210 ) + _Emissionscroll_ST.zw );
			float2 panner21_g20210 = ( mulTime16_g20210 * _VectorXY + EmissionscrollUVSwitch88_g20210);
			float4 Emissionsscrollcolor9615 = _EmissionscrollColor;
			float UVSwitchProp10533 = _EmissionScrollMaskUVSwitch;
			float2 UV010533 = i.uv_texcoord.xy;
			float2 UV110533 = i.uv2_texcoord2;
			float2 UV210533 = i.uv3_texcoord3;
			float2 UV310533 = i.uv4_texcoord4;
			float2 localUVSwitch10533 = UVSwitch( UVSwitchProp10533 , UV010533 , UV110533 , UV210533 , UV310533 );
			float2 EmissionScrollMaskUVSwitch10542 = ( ( _EmissionScrollMask_ST.xy * localUVSwitch10533 ) + _EmissionScrollMask_ST.zw );
			float4 tex2DNode9741 = SAMPLE_TEXTURE2D( _EmissionScrollMask, sampler_MainTex, EmissionScrollMaskUVSwitch10542 );
			float local_AudioTextureDimensions287_g20204 = ( 0.0 );
			float w287_g20204 = 0;
			float h287_g20204 = 0;
			{
			#ifndef SHADER_TARGET_SURFACE_ANALYSIS
			_AudioTexture.GetDimensions(w287_g20204, h287_g20204);
			#endif
			}
			float temp_output_840_0_g20204 = ( w287_g20204 + _AudioLinkSwitch );
			float A1_g20205 = (( temp_output_840_0_g20204 >= 33.0 && temp_output_840_0_g20204 <= 35.0 ) ? 1.0 :  0.0 );
			float B1_g20205 = (( temp_output_840_0_g20204 >= 129.0 && temp_output_840_0_g20204 <= 131.0 ) ? 1.0 :  0.0 );
			float localASEOr1_g20205 = ASEOr( A1_g20205 , B1_g20205 );
			float AudioTextureCheck808_g20204 = localASEOr1_g20205;
			float mulTime5_g20204 = _Time.y * _ESSpeed;
			float locallongIF931_g20204 = ( 0.0 );
			float2 Out931_g20204 = float2( 0,0 );
			float3 _DefaultTangentVector = float3(0,0,1);
			float UVSwitchProp88_g1 = _NormalMapUVSwitch;
			float2 UV088_g1 = i.uv_texcoord.xy;
			float2 UV188_g1 = i.uv2_texcoord2;
			float2 UV288_g1 = i.uv3_texcoord3;
			float2 UV388_g1 = i.uv4_texcoord4;
			float2 localUVSwitch88_g1 = UVSwitch( UVSwitchProp88_g1 , UV088_g1 , UV188_g1 , UV288_g1 , UV388_g1 );
			float UVSwitchProp107_g1 = _SecondaryNormalMaskUVSwitch;
			float2 UV0107_g1 = i.uv_texcoord.xy;
			float2 UV1107_g1 = i.uv2_texcoord2;
			float2 UV2107_g1 = i.uv3_texcoord3;
			float2 UV3107_g1 = i.uv4_texcoord4;
			float2 localUVSwitch107_g1 = UVSwitch( UVSwitchProp107_g1 , UV0107_g1 , UV1107_g1 , UV2107_g1 , UV3107_g1 );
			float4 tex2DNode65_g1 = SAMPLE_TEXTURE2D( _SecondaryNormalMask, sampler_trilinear_repeat, ( ( _SecondaryNormalMask_ST.xy * localUVSwitch107_g1 ) + _SecondaryNormalMask_ST.zw ) );
			float3 lerpResult63_g1 = lerp( _DefaultTangentVector , UnpackScaleNormal( SAMPLE_TEXTURE2D( _NormalMap, sampler_trilinear_repeat, ( ( _NormalMap_ST.xy * localUVSwitch88_g1 ) + _NormalMap_ST.zw ) ), _NormalScale ) , tex2DNode65_g1.a);
			float UVSwitchProp98_g1 = _SecondaryNormalUVSwitch;
			float2 UV098_g1 = i.uv_texcoord.xy;
			float2 UV198_g1 = i.uv2_texcoord2;
			float2 UV298_g1 = i.uv3_texcoord3;
			float2 UV398_g1 = i.uv4_texcoord4;
			float2 localUVSwitch98_g1 = UVSwitch( UVSwitchProp98_g1 , UV098_g1 , UV198_g1 , UV298_g1 , UV398_g1 );
			float3 lerpResult58_g1 = lerp( _DefaultTangentVector , UnpackScaleNormal( SAMPLE_TEXTURE2D( _SecondaryNormal, sampler_trilinear_repeat, ( ( _SecondaryNormal_ST.xy * localUVSwitch98_g1 ) + _SecondaryNormal_ST.zw ) ), _SecondaryNormalScale ) , tex2DNode65_g1.g);
			float3 temp_output_54_0_g1 = BlendNormals( lerpResult63_g1 , lerpResult58_g1 );
			float localOutlineSwitch127_g1 = ( 0.0 );
			float3 true127_g1 = temp_output_54_0_g1;
			float3 false127_g1 = -temp_output_54_0_g1;
			float3 Out0127_g1 = float3( 0,0,0 );
			{
			#ifdef FOROUTLINE
			Out0127_g1 = true127_g1; //Outline
			#else
			Out0127_g1 = false127_g1; //Not Outline
			#endif
			#define FOROUTLINE
			}
			float3 switchResult121_g1 = (((i.ASEVFace>0)?(temp_output_54_0_g1):(Out0127_g1)));
			float3 normalizeResult52_g1 = normalize( switchResult121_g1 );
			float3 normals9591 = normalizeResult52_g1;
			float3 ifLocalVar112_g20204 = 0;
			if( 1.0 > _IgnoreNormalsESv2 )
				ifLocalVar112_g20204 = normals9591;
			else if( 1.0 == _IgnoreNormalsESv2 )
				ifLocalVar112_g20204 = float3(0,0,0);
			float3 break437_g20204 = ifLocalVar112_g20204;
			float3 ase_worldNormal = WorldNormalVector( i, float3( 0, 0, 1 ) );
			float3 ase_vertexNormal = mul( unity_WorldToObject, float4( ase_worldNormal, 0 ) );
			ase_vertexNormal = normalize( ase_vertexNormal );
			float2 appendResult113_g20204 = (float2(( break437_g20204.x + ase_vertexNormal.x ) , ( break437_g20204.y + ase_vertexNormal.y )));
			float2 VertexNormal244_g20204 = appendResult113_g20204;
			float2 VertexNormal931_g20204 = VertexNormal244_g20204;
			float3 ase_worldPos = i.worldPos;
			float3 ase_worldViewDir = Unity_SafeNormalize( UnityWorldSpaceViewDir( ase_worldPos ) );
			float3 newWorldNormal50_g1 = (WorldNormalVector( i , temp_output_54_0_g1 ));
			float localOutlineSwitch128_g1 = ( 0.0 );
			float3 true128_g1 = newWorldNormal50_g1;
			float3 false128_g1 = -newWorldNormal50_g1;
			float3 Out0128_g1 = float3( 0,0,0 );
			{
			#ifdef FOROUTLINE
			Out0128_g1 = true128_g1; //Outline
			#else
			Out0128_g1 = false128_g1; //Not Outline
			#endif
			#define FOROUTLINE
			}
			float3 switchResult119_g1 = (((i.ASEVFace>0)?(newWorldNormal50_g1):(Out0128_g1)));
			float3 normalizeResult53_g1 = normalize( switchResult119_g1 );
			float3 worldnormals9552 = normalizeResult53_g1;
			float3 normalizeResult85_g20204 = normalize( ase_worldNormal );
			float3 ifLocalVar86_g20204 = 0;
			if( 1.0 > _IgnoreNormalsESv2 )
				ifLocalVar86_g20204 = worldnormals9552;
			else if( 1.0 == _IgnoreNormalsESv2 )
				ifLocalVar86_g20204 = normalizeResult85_g20204;
			float fresnelNdotV58_g20204 = dot( ifLocalVar86_g20204, ase_worldViewDir );
			float fresnelNode58_g20204 = ( 0.0 + 1.0 * pow( 1.0 - fresnelNdotV58_g20204, 5.0 ) );
			float FresnelCamera248_g20204 = fresnelNode58_g20204;
			float FresnelCamera931_g20204 = FresnelCamera248_g20204;
			float3 ase_vertex3Pos = mul( unity_WorldToObject, float4( i.worldPos , 1 ) );
			float4 transform187_g20204 = mul(unity_ObjectToWorld,float4( ase_vertex3Pos , 0.0 ));
			float2 appendResult209_g20204 = (float2(( transform187_g20204.x + break437_g20204.x ) , ( transform187_g20204.y + break437_g20204.y )));
			float2 VertextoWorldPos251_g20204 = appendResult209_g20204;
			float2 VertextoWorldPos931_g20204 = VertextoWorldPos251_g20204;
			float mulTime62_g20204 = _Time.y * _ESVoronoiSpeed;
			float time64_g20204 = mulTime62_g20204;
			float2 voronoiSmoothId64_g20204 = 0;
			float2 coords64_g20204 = VertextoWorldPos251_g20204 * _ESVoronoiScale;
			float2 id64_g20204 = 0;
			float2 uv64_g20204 = 0;
			float voroi64_g20204 = voronoi64_g20204( coords64_g20204, time64_g20204, id64_g20204, uv64_g20204, 0, voronoiSmoothId64_g20204 );
			float Voronoi255_g20204 = voroi64_g20204;
			float Voronoi931_g20204 = Voronoi255_g20204;
			float2 appendResult482_g20204 = (float2(( break437_g20204.x + i.uv_texcoord.xy.x ) , ( break437_g20204.y + i.uv_texcoord.xy.y )));
			float2 VertexUV481_g20204 = appendResult482_g20204;
			float2 VertexUV931_g20204 = VertexUV481_g20204;
			{
			if (_ESRenderMethod == 0)
				Out931_g20204 = VertexNormal931_g20204;
			else if (_ESRenderMethod == 1)
				Out931_g20204 = FresnelCamera931_g20204;
			else if (_ESRenderMethod == 2)
				Out931_g20204 = VertextoWorldPos931_g20204;
			else if (_ESRenderMethod == 3)
				Out931_g20204 = Voronoi931_g20204;
			else if (_ESRenderMethod == 4)
				Out931_g20204 = VertexUV931_g20204;
			}
			float dotResult6_g20204 = dot( Out931_g20204 , _ESCoordinates );
			float ifLocalVar728_g20204 = 0;
			if( 1.0 > AudioTextureCheck808_g20204 )
				ifLocalVar728_g20204 = _ESSize;
			else if( 1.0 == AudioTextureCheck808_g20204 )
				ifLocalVar728_g20204 = 1.0;
			float ifLocalVar732_g20204 = 0;
			if( 1.0 > AudioTextureCheck808_g20204 )
				ifLocalVar732_g20204 = _ESSharpness;
			float temp_output_18_0_g20204 = saturate( ( ( pow( ( 1.0 - ( frac( ( ( mulTime5_g20204 + _ESScrollOffset ) - dotResult6_g20204 ) ) / ifLocalVar728_g20204 ) ) , ( 1.0 - ifLocalVar732_g20204 ) ) + 1E-06 ) + _ESLevelOffset ) );
			float2 break742_g20204 = tex2DNode9741.rg;
			float ESMaskR738_g20204 = break742_g20204.x;
			int Band697_g20204 = (int)i.uv_texcoord.xy.y;
			float ifLocalVar846_g20204 = 0;
			if( 32.0 == w287_g20204 )
				ifLocalVar846_g20204 = 32.0;
			else if( 32.0 < w287_g20204 )
				ifLocalVar846_g20204 = _AudioLinkBandHistory;
			float VectorCalculation793_g20204 = temp_output_18_0_g20204;
			float temp_output_845_0_g20204 = ( ifLocalVar846_g20204 * VectorCalculation793_g20204 );
			float Delay697_g20204 = temp_output_845_0_g20204;
			float localAudioLinkLerp697_g20204 = AudioLinkLerp( Band697_g20204 , Delay697_g20204 );
			int Band702_g20204 = (int)( i.uv_texcoord.xy.y + 1.0 );
			float Delay702_g20204 = temp_output_845_0_g20204;
			float localAudioLinkLerp702_g20204 = AudioLinkLerp( Band702_g20204 , Delay702_g20204 );
			int Band706_g20204 = (int)( i.uv_texcoord.xy.y + 2.0 );
			float Delay706_g20204 = temp_output_845_0_g20204;
			float localAudioLinkLerp706_g20204 = AudioLinkLerp( Band706_g20204 , Delay706_g20204 );
			int Band710_g20204 = (int)( i.uv_texcoord.xy.y + 3.0 );
			float Delay710_g20204 = temp_output_845_0_g20204;
			float localAudioLinkLerp710_g20204 = AudioLinkLerp( Band710_g20204 , Delay710_g20204 );
			float AudioLinkV1V2Bands800_g20204 = ( ( ( localAudioLinkLerp697_g20204 * _AudioBandIntensity.x ) + ( localAudioLinkLerp702_g20204 * _AudioBandIntensity.y ) + ( localAudioLinkLerp706_g20204 * _AudioBandIntensity.z ) + ( localAudioLinkLerp710_g20204 * _AudioBandIntensity.w ) ) * ESMaskR738_g20204 );
			float2 appendResult608_g20204 = (float2(_WaveformCoordinates.x , _WaveformCoordinates.y));
			float2 appendResult609_g20204 = (float2(_WaveformCoordinates.z , _WaveformCoordinates.w));
			float2 uvs_TexCoord606_g20204 = i.uv_texcoord;
			uvs_TexCoord606_g20204.xy = i.uv_texcoord.xy * appendResult608_g20204 + appendResult609_g20204;
			float cos593_g20204 = cos( ( _WaveformRotation * UNITY_PI ) );
			float sin593_g20204 = sin( ( _WaveformRotation * UNITY_PI ) );
			float2 rotator593_g20204 = mul( uvs_TexCoord606_g20204.xy - float2( 0.5,0.5 ) , float2x2( cos593_g20204 , -sin593_g20204 , sin593_g20204 , cos593_g20204 )) + float2( 0.5,0.5 );
			float2 _Vec001a = float2(0,0);
			float2 temp_output_581_0_g20204 = ( 1.0 - float2( 1,1 ) );
			float2 temp_output_589_0_g20204 = ( 2.0 + float2( 0,0 ) );
			float2 _Vec111a = float2(1,1);
			float2 temp_output_587_0_g20204 = (_Vec001a + (rotator593_g20204 - ( _Vec001a + ( temp_output_581_0_g20204 / temp_output_589_0_g20204 ) )) * (_Vec111a - _Vec001a) / (( _Vec111a - ( temp_output_581_0_g20204 / temp_output_589_0_g20204 ) ) - ( _Vec001a + ( temp_output_581_0_g20204 / temp_output_589_0_g20204 ) )));
			float2 uv564_g20204 = temp_output_587_0_g20204;
			float thickness564_g20204 = _WaveformThickness;
			float2 localAudioLinkWaveformsample564_g20204 = AudioLinkWaveformsample( uv564_g20204 , thickness564_g20204 );
			float cos869_g20204 = cos( ( _WaveformRotation * UNITY_PI ) );
			float sin869_g20204 = sin( ( _WaveformRotation * UNITY_PI ) );
			float2 rotator869_g20204 = mul( uvs_TexCoord606_g20204.xy - float2( 0.5,0.5 ) , float2x2( cos869_g20204 , -sin869_g20204 , sin869_g20204 , cos869_g20204 )) + float2( 0.5,0.5 );
			float2 break905_g20204 = rotator869_g20204;
			float2 appendResult906_g20204 = (float2(break905_g20204.x , ( 1.0 - break905_g20204.y )));
			float2 _Vector2a = float2(0,0);
			float2 temp_output_866_0_g20204 = ( 1.0 - float2( 1,1 ) );
			float2 temp_output_855_0_g20204 = ( 2.0 + float2( 0,0 ) );
			float2 _Vector0a = float2(1,1);
			float2 temp_output_871_0_g20204 = (_Vector2a + (appendResult906_g20204 - ( _Vector2a + ( temp_output_866_0_g20204 / temp_output_855_0_g20204 ) )) * (_Vector0a - _Vector2a) / (( _Vector0a - ( temp_output_866_0_g20204 / temp_output_855_0_g20204 ) ) - ( _Vector2a + ( temp_output_866_0_g20204 / temp_output_855_0_g20204 ) )));
			float2 uv881_g20204 = temp_output_871_0_g20204;
			float thickness881_g20204 = _WaveformThickness;
			float2 localAudioLinkWaveformsample881_g20204 = AudioLinkWaveformsample( uv881_g20204 , thickness881_g20204 );
			float2 break874_g20204 = temp_output_871_0_g20204;
			float A1_g20208 = floor( max( break874_g20204.x , break874_g20204.y ) );
			float B1_g20208 = floor( ( 1.0 - min( break874_g20204.x , break874_g20204.y ) ) );
			float localASEOr1_g20208 = ASEOr( A1_g20208 , B1_g20208 );
			float2 uv922_g20204 = temp_output_587_0_g20204;
			float2 localAudioLinkWaveformsampleMirror922_g20204 = AudioLinkWaveformsampleMirror( uv922_g20204 );
			float ifLocalVar924_g20204 = 0;
			if( 1.0 > _AudioLinkWaveformMirrorToggle )
				ifLocalVar924_g20204 = localAudioLinkWaveformsample564_g20204.y;
			else if( 1.0 == _AudioLinkWaveformMirrorToggle )
				ifLocalVar924_g20204 = max( localAudioLinkWaveformsample564_g20204.y , ( localAudioLinkWaveformsample881_g20204.y * ( 1.0 - localASEOr1_g20208 ) ) );
			else if( 1.0 < _AudioLinkWaveformMirrorToggle )
				ifLocalVar924_g20204 = localAudioLinkWaveformsampleMirror922_g20204.y;
			float2 break571_g20204 = temp_output_587_0_g20204;
			float A1_g20207 = floor( max( break571_g20204.x , break571_g20204.y ) );
			float B1_g20207 = floor( ( 1.0 - min( break571_g20204.x , break571_g20204.y ) ) );
			float localASEOr1_g20207 = ASEOr( A1_g20207 , B1_g20207 );
			float4 break419_g20204 = _AudioLinkColor;
			float ESMaskG743_g20204 = break742_g20204.y;
			float AudioLinkV2Waveform801_g20204 = ( ( ifLocalVar924_g20204 * ( 1.0 - localASEOr1_g20207 ) ) * break419_g20204.a * ESMaskG743_g20204 );
			float ifLocalVar600_g20204 = 0;
			if( 2.0 > _AudioLinkSwitch )
				ifLocalVar600_g20204 = AudioLinkV1V2Bands800_g20204;
			else if( 2.0 == _AudioLinkSwitch )
				ifLocalVar600_g20204 = AudioLinkV2Waveform801_g20204;
			else if( 2.0 < _AudioLinkSwitch )
				ifLocalVar600_g20204 = ( AudioLinkV1V2Bands800_g20204 + AudioLinkV2Waveform801_g20204 );
			float mulTime301_g20204 = _Time.y * _AudioHueSpeed;
			float3 hsvTorgb3_g20206 = HSVToRGB( float3(mulTime301_g20204,1.0,1.0) );
			float3 ifLocalVar416_g20204 = 0;
			if( _AudioHueSpeed > 0.0 )
				ifLocalVar416_g20204 = ( hsvTorgb3_g20206 * max( max( break419_g20204.r , break419_g20204.g ) , break419_g20204.b ) );
			else if( _AudioHueSpeed == 0.0 )
				ifLocalVar416_g20204 = (_AudioLinkColor).rgb;
			float3 ifLocalVar289_g20204 = 0;
			if( 1.0 > AudioTextureCheck808_g20204 )
				ifLocalVar289_g20204 = ( temp_output_18_0_g20204 * (Emissionsscrollcolor9615).rgb * ESMaskR738_g20204 );
			else if( 1.0 == AudioTextureCheck808_g20204 )
				ifLocalVar289_g20204 = ( ifLocalVar600_g20204 * ifLocalVar416_g20204 );
			float UVSwitchProp10529 = _MainTexUVSwitch;
			float2 UV010529 = i.uv_texcoord.xy;
			float2 UV110529 = i.uv2_texcoord2;
			float2 UV210529 = i.uv3_texcoord3;
			float2 UV310529 = i.uv4_texcoord4;
			float2 localUVSwitch10529 = UVSwitch( UVSwitchProp10529 , UV010529 , UV110529 , UV210529 , UV310529 );
			float2 MainTexUVSwitch10544 = ( ( _MainTex_ST.xy * localUVSwitch10529 ) + _MainTex_ST.zw );
			float4 tex2DNode9554 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, MainTexUVSwitch10544 );
			float3 Texture18_g2 = tex2DNode9554.rgb;
			float grayscale5_g2 = (Texture18_g2.r + Texture18_g2.g + Texture18_g2.b) / 3;
			float UVSwitchProp257_g2 = _HueMaskUVSwitch;
			float2 UV0257_g2 = i.uv_texcoord.xy;
			float2 UV1257_g2 = i.uv2_texcoord2;
			float2 UV2257_g2 = i.uv3_texcoord3;
			float2 UV3257_g2 = i.uv4_texcoord4;
			float2 localUVSwitch257_g2 = UVSwitch( UVSwitchProp257_g2 , UV0257_g2 , UV1257_g2 , UV2257_g2 , UV3257_g2 );
			float2 temp_output_252_0_g2 = ( ( _HueMask_ST.xy * localUVSwitch257_g2 ) + _HueMask_ST.zw );
			float HueMaskG53_g2 = SAMPLE_TEXTURE2D( _HueMask, sampler_point_clamp, temp_output_252_0_g2 ).g;
			float ifLocalVar218_g2 = 0;
			if( 1.0 > _ToggleHueTexforSpeed )
				ifLocalVar218_g2 = 1.0;
			else if( 1.0 == _ToggleHueTexforSpeed )
				ifLocalVar218_g2 = HueMaskG53_g2;
			float mulTime2_g2 = _Time.y * ( _HueShiftSpeed * ifLocalVar218_g2 );
			float3 hsvTorgb3_g6469 = HSVToRGB( float3(( mulTime2_g2 + _HueShiftRandomizer ),1.0,1.0) );
			float3 ifLocalVar13_g2 = 0;
			if( ( _HueShiftSpeed + _HueShiftRandomizer ) > 0.0 )
				ifLocalVar13_g2 = ( grayscale5_g2 * hsvTorgb3_g6469 );
			else if( ( _HueShiftSpeed + _HueShiftRandomizer ) == 0.0 )
				ifLocalVar13_g2 = Texture18_g2;
			float HueMaskR52_g2 = SAMPLE_TEXTURE2D( _HueMask, sampler_trilinear_repeat, temp_output_252_0_g2 ).r;
			float ifLocalVar9_g2 = 0;
			if( 1.0 > _HueMaskinverter )
				ifLocalVar9_g2 = HueMaskR52_g2;
			else if( 1.0 == _HueMaskinverter )
				ifLocalVar9_g2 = ( 1.0 - HueMaskR52_g2 );
			float lerpResult15_g2 = lerp( 0.0 , ifLocalVar9_g2 , _HueShiftblend);
			float3 lerpResult16_g2 = lerp( Texture18_g2 , ifLocalVar13_g2 , lerpResult15_g2);
			clip( tex2DNode9554.a - _Cutout);
			float3 desaturateInitialColor9584 = ( lerpResult16_g2 * (_MainColor).rgb );
			float desaturateDot9584 = dot( desaturateInitialColor9584, float3( 0.299, 0.587, 0.114 ));
			float3 desaturateVar9584 = lerp( desaturateInitialColor9584, desaturateDot9584.xxx, ( 1.0 - _Saturation ) );
			float3 MainTexSaturate9595 = desaturateVar9584;
			float3 lerpResult369_g20204 = lerp( ifLocalVar289_g20204 , ( ifLocalVar289_g20204 * MainTexSaturate9595 ) , _EmissionscrollTint);
			float3 EmissionScrollV29647 = lerpResult369_g20204;
			float3 ifLocalVar9733 = 0;
			if( 1.0 == _EmissionScrollToggle )
				ifLocalVar9733 = ( ( ( (SAMPLE_TEXTURE2D( _NoiseTexture, sampler_trilinear_repeat, ( panner17_g20210 + 0.25 ) )).rgb * (SAMPLE_TEXTURE2D( _NoiseTexture, sampler_NoiseTexture, ( 1.0 - panner12_g20210 ) )).rgb ) * ( (SAMPLE_TEXTURE2D( _Emissionscroll, sampler_trilinear_repeat, panner21_g20210 )).rgb * (Emissionsscrollcolor9615).rgb ) ) * tex2DNode9741.r );
			else if( 1.0 < _EmissionScrollToggle )
				ifLocalVar9733 = EmissionScrollV29647;
			float ToggleAdvanced9452 = _COLORCOLOR;
			float3 temp_output_9788_0 = ( ifLocalVar9733 * ( saturate( _EmissionScrollToggle ) * ToggleAdvanced9452 ) );
			float3 Emissionscroll9798 = temp_output_9788_0;
			float3 WorldNormals20_g19717 = worldnormals9552;
			float dotResult442_g19717 = dot( WorldNormals20_g19717 , ase_worldViewDir );
			float NdotV9567 = dotResult442_g19717;
			float smoothstepResult10_g19719 = smoothstep( min( _ShadowRimSharpness , ( 1.0 - 1E-06 ) ) , 1.0 , ( NdotV9567 + _ShadowRimRange ));
			float lerpResult11_g19719 = lerp( 1.0 , smoothstepResult10_g19719 , _ShadowRimOpacity);
			float mulTime25_g19719 = _Time.y * _RimHueSpeed;
			float3 hsvTorgb3_g19720 = HSVToRGB( float3(mulTime25_g19719,1.0,1.0) );
			float3 temp_cast_7 = 1;
			float3 ifLocalVar27_g19719 = 0;
			if( _RimHueSpeed > 0.0 )
				ifLocalVar27_g19719 = hsvTorgb3_g19720;
			else if( _RimHueSpeed == 0.0 )
				ifLocalVar27_g19719 = temp_cast_7;
			float3 ifLocalVar9805 = 0;
			if( 1.0 == _RimSwitch )
				ifLocalVar9805 = ( ( ( 1.0 - lerpResult11_g19719 ) * (_EmissiveRimColor).rgb ) * ifLocalVar27_g19719 );
			float3 EmissiveRim9825 = ifLocalVar9805;
			float4 transform698_g20211 = mul(unity_ObjectToWorld,float4( ase_vertex3Pos , 0.0 ));
			float Space701_g20211 = transform698_g20211.y;
			float ifLocalVar717_g20211 = 0;
			if( _ToggleMaterializeDirInv > 0.0 )
				ifLocalVar717_g20211 = -Space701_g20211;
			else if( _ToggleMaterializeDirInv == 0.0 )
				ifLocalVar717_g20211 = Space701_g20211;
			float3 ase_parentObjectScale = (1.0/float3( length( unity_WorldToObject[ 0 ].xyz ), length( unity_WorldToObject[ 1 ].xyz ), length( unity_WorldToObject[ 2 ].xyz ) ));
			float ObjectScale711_g20211 = max( ase_parentObjectScale.y , 1.0 );
			float temp_output_739_0_g20211 = ( ifLocalVar717_g20211 / ObjectScale711_g20211 );
			float DissolveDensity732_g20211 = exp2( _DissolveDensity );
			float temp_output_753_0_g20211 = ( ( temp_output_739_0_g20211 + (-1.0 + (_MaterializeR - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g20211 );
			float4 ifLocalVar752_g20211 = 0;
			if( 1.0 > _MaterializeVertexColor )
				ifLocalVar752_g20211 = SAMPLE_TEXTURE2D( _MaterializeTex, sampler_point_clamp, i.uv_texcoord.xy );
			else if( 1.0 == _MaterializeVertexColor )
				ifLocalVar752_g20211 = i.vertexColor;
			float temp_output_708_0_g20211 = ( _MaterializeColorLayerR / 100.0 );
			float temp_output_714_0_g20211 = ( temp_output_708_0_g20211 - 0.005 );
			float temp_output_716_0_g20211 = ( temp_output_708_0_g20211 + 0.005 );
			float2 appendResult727_g20211 = (float2(temp_output_714_0_g20211 , temp_output_716_0_g20211));
			float2 appendResult722_g20211 = (float2(-0.005 , temp_output_716_0_g20211));
			float2 appendResult720_g20211 = (float2(temp_output_714_0_g20211 , 1.005));
			float2 ifLocalVar734_g20211 = 0;
			if( 1.0 > _MaterializeLayerModeR )
				ifLocalVar734_g20211 = appendResult727_g20211;
			else if( 1.0 == _MaterializeLayerModeR )
				ifLocalVar734_g20211 = appendResult722_g20211;
			else if( 1.0 < _MaterializeLayerModeR )
				ifLocalVar734_g20211 = appendResult720_g20211;
			float2 break751_g20211 = ifLocalVar734_g20211;
			float temp_output_927_0_g20211 = ( _MaterializeColorLayerG / 100.0 );
			float temp_output_925_0_g20211 = ( temp_output_927_0_g20211 - 0.005 );
			float temp_output_922_0_g20211 = ( temp_output_927_0_g20211 + 0.005 );
			float2 appendResult919_g20211 = (float2(temp_output_925_0_g20211 , temp_output_922_0_g20211));
			float2 appendResult918_g20211 = (float2(-0.005 , temp_output_922_0_g20211));
			float2 appendResult916_g20211 = (float2(temp_output_925_0_g20211 , 1.005));
			float2 ifLocalVar921_g20211 = 0;
			if( 1.0 > _MaterializeLayerModeG )
				ifLocalVar921_g20211 = appendResult919_g20211;
			else if( 1.0 == _MaterializeLayerModeG )
				ifLocalVar921_g20211 = appendResult918_g20211;
			else if( 1.0 < _MaterializeLayerModeG )
				ifLocalVar921_g20211 = appendResult916_g20211;
			float2 break920_g20211 = ifLocalVar921_g20211;
			float temp_output_941_0_g20211 = ( _MaterializeColorLayerB / 100.0 );
			float temp_output_939_0_g20211 = ( temp_output_941_0_g20211 - 0.005 );
			float temp_output_936_0_g20211 = ( temp_output_941_0_g20211 + 0.005 );
			float2 appendResult933_g20211 = (float2(temp_output_939_0_g20211 , temp_output_936_0_g20211));
			float2 appendResult932_g20211 = (float2(-0.005 , temp_output_936_0_g20211));
			float2 appendResult930_g20211 = (float2(temp_output_939_0_g20211 , 1.005));
			float2 ifLocalVar935_g20211 = 0;
			if( 1.0 > _MaterializeLayerModeB )
				ifLocalVar935_g20211 = appendResult933_g20211;
			else if( 1.0 == _MaterializeLayerModeB )
				ifLocalVar935_g20211 = appendResult932_g20211;
			else if( 1.0 < _MaterializeLayerModeB )
				ifLocalVar935_g20211 = appendResult930_g20211;
			float2 break934_g20211 = ifLocalVar935_g20211;
			float temp_output_955_0_g20211 = ( _MaterializeColorLayerA / 100.0 );
			float temp_output_953_0_g20211 = ( temp_output_955_0_g20211 - 0.005 );
			float temp_output_950_0_g20211 = ( temp_output_955_0_g20211 + 0.005 );
			float2 appendResult947_g20211 = (float2(temp_output_953_0_g20211 , temp_output_950_0_g20211));
			float2 appendResult946_g20211 = (float2(-0.005 , temp_output_950_0_g20211));
			float2 appendResult944_g20211 = (float2(temp_output_953_0_g20211 , 1.005));
			float2 ifLocalVar949_g20211 = 0;
			if( 1.0 > _MaterializeLayerModeA )
				ifLocalVar949_g20211 = appendResult947_g20211;
			else if( 1.0 == _MaterializeLayerModeA )
				ifLocalVar949_g20211 = appendResult946_g20211;
			else if( 1.0 < _MaterializeLayerModeA )
				ifLocalVar949_g20211 = appendResult944_g20211;
			float2 break948_g20211 = ifLocalVar949_g20211;
			float4 appendResult956_g20211 = (float4(break751_g20211.x , break920_g20211.x , break934_g20211.x , break948_g20211.x));
			float4 appendResult957_g20211 = (float4(break751_g20211.y , break920_g20211.y , break934_g20211.y , break948_g20211.y));
			float4 MaterialzeLayers912_g20211 = (( ifLocalVar752_g20211 >= appendResult956_g20211 && ifLocalVar752_g20211 <= appendResult957_g20211 ) ? ifLocalVar752_g20211 :  float4( 0,0,0,0 ) );
			float4 break768_g20211 = ceil( MaterialzeLayers912_g20211 );
			float ifLocalVar817_g20211 = 0;
			if( 1.0 > saturate( _MaterializeR ) )
				ifLocalVar817_g20211 = ( ( temp_output_753_0_g20211 + 1.0 ) * break768_g20211.r );
			float temp_output_755_0_g20211 = ( ( temp_output_739_0_g20211 + (-1.0 + (_MaterializeG - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g20211 );
			float ifLocalVar812_g20211 = 0;
			if( 1.0 > saturate( _MaterializeG ) )
				ifLocalVar812_g20211 = ( ( temp_output_755_0_g20211 + 1.0 ) * break768_g20211.g );
			float temp_output_765_0_g20211 = ( ( temp_output_739_0_g20211 + (-1.0 + (_MaterializeB - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g20211 );
			float ifLocalVar823_g20211 = 0;
			if( 1.0 > saturate( _MaterializeB ) )
				ifLocalVar823_g20211 = ( ( temp_output_765_0_g20211 + 1.0 ) * break768_g20211.b );
			float temp_output_779_0_g20211 = ( ( temp_output_739_0_g20211 + (-1.0 + (_MaterializeA - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g20211 );
			float ifLocalVar820_g20211 = 0;
			if( 1.0 > saturate( _MaterializeA ) )
				ifLocalVar820_g20211 = ( ( temp_output_779_0_g20211 + 1.0 ) * break768_g20211.a );
			float ifLocalVar761_g20211 = 0;
			if( _ToggleDissolveDirInv > 0.0 )
				ifLocalVar761_g20211 = -Space701_g20211;
			else if( _ToggleDissolveDirInv == 0.0 )
				ifLocalVar761_g20211 = Space701_g20211;
			float temp_output_784_0_g20211 = ( ( ( ifLocalVar761_g20211 / ObjectScale711_g20211 ) + (-1.0 + (_DissolveModifier - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g20211 );
			float ifLocalVar818_g20211 = 0;
			if( 1.0 > _DissolveModifier )
				ifLocalVar818_g20211 = max( max( max( max( ifLocalVar817_g20211 , ifLocalVar812_g20211 ) , ifLocalVar823_g20211 ) , ifLocalVar820_g20211 ) , ( temp_output_784_0_g20211 + 1.0 ) );
			float lerpResult408_g20211 = lerp( 0.0 , saturate( ifLocalVar818_g20211 ) , saturate( ( 1.0 - ( ifLocalVar818_g20211 - 1.0 ) ) ));
			float3 ifLocalVar418_g20211 = 0;
			if( _ToggleDissolveEmission == 1.0 )
				ifLocalVar418_g20211 = ( saturate( ( MainTexSaturate9595 + 0.5 ) ) * (_EmissiveDissolveColor).rgb * lerpResult408_g20211 );
			float3 EmissiveDissolve9854 = ifLocalVar418_g20211;
			o.Emission = ( Emissionscroll9798 + EmissiveRim9825 + EmissiveDissolve9854 );
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
				o.customPack5.xyz = customInputData.vertexToFrag2250_g20186;
				o.customPack6.xyz = customInputData.vertexToFrag2251_g20186;
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
				surfIN.vertexToFrag2250_g20186 = IN.customPack5.xyz;
				surfIN.vertexToFrag2251_g20186 = IN.customPack6.xyz;
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
	Fallback "Legacy Shaders/Transparent/VertexLit"
	CustomEditor "MorisMaterialInspector"
}
/*ASEBEGIN
Version=18935
1611;58;2040;919;-5217.129;46.51868;1;True;False
Node;AmplifyShaderEditor.CommentaryNode;10522;-2976,-1248;Inherit;False;1592.821;638.8351;;25;10544;10543;10542;10541;10540;10539;10538;10537;10536;10535;10534;10533;10532;10531;10530;10529;10528;10527;10526;10525;10524;10523;10559;10560;10561;UV Switch;1,1,1,1;0;0
Node;AmplifyShaderEditor.TexCoordVertexDataNode;10525;-2640,-1024;Inherit;False;1;2;0;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TexCoordVertexDataNode;10526;-2640,-800;Inherit;False;3;2;0;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TexCoordVertexDataNode;10527;-2640,-912;Inherit;False;2;2;0;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;10523;-2912,-1200;Inherit;False;Property;_MainTexUVSwitch;Main Tex UV Switch;107;1;[Enum];Create;True;0;4;UV0;0;UV1;1;UV2;2;UV3;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexCoordVertexDataNode;10524;-2640,-1136;Inherit;False;0;2;0;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TextureTransformNode;10528;-2192,-1200;Inherit;False;9554;False;1;0;SAMPLER2D;;False;2;FLOAT2;0;FLOAT2;1
Node;AmplifyShaderEditor.CustomExpressionNode;10529;-2416,-1200;Inherit;False;if (UVSwitchProp == 0)$	return UV0@$else if (UVSwitchProp == 1)$	return UV1@$else if (UVSwitchProp == 2)$	return UV2@$else$	return UV3@;2;Create;5;True;UVSwitchProp;FLOAT;0;In;;Inherit;False;True;UV0;FLOAT2;0,0;In;;Inherit;False;True;UV1;FLOAT2;0,0;In;;Inherit;False;True;UV2;FLOAT2;0,0;In;;Inherit;False;True;UV3;FLOAT2;0,0;In;;Inherit;False;UVSwitch;False;False;0;;False;5;0;FLOAT;0;False;1;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;10530;-1936,-1200;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;10531;-1808,-1200;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CommentaryNode;9550;-1468.5,-384;Inherit;False;1806.227;428.6317;;14;10545;9912;9750;9727;9595;9584;9581;9578;9565;9569;9568;9563;9564;9554;Main Texture;0,0.1310344,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;10544;-1680,-1200;Inherit;False;MainTexUVSwitch;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;10545;-1440,-320;Inherit;False;10544;MainTexUVSwitch;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CommentaryNode;9546;-1280,256;Inherit;False;693.5416;284.4319;;2;9591;9552;Normals;0.5019608,0.5019608,1,1;0;0
Node;AmplifyShaderEditor.FunctionNode;10548;-1232,352;Inherit;False;Normals and World Normals;346;;1;a9b4a0b5166a58041907936d7f327add;0;0;2;FLOAT3;0;FLOAT3;14
Node;AmplifyShaderEditor.SamplerNode;9554;-1232,-336;Inherit;True;Property;_MainTex;Main Tex;464;0;Create;True;0;0;0;False;0;False;-1;None;fd370716ef88da24391d308aaa1bb475;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;1;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CommentaryNode;9549;-1280,-1792;Inherit;False;1947.539;1182.55;Utilities;36;9901;9899;9894;9891;9880;9879;9877;9876;9875;9872;9867;9864;9676;9675;9674;9670;9669;9667;9662;9659;9656;9652;9650;9645;9641;9640;9637;9635;9633;9597;9596;9594;9593;9592;9567;9553;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9552;-816,320;Inherit;False;worldnormals;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;10549;-928,-336;Inherit;False;Hue Shift;331;;2;ba913d8caaf7acd4a97eca4685e47654;0;1;17;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode;9563;-1232,-144;Inherit;False;Property;_MainColor;Main Color;463;0;Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;9564;-928,-224;Inherit;False;Property;_Cutout;Cutout;258;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;9553;-1232,-1744;Inherit;False;9552;worldnormals;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ClipNode;9565;-624,-336;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;9569;-1040,-144;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;9568;-624,-208;Inherit;False;Property;_Saturation;Saturation;462;0;Create;True;0;0;0;False;0;False;1;1;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;10458;-976,-1744;Inherit;False;Utilities;-1;;19717;9d926cf50a172564e8b49022db15d05a;0;1;19;FLOAT3;0,0,0;False;40;FLOAT;0;FLOAT;14;FLOAT;17;FLOAT;15;FLOAT;16;FLOAT;60;FLOAT;62;FLOAT;63;FLOAT;64;FLOAT;65;FLOAT;13;FLOAT;446;FLOAT;18;FLOAT;114;FLOAT4;372;FLOAT4;373;FLOAT4;374;FLOAT4;375;FLOAT4;397;FLOAT4;376;FLOAT3;377;FLOAT3;378;FLOAT3;379;FLOAT3;380;FLOAT3;382;FLOAT3;384;FLOAT3;386;FLOAT3;388;FLOAT;381;FLOAT;383;FLOAT;385;FLOAT;387;FLOAT;389;FLOAT;390;FLOAT;391;FLOAT;392;FLOAT3;393;FLOAT3;394;FLOAT3;395;FLOAT3;396
Node;AmplifyShaderEditor.OneMinusNode;9578;-352,-208;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;9581;-432,-336;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;9575;-1280,3328;Inherit;False;1042.624;425.8316;;7;9825;9805;9608;9590;9587;9586;9577;Shadow Rim;0,0,0,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9567;-464,-1264;Inherit;False;NdotV;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DesaturateOpNode;9584;-160,-336;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;9577;-1264,3456;Inherit;False;9567;NdotV;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;9586;-816,3408;Inherit;False;Property;_RimSwitch;Rim Switch;477;1;[Enum];Create;True;0;2;Shadow;0;Emissive;1;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9593;-464,-1744;Inherit;False;NdotL;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9596;-128,-1424;Inherit;False;VertexLightAtten;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9597;-128,-1504;Inherit;False;VertexLightNdLNONMAX;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.FunctionNode;10210;-1072,3456;Inherit;False;Shadow Emissive Rim;449;;19719;4fa91309dca2f3c428e54f87b3f4adf3;0;1;34;FLOAT;0;False;2;FLOAT;0;FLOAT3;22
Node;AmplifyShaderEditor.RegisterLocalVarNode;9591;-816,432;Inherit;False;normals;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;9598;640,-384;Inherit;False;1254.195;1113.432;;19;9664;10594;10461;10595;10425;9749;9638;9649;9634;9619;9612;9631;9642;9609;9607;9600;9604;9606;9601;Lighting;1,0.9782155,0.759434,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;9587;-800,3568;Inherit;False;Constant;_Float22;Float 22;192;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9592;-464,-1504;Inherit;False;NdotAmbientL;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9595;96,-336;Inherit;False;MainTexSaturate;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;9601;672,-336;Inherit;False;9591;normals;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;9604;672,64;Inherit;False;9597;VertexLightNdLNONMAX;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;9609;672,-176;Inherit;False;9593;NdotL;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;9607;672,-16;Inherit;False;9596;VertexLightAtten;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;9600;672,-96;Inherit;False;9592;NdotAmbientL;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;9590;-624,3408;Inherit;False;False;5;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;9606;672,-256;Inherit;False;9595;MainTexSaturate;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;10532;-2912,-976;Inherit;False;Property;_EmissionScrollMaskUVSwitch;Emission Scroll Mask UV Switch;105;1;[Enum];Create;True;0;4;UV0;0;UV1;1;UV2;2;UV3;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9608;-464,3408;Inherit;False;ShadowRim;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;10600;992,-160;Inherit;False;Lighting;259;;20185;f969bc2898d94ca4199b47c9b757495b;0;6;1258;FLOAT3;0,0,1;False;150;FLOAT3;0,0,0;False;1264;FLOAT;0;False;1263;FLOAT;0;False;1306;FLOAT4;0,0,0,0;False;1305;FLOAT4;0,0,0,0;False;12;FLOAT3;0;FLOAT3;198;FLOAT3;1309;FLOAT3;2205;FLOAT;210;FLOAT;1989;FLOAT;211;FLOAT;1361;FLOAT;2199;FLOAT;638;FLOAT;2155;FLOAT4;2137
Node;AmplifyShaderEditor.RangedFloatNode;10535;-2912,-784;Inherit;False;Property;_EmissionUVSwitch;Emission UV Switch;106;1;[Enum];Create;True;0;4;UV0;0;UV1;1;UV2;2;UV3;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;10537;-2416,-784;Inherit;False;if (UVSwitchProp == 0)$	return UV0@$else if (UVSwitchProp == 1)$	return UV1@$else if (UVSwitchProp == 2)$	return UV2@$else$	return UV3@;2;Create;5;True;UVSwitchProp;FLOAT;0;In;;Inherit;False;True;UV0;FLOAT2;0,0;In;;Inherit;False;True;UV1;FLOAT2;0,0;In;;Inherit;False;True;UV2;FLOAT2;0,0;In;;Inherit;False;True;UV3;FLOAT2;0,0;In;;Inherit;False;UVSwitch;False;False;0;;False;5;0;FLOAT;0;False;1;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TextureTransformNode;10536;-2192,-784;Inherit;False;9775;False;1;0;SAMPLER2D;;False;2;FLOAT2;0;FLOAT2;1
Node;AmplifyShaderEditor.RegisterLocalVarNode;9594;-464,-1184;Inherit;False;GrayscaledLight;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;9643;-1280,2048;Inherit;False;1831.592;1078.534;;33;9763;10462;10463;10464;10465;10466;10467;10468;10469;10470;10471;10472;10473;10474;10475;10476;10477;10478;10479;10480;10481;10482;10483;10484;10485;10486;10487;10488;10489;10490;10564;10565;10566;Specular Highlights;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;10461;1600,624;Inherit;False;NdLVertexLightsShadows;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9640;-464,-1664;Inherit;False;NdotH;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9637;-464,-1584;Inherit;False;LdotH;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9633;-464,-1344;Inherit;False;AmbientLdotAmbientH;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9631;1600,-48;Inherit;False;DirectLightRamp;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;9612;1216,-240;Inherit;False;9608;ShadowRim;1;0;OBJECT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9635;-464,-1104;Inherit;False;NdotVCorr;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;9479;9264,480;Inherit;False;891.5;452.2001;Kaj Optimizer;4;9478;9447;9962;10599;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9642;1600,144;Inherit;False;AmbientRamp;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TextureTransformNode;10534;-2192,-976;Inherit;False;9741;False;1;0;SAMPLER2D;;False;2;FLOAT2;0;FLOAT2;1
Node;AmplifyShaderEditor.RegisterLocalVarNode;9641;-464,-1424;Inherit;False;NdotAmbientH;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;10533;-2416,-976;Inherit;False;if (UVSwitchProp == 0)$	return UV0@$else if (UVSwitchProp == 1)$	return UV1@$else if (UVSwitchProp == 2)$	return UV2@$else$	return UV3@;2;Create;5;True;UVSwitchProp;FLOAT;0;In;;Inherit;False;True;UV0;FLOAT2;0,0;In;;Inherit;False;True;UV1;FLOAT2;0,0;In;;Inherit;False;True;UV2;FLOAT2;0,0;In;;Inherit;False;True;UV3;FLOAT2;0,0;In;;Inherit;False;UVSwitch;False;False;0;;False;5;0;FLOAT;0;False;1;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;10468;-976,2192;Inherit;False;9631;DirectLightRamp;1;0;OBJECT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;10464;-768,2112;Inherit;False;9595;MainTexSaturate;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;10539;-1936,-784;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;10473;-1248,2272;Inherit;False;9597;VertexLightNdLNONMAX;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;10471;-768,2432;Inherit;False;9641;NdotAmbientH;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;10465;-976,2432;Inherit;False;9592;NdotAmbientL;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;10470;-720,2512;Inherit;False;9594;GrayscaledLight;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;10472;-784,2352;Inherit;False;9637;LdotH;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;10566;-1168,2112;Inherit;False;9591;normals;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;10469;-800,2272;Inherit;False;9640;NdotH;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;9588;852,-1792;Inherit;False;2697.81;1277.184;;19;9978;9798;9837;9855;9788;10517;9751;9733;9734;9691;9746;9743;9690;9741;9729;9617;9694;9599;10547;Emission;1,0.724138,0,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;10467;-976,2112;Inherit;False;9552;worldnormals;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;10466;-976,2512;Inherit;False;9633;AmbientLdotAmbientH;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;10487;-1248,2192;Inherit;False;10461;NdLVertexLightsShadows;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;10463;-752,2192;Inherit;False;9642;AmbientRamp;1;0;OBJECT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;9478;9312,640;Inherit;False;784.9004;263.6;If Optimizer is toggled, make sure nothing is accidentally activated when its set to Off;6;9453;9452;9450;9451;10419;10423;;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;9619;1456,-336;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;10538;-1936,-976;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;10488;-976,2272;Inherit;False;9593;NdotL;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;10462;-976,2352;Inherit;False;9635;NdotVCorr;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;10541;-1808,-784;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CommentaryNode;9630;-1280,1408;Inherit;False;1227.628;453.2062;;12;9893;9889;9885;9870;9866;9765;9740;9687;9663;9655;9648;10593;Subsurface Scattering;1,0.4009434,0.4009434,1;0;0
Node;AmplifyShaderEditor.FunctionNode;10598;-432,2192;Inherit;False;Specular Highlights;416;;20186;f01d465b622765446a78e511544ff258;0;28;2254;FLOAT3;0,0,0;False;44;FLOAT3;0,0,0;False;49;FLOAT3;0,0,0;False;1922;FLOAT4;0,0,0,0;False;1665;FLOAT4;0,0,0,0;False;192;FLOAT;1;False;293;FLOAT;1;False;594;FLOAT;0;False;578;FLOAT;0;False;1737;FLOAT;0;False;634;FLOAT;0;False;596;FLOAT;0;False;579;FLOAT;0;False;671;FLOAT;0;False;1739;FLOAT;0;False;1666;FLOAT4;0,0,0,0;False;1671;FLOAT3;0,0,0;False;1672;FLOAT3;0,0,0;False;1673;FLOAT3;0,0,0;False;1674;FLOAT3;0,0,0;False;1675;FLOAT;0;False;1676;FLOAT;0;False;1677;FLOAT;0;False;1678;FLOAT;0;False;1679;FLOAT;0;False;1680;FLOAT;0;False;1681;FLOAT;0;False;1682;FLOAT;0;False;6;FLOAT3;0;FLOAT3;58;FLOAT3;125;FLOAT3;2152;FLOAT3;1894;FLOAT4;1933
Node;AmplifyShaderEditor.CommentaryNode;9984;640,2048;Inherit;False;1273.458;361.4141;;8;9992;9991;9989;9988;9987;9986;9985;9810;Flipbook;1,0,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;10594;1600,528;Inherit;False;SSSAtten;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;9665;-1287,768;Inherit;False;1203.111;503.6198;;11;9739;10209;9802;9774;9759;9761;9731;9715;9709;9705;9683;Rim Light;1,1,0,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9634;1600,-336;Inherit;False;FinalLight;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9638;1600,-240;Inherit;False;PreFinalLight;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;9450;9344,704;Inherit;False;Property;_COLORADDSUBDIFF;Cubemap Toggle;177;0;Create;False;0;0;0;False;1;ToggleOff(_COLORADDSUBDIFF_ON);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;9453;9344,800;Inherit;False;Property;_COLORCOLOR;Toggle Advanced;179;0;Create;False;0;0;0;False;1;ToggleOff(_COLORCOLOR_ON);False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;9599;930,-1456;Inherit;False;938.7302;243.8046;Emission Scroll V1;3;9975;9615;9603;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9649;1600,-144;Inherit;False;PreClampFinalLight;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9664;1600,432;Inherit;False;AmbientOcclusion;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;10540;-1808,-976;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9656;384,-1504;Inherit;False;VLNdotHFour;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;10593;-1056,1664;Inherit;False;10594;SSSAtten;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;9666;640,1264;Inherit;False;2188.219;713.3574;;32;10002;10003;9801;9783;9760;9752;9738;9735;10513;10512;10511;10510;10509;10508;10507;10506;10505;10504;10503;10502;10501;10500;10499;10498;10497;10496;10495;10494;10493;10492;10491;10562;Cubemap;0,0.5019608,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9669;384,-1184;Inherit;False;VLLdotHFour;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;9648;-1056,1584;Inherit;False;9595;MainTexSaturate;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9645;384,-1664;Inherit;False;VLNdotHTwo;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9749;1600,240;Inherit;False;LuminancedLight;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9662;384,-1264;Inherit;False;VLLdotHThree;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;9655;-1056,1504;Inherit;False;9552;worldnormals;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9650;384,-1584;Inherit;False;VLNdotHThree;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;10543;-1680,-784;Inherit;False;EmissionUVSwitch;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CommentaryNode;9729;885,-992;Inherit;False;1626.396;446.0833;Emission;19;9748;10546;9995;9997;9998;9996;9839;9822;9823;9800;9799;9794;9811;9791;9775;9786;9785;9769;9784;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9676;384,-1424;Inherit;False;VLLdotHOne;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9652;384,-1344;Inherit;False;VLLdotHTwo;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;10490;128,2432;Inherit;False;VertexLightShadows;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9670;384,-1744;Inherit;False;VLNdotHOne;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;9715;-1248,1088;Inherit;False;9567;NdotV;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;9663;-1008,1760;Inherit;False;9594;GrayscaledLight;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9452;9568,800;Inherit;False;ToggleAdvanced;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;9603;960,-1392;Inherit;False;Property;_EmissionscrollColor;Emission scroll Color;467;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,0;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;9988;672,2192;Inherit;False;9638;PreFinalLight;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9451;9568,704;Inherit;False;ToggleCubemap;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;10542;-1680,-976;Inherit;False;EmissionScrollMaskUVSwitch;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;9705;-1248,928;Inherit;False;9552;worldnormals;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;10209;-1232,1168;Inherit;False;9664;AmbientOcclusion;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;9683;-1248,1008;Inherit;False;9595;MainTexSaturate;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;10489;128,2352;Inherit;False;PixelAmbientShadows;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;9709;-1248,848;Inherit;False;9649;PreClampFinalLight;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;9989;672,2272;Inherit;False;9634;FinalLight;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;10551;-784,1552;Inherit;False;Subsurface scattering;396;;20202;b3a8a731faf6b9a4bbb4cf58bc679816;0;9;24;FLOAT3;0,0,0;False;41;FLOAT3;0,0,0;False;445;FLOAT;0;False;142;FLOAT;0;False;169;FLOAT3;0,0,0;False;176;FLOAT3;0,0,0;False;186;FLOAT3;0,0,0;False;194;FLOAT3;0,0,0;False;237;FLOAT4;0,0,0,0;False;3;FLOAT3;35;FLOAT3;36;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;10511;672,1760;Inherit;False;9652;VLLdotHTwo;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;10492;672,1888;Inherit;False;9669;VLLdotHFour;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;10495;944,1712;Inherit;False;9592;NdotAmbientL;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;10503;944,1552;Inherit;False;9594;GrayscaledLight;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;10501;944,1472;Inherit;False;9595;MainTexSaturate;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;10498;672,1312;Inherit;False;10490;VertexLightShadows;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;10507;672,1632;Inherit;False;9656;VLNdotHFour;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;10491;672,1824;Inherit;False;9662;VLLdotHThree;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;10497;1152,1392;Inherit;False;9591;normals;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;10509;1168,1472;Inherit;False;9664;AmbientOcclusion;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;10502;672,1504;Inherit;False;9645;VLNdotHTwo;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;10494;1168,1552;Inherit;False;9640;NdotH;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;10512;672,1568;Inherit;False;9650;VLNdotHThree;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;10493;944,1392;Inherit;False;9552;worldnormals;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;10510;1200,1312;Inherit;False;9749;LuminancedLight;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerStateNode;9748;944,-848;Inherit;False;0;0;0;2;9554;None;1;0;SAMPLER2D;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.RangedFloatNode;9687;-624,1472;Inherit;False;Property;_SSSSetting;SSS Setting;473;1;[Enum];Create;True;0;3;Light Based;0;Color Based;1;Mixed;2;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;10546;912,-928;Inherit;False;10543;EmissionUVSwitch;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;10496;672,1440;Inherit;False;9670;VLNdotHOne;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;9735;1984,1536;Inherit;False;9451;ToggleCubemap;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;10504;672,1376;Inherit;False;9596;VertexLightAtten;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;10595;1600,336;Inherit;False;LuminancedLightNoShadows;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;10506;944,1792;Inherit;False;9633;AmbientLdotAmbientH;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerStateNode;9694;1024,-1120;Inherit;False;0;0;0;2;9554;None;1;0;SAMPLER2D;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.GetLocalVarNode;10499;1152,1712;Inherit;False;9641;NdotAmbientH;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;10500;1120,1632;Inherit;False;9637;LdotH;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;9991;1120,2304;Inherit;False;9452;ToggleAdvanced;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;10552;-976,912;Inherit;False;Rim Light;361;;20197;6b1931f25cd84864d9988266c3b81246;0;5;271;FLOAT3;0,0,0;False;22;FLOAT3;0,0,0;False;33;FLOAT3;0,0,0;False;260;FLOAT;0;False;322;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;9739;-896,1072;Inherit;False;9452;ToggleAdvanced;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;10553;928,2208;Inherit;False;Clamped Flipbook;1;;20199;87fba7ae5c66562488908889b8d68bfa;0;2;51;FLOAT3;1,1,1;False;52;FLOAT3;1,1,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;9617;928,-1728;Inherit;False;1146.265;258.0206;Emission Scroll V2;6;9647;9629;9623;9621;9620;10520;;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;9738;1984,1456;Inherit;False;9452;ToggleAdvanced;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;10505;672,1696;Inherit;False;9676;VLLdotHOne;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;9731;-832,832;Inherit;False;Property;_RimToggle;Rim Toggle;475;0;Create;True;0;2;Off;0;On;1;0;False;1;ToggleUI;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9615;1184,-1392;Inherit;False;Emissionsscrollcolor;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;10547;928,-1200;Inherit;False;10542;EmissionScrollMaskUVSwitch;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CommentaryNode;10441;640,832;Inherit;False;1237.348;363.565;;8;10001;9792;10452;10451;10449;10448;10515;10596;Matcap;0,0.5019608,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;10513;944,1312;Inherit;False;10489;PixelAmbientShadows;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;9992;976,2128;Inherit;False;Property;_FlipbookToggle;Flipbook Toggle;468;0;Create;True;0;2;Off;0;On;1;0;False;1;ToggleUI;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;10508;944,1632;Inherit;False;9635;NdotVCorr;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;10451;880,896;Inherit;False;9595;MainTexSaturate;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CustomExpressionNode;10564;96,2176;Inherit;False;UNITY_BRANCH$if (_SpecularSetting == 0)$	Out = Toon@$else if (_SpecularSetting == 1)$	Out = GGX@$else if (_SpecularSetting == 2)$	Out = Anisotropic@$else$	Out = GGXAnisotropic@;1;Call;5;True;Out;FLOAT3;0,0,0;Out;;Inherit;False;True;Toon;FLOAT3;0,0,0;In;;Inherit;False;True;GGX;FLOAT3;0,0,0;In;;Inherit;False;True;Anisotropic;FLOAT3;0,0,0;In;;Inherit;False;True;GGXAnisotropic;FLOAT3;0,0,0;In;;Inherit;False;longIF;False;False;0;;False;6;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;2;FLOAT;0;FLOAT3;2
Node;AmplifyShaderEditor.GetLocalVarNode;10448;672,896;Inherit;False;9552;worldnormals;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;10596;880,976;Inherit;False;10595;LuminancedLightNoShadows;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;9769;1792,-720;Inherit;False;Property;_EmissionLightscale;Emission Lightscale;478;0;Create;True;0;0;0;False;1;ToggleUI;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;9784;1360,-752;Inherit;False;9595;MainTexSaturate;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode;9785;1120,-752;Inherit;False;Property;_EmissionColor;Emission Color;465;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,0;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;9791;1792,-640;Inherit;False;9749;LuminancedLight;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;9775;1120,-944;Inherit;True;Property;_Emission;Emission;466;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;9786;1328,-672;Inherit;False;Property;_EmissionTint;Emission Tint;470;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;9740;-432,1504;Inherit;False;False;5;0;FLOAT;1;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;9621;1200,-1584;Inherit;False;9615;Emissionsscrollcolor;1;0;OBJECT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ConditionalIfNode;9759;-640,848;Inherit;False;False;5;0;FLOAT;1;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;9620;1056,-1664;Inherit;False;9591;normals;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;9761;-624,1024;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;10515;672,976;Inherit;False;9649;PreClampFinalLight;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;9741;1200,-1200;Inherit;True;Property;_EmissionScrollMask;Emission Scroll Mask;469;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;10452;896,1056;Inherit;False;9452;ToggleAdvanced;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;9629;960,-1584;Inherit;False;9595;MainTexSaturate;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;10562;1488,1344;Inherit;False;Baked Cubemap and Ambient Reflections;304;;20203;eb37bac9792209a4a9e79fa57ed77ae1;0;25;2903;SAMPLERSTATE;0;False;2821;FLOAT3;0,0,0;False;2817;FLOAT;0;False;2191;FLOAT3;0,0,0;False;86;FLOAT3;0,0,0;False;93;FLOAT3;0,0,0;False;89;FLOAT3;1,1,1;False;1847;FLOAT;1;False;2674;FLOAT;1;False;2409;FLOAT;0;False;2671;FLOAT;0;False;2411;FLOAT;0;False;2500;FLOAT;0;False;2501;FLOAT;0;False;2502;FLOAT;0;False;2545;FLOAT4;0,0,0,0;False;2842;FLOAT4;0,0,0,0;False;2590;FLOAT;0;False;2602;FLOAT;0;False;2619;FLOAT;0;False;2636;FLOAT;0;False;2543;FLOAT;0;False;2604;FLOAT;0;False;2621;FLOAT;0;False;2638;FLOAT;0;False;2;FLOAT3;0;FLOAT;2705
Node;AmplifyShaderEditor.ConditionalIfNode;9987;1184,2144;Inherit;False;False;5;0;FLOAT;1;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;9623;1232,-1664;Inherit;False;9552;worldnormals;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;9986;1392,2160;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;10449;672,1056;Inherit;False;9664;AmbientOcclusion;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;9752;2224,1488;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;9782;5200,480;Inherit;False;9452;ToggleAdvanced;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;10003;2368,1488;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;9800;2016,-720;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;9794;1632,-768;Inherit;False;3;0;FLOAT3;1,1,1;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;9811;1408,-848;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;9727;-768,-64;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;10597;1168,896;Inherit;False;Matcap;19;;20209;9363e9c7b7d1f2d4ab0056224472b0d9;0;6;65;FLOAT3;0,0,0;False;72;FLOAT3;0,0,0;False;900;FLOAT3;0,0,0;False;890;FLOAT;0;False;833;FLOAT;0;False;581;FLOAT;0;False;2;FLOAT3;0;FLOAT;647
Node;AmplifyShaderEditor.ComponentMaskNode;9799;1408,-944;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9763;336,2192;Inherit;False;SpecularHighlight;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;9985;1536,2160;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;9774;-448,848;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;9777;5168,1104;Inherit;False;Property;_SSSToggle;SSS Toggle;330;0;Create;True;0;2;Off;0;On;1;0;False;1;ToggleOff(_SUNDISK_NONE);False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;9778;5200,560;Inherit;False;Property;_SpecularToggle;Specular Toggle;329;0;Create;True;0;2;Off;0;On;1;0;False;1;ToggleOff(_REQUIRE_UV2);False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;9783;2400,1360;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;10520;1472,-1664;Inherit;False;Emission Scroll V2;188;;20204;995e6dd10a2936e4a88f19546ea48650;0;5;70;FLOAT3;0,0,0;False;71;FLOAT3;0,0,1;False;30;FLOAT3;0,0,0;False;28;COLOR;1,1,1,1;False;725;FLOAT2;0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;9776;5168,1024;Inherit;False;9452;ToggleAdvanced;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9765;-256,1504;Inherit;False;SSS;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;10001;1600,976;Inherit;False;MatcapLightAbsorbtion;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;9822;1824,-944;Inherit;True;3;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9750;-639,-48;Inherit;False;AlphaChannelMul;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;9823;2144,-720;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;9789;5216,944;Inherit;False;9765;SSS;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;9779;5200,400;Inherit;False;9763;SpecularHighlight;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9792;1600,896;Inherit;False;Matcap;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9810;1680,2160;Inherit;False;Flipbook;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9647;1824,-1664;Inherit;False;EmissionScrollV2;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9802;-304,848;Inherit;False;rimlight;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;9690;2080,-1456;Inherit;False;Property;_EmissionScrollToggle;Emission Scroll Toggle;476;1;[Enum];Create;True;0;3;Off;0;ES v1;1;ES v2;2;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;10556;1472,-1392;Inherit;False;Emission Scroll V1;238;;20210;b2dc8236d7837514dbd2e9707c89d6c6;0;1;32;COLOR;1,1,1,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;9804;5456,1056;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9801;2544,1360;Inherit;False;CubemapReflections;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;9807;5504,512;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;10002;2544,1488;Inherit;False;CubemapLightAbsorbtion;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;9743;2576,-1280;Inherit;False;9452;ToggleAdvanced;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;9829;6464,1248;Inherit;False;922.2013;441.0284;;3;9857;9854;9838;Dissolve;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;10004;6112,240;Inherit;False;10002;CubemapLightAbsorbtion;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;9843;6160,400;Inherit;False;9634;FinalLight;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;9845;6160,480;Inherit;False;9750;AlphaChannelMul;1;0;OBJECT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;10005;6112,320;Inherit;False;10001;MatcapLightAbsorbtion;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;9839;2352,-944;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;9821;5632,944;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;9826;5680,400;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;9827;5568,704;Inherit;False;9792;Matcap;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;9691;2064,-1296;Inherit;False;9647;EmissionScrollV2;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;9828;5584,784;Inherit;False;9802;rimlight;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;9746;1920,-1392;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;9819;5552,624;Inherit;False;9801;CubemapReflections;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;9820;5584,864;Inherit;False;9810;Flipbook;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SaturateNode;9734;2576,-1360;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;9838;6496,1456;Inherit;False;9595;MainTexSaturate;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;9833;5904,528;Inherit;False;9750;AlphaChannelMul;1;0;OBJECT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;9733;2336,-1456;Inherit;False;False;5;0;FLOAT;1;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;9751;2816,-1360;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;9848;5904,368;Inherit;False;Property;_RenderingMode;Rendering Mode;474;1;[Enum];Create;True;0;3;Opaque;0;Fade;1;Transparent;2;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;9852;6384,432;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;10006;6432,256;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;9830;5904,608;Inherit;True;6;6;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;10517;2528,-944;Inherit;False;Property;_Keyword0;Keyword 0;162;0;Create;True;0;0;0;False;0;False;0;0;0;False;UNITY_PASS_FORWARDADD;Toggle;2;Key0;Key1;Fetch;False;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9855;2832,-944;Inherit;False;BasicEmission;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;10563;6736,1456;Inherit;False;Dissolve;109;;20211;82730ad0d4bfc13408a9f4bccf476772;0;1;424;FLOAT3;0,0,0;False;4;FLOAT;0;FLOAT;310;FLOAT3;425;FLOAT3;426
Node;AmplifyShaderEditor.ConditionalIfNode;9805;-624,3584;Inherit;False;False;5;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ConditionalIfNode;9858;6544,352;Inherit;False;False;5;0;FLOAT;1;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SaturateNode;10007;6560,256;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;9844;6192,624;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;9788;2944,-1456;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;10008;6736,352;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9912;-640,-128;Inherit;False;AlphaChannel;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;9861;6592,672;Inherit;False;9855;BasicEmission;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;9957;6464,928;Inherit;False;563.6001;257.8;;1;9959;Dither;1,1,1,1;0;0
Node;AmplifyShaderEditor.ConditionalIfNode;9853;6352,560;Inherit;False;False;5;0;FLOAT;1;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;6173;7555.14,272;Inherit;False;1639.272;486.0489;Custom Rendering Options;8;6185;6192;9446;6193;6175;6174;6176;6177;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9854;7120,1520;Inherit;False;EmissiveDissolve;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9825;-464,3584;Inherit;False;EmissiveRim;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9798;3328,-1456;Inherit;False;Emissionscroll;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;9824;6896,160;Inherit;False;9798;Emissionscroll;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;6174;7872,336;Inherit;False;263;291;Blend Alpha;3;6197;6187;6183;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;9963;-1920,-384;Inherit;False;391;431.3881;Shader Optimizer Animated States;4;9966;9964;9968;10422;;0,0.1294118,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;9834;6896,240;Inherit;False;9825;EmissiveRim;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;9860;6896,320;Inherit;False;9854;EmissiveDissolve;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;9959;6528,1024;Inherit;False;9912;AlphaChannel;1;0;OBJECT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;9873;6944,496;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;6175;8144,336;Inherit;False;568.8174;379.8966;Stencil;7;6196;6195;6191;6190;6186;6184;6179;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;6176;7600,336;Inherit;False;259;291;Blend RGB;3;6194;6182;6178;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9857;7120,1600;Inherit;False;VertexOffsetDissolve;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;6177;8736,336;Inherit;False;434.1172;215.0966;Depth;4;6189;6188;6181;6180;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;8888;9264,272;Inherit;False;371;165;Custom Inspector Settings;1;8890;;1,1,1,1;0;0
Node;AmplifyShaderEditor.StaticSwitch;9760;2112,1344;Inherit;False;Property;_COLORADDSUBDIFF;Cubemap Toggle;125;0;Create;False;0;0;0;False;0;False;0;0;0;False;_COLORADDSUBDIFF_ON;ToggleOff;2;OFF;ON;Create;True;False;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;9809;5392,944;Inherit;False;Property;_SSSToggle;SSS Toggle;125;0;Create;False;0;0;0;False;0;False;0;0;0;False;_SUNDISK_NONE;ToggleOff;2;OFF;ON;Create;True;False;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;9803;5440,400;Inherit;False;Property;_SpecularToggle;Specular Toggle;125;0;Create;False;0;0;0;False;0;False;0;0;0;False;_REQUIRE_UV2;ToggleOff;2;OFF;ON;Create;True;False;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;6193;7616,640;Float;False;Property;_CullMode;Cull Mode;257;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.CullMode;True;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9879;-128,-1584;Inherit;False;FourLightPosZ0WorldPos;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;6189;8752,464;Inherit;False;Property;_ZTestMode;ZTest Mode;236;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.CompareFunction;True;0;False;4;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9891;-128,-864;Inherit;False;VLHalfVectorTwo;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;9889;-1232,1504;Inherit;False;9875;VLDirOne;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;10558;6736,1024;Inherit;False;Dither;89;;20214;043df5c2e430b6241a679a3821a80d10;0;1;53;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;10485;-720,2912;Inherit;False;9652;VLLdotHTwo;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;9447;9312,544;Inherit;False;Property;_ShaderOptimizerEnabled;Shader Optimizer Enabled;0;0;Create;True;0;3;Basic;0;Advanced;1;Advanced Plus;2;0;True;1;ShaderOptimizerLockButton;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;9966;-1856,-176;Inherit;False;Property;_SaturationAnimated;_Saturation;174;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9876;384,-864;Inherit;False;VLDirFour;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;9882;7088,416;Inherit;False;9750;AlphaChannelMul;1;0;OBJECT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;6188;8752,384;Inherit;False;Property;_ZWriteMode;ZWrite Mode;393;1;[Enum];Create;True;0;2;Off;0;On;1;0;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;10422;-1856,-256;Inherit;False;Property;_MainColorAnimated;_MainColor;181;0;Create;False;0;0;0;True;1;ToggleUI;False;0;1;False;0;1;INT;0
Node;AmplifyShaderEditor.IntNode;9975;1184,-1312;Inherit;False;Property;_EmissionscrollColorAnimated;_EmissionscrollColor;165;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9867;-128,-784;Inherit;False;VLHalfVectorThree;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;9870;-1232,1568;Inherit;False;9880;VLDirTwo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;10482;-720,2656;Inherit;False;9645;VLNdotHTwo;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;10486;-720,2976;Inherit;False;9662;VLLdotHThree;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;10479;-720,2848;Inherit;False;9676;VLLdotHOne;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;6183;7888,464;Inherit;False;Property;_DestinationBlendAlpha;Destination Blend Alpha;182;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.BlendMode;True;0;False;10;10;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;9962;9600,544;Inherit;False;Property;_LockTooltip;LockTooltip;230;0;Create;True;0;0;0;False;1;HelpBox(3);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;10423;9792,800;Inherit;False;Property;_COLORCOLORAnimated;_COLORCOLOR;171;0;Create;False;0;0;0;True;1;ToggleUI;False;1;1;False;0;1;INT;0
Node;AmplifyShaderEditor.RangedFloatNode;6186;8160,544;Inherit;False;Property;_StencilBufferWriteMask;Stencil Buffer Write Mask;185;0;Create;True;0;0;1;UnityEngine.Rendering.BlendMode;True;0;False;255;255;0;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;10599;9808,544;Inherit;False;Property;_IgnoreProjector;IgnoreProjector;88;0;Create;True;0;0;0;True;1;OverrideTagToggle(IgnoreProjector);False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9901;-128,-704;Inherit;False;VLHalfVectorFour;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;9446;8752,592;Inherit;False;Property;_MaskClipValue;Mask Clip Value;471;0;Create;True;0;0;1;;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;10477;-976,2720;Inherit;False;9891;VLHalfVectorTwo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.IntNode;9995;2304,-816;Inherit;False;Property;_EmissionColorAnimated;_EmissionColor;162;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9864;-128,-1344;Inherit;False;VertexLightAttenNdL;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9872;-128,-944;Inherit;False;VLHalfVectorOne;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.IntNode;9998;2032,-816;Inherit;False;Property;_OptimizerExcludeEmission;OptimizerExcludeEmission;164;0;Create;True;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.RangedFloatNode;6185;7968,640;Inherit;False;Property;_ColorMask;Color Mask;395;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.ColorWriteMask;True;0;False;15;15;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;9866;-1232,1760;Inherit;False;9596;VertexLightAtten;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;6178;7616,464;Inherit;False;Property;_DestinationBlendRGB;Destination Blend RGB;184;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.BlendMode;True;0;False;10;10;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;10412;5200,640;Inherit;False;Property;_SpecularToggleAnimated;_SpecularToggle;169;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.GetLocalVarNode;10484;-720,2592;Inherit;False;9670;VLNdotHOne;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9899;-128,-1664;Inherit;False;FourLightPosY0WorldPos;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9674;-128,-1024;Inherit;False;VLFinalFour;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;10480;-720,2784;Inherit;False;9656;VLNdotHFour;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9675;-128,-1104;Inherit;False;VLFinalThree;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;10478;-976,2592;Inherit;False;9596;VertexLightAtten;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;6196;8160,384;Inherit;False;Property;_StencilBufferReference;Stencil Buffer Reference;232;0;Create;True;0;0;1;UnityEngine.Rendering.BlendMode;True;0;False;0;0;0;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9894;-128,-1744;Inherit;False;FourLightPosX0WorldPos;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;10565;128,2096;Half;False;Property;_SpecularSetting;Specular Setting;472;1;[Enum];Create;True;0;4;Toon;0;Unity Standard GGX;1;Anisotropic by James OHare;2;Anisotropic GGX;3;0;True;0;False;0;3;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;8890;9312,336;Inherit;False;Property;_AdvancedExperimentalToggle;Advanced Experimental Toggle;237;1;[Enum];Create;True;0;3;Basic;0;Advanced;1;Advanced Plus;2;0;True;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;6194;7616,544;Inherit;False;Property;_BlendOpRGB;Blend Op RGB;183;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.BlendOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9875;384,-1104;Inherit;False;VLDirOne;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;6195;8448,384;Inherit;False;Property;_StencilBufferComparison;Stencil Buffer Comparison;235;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.CompareFunction;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;10419;9792,704;Inherit;False;Property;_COLORADDSUBDIFFAnimated;_COLORADDSUBDIFF;172;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.IntNode;9968;-1856,-96;Inherit;False;Property;_CutoutAnimated;_Cutout;178;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;10085;7168,496;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;10483;-720,3040;Inherit;False;9669;VLLdotHFour;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;10476;-976,2656;Inherit;False;9872;VLHalfVectorOne;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.IntNode;9997;2288,-656;Inherit;False;Property;_EmissionLightscaleAnimated;_EmissionLightscale;163;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9877;384,-944;Inherit;False;VLDirThree;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;9885;-1232,1632;Inherit;False;9877;VLDirThree;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;9883;7040,624;Inherit;False;9857;VertexOffsetDissolve;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;6180;8944,384;Inherit;False;Property;_DepthOffsetFactor;Depth Offset Factor;187;0;Create;True;0;0;1;UnityEngine.Rendering.BlendMode;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9659;-128,-1184;Inherit;False;VLFinalTwo;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.IntNode;10424;5904,448;Inherit;False;Property;_RenderingModeAnimated;_RenderingMode;168;0;Create;False;0;0;0;True;1;ToggleUI;False;1;1;False;0;1;INT;0
Node;AmplifyShaderEditor.StaticSwitch;9837;3088,-1456;Inherit;False;Property;_COLORCOLOR4;Toggle Advanced;127;0;Create;False;0;0;0;False;0;False;0;0;0;True;_GLOSSYREFLECTIONS;Toggle;2;OFF;ON;Reference;9859;False;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;9859;6576,560;Inherit;False;Property;_COLORCOLOR;Toggle Advanced;127;0;Create;False;0;0;0;False;0;False;0;0;0;False;_COLORCOLOR_ON;ToggleOff;2;OFF;ON;Create;True;False;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;6184;8448,624;Inherit;False;Property;_StencilBufferZFailFront;Stencil Buffer ZFail Front;234;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.StencilOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;10413;5168,1184;Inherit;False;Property;_SSSToggleAnimated;_SSSToggle;167;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.RangedFloatNode;6182;7616,384;Inherit;False;Property;_SourceBlendRGB;Source Blend RGB;256;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.BlendMode;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;6179;8448,544;Inherit;False;Property;_StencilBufferFailFront;Stencil Buffer Fail Front;233;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.StencilOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;6181;8944,464;Inherit;False;Property;_DepthOffsetUnits;Depth Offset Units;231;0;Create;True;0;0;1;UnityEngine.Rendering.BlendMode;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;6197;7888,544;Inherit;False;Property;_BlendOpAlpha;Blend Op Alpha;180;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.BlendOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;6190;8448,464;Inherit;False;Property;_StencilBufferPassFront;Stencil Buffer Pass Front;254;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.StencilOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;6187;7888,384;Inherit;False;Property;_SourceBlendAlpha;Source Blend Alpha;255;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.BlendMode;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;10425;1600,48;Inherit;False;DirectionalAttenuation;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;10560;-2912,-896;Inherit;False;Property;_EmissionScrollMaskUVSwitchAnimated;_EmissionScrollMaskUVSwitch;170;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.GetLocalVarNode;10474;-976,2848;Inherit;False;9901;VLHalfVectorFour;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.IntNode;9996;2304,-736;Inherit;False;Property;_EmissionTintAnimated;_EmissionTint;108;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.IntNode;10559;-2912,-1120;Inherit;False;Property;_MainTexUVSwitchAnimated;_MainTexUVSwitch;175;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9667;-128,-1264;Inherit;False;VLFinalOne;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;9893;-1232,1696;Inherit;False;9876;VLDirFour;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;6191;8160,464;Inherit;False;Property;_StencilBufferReadMask;Stencil Buffer Read Mask;186;0;Create;True;0;0;1;UnityEngine.Rendering.BlendMode;True;0;False;255;255;0;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;10481;-720,2720;Inherit;False;9650;VLNdotHThree;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;9964;-1856,-336;Inherit;False;Property;_OptimizerExcludeMainSettings;OptimizerExcludeMainSettings;176;0;Create;True;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.IntNode;10561;-2912,-704;Inherit;False;Property;_EmissionUVSwitchAnimated;_EmissionUVSwitch;173;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.GetLocalVarNode;10475;-976,2784;Inherit;False;9867;VLHalfVectorThree;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.IntNode;9978;2080,-1536;Inherit;False;Property;_EmissionScrollToggleAnimated;_EmissionScrollToggle;166;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;9898;7152,256;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;6192;7760,640;Inherit;False;Property;_AlphatoCoverage;Alpha to Coverage;394;1;[Enum];Create;True;0;2;Off;0;On;1;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9880;384,-1024;Inherit;False;VLDirTwo;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;7328,272;Float;False;True;-1;7;MorisMaterialInspector;0;0;CustomLighting;Moriohs Shaders/Moris Toon Shader/Transparent;False;False;False;False;True;True;True;True;True;False;True;False;False;False;True;False;False;False;False;False;False;Back;0;True;6188;0;True;6189;True;0;True;6180;0;True;6181;False;0;Custom;0.5;True;True;50;True;TransparentCutout;;AlphaTest;ForwardOnly;5;d3d11;glcore;gles3;vulkan;nomrt;True;True;True;True;0;True;6185;True;0;True;6196;255;True;6191;255;True;6186;0;True;6195;0;True;6190;0;True;6179;0;True;6184;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;0;4;10;25;False;0.5;True;1;5;True;6182;10;True;6178;1;0;True;6187;0;True;6183;0;True;6194;4;True;6197;0;False;5E-06;0,0,0,0;VertexOffset;True;False;Cylindrical;False;True;Relative;0;Legacy Shaders/Transparent/VertexLit;-1;-1;-1;-1;0;False;0;0;True;6193;-1;0;True;9446;0;0;0;False;0.1;False;-1;0;True;6192;True;15;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;10529;0;10523;0
WireConnection;10529;1;10524;0
WireConnection;10529;2;10525;0
WireConnection;10529;3;10527;0
WireConnection;10529;4;10526;0
WireConnection;10530;0;10528;0
WireConnection;10530;1;10529;0
WireConnection;10531;0;10530;0
WireConnection;10531;1;10528;1
WireConnection;10544;0;10531;0
WireConnection;9554;1;10545;0
WireConnection;9552;0;10548;0
WireConnection;10549;17;9554;0
WireConnection;9565;0;10549;0
WireConnection;9565;1;9554;4
WireConnection;9565;2;9564;0
WireConnection;9569;0;9563;0
WireConnection;10458;19;9553;0
WireConnection;9578;0;9568;0
WireConnection;9581;0;9565;0
WireConnection;9581;1;9569;0
WireConnection;9567;0;10458;13
WireConnection;9584;0;9581;0
WireConnection;9584;1;9578;0
WireConnection;9593;0;10458;0
WireConnection;9596;0;10458;397
WireConnection;9597;0;10458;375
WireConnection;10210;34;9577;0
WireConnection;9591;0;10548;14
WireConnection;9592;0;10458;60
WireConnection;9595;0;9584;0
WireConnection;9590;1;9586;0
WireConnection;9590;2;10210;0
WireConnection;9590;3;9587;0
WireConnection;9608;0;9590;0
WireConnection;10600;1258;9601;0
WireConnection;10600;150;9606;0
WireConnection;10600;1264;9609;0
WireConnection;10600;1263;9600;0
WireConnection;10600;1306;9607;0
WireConnection;10600;1305;9604;0
WireConnection;10537;0;10535;0
WireConnection;10537;1;10524;0
WireConnection;10537;2;10525;0
WireConnection;10537;3;10527;0
WireConnection;10537;4;10526;0
WireConnection;9594;0;10458;18
WireConnection;10461;0;10600;2137
WireConnection;9640;0;10458;14
WireConnection;9637;0;10458;15
WireConnection;9633;0;10458;64
WireConnection;9631;0;10600;210
WireConnection;9635;0;10458;446
WireConnection;9642;0;10600;211
WireConnection;9641;0;10458;62
WireConnection;10533;0;10532;0
WireConnection;10533;1;10524;0
WireConnection;10533;2;10525;0
WireConnection;10533;3;10527;0
WireConnection;10533;4;10526;0
WireConnection;10539;0;10536;0
WireConnection;10539;1;10537;0
WireConnection;9619;0;10600;0
WireConnection;9619;1;9612;0
WireConnection;10538;0;10534;0
WireConnection;10538;1;10533;0
WireConnection;10541;0;10539;0
WireConnection;10541;1;10536;1
WireConnection;10598;2254;10566;0
WireConnection;10598;44;10467;0
WireConnection;10598;49;10464;0
WireConnection;10598;1922;10487;0
WireConnection;10598;1665;10473;0
WireConnection;10598;192;10468;0
WireConnection;10598;293;10463;0
WireConnection;10598;594;10488;0
WireConnection;10598;578;10469;0
WireConnection;10598;1737;10462;0
WireConnection;10598;634;10472;0
WireConnection;10598;596;10465;0
WireConnection;10598;579;10471;0
WireConnection;10598;671;10466;0
WireConnection;10598;1739;10470;0
WireConnection;10594;0;10600;2155
WireConnection;9634;0;9619;0
WireConnection;9638;0;10600;198
WireConnection;9649;0;10600;1309
WireConnection;9664;0;10600;638
WireConnection;10540;0;10538;0
WireConnection;10540;1;10534;1
WireConnection;9656;0;10458;387
WireConnection;9669;0;10458;392
WireConnection;9645;0;10458;383
WireConnection;9749;0;10600;1361
WireConnection;9662;0;10458;391
WireConnection;9650;0;10458;385
WireConnection;10543;0;10541;0
WireConnection;9676;0;10458;389
WireConnection;9652;0;10458;390
WireConnection;10490;0;10598;1933
WireConnection;9670;0;10458;381
WireConnection;9452;0;9453;0
WireConnection;9451;0;9450;0
WireConnection;10542;0;10540;0
WireConnection;10489;0;10598;1894
WireConnection;10551;24;9655;0
WireConnection;10551;41;9648;0
WireConnection;10551;445;10593;0
WireConnection;10551;142;9663;0
WireConnection;10595;0;10600;2199
WireConnection;10552;271;9709;0
WireConnection;10552;22;9705;0
WireConnection;10552;33;9683;0
WireConnection;10552;260;9715;0
WireConnection;10552;322;10209;0
WireConnection;10553;51;9988;0
WireConnection;10553;52;9989;0
WireConnection;9615;0;9603;0
WireConnection;10564;2;10598;0
WireConnection;10564;3;10598;58
WireConnection;10564;4;10598;125
WireConnection;10564;5;10598;2152
WireConnection;9775;1;10546;0
WireConnection;9775;7;9748;0
WireConnection;9740;1;9687;0
WireConnection;9740;2;10551;35
WireConnection;9740;3;10551;36
WireConnection;9740;4;10551;0
WireConnection;9759;1;9731;0
WireConnection;9759;3;10552;0
WireConnection;9761;0;9731;0
WireConnection;9761;1;9739;0
WireConnection;9741;1;10547;0
WireConnection;9741;7;9694;0
WireConnection;10562;2821;10513;0
WireConnection;10562;2817;10510;0
WireConnection;10562;86;10493;0
WireConnection;10562;93;10497;0
WireConnection;10562;89;10501;0
WireConnection;10562;1847;10509;0
WireConnection;10562;2674;10503;0
WireConnection;10562;2409;10494;0
WireConnection;10562;2671;10508;0
WireConnection;10562;2411;10500;0
WireConnection;10562;2500;10495;0
WireConnection;10562;2501;10499;0
WireConnection;10562;2502;10506;0
WireConnection;10562;2545;10498;0
WireConnection;10562;2842;10504;0
WireConnection;10562;2590;10496;0
WireConnection;10562;2602;10502;0
WireConnection;10562;2619;10512;0
WireConnection;10562;2636;10507;0
WireConnection;10562;2543;10505;0
WireConnection;10562;2604;10511;0
WireConnection;10562;2621;10491;0
WireConnection;10562;2638;10492;0
WireConnection;9987;0;9992;0
WireConnection;9987;3;10553;0
WireConnection;9986;0;9992;0
WireConnection;9986;1;9991;0
WireConnection;9752;0;9738;0
WireConnection;9752;1;9735;0
WireConnection;10003;0;9752;0
WireConnection;10003;2;10562;2705
WireConnection;9800;0;9769;0
WireConnection;9800;1;9791;0
WireConnection;9794;1;9784;0
WireConnection;9794;2;9786;0
WireConnection;9811;0;9785;0
WireConnection;9727;0;9554;4
WireConnection;9727;1;9563;4
WireConnection;10597;65;10448;0
WireConnection;10597;72;10451;0
WireConnection;10597;900;10515;0
WireConnection;10597;890;10596;0
WireConnection;10597;833;10449;0
WireConnection;10597;581;10452;0
WireConnection;9799;0;9775;0
WireConnection;9763;0;10564;2
WireConnection;9985;0;9987;0
WireConnection;9985;1;9986;0
WireConnection;9774;0;9759;0
WireConnection;9774;1;9761;0
WireConnection;9783;0;10562;0
WireConnection;9783;1;9752;0
WireConnection;10520;70;9623;0
WireConnection;10520;71;9620;0
WireConnection;10520;30;9629;0
WireConnection;10520;28;9621;0
WireConnection;10520;725;9741;0
WireConnection;9765;0;9740;0
WireConnection;10001;0;10597;647
WireConnection;9822;0;9799;0
WireConnection;9822;1;9811;0
WireConnection;9822;2;9794;0
WireConnection;9750;0;9727;0
WireConnection;9823;0;9800;0
WireConnection;9792;0;10597;0
WireConnection;9810;0;9985;0
WireConnection;9647;0;10520;0
WireConnection;9802;0;9774;0
WireConnection;10556;32;9615;0
WireConnection;9804;0;9776;0
WireConnection;9804;1;9777;0
WireConnection;9801;0;9783;0
WireConnection;9807;0;9782;0
WireConnection;9807;1;9778;0
WireConnection;10002;0;10003;0
WireConnection;9839;0;9822;0
WireConnection;9839;2;9823;0
WireConnection;9821;0;9789;0
WireConnection;9821;1;9804;0
WireConnection;9826;0;9779;0
WireConnection;9826;1;9807;0
WireConnection;9746;0;10556;0
WireConnection;9746;1;9741;1
WireConnection;9734;0;9690;0
WireConnection;9733;1;9690;0
WireConnection;9733;3;9746;0
WireConnection;9733;4;9691;0
WireConnection;9751;0;9734;0
WireConnection;9751;1;9743;0
WireConnection;9852;0;9843;0
WireConnection;9852;1;9845;0
WireConnection;10006;0;10004;0
WireConnection;10006;1;10005;0
WireConnection;9830;0;9826;0
WireConnection;9830;1;9819;0
WireConnection;9830;2;9827;0
WireConnection;9830;3;9828;0
WireConnection;9830;4;9820;0
WireConnection;9830;5;9821;0
WireConnection;10517;1;9839;0
WireConnection;9855;0;10517;0
WireConnection;10563;424;9838;0
WireConnection;9805;1;9586;0
WireConnection;9805;3;10210;22
WireConnection;9858;1;9848;0
WireConnection;9858;2;9843;0
WireConnection;9858;3;9852;0
WireConnection;9858;4;9852;0
WireConnection;10007;0;10006;0
WireConnection;9844;0;9830;0
WireConnection;9844;1;9833;0
WireConnection;9788;0;9733;0
WireConnection;9788;1;9751;0
WireConnection;10008;0;9858;0
WireConnection;10008;2;10007;0
WireConnection;9912;0;9554;4
WireConnection;9853;1;9848;0
WireConnection;9853;2;9830;0
WireConnection;9853;3;9844;0
WireConnection;9853;4;9830;0
WireConnection;9854;0;10563;425
WireConnection;9825;0;9805;0
WireConnection;9798;0;9788;0
WireConnection;9873;0;10008;0
WireConnection;9873;1;9853;0
WireConnection;9873;2;9861;0
WireConnection;9857;0;10563;426
WireConnection;9760;1;10562;0
WireConnection;9809;1;9789;0
WireConnection;9803;1;9779;0
WireConnection;9879;0;10458;374
WireConnection;9891;0;10458;384
WireConnection;10558;53;9959;0
WireConnection;9876;0;10458;396
WireConnection;9867;0;10458;386
WireConnection;9901;0;10458;388
WireConnection;9864;0;10458;376
WireConnection;9872;0;10458;382
WireConnection;9899;0;10458;373
WireConnection;9674;0;10458;380
WireConnection;9675;0;10458;379
WireConnection;9894;0;10458;372
WireConnection;9875;0;10458;393
WireConnection;10085;0;9873;0
WireConnection;10085;1;10563;0
WireConnection;9877;0;10458;395
WireConnection;9659;0;10458;378
WireConnection;9837;1;9788;0
WireConnection;9859;1;9853;0
WireConnection;10425;0;10600;1989
WireConnection;9667;0;10458;377
WireConnection;9898;0;9824;0
WireConnection;9898;1;9834;0
WireConnection;9898;2;9860;0
WireConnection;9880;0;10458;394
WireConnection;0;2;9898;0
WireConnection;0;9;9882;0
WireConnection;0;10;10558;0
WireConnection;0;13;10085;0
WireConnection;0;11;9883;0
ASEEND*/
//CHKSM=BC503FCD69DD416B90B01F5DB379FDDBC84C034D