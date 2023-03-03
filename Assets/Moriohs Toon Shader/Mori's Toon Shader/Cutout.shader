// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Moriohs Shaders/Moris Toon Shader/Cutout"
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
		[HideInInspector] _texcoord3( "", 2D ) = "white" {}
		[HideInInspector] _texcoord2( "", 2D ) = "white" {}
		[HideInInspector] _texcoord4( "", 2D ) = "white" {}
		[ToggleUI]_DitherMaskUVSwitchAnimated("_DitherMaskUVSwitch", Int) = 0
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
		[ToggleUI]_EmissionScrollToggleAnimated("_EmissionScrollToggle", Int) = 0
		[ToggleUI]_EmissionscrollColorAnimated("_EmissionscrollColor", Int) = 0
		[ToggleUI]_MainColorAnimated("_MainColor", Int) = 0
		[ToggleUI]_EmissionScrollMaskUVSwitchAnimated("_EmissionScrollMaskUVSwitch", Int) = 0
		[ToggleUI]_CutoutAnimated("_Cutout", Int) = 0
		[ToggleUI]_SSSToggleAnimated1("_SSSToggle", Int) = 0
		[ToggleUI]_EmissionUVSwitchAnimated("_EmissionUVSwitch", Int) = 0
		[ToggleUI]_RenderingModeAnimated("_RenderingMode", Int) = 1
		[ToggleUI]_MainTexUVSwitchAnimated("_MainTexUVSwitch", Int) = 0
		[ToggleUI]_SaturationAnimated("_Saturation", Int) = 0
		[ToggleUI]_OptimizerExcludeMainSettings("OptimizerExcludeMainSettings", Int) = 0
		[ToggleUI]_SpecularToggleAnimated("_SpecularToggle", Int) = 0
		[ToggleOff(_COLORADDSUBDIFF_ON)]_COLORADDSUBDIFF("Cubemap Toggle", Float) = 0
		[ToggleUI]_COLORCOLORAnimated("_COLORCOLOR", Int) = 1
		[ToggleUI]_COLORADDSUBDIFFAnimated("_COLORADDSUBDIFF", Int) = 0
		[ToggleOff(_COLORCOLOR_ON)]_COLORCOLOR("Toggle Advanced", Float) = 0
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
		[Enum(UnityEngine.Rendering.BlendMode)]_SourceBlendAlpha("Source Blend Alpha", Float) = 1
		[Enum(UnityEngine.Rendering.BlendMode)]_SourceBlendRGB("Source Blend RGB", Float) = 1
		[Enum(UnityEngine.Rendering.CullMode)]_CullMode("Cull Mode", Float) = 2
		_Cutout("Cutout", Range( 0 , 1)) = 0.5
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
		_Saturation("Saturation", Range( 0 , 10)) = 1
		_MainColor("Main Color", Color) = (1,1,1,1)
		_MainTex("Main Tex", 2D) = "white" {}
		[HDR]_EmissionColor("Emission Color", Color) = (1,1,1,0)
		_Emission("Emission", 2D) = "black" {}
		[HDR]_EmissionscrollColor("Emission scroll Color", Color) = (1,1,1,1)
		[ToggleUI]_FlipbookToggle("Flipbook Toggle", Float) = 0
		_EmissionScrollMask("Emission Scroll Mask", 2D) = "white" {}
		[Enum(Toon,0,Unity Standard GGX,1,Anisotropic by James OHare,2,Anisotropic GGX,3)]_SpecularSetting("Specular Setting", Float) = 0
		_EmissionTint("Emission Tint", Range( 0 , 1)) = 1
		[Enum(Light Based,0,Color Based,1,Mixed,2)]_SSSSetting("SSS Setting", Float) = 0
		[Enum(Opaque,0,Fade,1,Transparent,2)]_RenderingMode("Rendering Mode", Float) = 1
		[ToggleUI]_RimToggle("Rim Toggle", Float) = 0
		[Enum(Off,0,ES v1,1,ES v2,2)]_EmissionScrollToggle("Emission Scroll Toggle", Float) = 0
		[Enum(Shadow,0,Emissive,1)]_RimSwitch("Rim Switch", Float) = 0
		_MaskClipValue("Mask Clip Value", Range( 0 , 1)) = 0.5
		[ToggleUI]_EmissionLightscale("Emission Lightscale", Float) = 0
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
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
			float3 vertexToFrag2250_g19968;
			float3 vertexToFrag2251_g19968;
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
		uniform int _DitherAlphaToggleAnimated;
		uniform int _StartDitheringFadeAnimated;
		uniform int _EndDitheringFadeAnimated;
		uniform int _DitherMaskUVSwitchAnimated;
		uniform int _DitherTextureTilingAnimated;
		uniform int _OptimizerExcludeDither;
		uniform int _DitherTextureToggleAnimated;
		uniform int _IgnoreProjector;
		uniform float _CullMode;
		uniform float _ShaderOptimizerEnabled;
		uniform float _DepthOffsetFactor;
		uniform int _COLORADDSUBDIFFAnimated;
		uniform float _BlendOpAlpha;
		uniform int _RenderingModeAnimated;
		uniform int _OptimizerExcludeEmission;
		uniform float _StencilBufferFailFront;
		uniform float _ZWriteMode;
		uniform float _StencilBufferWriteMask;
		uniform float _StencilBufferReadMask;
		uniform int _EmissionScrollMaskUVSwitchAnimated;
		uniform float _ColorMask;
		uniform float _ZTestMode;
		uniform float _AlphatoCoverage;
		uniform int _MainTexUVSwitchAnimated;
		uniform int _EmissionscrollColorAnimated;
		uniform int _SaturationAnimated;
		uniform int _EmissionScrollToggleAnimated;
		uniform float _DestinationBlendAlpha;
		uniform float _BlendOpRGB;
		uniform int _EmissionLightscaleAnimated;
		uniform int _SpecularToggleAnimated;
		uniform float _DestinationBlendRGB;
		uniform float _StencilBufferZFailFront;
		uniform int _OptimizerExcludeMainSettings;
		uniform float _AdvancedExperimentalToggle;
		uniform float _SourceBlendRGB;
		uniform int _EmissionTintAnimated;
		uniform int _SSSToggleAnimated1;
		uniform int _EmissionUVSwitchAnimated;
		uniform int _MainColorAnimated;
		uniform float _DepthOffsetUnits;
		uniform int _COLORCOLORAnimated;
		uniform int _EmissionColorAnimated;
		uniform float _SourceBlendAlpha;
		uniform half _SpecularSetting;
		uniform float _StencilBufferComparison;
		uniform int _CutoutAnimated;
		uniform float _StencilBufferPassFront;
		uniform float _StencilBufferReference;
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


		float2 voronoihash64_g19988( float2 p )
		{
			
			p = float2( dot( p, float2( 127.1, 311.7 ) ), dot( p, float2( 269.5, 183.3 ) ) );
			return frac( sin( p ) *43758.5453);
		}


		float voronoi64_g19988( float2 v, float time, inout float2 id, inout float2 mr, float smoothness, inout float2 smoothId )
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
			 		float2 o = voronoihash64_g19988( n + g );
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


		float3 getUnityObjectToWorldNormal2226_g19968( float3 In0 )
		{
			return UnityObjectToWorldNormal(In0);
		}


		float3 getUnityObjectToWorldDir2223_g19968( float3 In0 )
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
			float4 transform698_g19994 = mul(unity_ObjectToWorld,float4( ase_vertex3Pos , 0.0 ));
			float Space701_g19994 = transform698_g19994.y;
			float ifLocalVar717_g19994 = 0;
			if( _ToggleMaterializeDirInv > 0.0 )
				ifLocalVar717_g19994 = -Space701_g19994;
			else if( _ToggleMaterializeDirInv == 0.0 )
				ifLocalVar717_g19994 = Space701_g19994;
			float3 ase_parentObjectScale = (1.0/float3( length( unity_WorldToObject[ 0 ].xyz ), length( unity_WorldToObject[ 1 ].xyz ), length( unity_WorldToObject[ 2 ].xyz ) ));
			float ObjectScale711_g19994 = max( ase_parentObjectScale.y , 1.0 );
			float temp_output_739_0_g19994 = ( ifLocalVar717_g19994 / ObjectScale711_g19994 );
			float DissolveDensity732_g19994 = exp2( _DissolveDensity );
			float temp_output_753_0_g19994 = ( ( temp_output_739_0_g19994 + (-1.0 + (_MaterializeR - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g19994 );
			float4 ifLocalVar752_g19994 = 0;
			if( 1.0 > _MaterializeVertexColor )
				ifLocalVar752_g19994 = SAMPLE_TEXTURE2D_LOD( _MaterializeTex, sampler_point_clamp, v.texcoord.xyz.xy, 0.0 );
			else if( 1.0 == _MaterializeVertexColor )
				ifLocalVar752_g19994 = v.color;
			float temp_output_708_0_g19994 = ( _MaterializeColorLayerR / 100.0 );
			float temp_output_714_0_g19994 = ( temp_output_708_0_g19994 - 0.005 );
			float temp_output_716_0_g19994 = ( temp_output_708_0_g19994 + 0.005 );
			float2 appendResult727_g19994 = (float2(temp_output_714_0_g19994 , temp_output_716_0_g19994));
			float2 appendResult722_g19994 = (float2(-0.005 , temp_output_716_0_g19994));
			float2 appendResult720_g19994 = (float2(temp_output_714_0_g19994 , 1.005));
			float2 ifLocalVar734_g19994 = 0;
			if( 1.0 > _MaterializeLayerModeR )
				ifLocalVar734_g19994 = appendResult727_g19994;
			else if( 1.0 == _MaterializeLayerModeR )
				ifLocalVar734_g19994 = appendResult722_g19994;
			else if( 1.0 < _MaterializeLayerModeR )
				ifLocalVar734_g19994 = appendResult720_g19994;
			float2 break751_g19994 = ifLocalVar734_g19994;
			float temp_output_927_0_g19994 = ( _MaterializeColorLayerG / 100.0 );
			float temp_output_925_0_g19994 = ( temp_output_927_0_g19994 - 0.005 );
			float temp_output_922_0_g19994 = ( temp_output_927_0_g19994 + 0.005 );
			float2 appendResult919_g19994 = (float2(temp_output_925_0_g19994 , temp_output_922_0_g19994));
			float2 appendResult918_g19994 = (float2(-0.005 , temp_output_922_0_g19994));
			float2 appendResult916_g19994 = (float2(temp_output_925_0_g19994 , 1.005));
			float2 ifLocalVar921_g19994 = 0;
			if( 1.0 > _MaterializeLayerModeG )
				ifLocalVar921_g19994 = appendResult919_g19994;
			else if( 1.0 == _MaterializeLayerModeG )
				ifLocalVar921_g19994 = appendResult918_g19994;
			else if( 1.0 < _MaterializeLayerModeG )
				ifLocalVar921_g19994 = appendResult916_g19994;
			float2 break920_g19994 = ifLocalVar921_g19994;
			float temp_output_941_0_g19994 = ( _MaterializeColorLayerB / 100.0 );
			float temp_output_939_0_g19994 = ( temp_output_941_0_g19994 - 0.005 );
			float temp_output_936_0_g19994 = ( temp_output_941_0_g19994 + 0.005 );
			float2 appendResult933_g19994 = (float2(temp_output_939_0_g19994 , temp_output_936_0_g19994));
			float2 appendResult932_g19994 = (float2(-0.005 , temp_output_936_0_g19994));
			float2 appendResult930_g19994 = (float2(temp_output_939_0_g19994 , 1.005));
			float2 ifLocalVar935_g19994 = 0;
			if( 1.0 > _MaterializeLayerModeB )
				ifLocalVar935_g19994 = appendResult933_g19994;
			else if( 1.0 == _MaterializeLayerModeB )
				ifLocalVar935_g19994 = appendResult932_g19994;
			else if( 1.0 < _MaterializeLayerModeB )
				ifLocalVar935_g19994 = appendResult930_g19994;
			float2 break934_g19994 = ifLocalVar935_g19994;
			float temp_output_955_0_g19994 = ( _MaterializeColorLayerA / 100.0 );
			float temp_output_953_0_g19994 = ( temp_output_955_0_g19994 - 0.005 );
			float temp_output_950_0_g19994 = ( temp_output_955_0_g19994 + 0.005 );
			float2 appendResult947_g19994 = (float2(temp_output_953_0_g19994 , temp_output_950_0_g19994));
			float2 appendResult946_g19994 = (float2(-0.005 , temp_output_950_0_g19994));
			float2 appendResult944_g19994 = (float2(temp_output_953_0_g19994 , 1.005));
			float2 ifLocalVar949_g19994 = 0;
			if( 1.0 > _MaterializeLayerModeA )
				ifLocalVar949_g19994 = appendResult947_g19994;
			else if( 1.0 == _MaterializeLayerModeA )
				ifLocalVar949_g19994 = appendResult946_g19994;
			else if( 1.0 < _MaterializeLayerModeA )
				ifLocalVar949_g19994 = appendResult944_g19994;
			float2 break948_g19994 = ifLocalVar949_g19994;
			float4 appendResult956_g19994 = (float4(break751_g19994.x , break920_g19994.x , break934_g19994.x , break948_g19994.x));
			float4 appendResult957_g19994 = (float4(break751_g19994.y , break920_g19994.y , break934_g19994.y , break948_g19994.y));
			float4 MaterialzeLayers912_g19994 = (( ifLocalVar752_g19994 >= appendResult956_g19994 && ifLocalVar752_g19994 <= appendResult957_g19994 ) ? ifLocalVar752_g19994 :  float4( 0,0,0,0 ) );
			float4 break768_g19994 = ceil( MaterialzeLayers912_g19994 );
			float ifLocalVar817_g19994 = 0;
			if( 1.0 > saturate( _MaterializeR ) )
				ifLocalVar817_g19994 = ( ( temp_output_753_0_g19994 + 1.0 ) * break768_g19994.r );
			float temp_output_755_0_g19994 = ( ( temp_output_739_0_g19994 + (-1.0 + (_MaterializeG - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g19994 );
			float ifLocalVar812_g19994 = 0;
			if( 1.0 > saturate( _MaterializeG ) )
				ifLocalVar812_g19994 = ( ( temp_output_755_0_g19994 + 1.0 ) * break768_g19994.g );
			float temp_output_765_0_g19994 = ( ( temp_output_739_0_g19994 + (-1.0 + (_MaterializeB - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g19994 );
			float ifLocalVar823_g19994 = 0;
			if( 1.0 > saturate( _MaterializeB ) )
				ifLocalVar823_g19994 = ( ( temp_output_765_0_g19994 + 1.0 ) * break768_g19994.b );
			float temp_output_779_0_g19994 = ( ( temp_output_739_0_g19994 + (-1.0 + (_MaterializeA - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g19994 );
			float ifLocalVar820_g19994 = 0;
			if( 1.0 > saturate( _MaterializeA ) )
				ifLocalVar820_g19994 = ( ( temp_output_779_0_g19994 + 1.0 ) * break768_g19994.a );
			float ifLocalVar761_g19994 = 0;
			if( _ToggleDissolveDirInv > 0.0 )
				ifLocalVar761_g19994 = -Space701_g19994;
			else if( _ToggleDissolveDirInv == 0.0 )
				ifLocalVar761_g19994 = Space701_g19994;
			float temp_output_784_0_g19994 = ( ( ( ifLocalVar761_g19994 / ObjectScale711_g19994 ) + (-1.0 + (_DissolveModifier - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g19994 );
			float ifLocalVar818_g19994 = 0;
			if( 1.0 > _DissolveModifier )
				ifLocalVar818_g19994 = max( max( max( max( ifLocalVar817_g19994 , ifLocalVar812_g19994 ) , ifLocalVar823_g19994 ) , ifLocalVar820_g19994 ) , ( temp_output_784_0_g19994 + 1.0 ) );
			float lerpResult408_g19994 = lerp( 0.0 , saturate( ifLocalVar818_g19994 ) , saturate( ( 1.0 - ( ifLocalVar818_g19994 - 1.0 ) ) ));
			float3 ase_vertexNormal = v.normal.xyz;
			float3 ifLocalVar422_g19994 = 0;
			if( _ToggleDissolveVertexOffset == 1.0 )
				ifLocalVar422_g19994 = ( ( ( lerpResult408_g19994 * 4.0 ) * _DissolveVertexMultiplier ) * ase_vertexNormal );
			float3 VertexOffsetDissolve7594 = ifLocalVar422_g19994;
			v.vertex.xyz += VertexOffsetDissolve7594;
			v.vertex.w = 1;
			float4 ase_screenPos = ComputeScreenPos( UnityObjectToClipPos( v.vertex ) );
			o.screenPosition = ase_screenPos;
			float3 In02226_g19968 = ase_vertexNormal;
			float3 localgetUnityObjectToWorldNormal2226_g19968 = getUnityObjectToWorldNormal2226_g19968( In02226_g19968 );
			float4 ase_vertexTangent = v.tangent;
			float3 In02223_g19968 = ase_vertexTangent.xyz;
			float3 localgetUnityObjectToWorldDir2223_g19968 = getUnityObjectToWorldDir2223_g19968( In02223_g19968 );
			float3 temp_output_2222_0_g19968 = (localgetUnityObjectToWorldDir2223_g19968).xyz;
			float ase_vertexTangentSign = v.tangent.w;
			float3 normalizeResult2248_g19968 = normalize( ( cross( localgetUnityObjectToWorldNormal2226_g19968 , temp_output_2222_0_g19968 ) * ase_vertexTangentSign ) );
			o.vertexToFrag2250_g19968 = normalizeResult2248_g19968;
			float3 normalizeResult2249_g19968 = normalize( temp_output_2222_0_g19968 );
			o.vertexToFrag2251_g19968 = normalizeResult2249_g19968;
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
			float UVSwitchProp7958 = _MainTexUVSwitch;
			float2 UV07958 = i.uv_texcoord.xy;
			float2 UV17958 = i.uv2_texcoord2;
			float2 UV27958 = i.uv3_texcoord3;
			float2 UV37958 = i.uv4_texcoord4;
			float2 localUVSwitch7958 = UVSwitch( UVSwitchProp7958 , UV07958 , UV17958 , UV27958 , UV37958 );
			float2 MainTexUVSwitch7961 = ( ( _MainTex_ST.xy * localUVSwitch7958 ) + _MainTex_ST.zw );
			float4 tex2DNode7368 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, MainTexUVSwitch7961 );
			float AlphaChannelMul7530 = ( tex2DNode7368.a * _MainColor.a );
			float3 worldSpaceViewDir7_g19997 = WorldSpaceViewDir( float4( 0,0,0,1 ) );
			float AlphaChannel7740 = tex2DNode7368.a;
			float temp_output_53_0_g19997 = AlphaChannel7740;
			float ifLocalVar18_g19997 = 0;
			if( 1.0 > _DitherAlphaToggle )
				ifLocalVar18_g19997 = distance( worldSpaceViewDir7_g19997 , float3( 0,0,0 ) );
			else if( 1.0 == _DitherAlphaToggle )
				ifLocalVar18_g19997 = temp_output_53_0_g19997;
			float temp_output_12_0_g19997 = ( _EndDitheringFade + _ProjectionParams.y );
			float4 ase_screenPos = i.screenPosition;
			float4 ase_screenPosNorm = ase_screenPos / ase_screenPos.w;
			ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
			float2 clipScreen23_g19997 = ase_screenPosNorm.xy * _ScreenParams.xy;
			float dither23_g19997 = Dither8x8Bayer( fmod(clipScreen23_g19997.x, 8), fmod(clipScreen23_g19997.y, 8) );
			float2 UV22_g19998 = ase_screenPosNorm.xy;
			float2 localUnStereo22_g19998 = UnStereo( UV22_g19998 );
			float4 ditherCustomScreenPos25_g19997 = float4( ( localUnStereo22_g19998 * _DitherTextureTiling ), 0.0 , 0.0 );
			float dither25_g19997 = DitherNoiseTex(ditherCustomScreenPos25_g19997, _DitherTexture, sampler_trilinear_repeat, _DitherTexture_TexelSize);
			float ifLocalVar26_g19997 = 0;
			if( 1.0 > _DitherTextureToggle )
				ifLocalVar26_g19997 = dither23_g19997;
			else if( 1.0 == _DitherTextureToggle )
				ifLocalVar26_g19997 = dither25_g19997;
			float UVSwitchProp61_g19997 = _DitherMaskUVSwitch;
			float2 UV061_g19997 = i.uv_texcoord.xy;
			float2 UV161_g19997 = i.uv2_texcoord2;
			float2 UV261_g19997 = i.uv3_texcoord3;
			float2 UV361_g19997 = i.uv4_texcoord4;
			float2 localUVSwitch61_g19997 = UVSwitch( UVSwitchProp61_g19997 , UV061_g19997 , UV161_g19997 , UV261_g19997 , UV361_g19997 );
			float ifLocalVar37_g19997 = 0;
			if( 1.0 > _DitherAlphaToggle )
				ifLocalVar37_g19997 = SAMPLE_TEXTURE2D( _DitherMask, sampler_trilinear_repeat, ( ( _DitherMask_ST.xy * localUVSwitch61_g19997 ) + _DitherMask_ST.zw ) ).g;
			else if( 1.0 == _DitherAlphaToggle )
				ifLocalVar37_g19997 = ( 1.0 - temp_output_53_0_g19997 );
			float lerpResult42_g19997 = lerp( 1.0 , ( 1.0 - ( ( ( ifLocalVar18_g19997 + -temp_output_12_0_g19997 ) / ( _StartDitheringFade - temp_output_12_0_g19997 ) ) - ifLocalVar26_g19997 ) ) , ifLocalVar37_g19997);
			float ifLocalVar44_g19997 = 0;
			if( 0.0 == ( _StartDitheringFade + _EndDitheringFade ) )
				ifLocalVar44_g19997 = 1.0;
			else if( 0.0 < ( _StartDitheringFade + _EndDitheringFade ) )
				ifLocalVar44_g19997 = lerpResult42_g19997;
			float3 Texture18_g2 = tex2DNode7368.rgb;
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
			clip( tex2DNode7368.a - _Cutout);
			float3 desaturateInitialColor7392 = ( lerpResult16_g2 * (_MainColor).rgb );
			float desaturateDot7392 = dot( desaturateInitialColor7392, float3( 0.299, 0.587, 0.114 ));
			float3 desaturateVar7392 = lerp( desaturateInitialColor7392, desaturateDot7392.xxx, ( 1.0 - _Saturation ) );
			float3 MainTexSaturate7397 = desaturateVar7392;
			float3 temp_output_150_0_g19967 = MainTexSaturate7397;
			float MonochromeTogglePixelLight1337_g19967 = _ToggleMonochromePixelLight;
			float ToggleSteps66_g19967 = _ToggleSteps;
			float4 localFourLightPosX340_g19720 = FourLightPosX();
			float3 ase_worldPos = i.worldPos;
			float4 temp_cast_15 = (ase_worldPos.x).xxxx;
			float4 FourLightPosX0WorldPos286_g19720 = ( localFourLightPosX340_g19720 - temp_cast_15 );
			float4 localFourLightPosY342_g19720 = FourLightPosY();
			float4 temp_cast_16 = (ase_worldPos.y).xxxx;
			float4 FourLightPosY0WorldPos291_g19720 = ( localFourLightPosY342_g19720 - temp_cast_16 );
			float4 localFourLightPosZ296_g19720 = FourLightPosZ();
			float4 temp_cast_17 = (ase_worldPos.z).xxxx;
			float4 FourLightPosZ0WorldPos325_g19720 = ( localFourLightPosZ296_g19720 - temp_cast_17 );
			float4 temp_cast_18 = (1E-06).xxxx;
			float4 temp_output_328_0_g19720 = max( ( ( FourLightPosX0WorldPos286_g19720 * FourLightPosX0WorldPos286_g19720 ) + ( FourLightPosY0WorldPos291_g19720 * FourLightPosY0WorldPos291_g19720 ) + ( FourLightPosZ0WorldPos325_g19720 * FourLightPosZ0WorldPos325_g19720 ) ) , temp_cast_18 );
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
			float3 worldnormals7361 = normalizeResult53_g1;
			float3 WorldNormals20_g19720 = worldnormals7361;
			float3 break295_g19720 = WorldNormals20_g19720;
			float4 temp_output_366_0_g19720 = ( rsqrt( temp_output_328_0_g19720 ) * ( ( FourLightPosX0WorldPos286_g19720 * break295_g19720.x ) + ( FourLightPosY0WorldPos291_g19720 * break295_g19720.y ) + ( FourLightPosZ0WorldPos325_g19720 * break295_g19720.z ) ) );
			float4 VertexLightNdLNONMAX7174 = temp_output_366_0_g19720;
			float NdLHalfingControl704_g19967 = _NdLHalfingControl;
			float RampOffset167_g19967 = _RampOffset;
			float4 temp_output_1224_0_g19967 = saturate( ( ( VertexLightNdLNONMAX7174 * NdLHalfingControl704_g19967 ) + RampOffset167_g19967 ) );
			float4 VertexLightUV349_g19967 = temp_output_1224_0_g19967;
			float4 break548_g19967 = VertexLightUV349_g19967;
			float2 temp_cast_19 = (break548_g19967.x).xx;
			float4 tex2DNode647_g19967 = SAMPLE_TEXTURE2D( _ToonRamp, sampler_linear_clamp, temp_cast_19 );
			float3 ToonRampTexVLOne2100_g19967 = (tex2DNode647_g19967).rgb;
			float2 uv_ShadowColorMap = i.uv_texcoord * _ShadowColorMap_ST.xy + _ShadowColorMap_ST.zw;
			float4 tex2DNode1489_g19967 = SAMPLE_TEXTURE2D( _ShadowColorMap, sampler_trilinear_clamp, uv_ShadowColorMap );
			float3 lerpResult1511_g19967 = lerp( (_RampColor).rgb , (tex2DNode1489_g19967).rgb , ( max( max( tex2DNode1489_g19967.r , tex2DNode1489_g19967.g ) , tex2DNode1489_g19967.b ) * _ShadowColorMapStrength ));
			float3 RampColorRGB42_g19967 = lerpResult1511_g19967;
			float ColoringPointLights1080_g19967 = _ColoringPointLights;
			float3 lerpResult2003_g19967 = lerp( ToonRampTexVLOne2100_g19967 , RampColorRGB42_g19967 , ColoringPointLights1080_g19967);
			half3 linearRgb1700_g19967 = tex2DNode647_g19967.rgb;
			half localgetLinearRgbToLuminance1700_g19967 = getLinearRgbToLuminance( linearRgb1700_g19967 );
			float2 temp_cast_21 = (break548_g19967.y).xx;
			float4 tex2DNode648_g19967 = SAMPLE_TEXTURE2D( _ToonRamp, sampler_linear_clamp, temp_cast_21 );
			half3 linearRgb1701_g19967 = tex2DNode648_g19967.rgb;
			half localgetLinearRgbToLuminance1701_g19967 = getLinearRgbToLuminance( linearRgb1701_g19967 );
			float2 temp_cast_23 = (break548_g19967.z).xx;
			float4 tex2DNode649_g19967 = SAMPLE_TEXTURE2D( _ToonRamp, sampler_linear_clamp, temp_cast_23 );
			half3 linearRgb1702_g19967 = tex2DNode649_g19967.rgb;
			half localgetLinearRgbToLuminance1702_g19967 = getLinearRgbToLuminance( linearRgb1702_g19967 );
			float2 temp_cast_25 = (break548_g19967.w).xx;
			float4 tex2DNode650_g19967 = SAMPLE_TEXTURE2D( _ToonRamp, sampler_linear_clamp, temp_cast_25 );
			half3 linearRgb1703_g19967 = tex2DNode650_g19967.rgb;
			half localgetLinearRgbToLuminance1703_g19967 = getLinearRgbToLuminance( linearRgb1703_g19967 );
			float4 appendResult538_g19967 = (float4(localgetLinearRgbToLuminance1700_g19967 , localgetLinearRgbToLuminance1701_g19967 , localgetLinearRgbToLuminance1702_g19967 , localgetLinearRgbToLuminance1703_g19967));
			float4 ToonRampTexVertexLightLuminanced352_g19967 = appendResult538_g19967;
			float PointSpotShadows2112_g19967 = _PointSpotShadowIntensity;
			float4 break390_g19967 = saturate( ( ToonRampTexVertexLightLuminanced352_g19967 + ( 1.0 - PointSpotShadows2112_g19967 ) ) );
			float3 lerpResult2004_g19967 = lerp( lerpResult2003_g19967 , float3( 1,1,1 ) , break390_g19967.x);
			float3 localLightColorZero385_g19967 = LightColorZero();
			float4 localFourLightAtten305_g19720 = FourLightAtten();
			float4 temp_cast_27 = (1E-06).xxxx;
			float4 temp_output_272_0_g19720 = ( localFourLightAtten305_g19720 * temp_output_328_0_g19720 );
			float4 temp_cast_28 = (1E-06).xxxx;
			float4 temp_output_343_0_g19720 = saturate( ( 1.0 - ( temp_output_272_0_g19720 / 25.0 ) ) );
			float4 temp_output_320_0_g19720 = min( ( 1.0 / ( 1.0 + temp_output_272_0_g19720 ) ) , ( temp_output_343_0_g19720 * temp_output_343_0_g19720 ) );
			float4 VertexLightAtten7220 = temp_output_320_0_g19720;
			float4 temp_output_1306_0_g19967 = VertexLightAtten7220;
			float4 break2039_g19967 = temp_output_1306_0_g19967;
			float3 ToonRampTexVLTwo2103_g19967 = (tex2DNode648_g19967).rgb;
			float3 lerpResult2029_g19967 = lerp( ToonRampTexVLTwo2103_g19967 , RampColorRGB42_g19967 , ColoringPointLights1080_g19967);
			float3 lerpResult2028_g19967 = lerp( lerpResult2029_g19967 , float3( 1,1,1 ) , break390_g19967.y);
			float3 localLightColorZOne1302_g19967 = LightColorZOne();
			float3 ToonRampTexVLThree2105_g19967 = (tex2DNode649_g19967).rgb;
			float3 lerpResult2033_g19967 = lerp( ToonRampTexVLThree2105_g19967 , RampColorRGB42_g19967 , ColoringPointLights1080_g19967);
			float3 lerpResult2032_g19967 = lerp( lerpResult2033_g19967 , float3( 1,1,1 ) , break390_g19967.z);
			float3 localLightColorZTwo1303_g19967 = LightColorZTwo();
			float3 ToonRampTexVLFour2107_g19967 = (tex2DNode650_g19967).rgb;
			float3 lerpResult2037_g19967 = lerp( ToonRampTexVLFour2107_g19967 , RampColorRGB42_g19967 , ColoringPointLights1080_g19967);
			float3 lerpResult2036_g19967 = lerp( lerpResult2037_g19967 , float3( 1,1,1 ) , break390_g19967.w);
			float3 localLightColorZThree1304_g19967 = LightColorZThree();
			int Steps30_g19967 = _Steps;
			float4 VertexLightNdLStepped2141_g19967 = saturate( ( floor( ( temp_output_1224_0_g19967 * Steps30_g19967 ) ) / ( Steps30_g19967 - 1 ) ) );
			float4 break2090_g19967 = saturate( ( VertexLightNdLStepped2141_g19967 + ( 1.0 - PointSpotShadows2112_g19967 ) ) );
			float3 temp_cast_29 = (break2090_g19967.x).xxx;
			float3 lerpResult2097_g19967 = lerp( temp_cast_29 , RampColorRGB42_g19967 , ColoringPointLights1080_g19967);
			float3 lerpResult2089_g19967 = lerp( lerpResult2097_g19967 , float3( 1,1,1 ) , break2090_g19967.x);
			float3 localLightColorZero2091_g19967 = LightColorZero();
			float4 break2074_g19967 = temp_output_1306_0_g19967;
			float3 temp_cast_30 = (break2090_g19967.y).xxx;
			float3 lerpResult2084_g19967 = lerp( temp_cast_30 , RampColorRGB42_g19967 , ColoringPointLights1080_g19967);
			float3 lerpResult2087_g19967 = lerp( lerpResult2084_g19967 , float3( 1,1,1 ) , break2090_g19967.y);
			float3 localLightColorZOne2083_g19967 = LightColorZOne();
			float3 temp_cast_31 = (break2090_g19967.z).xxx;
			float3 lerpResult2081_g19967 = lerp( temp_cast_31 , RampColorRGB42_g19967 , ColoringPointLights1080_g19967);
			float3 lerpResult2073_g19967 = lerp( lerpResult2081_g19967 , float3( 1,1,1 ) , break2090_g19967.z);
			float3 localLightColorZTwo2077_g19967 = LightColorZTwo();
			float3 temp_cast_32 = (break2090_g19967.w).xxx;
			float3 lerpResult2093_g19967 = lerp( temp_cast_32 , RampColorRGB42_g19967 , ColoringPointLights1080_g19967);
			float3 lerpResult2095_g19967 = lerp( lerpResult2093_g19967 , float3( 1,1,1 ) , break2090_g19967.w);
			float3 localLightColorZThree2080_g19967 = LightColorZThree();
			float3 ifLocalVar553_g19967 = 0;
			if( 1.0 > ToggleSteps66_g19967 )
				ifLocalVar553_g19967 = ( ( lerpResult2004_g19967 * localLightColorZero385_g19967 * break2039_g19967.x ) + ( lerpResult2028_g19967 * localLightColorZOne1302_g19967 * break2039_g19967.y ) + ( lerpResult2032_g19967 * localLightColorZTwo1303_g19967 * break2039_g19967.z ) + ( lerpResult2036_g19967 * localLightColorZThree1304_g19967 * break2039_g19967.w ) );
			else if( 1.0 == ToggleSteps66_g19967 )
				ifLocalVar553_g19967 = ( ( lerpResult2089_g19967 * localLightColorZero2091_g19967 * break2074_g19967.x ) + ( lerpResult2087_g19967 * localLightColorZOne2083_g19967 * break2074_g19967.y ) + ( lerpResult2073_g19967 * localLightColorZTwo2077_g19967 * break2074_g19967.z ) + ( lerpResult2095_g19967 * localLightColorZThree2080_g19967 * break2074_g19967.w ) );
			half3 linearRgb1433_g19967 = ifLocalVar553_g19967;
			half localgetLinearRgbToLuminance1433_g19967 = getLinearRgbToLuminance( linearRgb1433_g19967 );
			float3 temp_cast_33 = (localgetLinearRgbToLuminance1433_g19967).xxx;
			float3 ifLocalVar1341_g19967 = 0;
			if( 1.0 > MonochromeTogglePixelLight1337_g19967 )
				ifLocalVar1341_g19967 = ifLocalVar553_g19967;
			else if( 1.0 == MonochromeTogglePixelLight1337_g19967 )
				ifLocalVar1341_g19967 = temp_cast_33;
			#ifdef UNITY_PASS_FORWARDBASE
				float3 staticSwitch1927_g19967 = ifLocalVar1341_g19967;
			#else
				float3 staticSwitch1927_g19967 = float3( 0,0,0 );
			#endif
			#ifdef VERTEXLIGHT_ON
				float3 staticSwitch1928_g19967 = staticSwitch1927_g19967;
			#else
				float3 staticSwitch1928_g19967 = float3( 0,0,0 );
			#endif
			float3 DiffuseVertexLighting354_g19967 = staticSwitch1928_g19967;
			float3 temp_output_1997_0_g19967 = ( DiffuseVertexLighting354_g19967 * _MaxLightDirect );
			#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
			float4 ase_lightColor = 0;
			#else //aselc
			float4 ase_lightColor = _LightColor0;
			#endif //aselc
			#ifdef DIRECTIONAL
				float3 staticSwitch952_g19967 = ase_lightColor.rgb;
			#else
				float3 staticSwitch952_g19967 = float3( 0,0,0 );
			#endif
			half3 localAmbient1767_g19967 = Ambient();
			half3 localAmbient1820_g19967 = Ambient();
			float3 break1831_g19967 = localAmbient1820_g19967;
			float3 lerpResult1766_g19967 = lerp( ( localAmbient1767_g19967 * _AmbientBoost ) , localAmbient1767_g19967 , saturate( max( max( break1831_g19967.x , break1831_g19967.y ) , break1831_g19967.z ) ));
			float3 AmbientLightBoosted1782_g19967 = lerpResult1766_g19967;
			half3 linearRgb1430_g19967 = ( staticSwitch952_g19967 + AmbientLightBoosted1782_g19967 );
			half localgetLinearRgbToLuminance1430_g19967 = getLinearRgbToLuminance( linearRgb1430_g19967 );
			half3 linearRgb1431_g19967 = ase_lightColor.rgb;
			half localgetLinearRgbToLuminance1431_g19967 = getLinearRgbToLuminance( linearRgb1431_g19967 );
			float3 temp_cast_34 = (localgetLinearRgbToLuminance1431_g19967).xxx;
			float3 ifLocalVar1331_g19967 = 0;
			if( 1.0 > MonochromeTogglePixelLight1337_g19967 )
				ifLocalVar1331_g19967 = ase_lightColor.rgb;
			else if( 1.0 == MonochromeTogglePixelLight1337_g19967 )
				ifLocalVar1331_g19967 = temp_cast_34;
			#if defined(LIGHTMAP_ON) && UNITY_VERSION < 560 //aseld
			float3 ase_worldlightDir = 0;
			#else //aseld
			float3 ase_worldlightDir = normalize( UnityWorldSpaceLightDir( ase_worldPos ) );
			#endif //aseld
			float dotResult3_g19720 = dot( WorldNormals20_g19720 , ase_worldlightDir );
			float NdotL7098 = dotResult3_g19720;
			float NdotLHalfed204_g19967 = saturate( ( ( NdotL7098 * NdLHalfingControl704_g19967 ) + RampOffset167_g19967 ) );
			float2 temp_cast_35 = (NdotLHalfed204_g19967).xx;
			float3 ToonRampTexNDL207_g19967 = (SAMPLE_TEXTURE2D( _ToonRamp, sampler_linear_clamp, temp_cast_35 )).rgb;
			float DirectShadowIntensity163_g19967 = _DirectShadowIntensity;
			float3 lerpResult1929_g19967 = lerp( float3( 1,1,1 ) , ToonRampTexNDL207_g19967 , DirectShadowIntensity163_g19967);
			float3 lerpResult2115_g19967 = lerp( float3( 1,1,1 ) , ToonRampTexNDL207_g19967 , PointSpotShadows2112_g19967);
			#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch2068_g19967 = lerpResult2115_g19967;
			#else
				float3 staticSwitch2068_g19967 = lerpResult1929_g19967;
			#endif
			float3 _egg = float3(1,1,1);
			float TangentNormalAtten1259_g19967 = ase_lightAtten;
			float2 temp_cast_36 = (TangentNormalAtten1259_g19967).xx;
			float3 ToonRampTexATTEN216_g19967 = (SAMPLE_TEXTURE2D( _ToonRamp, sampler_linear_clamp, temp_cast_36 )).rgb;
			#ifdef DIRECTIONAL
				float3 staticSwitch1968_g19967 = ToonRampTexATTEN216_g19967;
			#else
				float3 staticSwitch1968_g19967 = _egg;
			#endif
			float3 DirectionalAttenuationRamp24_g19967 = staticSwitch1968_g19967;
			float SelfCastShadows1958_g19967 = _SelfCastShadows;
			float3 lerpResult1941_g19967 = lerp( float3( 1,1,1 ) , DirectionalAttenuationRamp24_g19967 , SelfCastShadows1958_g19967);
			float temp_output_708_0_g19967 = saturate( ( floor( ( NdotLHalfed204_g19967 * Steps30_g19967 ) ) / ( Steps30_g19967 - 1 ) ) );
			float lerpResult1945_g19967 = lerp( 1.0 , temp_output_708_0_g19967 , DirectShadowIntensity163_g19967);
			float lerpResult2131_g19967 = lerp( 1.0 , temp_output_708_0_g19967 , PointSpotShadows2112_g19967);
			#ifdef UNITY_PASS_FORWARDADD
				float staticSwitch2129_g19967 = lerpResult2131_g19967;
			#else
				float staticSwitch2129_g19967 = lerpResult1945_g19967;
			#endif
			#ifdef DIRECTIONAL
				float staticSwitch1967_g19967 = TangentNormalAtten1259_g19967;
			#else
				float staticSwitch1967_g19967 = 1.0;
			#endif
			float DirectionalAttenuationSteps1969_g19967 = staticSwitch1967_g19967;
			float temp_output_1936_0_g19967 = saturate( ( floor( ( DirectionalAttenuationSteps1969_g19967 * Steps30_g19967 ) ) / ( Steps30_g19967 - 1 ) ) );
			float lerpResult1942_g19967 = lerp( 1.0 , temp_output_1936_0_g19967 , SelfCastShadows1958_g19967);
			float3 temp_cast_37 = (min( staticSwitch2129_g19967 , lerpResult1942_g19967 )).xxx;
			float3 ifLocalVar71_g19967 = 0;
			UNITY_BRANCH 
			if( 1.0 > ToggleSteps66_g19967 )
				ifLocalVar71_g19967 = min( staticSwitch2068_g19967 , lerpResult1941_g19967 );
			else if( 1.0 == ToggleSteps66_g19967 )
				ifLocalVar71_g19967 = temp_cast_37;
			float2 uv_ShadowMask = i.uv_texcoord * _ShadowMask_ST.xy + _ShadowMask_ST.zw;
			float2 temp_output_698_0_g19967 = (SAMPLE_TEXTURE2D( _ShadowMask, sampler_trilinear_clamp, uv_ShadowMask )).rg;
			float2 ifLocalVar597_g19967 = 0;
			if( 1.0 > _ShadowMaskinvert )
				ifLocalVar597_g19967 = temp_output_698_0_g19967;
			else if( 1.0 == _ShadowMaskinvert )
				ifLocalVar597_g19967 = ( 1.0 - temp_output_698_0_g19967 );
			float2 break699_g19967 = ( ifLocalVar597_g19967 * _ShadowMaskStrength );
			float PixelShadowMask279_g19967 = break699_g19967.x;
			float3 lerpResult290_g19967 = lerp( float3( 1,1,1 ) , ifLocalVar71_g19967 , PixelShadowMask279_g19967);
			float3 LightRamp85_g19967 = lerpResult290_g19967;
			float3 lerpResult1624_g19967 = lerp( LightRamp85_g19967 , RampColorRGB42_g19967 , ColoringPointLights1080_g19967);
			half3 linearRgb2055_g19967 = LightRamp85_g19967;
			half localgetLinearRgbToLuminance2055_g19967 = getLinearRgbToLuminance( linearRgb2055_g19967 );
			float3 lerpResult1623_g19967 = lerp( lerpResult1624_g19967 , float3( 1,1,1 ) , localgetLinearRgbToLuminance2055_g19967);
			#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch1036_g19967 = ( lerpResult1623_g19967 * ase_lightAtten );
			#else
				float3 staticSwitch1036_g19967 = float3( 0,0,0 );
			#endif
			float ColoringDirectEnvLights1082_g19967 = _ColoringDirectEnvLights;
			float3 lerpResult1544_g19967 = lerp( LightRamp85_g19967 , RampColorRGB42_g19967 , ColoringDirectEnvLights1082_g19967);
			float3 lerpResult1538_g19967 = lerp( lerpResult1544_g19967 , float3( 1,1,1 ) , localgetLinearRgbToLuminance2055_g19967);
			#ifdef DIRECTIONAL
				float3 staticSwitch1035_g19967 = lerpResult1538_g19967;
			#else
				float3 staticSwitch1035_g19967 = staticSwitch1036_g19967;
			#endif
			float MonochromeToggleEnv1327_g19967 = _ToggleMonochromeEnv;
			half3 linearRgb1432_g19967 = AmbientLightBoosted1782_g19967;
			half localgetLinearRgbToLuminance1432_g19967 = getLinearRgbToLuminance( linearRgb1432_g19967 );
			float3 temp_cast_38 = (localgetLinearRgbToLuminance1432_g19967).xxx;
			float3 ifLocalVar1325_g19967 = 0;
			if( 1.0 > MonochromeToggleEnv1327_g19967 )
				ifLocalVar1325_g19967 = AmbientLightBoosted1782_g19967;
			else if( 1.0 == MonochromeToggleEnv1327_g19967 )
				ifLocalVar1325_g19967 = temp_cast_38;
			float3 localambientDir475_g19720 = ambientDir();
			float dotResult67_g19720 = dot( localambientDir475_g19720 , WorldNormals20_g19720 );
			float NdotAmbientL7100 = dotResult67_g19720;
			float AmbientUV224_g19967 = saturate( ( ( NdotAmbientL7100 * NdLHalfingControl704_g19967 ) + RampOffset167_g19967 ) );
			float2 temp_cast_39 = (AmbientUV224_g19967).xx;
			float3 ToonRampTexAmbient220_g19967 = (SAMPLE_TEXTURE2D( _ToonRamp, sampler_linear_clamp, temp_cast_39 )).rgb;
			float temp_output_709_0_g19967 = saturate( ( floor( ( AmbientUV224_g19967 * Steps30_g19967 ) ) / ( Steps30_g19967 - 1 ) ) );
			float3 temp_cast_40 = (temp_output_709_0_g19967).xxx;
			float3 ifLocalVar92_g19967 = 0;
			UNITY_BRANCH 
			if( 1.0 > ToggleSteps66_g19967 )
				ifLocalVar92_g19967 = ToonRampTexAmbient220_g19967;
			else if( 1.0 == ToggleSteps66_g19967 )
				ifLocalVar92_g19967 = temp_cast_40;
			float IndirectShadowMask688_g19967 = break699_g19967.y;
			float3 lerpResult1684_g19967 = lerp( float3( 1,1,1 ) , ifLocalVar92_g19967 , IndirectShadowMask688_g19967);
			float3 lerpResult1626_g19967 = lerp( lerpResult1684_g19967 , RampColorRGB42_g19967 , ColoringDirectEnvLights1082_g19967);
			half3 linearRgb2058_g19967 = lerpResult1684_g19967;
			half localgetLinearRgbToLuminance2058_g19967 = getLinearRgbToLuminance( linearRgb2058_g19967 );
			float3 lerpResult1627_g19967 = lerp( lerpResult1626_g19967 , float3( 1,1,1 ) , localgetLinearRgbToLuminance2058_g19967);
			float3 lerpResult284_g19967 = lerp( float3( 1,1,1 ) , lerpResult1627_g19967 , max( _IndirectShadowIntensity , 1E-06 ));
			half3 linearRgb1953_g19967 = ( ase_lightColor.rgb * staticSwitch1035_g19967 );
			half localgetLinearRgbToLuminance1953_g19967 = getLinearRgbToLuminance( linearRgb1953_g19967 );
			float3 lerpResult1661_g19967 = lerp( lerpResult284_g19967 , float3( 1,1,1 ) , saturate( localgetLinearRgbToLuminance1953_g19967 ));
			float2 uv_OcclusionMap = i.uv_texcoord * _OcclusionMap_ST.xy + _OcclusionMap_ST.zw;
			float lerpResult54_g19967 = lerp( 1.0 , SAMPLE_TEXTURE2D( _OcclusionMap, sampler_trilinear_repeat, uv_OcclusionMap ).g , _Occlusion);
			float3 FinalAmbientBakedLight132_g19967 = ( ifLocalVar1325_g19967 * lerpResult1661_g19967 * lerpResult54_g19967 );
			float3 ForFinalLightCalculation993_g19967 = ( ( ifLocalVar1331_g19967 * staticSwitch1035_g19967 ) + FinalAmbientBakedLight132_g19967 );
			float3 ifLocalVar944_g19967 = 0;
			if( ( localgetLinearRgbToLuminance1430_g19967 * _ExperimentalToggle ) <= 1.0 )
				ifLocalVar944_g19967 = ForFinalLightCalculation993_g19967;
			else
				ifLocalVar944_g19967 = ( max( float3( 0,0,0 ) , ForFinalLightCalculation993_g19967 ) / localgetLinearRgbToLuminance1430_g19967 );
			float3 temp_output_782_0_g19967 = ( ifLocalVar944_g19967 * _MaxLightDirect );
			float3 ase_worldViewDir = Unity_SafeNormalize( UnityWorldSpaceViewDir( ase_worldPos ) );
			float dotResult442_g19720 = dot( WorldNormals20_g19720 , ase_worldViewDir );
			float NdotV7095 = dotResult442_g19720;
			float smoothstepResult10_g19722 = smoothstep( min( _ShadowRimSharpness , ( 1.0 - 1E-06 ) ) , 1.0 , ( NdotV7095 + _ShadowRimRange ));
			float lerpResult11_g19722 = lerp( 1.0 , smoothstepResult10_g19722 , _ShadowRimOpacity);
			float ifLocalVar7398 = 0;
			if( 1.0 > _RimSwitch )
				ifLocalVar7398 = lerpResult11_g19722;
			else if( 1.0 == _RimSwitch )
				ifLocalVar7398 = 1.0;
			float ShadowRim7403 = ifLocalVar7398;
			float3 FinalLight7423 = ( ( ( temp_output_150_0_g19967 * temp_output_1997_0_g19967 ) + ( temp_output_782_0_g19967 * temp_output_150_0_g19967 ) ) * ShadowRim7403 );
			float3 temp_output_7342_0 = ( FinalLight7423 * AlphaChannelMul7530 );
			float3 ifLocalVar7341 = 0;
			if( 1.0 <= _RenderingMode )
				ifLocalVar7341 = temp_output_7342_0;
			else
				ifLocalVar7341 = FinalLight7423;
			float ToggleAdvanced7295 = _COLORCOLOR;
			float ToggleCubemap7294 = _COLORADDSUBDIFF;
			float temp_output_7513_0 = ( ToggleAdvanced7295 * ToggleCubemap7294 );
			float Intensity285_g19983 = _CubemapIntensity;
			float UVSwitchProp2886_g19983 = _ReflectionMaskUVSwitch;
			float2 UV02886_g19983 = i.uv_texcoord.xy;
			float2 UV12886_g19983 = i.uv2_texcoord2;
			float2 UV22886_g19983 = i.uv3_texcoord3;
			float2 UV32886_g19983 = i.uv4_texcoord4;
			float2 localUVSwitch2886_g19983 = UVSwitch( UVSwitchProp2886_g19983 , UV02886_g19983 , UV12886_g19983 , UV22886_g19983 , UV32886_g19983 );
			float2 ReflectionMaskUVSwitch2896_g19983 = ( ( _ReflectionMask_ST.xy * localUVSwitch2886_g19983 ) + _ReflectionMask_ST.zw );
			float temp_output_80_0_g19983 = ( Intensity285_g19983 * SAMPLE_TEXTURE2D( _ReflectionMask, sampler_trilinear_repeat, ReflectionMaskUVSwitch2896_g19983 ).r );
			float LinearIn2768_g19983 = _Metallic;
			float localgetGammaToLinearSpaceExact2768_g19983 = getGammaToLinearSpaceExact( LinearIn2768_g19983 );
			float Metallic302_g19983 = localgetGammaToLinearSpaceExact2768_g19983;
			float2 uv_MetallicMap = i.uv_texcoord * _MetallicMap_ST.xy + _MetallicMap_ST.zw;
			float4 tex2DNode2688_g19983 = SAMPLE_TEXTURE2D( _MetallicMap, sampler_trilinear_repeat, uv_MetallicMap );
			float MetallicTex289_g19983 = ( Metallic302_g19983 * tex2DNode2688_g19983.r );
			float ifLocalVar7787 = 0;
			if( temp_output_7513_0 > 0.0 )
				ifLocalVar7787 = ( temp_output_80_0_g19983 * MetallicTex289_g19983 );
			float CubemapLightAbsorbtion7786 = ifLocalVar7787;
			float AdvancedToggle555_g19987 = ToggleAdvanced7295;
			float temp_output_570_0_g19987 = ( _MatcapR1Toggle * AdvancedToggle555_g19987 );
			float MatcapR1Blending703_g19987 = _MatcapR1Blending;
			float UVSwitchProp912_g19987 = _ReflectionMaskMatcapUVSwitch;
			float2 UV0912_g19987 = i.uv_texcoord.xy;
			float2 UV1912_g19987 = i.uv2_texcoord2;
			float2 UV2912_g19987 = i.uv3_texcoord3;
			float2 UV3912_g19987 = i.uv4_texcoord4;
			float2 localUVSwitch912_g19987 = UVSwitch( UVSwitchProp912_g19987 , UV0912_g19987 , UV1912_g19987 , UV2912_g19987 , UV3912_g19987 );
			float2 ReflectionMaskMatcapUVSwitch914_g19987 = ( ( _ReflectionMaskMatcap_ST.xy * localUVSwitch912_g19987 ) + _ReflectionMaskMatcap_ST.zw );
			float4 break646_g19987 = SAMPLE_TEXTURE2D( _ReflectionMaskMatcap, sampler_trilinear_repeat, ReflectionMaskMatcapUVSwitch914_g19987 );
			float ReflectionMaskR199_g19987 = break646_g19987.r;
			float ifLocalVar677_g19987 = 0;
			if( 1.0 > ( _MatcapR1Mode + ( 1.0 - temp_output_570_0_g19987 ) ) )
				ifLocalVar677_g19987 = ( MatcapR1Blending703_g19987 * ReflectionMaskR199_g19987 );
			float MatcapR1LightAbsorbtion731_g19987 = ifLocalVar677_g19987;
			float temp_output_573_0_g19987 = ( _MatcapG2Toggle * AdvancedToggle555_g19987 );
			float MatcapG2Blending706_g19987 = _MatcapG2Blending;
			float ReflectionMaskG200_g19987 = break646_g19987.g;
			float ifLocalVar712_g19987 = 0;
			if( 1.0 > ( _MatcapG2Mode + ( 1.0 - temp_output_573_0_g19987 ) ) )
				ifLocalVar712_g19987 = ( MatcapG2Blending706_g19987 * ReflectionMaskG200_g19987 );
			float MatcapG2LightAbsorbtion732_g19987 = ifLocalVar712_g19987;
			float temp_output_576_0_g19987 = ( _MatcapB3Toggle * AdvancedToggle555_g19987 );
			float MatcapB3Blending708_g19987 = _MatcapB3Blending;
			float ReflectionMaskB201_g19987 = break646_g19987.b;
			float ifLocalVar715_g19987 = 0;
			if( 1.0 > ( _MatcapB3Mode + ( 1.0 - temp_output_576_0_g19987 ) ) )
				ifLocalVar715_g19987 = ( MatcapB3Blending708_g19987 * ReflectionMaskB201_g19987 );
			float MatcapB3LightAbsorbtion733_g19987 = ifLocalVar715_g19987;
			float temp_output_579_0_g19987 = ( _MatcapA4Toggle * AdvancedToggle555_g19987 );
			float MatcapA4Blending710_g19987 = _MatcapA4Blending;
			float ReflectionMaskA202_g19987 = break646_g19987.a;
			float ifLocalVar718_g19987 = 0;
			if( 1.0 > ( _MatcapA4Mode + ( 1.0 - temp_output_579_0_g19987 ) ) )
				ifLocalVar718_g19987 = ( MatcapA4Blending710_g19987 * ReflectionMaskA202_g19987 );
			float MatcapA4LightAbsorbtion734_g19987 = ifLocalVar718_g19987;
			float MatcapLightAbsorbtion7785 = saturate( ( MatcapR1LightAbsorbtion731_g19987 + MatcapG2LightAbsorbtion732_g19987 + MatcapB3LightAbsorbtion733_g19987 + MatcapA4LightAbsorbtion734_g19987 ) );
			float3 lerpResult7792 = lerp( ifLocalVar7341 , float3( 0,0,0 ) , saturate( ( CubemapLightAbsorbtion7786 + MatcapLightAbsorbtion7785 ) ));
			float locallongIF7993 = ( 0.0 );
			float3 Out7993 = float3( 0,0,0 );
			float4 break24_g19720 = ase_lightColor;
			float GrayscaledLight7101 = saturate( ( max( max( break24_g19720.r , break24_g19720.g ) , break24_g19720.b ) * break24_g19720.a ) );
			float temp_output_1739_0_g19968 = GrayscaledLight7101;
			float3 normalizeResult464_g19720 = ASESafeNormalize( ( ase_worldViewDir + ase_worldlightDir ) );
			float3 HalfVectorUnityNormalized457_g19720 = normalizeResult464_g19720;
			float dotResult42_g19720 = dot( WorldNormals20_g19720 , HalfVectorUnityNormalized457_g19720 );
			float NdotH7096 = dotResult42_g19720;
			float NdotH583_g19968 = NdotH7096;
			float HighlightOffset127_g19968 = _HighlightOffset;
			float3 WorldNormals2285_g19968 = worldnormals7361;
			float3 worldNormal2417_g19968 = WorldNormals2285_g19968;
			float UVSwitchProp2003_g19968 = _SpecularMapUVSwitch;
			float2 UV02003_g19968 = i.uv_texcoord.xy;
			float2 UV12003_g19968 = i.uv2_texcoord2;
			float2 UV22003_g19968 = i.uv3_texcoord3;
			float2 UV32003_g19968 = i.uv4_texcoord4;
			float2 localUVSwitch2003_g19968 = UVSwitch( UVSwitchProp2003_g19968 , UV02003_g19968 , UV12003_g19968 , UV22003_g19968 , UV32003_g19968 );
			float4 tex2DNode1752_g19968 = SAMPLE_TEXTURE2D( _SpecularMap, sampler_trilinear_repeat, ( ( _SpecularMap_ST.xy * localUVSwitch2003_g19968 ) + _SpecularMap_ST.zw ) );
			float4 break380_g19968 = tex2DNode1752_g19968;
			float SpecularMapa1649_g19968 = break380_g19968.a;
			float smoothness2417_g19968 = ( _HighlightSmoothness * SpecularMapa1649_g19968 );
			float localGSAA_Filament2417_g19968 = GSAA_Filament( worldNormal2417_g19968 , smoothness2417_g19968 );
			float HighlightSmoothness128_g19968 = localGSAA_Filament2417_g19968;
			float3 ColorRGB141_g19968 = (_SpecularColor).rgb;
			float temp_output_2_0_g19969 = _SpecularTint;
			float temp_output_3_0_g19969 = ( 1.0 - temp_output_2_0_g19969 );
			float3 appendResult7_g19969 = (float3(temp_output_3_0_g19969 , temp_output_3_0_g19969 , temp_output_3_0_g19969));
			float3 DiffuseTint148_g19968 = ( ( MainTexSaturate7397 * temp_output_2_0_g19969 ) + appendResult7_g19969 );
			float ColorA142_g19968 = _SpecularColor.a;
			float4 SpecularMapRGBA2289_g19968 = tex2DNode1752_g19968;
			float3 SpecularMapRGB160_g19968 = (SpecularMapRGBA2289_g19968).rgb;
			float SpecShadowMaskVar279_g19968 = _SpecShadowMaskVar;
			#ifdef UNITY_PASS_FORWARDADD
				float staticSwitch1892_g19968 = ase_lightAtten;
			#else
				float staticSwitch1892_g19968 = 1.0;
			#endif
			float NdotL595_g19968 = NdotL7098;
			half3 linearRgb2056_g19967 = min( ToonRampTexNDL207_g19967 , DirectionalAttenuationRamp24_g19967 );
			half localgetLinearRgbToLuminance2056_g19967 = getLinearRgbToLuminance( linearRgb2056_g19967 );
			float ifLocalVar1946_g19967 = 0;
			UNITY_BRANCH 
			if( 1.0 > ToggleSteps66_g19967 )
				ifLocalVar1946_g19967 = localgetLinearRgbToLuminance2056_g19967;
			else if( 1.0 == ToggleSteps66_g19967 )
				ifLocalVar1946_g19967 = min( temp_output_708_0_g19967 , temp_output_1936_0_g19967 );
			float DirectLightRamp7427 = ifLocalVar1946_g19967;
			float SpecShadowMaskPower286_g19968 = _SpecShadowMaskPower;
			float temp_output_1_0_g19970 = -max( SpecShadowMaskPower286_g19968 , -0.99 );
			float temp_output_2363_0_g19968 = ( saturate( SpecShadowMaskPower286_g19968 ) * 0.5 );
			float lerpResult2345_g19968 = lerp( ( ( DirectLightRamp7427 - temp_output_1_0_g19970 ) / ( 1.0 - temp_output_1_0_g19970 ) ) , 1.0 , ( ( SpecShadowMaskPower286_g19968 * temp_output_2363_0_g19968 ) + temp_output_2363_0_g19968 ));
			float temp_output_1878_0_g19968 = saturate( lerpResult2345_g19968 );
			#ifdef UNITY_PASS_FORWARDADD
				float staticSwitch621_g19968 = ( temp_output_1878_0_g19968 * ase_lightAtten );
			#else
				float staticSwitch621_g19968 = 0.0;
			#endif
			#ifdef DIRECTIONAL
				float staticSwitch620_g19968 = temp_output_1878_0_g19968;
			#else
				float staticSwitch620_g19968 = staticSwitch621_g19968;
			#endif
			float AdditionalShadowRamp280_g19968 = staticSwitch620_g19968;
			float ifLocalVar1904_g19968 = 0;
			UNITY_BRANCH 
			if( 1.0 > SpecShadowMaskVar279_g19968 )
				ifLocalVar1904_g19968 = staticSwitch1892_g19968;
			else if( 1.0 == SpecShadowMaskVar279_g19968 )
				ifLocalVar1904_g19968 = saturate( ( ase_lightAtten * NdotL595_g19968 ) );
			else if( 1.0 < SpecShadowMaskVar279_g19968 )
				ifLocalVar1904_g19968 = AdditionalShadowRamp280_g19968;
			float ShadowsToonAniso1905_g19968 = ifLocalVar1904_g19968;
			float3 localambientDir468_g19720 = ambientDir();
			float3 normalizeResult467_g19720 = ASESafeNormalize( ( ase_worldViewDir + localambientDir468_g19720 ) );
			float3 AmbientHalfVectorUnityNormalized469_g19720 = normalizeResult467_g19720;
			float dotResult75_g19720 = dot( WorldNormals20_g19720 , AmbientHalfVectorUnityNormalized469_g19720 );
			float NdotAmbientH7099 = dotResult75_g19720;
			float NdotAmbientH591_g19968 = NdotAmbientH7099;
			half3 localAmbient1730_g19968 = Ambient();
			float NdotAmbientL597_g19968 = NdotAmbientL7100;
			half3 linearRgb2057_g19967 = ToonRampTexAmbient220_g19967;
			half localgetLinearRgbToLuminance2057_g19967 = getLinearRgbToLuminance( linearRgb2057_g19967 );
			float ifLocalVar2059_g19967 = 0;
			UNITY_BRANCH 
			if( 1.0 > ToggleSteps66_g19967 )
				ifLocalVar2059_g19967 = localgetLinearRgbToLuminance2057_g19967;
			else if( 1.0 == ToggleSteps66_g19967 )
				ifLocalVar2059_g19967 = temp_output_709_0_g19967;
			float AmbientRamp7429 = ifLocalVar2059_g19967;
			float temp_output_1_0_g19972 = -max( SpecShadowMaskPower286_g19968 , -0.99 );
			float temp_output_2375_0_g19968 = ( saturate( SpecShadowMaskPower286_g19968 ) * 0.5 );
			float lerpResult2369_g19968 = lerp( ( ( AmbientRamp7429 - temp_output_1_0_g19972 ) / ( 1.0 - temp_output_1_0_g19972 ) ) , 1.0 , ( ( SpecShadowMaskPower286_g19968 * temp_output_2375_0_g19968 ) + temp_output_2375_0_g19968 ));
			float ifLocalVar1824_g19968 = 0;
			UNITY_BRANCH 
			if( 1.0 > SpecShadowMaskVar279_g19968 )
				ifLocalVar1824_g19968 = 1.0;
			else if( 1.0 == SpecShadowMaskVar279_g19968 )
				ifLocalVar1824_g19968 = saturate( NdotAmbientL597_g19968 );
			else if( 1.0 < SpecShadowMaskVar279_g19968 )
				ifLocalVar1824_g19968 = saturate( lerpResult2369_g19968 );
			float ShadowsIndirectNdL289_g19968 = ifLocalVar1824_g19968;
			float3 ifLocalVar1740_g19968 = 0;
			if( temp_output_1739_0_g19968 > 0.0 )
				ifLocalVar1740_g19968 = ( saturate( ( ( NdotH583_g19968 + HighlightOffset127_g19968 ) / max( HighlightSmoothness128_g19968 , 1E-06 ) ) ) * ColorRGB141_g19968 * DiffuseTint148_g19968 * ColorA142_g19968 * SpecularMapRGB160_g19968 * ase_lightColor.rgb * ShadowsToonAniso1905_g19968 );
			else if( temp_output_1739_0_g19968 == 0.0 )
				ifLocalVar1740_g19968 = ( saturate( ( ( NdotAmbientH591_g19968 + HighlightOffset127_g19968 ) / max( HighlightSmoothness128_g19968 , 1E-06 ) ) ) * ColorRGB141_g19968 * DiffuseTint148_g19968 * ColorA142_g19968 * SpecularMapRGB160_g19968 * localAmbient1730_g19968 * ShadowsIndirectNdL289_g19968 );
			float3 Toon7993 = ( ifLocalVar1740_g19968 + float3( 0,0,0 ) );
			float ifLocalVar1769_g19968 = 0;
			UNITY_BRANCH 
			if( 1.0 > SpecShadowMaskVar279_g19968 )
				ifLocalVar1769_g19968 = 1.0;
			else if( 1.0 == SpecShadowMaskVar279_g19968 )
				ifLocalVar1769_g19968 = NdotL595_g19968;
			else if( 1.0 < SpecShadowMaskVar279_g19968 )
				ifLocalVar1769_g19968 = temp_output_1878_0_g19968;
			float NdLGGX171_g19968 = ifLocalVar1769_g19968;
			float temp_output_694_0_g19968 = max( 0.0 , NdLGGX171_g19968 );
			float NdotL688_g19968 = temp_output_694_0_g19968;
			float3 viewDir443_g19720 = ase_worldViewDir;
			float3 normal443_g19720 = WorldNormals20_g19720;
			float localCorrectNegativeNdotV443_g19720 = CorrectNegativeNdotV( viewDir443_g19720 , normal443_g19720 );
			float NdotVCorr7274 = localCorrectNegativeNdotV443_g19720;
			float CorrNdotV626_g19968 = NdotVCorr7274;
			float NdotV688_g19968 = CorrNdotV626_g19968;
			float temp_output_566_0_g19968 = ( 1.0 - HighlightSmoothness128_g19968 );
			float temp_output_643_0_g19968 = max( ( temp_output_566_0_g19968 * temp_output_566_0_g19968 ) , 0.002 );
			float roughness688_g19968 = temp_output_643_0_g19968;
			float localgetSmithJointGGXVisibilityTerm688_g19968 = getSmithJointGGXVisibilityTerm( NdotL688_g19968 , NdotV688_g19968 , roughness688_g19968 );
			float GGXVisibilityTerm630_g19968 = localgetSmithJointGGXVisibilityTerm688_g19968;
			float NdotH689_g19968 = max( 0.0 , NdotH583_g19968 );
			float roughness689_g19968 = temp_output_643_0_g19968;
			float localgetGGXTerm689_g19968 = getGGXTerm( NdotH689_g19968 , roughness689_g19968 );
			float GGXTerm630_g19968 = localgetGGXTerm689_g19968;
			float NdotL630_g19968 = temp_output_694_0_g19968;
			float dotResult50_g19720 = dot( ase_worldlightDir , HalfVectorUnityNormalized457_g19720 );
			float LdotH7097 = dotResult50_g19720;
			float LdotH2104_g19968 = LdotH7097;
			float LdotH630_g19968 = max( 0.0 , LdotH2104_g19968 );
			float roughness630_g19968 = temp_output_643_0_g19968;
			float3 specColor630_g19968 = ( ColorRGB141_g19968 * DiffuseTint148_g19968 );
			float ifLocalVar1908_g19968 = 0;
			UNITY_BRANCH 
			if( 1.0 == SpecShadowMaskVar279_g19968 )
				ifLocalVar1908_g19968 = ase_lightAtten;
			else
				ifLocalVar1908_g19968 = staticSwitch1892_g19968;
			float AttenGGX1911_g19968 = ifLocalVar1908_g19968;
			float3 lightcolor630_g19968 = ( AttenGGX1911_g19968 * ase_lightColor.rgb );
			float specularTermToggle630_g19968 = 1.0;
			float3 localcalcSpecularTerm630_g19968 = calcSpecularTerm( GGXVisibilityTerm630_g19968 , GGXTerm630_g19968 , NdotL630_g19968 , LdotH630_g19968 , roughness630_g19968 , specColor630_g19968 , lightcolor630_g19968 , specularTermToggle630_g19968 );
			float temp_output_695_0_g19968 = max( 0.0 , ShadowsIndirectNdL289_g19968 );
			float NdotL690_g19968 = temp_output_695_0_g19968;
			float NdotV690_g19968 = CorrNdotV626_g19968;
			float temp_output_650_0_g19968 = ( 1.0 - HighlightSmoothness128_g19968 );
			float temp_output_648_0_g19968 = max( ( temp_output_650_0_g19968 * temp_output_650_0_g19968 ) , 0.002 );
			float roughness690_g19968 = temp_output_648_0_g19968;
			float localgetSmithJointGGXVisibilityTerm690_g19968 = getSmithJointGGXVisibilityTerm( NdotL690_g19968 , NdotV690_g19968 , roughness690_g19968 );
			float GGXVisibilityTerm666_g19968 = localgetSmithJointGGXVisibilityTerm690_g19968;
			float NdotH691_g19968 = max( 0.0 , NdotAmbientH591_g19968 );
			float roughness691_g19968 = temp_output_648_0_g19968;
			float localgetGGXTerm691_g19968 = getGGXTerm( NdotH691_g19968 , roughness691_g19968 );
			float GGXTerm666_g19968 = localgetGGXTerm691_g19968;
			float NdotL666_g19968 = temp_output_695_0_g19968;
			float3 localambientDir101_g19720 = ambientDir();
			float dotResult82_g19720 = dot( localambientDir101_g19720 , AmbientHalfVectorUnityNormalized469_g19720 );
			float AmbientLdotAmbientH7132 = dotResult82_g19720;
			float AmbientLdotAmbientH2157_g19968 = AmbientLdotAmbientH7132;
			float LdotH666_g19968 = max( 0.0 , AmbientLdotAmbientH2157_g19968 );
			float roughness666_g19968 = temp_output_648_0_g19968;
			float3 specColor666_g19968 = ( ColorRGB141_g19968 * DiffuseTint148_g19968 );
			half3 localAmbient1728_g19968 = Ambient();
			float3 lightcolor666_g19968 = localAmbient1728_g19968;
			float specularTermToggle666_g19968 = 1.0;
			float3 localcalcSpecularTerm666_g19968 = calcSpecularTerm( GGXVisibilityTerm666_g19968 , GGXTerm666_g19968 , NdotL666_g19968 , LdotH666_g19968 , roughness666_g19968 , specColor666_g19968 , lightcolor666_g19968 , specularTermToggle666_g19968 );
			float3 ifLocalVar1741_g19968 = 0;
			if( temp_output_1739_0_g19968 > 0.0 )
				ifLocalVar1741_g19968 = ( localcalcSpecularTerm630_g19968 * SpecularMapRGB160_g19968 * ColorA142_g19968 );
			else if( temp_output_1739_0_g19968 == 0.0 )
				ifLocalVar1741_g19968 = ( localcalcSpecularTerm666_g19968 * SpecularMapRGB160_g19968 * ColorA142_g19968 );
			float3 GGX7993 = ( ifLocalVar1741_g19968 + float3( 0,0,0 ) );
			float UVSwitchProp2002_g19968 = _AnisoDirUVSwitch;
			float2 UV02002_g19968 = i.uv_texcoord.xy;
			float2 UV12002_g19968 = i.uv2_texcoord2;
			float2 UV22002_g19968 = i.uv3_texcoord3;
			float2 UV32002_g19968 = i.uv4_texcoord4;
			float2 localUVSwitch2002_g19968 = UVSwitch( UVSwitchProp2002_g19968 , UV02002_g19968 , UV12002_g19968 , UV22002_g19968 , UV32002_g19968 );
			float2 AnisoDirUVSwitch2009_g19968 = ( ( _AnisoDir_ST.xy * localUVSwitch2002_g19968 ) + _AnisoDir_ST.zw );
			float3 normalizeResult77_g19968 = normalize( ( UnpackNormal( SAMPLE_TEXTURE2D( _AnisoDir, sampler_trilinear_repeat, AnisoDirUVSwitch2009_g19968 ) ) + WorldNormals2285_g19968 ) );
			float3 HdotA1339_g19968 = normalizeResult77_g19968;
			float3 normalizeResult4_g19971 = normalize( ( ase_worldViewDir + ase_worldlightDir ) );
			float dotResult76_g19968 = dot( HdotA1339_g19968 , normalizeResult4_g19971 );
			float BlinnToAniso1426_g19968 = _BlinntoAniso;
			float SpecularMapb383_g19968 = break380_g19968.b;
			float lerpResult97_g19968 = lerp( saturate( NdotH583_g19968 ) , max( 0.0 , sin( radians( ( ( dotResult76_g19968 + HighlightOffset127_g19968 ) * 180.0 ) ) ) ) , ( BlinnToAniso1426_g19968 * SpecularMapb383_g19968 ));
			float AnisoScale1344_g19968 = _AnisoScale;
			float SpecularMapg162_g19968 = break380_g19968.g;
			float AnisoSharpening1345_g19968 = _AnisoSharpening;
			float lerpResult1579_g19968 = lerp( 128.0 , 4096.0 , AnisoSharpening1345_g19968);
			float SpecularMapr161_g19968 = break380_g19968.r;
			float3 localambientDir2162_g19968 = ambientDir();
			float3 normalizeResult2164_g19968 = normalize( ( ase_worldViewDir + localambientDir2162_g19968 ) );
			float3 AmbientHalfVector2165_g19968 = normalizeResult2164_g19968;
			float dotResult341_g19968 = dot( HdotA1339_g19968 , AmbientHalfVector2165_g19968 );
			float lerpResult1443_g19968 = lerp( saturate( NdotAmbientH591_g19968 ) , max( 0.0 , sin( radians( ( ( dotResult341_g19968 + HighlightOffset127_g19968 ) * 180.0 ) ) ) ) , ( BlinnToAniso1426_g19968 * SpecularMapb383_g19968 ));
			float lerpResult1595_g19968 = lerp( 128.0 , 4096.0 , AnisoSharpening1345_g19968);
			half3 localAmbient1729_g19968 = Ambient();
			float3 ifLocalVar1738_g19968 = 0;
			if( temp_output_1739_0_g19968 > 0.0 )
				ifLocalVar1738_g19968 = ( ( saturate( ( ( pow( lerpResult97_g19968 , ( ( 1.0 - AnisoScale1344_g19968 ) * SpecularMapg162_g19968 * lerpResult1579_g19968 ) ) * SpecularMapr161_g19968 ) / ( 1.0 - AnisoSharpening1345_g19968 ) ) ) * ColorA142_g19968 ) * ( ColorRGB141_g19968 * DiffuseTint148_g19968 ) * ase_lightColor.rgb * max( ( ShadowsToonAniso1905_g19968 * 2.0 ) , 0.0 ) );
			else if( temp_output_1739_0_g19968 == 0.0 )
				ifLocalVar1738_g19968 = ( ( saturate( ( ( pow( lerpResult1443_g19968 , ( ( 1.0 - AnisoScale1344_g19968 ) * SpecularMapg162_g19968 * lerpResult1595_g19968 ) ) * SpecularMapr161_g19968 ) / ( 1.0 - AnisoSharpening1345_g19968 ) ) ) * ColorA142_g19968 ) * ( ColorRGB141_g19968 * DiffuseTint148_g19968 ) * localAmbient1729_g19968 * max( ( ShadowsIndirectNdL289_g19968 * 2.0 ) , 0.0 ) );
			float3 Anisotropic7993 = ( ifLocalVar1738_g19968 + float3( 0,0,0 ) );
			float ndl2022_g19968 = max( NdLGGX171_g19968 , 0.0 );
			float ndh2022_g19968 = max( NdotH583_g19968 , 0.0 );
			float vdn2022_g19968 = CorrNdotV626_g19968;
			float ldh2022_g19968 = max( LdotH2104_g19968 , 0.0 );
			float3 lightCol2022_g19968 = ( ShadowsToonAniso1905_g19968 * ase_lightColor.rgb );
			float3 normalizeResult4_g19973 = normalize( ( ase_worldViewDir + ase_worldlightDir ) );
			float3 halfVector2022_g19968 = normalizeResult4_g19973;
			float smoothness2022_g19968 = HighlightSmoothness128_g19968;
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
			float3 normals7395 = normalizeResult52_g1;
			float3 temp_output_2254_0_g19968 = normals7395;
			float3 break2257_g19968 = temp_output_2254_0_g19968;
			float3 ase_worldNormal = WorldNormalVector( i, float3( 0, 0, 1 ) );
			float3 ase_vertexNormal = mul( unity_WorldToObject, float4( ase_worldNormal, 0 ) );
			ase_vertexNormal = normalize( ase_vertexNormal );
			float3 In02226_g19968 = ase_vertexNormal;
			float3 localgetUnityObjectToWorldNormal2226_g19968 = getUnityObjectToWorldNormal2226_g19968( In02226_g19968 );
			float3 normalizeResult2262_g19968 = normalize( ( ( break2257_g19968.x * i.vertexToFrag2251_g19968 ) + ( break2257_g19968.y * i.vertexToFrag2250_g19968 ) + ( break2257_g19968.z * localgetUnityObjectToWorldNormal2226_g19968 ) ) );
			float3 temp_output_2252_0_g19968 = cross( i.vertexToFrag2250_g19968 , normalizeResult2262_g19968 );
			float3 normalizeResult2265_g19968 = normalize( temp_output_2252_0_g19968 );
			float3 bumpedTangent2278_g19968 = normalizeResult2265_g19968;
			float3 tangent2022_g19968 = bumpedTangent2278_g19968;
			float3 normalizeResult2266_g19968 = normalize( cross( normalizeResult2262_g19968 , temp_output_2252_0_g19968 ) );
			float3 bumpedBitangent2277_g19968 = normalizeResult2266_g19968;
			float3 bitangent2022_g19968 = bumpedBitangent2277_g19968;
			float3 diffuseColor2022_g19968 = ( ColorRGB141_g19968 * DiffuseTint148_g19968 );
			float4 SpecularMap2022_g19968 = SpecularMapRGBA2289_g19968;
			float3 LightDir2022_g19968 = ase_worldlightDir;
			float3 ViewDir2022_g19968 = ase_worldViewDir;
			float3 localcalcGGXAniso2022_g19968 = calcGGXAniso( ndl2022_g19968 , ndh2022_g19968 , vdn2022_g19968 , ldh2022_g19968 , lightCol2022_g19968 , halfVector2022_g19968 , smoothness2022_g19968 , tangent2022_g19968 , bitangent2022_g19968 , diffuseColor2022_g19968 , SpecularMap2022_g19968 , LightDir2022_g19968 , ViewDir2022_g19968 );
			float ndl2410_g19968 = max( ShadowsIndirectNdL289_g19968 , 0.0 );
			float ndh2410_g19968 = max( NdotAmbientH591_g19968 , 0.0 );
			float vdn2410_g19968 = CorrNdotV626_g19968;
			float ldh2410_g19968 = max( AmbientLdotAmbientH2157_g19968 , 0.0 );
			half3 localAmbient2155_g19968 = Ambient();
			float3 lightCol2410_g19968 = ( ShadowsIndirectNdL289_g19968 * localAmbient2155_g19968 );
			float3 halfVector2410_g19968 = AmbientHalfVector2165_g19968;
			float smoothness2410_g19968 = HighlightSmoothness128_g19968;
			float3 tangent2410_g19968 = bumpedTangent2278_g19968;
			float3 bitangent2410_g19968 = bumpedBitangent2277_g19968;
			float3 diffuseColor2410_g19968 = ( ColorRGB141_g19968 * DiffuseTint148_g19968 );
			float4 SpecularMap2410_g19968 = SpecularMapRGBA2289_g19968;
			float3 localambientDir2411_g19968 = ambientDir();
			float3 LightDir2410_g19968 = localambientDir2411_g19968;
			float3 ViewDir2410_g19968 = ase_worldViewDir;
			float3 localcalcGGXAniso2410_g19968 = calcGGXAniso( ndl2410_g19968 , ndh2410_g19968 , vdn2410_g19968 , ldh2410_g19968 , lightCol2410_g19968 , halfVector2410_g19968 , smoothness2410_g19968 , tangent2410_g19968 , bitangent2410_g19968 , diffuseColor2410_g19968 , SpecularMap2410_g19968 , LightDir2410_g19968 , ViewDir2410_g19968 );
			float3 ifLocalVar2153_g19968 = 0;
			if( temp_output_1739_0_g19968 > 0.0 )
				ifLocalVar2153_g19968 = localcalcGGXAniso2022_g19968;
			else if( temp_output_1739_0_g19968 == 0.0 )
				ifLocalVar2153_g19968 = localcalcGGXAniso2410_g19968;
			float3 GGXAnisotropic7993 = ifLocalVar2153_g19968;
			{
			UNITY_BRANCH
			if (_SpecularSetting == 0)
				Out7993 = Toon7993;
			else if (_SpecularSetting == 1)
				Out7993 = GGX7993;
			else if (_SpecularSetting == 2)
				Out7993 = Anisotropic7993;
			else
				Out7993 = GGXAnisotropic7993;
			}
			float3 SpecularHighlight7511 = Out7993;
			float3 appendResult1896_g19968 = (float3(NdLGGX171_g19968 , AttenGGX1911_g19968 , ShadowsIndirectNdL289_g19968));
			float3 PixelAmbientShadows7919 = appendResult1896_g19968;
			float3 break2823_g19983 = PixelAmbientShadows7919;
			float NdLGGX2357_g19983 = break2823_g19983.x;
			float temp_output_2418_0_g19983 = max( 0.0 , NdLGGX2357_g19983 );
			float NdotL2412_g19983 = temp_output_2418_0_g19983;
			float CorrectedNdotV2507_g19983 = NdotVCorr7274;
			float NdotV2412_g19983 = CorrectedNdotV2507_g19983;
			float IgnoreNormalsToggle323_g19983 = _IgnoreNormalsCubemap;
			float3 normalizeResult28_g19983 = normalize( ase_worldNormal );
			float3 ifLocalVar46_g19983 = 0;
			if( 1.0 > IgnoreNormalsToggle323_g19983 )
				ifLocalVar46_g19983 = worldnormals7361;
			else if( 1.0 == IgnoreNormalsToggle323_g19983 )
				ifLocalVar46_g19983 = normalizeResult28_g19983;
			float3 WorldNormals305_g19983 = ifLocalVar46_g19983;
			float3 worldNormal2910_g19983 = WorldNormals305_g19983;
			float Smoothness300_g19983 = _Cubemapsmoothness;
			float smoothness2910_g19983 = ( tex2DNode2688_g19983.a * Smoothness300_g19983 );
			float localGSAA_Filament2910_g19983 = GSAA_Filament( worldNormal2910_g19983 , smoothness2910_g19983 );
			float SmoothnessTex290_g19983 = localGSAA_Filament2910_g19983;
			float perceptualRoughness2761_g19983 = ( 1.0 - SmoothnessTex290_g19983 );
			float roughness2729_g19983 = max( ( perceptualRoughness2761_g19983 * perceptualRoughness2761_g19983 ) , 0.002 );
			float roughness2412_g19983 = roughness2729_g19983;
			float localgetSmithJointGGXVisibilityTerm2412_g19983 = getSmithJointGGXVisibilityTerm( NdotL2412_g19983 , NdotV2412_g19983 , roughness2412_g19983 );
			float GGXVisibilityTerm2305_g19983 = localgetSmithJointGGXVisibilityTerm2412_g19983;
			float NdotH2416_g19983 = max( 0.0 , NdotH7096 );
			float roughness2416_g19983 = roughness2729_g19983;
			float localgetGGXTerm2416_g19983 = getGGXTerm( NdotH2416_g19983 , roughness2416_g19983 );
			float GGXTerm2305_g19983 = localgetGGXTerm2416_g19983;
			float NdotL2305_g19983 = temp_output_2418_0_g19983;
			float LdotH2305_g19983 = max( 0.0 , LdotH7097 );
			float roughness2305_g19983 = roughness2729_g19983;
			float3 MainTex312_g19983 = MainTexSaturate7397;
			half3 specColor2324_g19983 = (0).xxx;
			half oneMinusReflectivity2324_g19983 = 0;
			half3 diffuseAndSpecularFromMetallic2324_g19983 = DiffuseAndSpecularFromMetallic(MainTex312_g19983,MetallicTex289_g19983,specColor2324_g19983,oneMinusReflectivity2324_g19983);
			float3 SpecColor2715_g19983 = specColor2324_g19983;
			float3 specColor2305_g19983 = SpecColor2715_g19983;
			float AttenGGX2831_g19983 = break2823_g19983.y;
			float3 lightcolor2305_g19983 = ( ase_lightColor.rgb * AttenGGX2831_g19983 );
			float SpecularHighlightToggle2498_g19983 = _CubemapSpecularToggle;
			float specularTermToggle2305_g19983 = SpecularHighlightToggle2498_g19983;
			float3 localcalcSpecularTerm2305_g19983 = calcSpecularTerm( GGXVisibilityTerm2305_g19983 , GGXTerm2305_g19983 , NdotL2305_g19983 , LdotH2305_g19983 , roughness2305_g19983 , specColor2305_g19983 , lightcolor2305_g19983 , specularTermToggle2305_g19983 );
			float temp_output_2490_0_g19983 = max( 0.0 , NdotAmbientL7100 );
			float NdotL2496_g19983 = temp_output_2490_0_g19983;
			float NdotV2496_g19983 = CorrectedNdotV2507_g19983;
			float roughness2496_g19983 = roughness2729_g19983;
			float localgetSmithJointGGXVisibilityTerm2496_g19983 = getSmithJointGGXVisibilityTerm( NdotL2496_g19983 , NdotV2496_g19983 , roughness2496_g19983 );
			float GGXVisibilityTerm2494_g19983 = localgetSmithJointGGXVisibilityTerm2496_g19983;
			float NdotH2495_g19983 = max( 0.0 , NdotAmbientH7099 );
			float roughness2495_g19983 = roughness2729_g19983;
			float localgetGGXTerm2495_g19983 = getGGXTerm( NdotH2495_g19983 , roughness2495_g19983 );
			float GGXTerm2494_g19983 = localgetGGXTerm2495_g19983;
			float NdotL2494_g19983 = temp_output_2490_0_g19983;
			float LdotH2494_g19983 = max( 0.0 , AmbientLdotAmbientH7132 );
			float roughness2494_g19983 = roughness2729_g19983;
			float3 specColor2494_g19983 = SpecColor2715_g19983;
			half3 localAmbient2505_g19983 = Ambient();
			float AmbientShadows2824_g19983 = break2823_g19983.z;
			float3 lightcolor2494_g19983 = ( localAmbient2505_g19983 * AmbientShadows2824_g19983 );
			float specularTermToggle2494_g19983 = SpecularHighlightToggle2498_g19983;
			float3 localcalcSpecularTerm2494_g19983 = calcSpecularTerm( GGXVisibilityTerm2494_g19983 , GGXTerm2494_g19983 , NdotL2494_g19983 , LdotH2494_g19983 , roughness2494_g19983 , specColor2494_g19983 , lightcolor2494_g19983 , specularTermToggle2494_g19983 );
			float3 SHSpecular2509_g19983 = localcalcSpecularTerm2494_g19983;
			float3 ifLocalVar2672_g19983 = 0;
			if( GrayscaledLight7101 > 0.0 )
				ifLocalVar2672_g19983 = localcalcSpecularTerm2305_g19983;
			else if( GrayscaledLight7101 == 0.0 )
				ifLocalVar2672_g19983 = SHSpecular2509_g19983;
			float4 temp_output_1727_0_g19968 = max( float4( 0,0,0,0 ) , VertexLightNdLNONMAX7174 );
			float4 ifLocalVar2136_g19967 = 0;
			UNITY_BRANCH 
			if( 1.0 > ToggleSteps66_g19967 )
				ifLocalVar2136_g19967 = ToonRampTexVertexLightLuminanced352_g19967;
			else if( 1.0 == ToggleSteps66_g19967 )
				ifLocalVar2136_g19967 = VertexLightNdLStepped2141_g19967;
			float4 NdLVertexLightsShadows7917 = ifLocalVar2136_g19967;
			float4 temp_cast_43 = (-max( SpecShadowMaskPower286_g19968 , -0.99 )).xxxx;
			float temp_output_2387_0_g19968 = ( saturate( SpecShadowMaskPower286_g19968 ) * 0.5 );
			float4 lerpResult2379_g19968 = lerp( ( ( NdLVertexLightsShadows7917 - temp_cast_43 ) / ( 1.0 - -max( SpecShadowMaskPower286_g19968 , -0.99 ) ) ) , float4( 1,1,1,1 ) , ( ( SpecShadowMaskPower286_g19968 * temp_output_2387_0_g19968 ) + temp_output_2387_0_g19968 ));
			float4 temp_output_2378_0_g19968 = saturate( lerpResult2379_g19968 );
			float4 ifLocalVar1924_g19968 = 0;
			UNITY_BRANCH 
			if( 1.0 > SpecShadowMaskVar279_g19968 )
				ifLocalVar1924_g19968 = float4(1,1,1,1);
			else if( 1.0 == SpecShadowMaskVar279_g19968 )
				ifLocalVar1924_g19968 = temp_output_1727_0_g19968;
			else if( 1.0 < SpecShadowMaskVar279_g19968 )
				ifLocalVar1924_g19968 = temp_output_2378_0_g19968;
			float4 VertexLightsNdLGGX1923_g19968 = ifLocalVar1924_g19968;
			float4 VertexLightShadows7920 = VertexLightsNdLGGX1923_g19968;
			float4 break2546_g19983 = VertexLightShadows7920;
			float NdotL2576_g19983 = break2546_g19983.x;
			float NdotV2576_g19983 = CorrectedNdotV2507_g19983;
			float roughness2576_g19983 = roughness2729_g19983;
			float localgetSmithJointGGXVisibilityTerm2576_g19983 = getSmithJointGGXVisibilityTerm( NdotL2576_g19983 , NdotV2576_g19983 , roughness2576_g19983 );
			float GGXVisibilityTerm2521_g19983 = localgetSmithJointGGXVisibilityTerm2576_g19983;
			float4 break346_g19720 = FourLightPosX0WorldPos286_g19720;
			float4 break277_g19720 = FourLightPosY0WorldPos291_g19720;
			float4 break300_g19720 = FourLightPosZ0WorldPos325_g19720;
			float3 appendResult358_g19720 = (float3(break346_g19720.x , break277_g19720.x , break300_g19720.x));
			float3 normalizeResult292_g19720 = normalize( appendResult358_g19720 );
			float3 normalizeResult289_g19720 = ASESafeNormalize( ( ase_worldViewDir + normalizeResult292_g19720 ) );
			float dotResult318_g19720 = dot( WorldNormals20_g19720 , normalizeResult289_g19720 );
			float VLNdotHOne7184 = dotResult318_g19720;
			float NdotH2569_g19983 = max( VLNdotHOne7184 , 0.0 );
			float roughness2569_g19983 = roughness2729_g19983;
			float localgetGGXTerm2569_g19983 = getGGXTerm( NdotH2569_g19983 , roughness2569_g19983 );
			float GGXTerm2521_g19983 = localgetGGXTerm2569_g19983;
			float NdotL2521_g19983 = break2546_g19983.x;
			float dotResult339_g19720 = dot( normalizeResult292_g19720 , normalizeResult289_g19720 );
			float VLLdotHOne7191 = dotResult339_g19720;
			float LdotH2521_g19983 = max( VLLdotHOne7191 , 0.0 );
			float roughness2521_g19983 = roughness2729_g19983;
			float3 specColor2521_g19983 = SpecColor2715_g19983;
			float3 localLightColorZero2834_g19983 = LightColorZero();
			float4 break2841_g19983 = VertexLightAtten7220;
			float3 lightcolor2521_g19983 = ( localLightColorZero2834_g19983 * break2841_g19983.x );
			float specularTermToggle2521_g19983 = SpecularHighlightToggle2498_g19983;
			float3 localcalcSpecularTerm2521_g19983 = calcSpecularTerm( GGXVisibilityTerm2521_g19983 , GGXTerm2521_g19983 , NdotL2521_g19983 , LdotH2521_g19983 , roughness2521_g19983 , specColor2521_g19983 , lightcolor2521_g19983 , specularTermToggle2521_g19983 );
			float NdotL2601_g19983 = break2546_g19983.y;
			float NdotV2601_g19983 = CorrectedNdotV2507_g19983;
			float roughness2601_g19983 = roughness2729_g19983;
			float localgetSmithJointGGXVisibilityTerm2601_g19983 = getSmithJointGGXVisibilityTerm( NdotL2601_g19983 , NdotV2601_g19983 , roughness2601_g19983 );
			float GGXVisibilityTerm2609_g19983 = localgetSmithJointGGXVisibilityTerm2601_g19983;
			float3 appendResult321_g19720 = (float3(break346_g19720.y , break277_g19720.y , break300_g19720.y));
			float3 normalizeResult308_g19720 = normalize( appendResult321_g19720 );
			float3 normalizeResult285_g19720 = ASESafeNormalize( ( ase_worldViewDir + normalizeResult308_g19720 ) );
			float dotResult298_g19720 = dot( WorldNormals20_g19720 , normalizeResult285_g19720 );
			float VLNdotHTwo7185 = dotResult298_g19720;
			float NdotH2600_g19983 = max( VLNdotHTwo7185 , 0.0 );
			float roughness2600_g19983 = roughness2729_g19983;
			float localgetGGXTerm2600_g19983 = getGGXTerm( NdotH2600_g19983 , roughness2600_g19983 );
			float GGXTerm2609_g19983 = localgetGGXTerm2600_g19983;
			float NdotL2609_g19983 = break2546_g19983.y;
			float dotResult354_g19720 = dot( normalizeResult308_g19720 , normalizeResult285_g19720 );
			float VLLdotHTwo7188 = dotResult354_g19720;
			float LdotH2609_g19983 = max( VLLdotHTwo7188 , 0.0 );
			float roughness2609_g19983 = roughness2729_g19983;
			float3 specColor2609_g19983 = SpecColor2715_g19983;
			float3 localLightColorZOne2835_g19983 = LightColorZOne();
			float3 lightcolor2609_g19983 = ( localLightColorZOne2835_g19983 * break2841_g19983.y );
			float specularTermToggle2609_g19983 = SpecularHighlightToggle2498_g19983;
			float3 localcalcSpecularTerm2609_g19983 = calcSpecularTerm( GGXVisibilityTerm2609_g19983 , GGXTerm2609_g19983 , NdotL2609_g19983 , LdotH2609_g19983 , roughness2609_g19983 , specColor2609_g19983 , lightcolor2609_g19983 , specularTermToggle2609_g19983 );
			float NdotL2618_g19983 = break2546_g19983.z;
			float NdotV2618_g19983 = CorrectedNdotV2507_g19983;
			float roughness2618_g19983 = roughness2729_g19983;
			float localgetSmithJointGGXVisibilityTerm2618_g19983 = getSmithJointGGXVisibilityTerm( NdotL2618_g19983 , NdotV2618_g19983 , roughness2618_g19983 );
			float GGXVisibilityTerm2626_g19983 = localgetSmithJointGGXVisibilityTerm2618_g19983;
			float3 appendResult355_g19720 = (float3(break346_g19720.z , break277_g19720.z , break300_g19720.z));
			float3 normalizeResult334_g19720 = normalize( appendResult355_g19720 );
			float3 normalizeResult327_g19720 = ASESafeNormalize( ( ase_worldViewDir + normalizeResult334_g19720 ) );
			float dotResult313_g19720 = dot( WorldNormals20_g19720 , normalizeResult327_g19720 );
			float VLNdotHThree7186 = dotResult313_g19720;
			float NdotH2617_g19983 = max( VLNdotHThree7186 , 0.0 );
			float roughness2617_g19983 = roughness2729_g19983;
			float localgetGGXTerm2617_g19983 = getGGXTerm( NdotH2617_g19983 , roughness2617_g19983 );
			float GGXTerm2626_g19983 = localgetGGXTerm2617_g19983;
			float NdotL2626_g19983 = break2546_g19983.z;
			float dotResult288_g19720 = dot( normalizeResult334_g19720 , normalizeResult327_g19720 );
			float VLLdotHThree7189 = dotResult288_g19720;
			float LdotH2626_g19983 = max( VLLdotHThree7189 , 0.0 );
			float roughness2626_g19983 = roughness2729_g19983;
			float3 specColor2626_g19983 = SpecColor2715_g19983;
			float3 localLightColorZTwo2833_g19983 = LightColorZTwo();
			float3 lightcolor2626_g19983 = ( localLightColorZTwo2833_g19983 * break2841_g19983.z );
			float specularTermToggle2626_g19983 = SpecularHighlightToggle2498_g19983;
			float3 localcalcSpecularTerm2626_g19983 = calcSpecularTerm( GGXVisibilityTerm2626_g19983 , GGXTerm2626_g19983 , NdotL2626_g19983 , LdotH2626_g19983 , roughness2626_g19983 , specColor2626_g19983 , lightcolor2626_g19983 , specularTermToggle2626_g19983 );
			float NdotL2635_g19983 = break2546_g19983.w;
			float NdotV2635_g19983 = CorrectedNdotV2507_g19983;
			float roughness2635_g19983 = roughness2729_g19983;
			float localgetSmithJointGGXVisibilityTerm2635_g19983 = getSmithJointGGXVisibilityTerm( NdotL2635_g19983 , NdotV2635_g19983 , roughness2635_g19983 );
			float GGXVisibilityTerm2643_g19983 = localgetSmithJointGGXVisibilityTerm2635_g19983;
			float3 appendResult278_g19720 = (float3(break346_g19720.w , break277_g19720.w , break300_g19720.w));
			float3 normalizeResult281_g19720 = normalize( appendResult278_g19720 );
			float3 normalizeResult319_g19720 = ASESafeNormalize( ( ase_worldViewDir + normalizeResult281_g19720 ) );
			float dotResult314_g19720 = dot( WorldNormals20_g19720 , normalizeResult319_g19720 );
			float VLNdotHFour7187 = dotResult314_g19720;
			float NdotH2634_g19983 = max( VLNdotHFour7187 , 0.0 );
			float roughness2634_g19983 = roughness2729_g19983;
			float localgetGGXTerm2634_g19983 = getGGXTerm( NdotH2634_g19983 , roughness2634_g19983 );
			float GGXTerm2643_g19983 = localgetGGXTerm2634_g19983;
			float NdotL2643_g19983 = break2546_g19983.w;
			float dotResult362_g19720 = dot( normalizeResult281_g19720 , normalizeResult319_g19720 );
			float VLLdotHFour7190 = dotResult362_g19720;
			float LdotH2643_g19983 = max( VLLdotHFour7190 , 0.0 );
			float roughness2643_g19983 = roughness2729_g19983;
			float3 specColor2643_g19983 = SpecColor2715_g19983;
			float3 localLightColorZThree2840_g19983 = LightColorZThree();
			float3 lightcolor2643_g19983 = ( localLightColorZThree2840_g19983 * break2841_g19983.w );
			float specularTermToggle2643_g19983 = SpecularHighlightToggle2498_g19983;
			float3 localcalcSpecularTerm2643_g19983 = calcSpecularTerm( GGXVisibilityTerm2643_g19983 , GGXTerm2643_g19983 , NdotL2643_g19983 , LdotH2643_g19983 , roughness2643_g19983 , specColor2643_g19983 , lightcolor2643_g19983 , specularTermToggle2643_g19983 );
			#ifdef UNITY_PASS_FORWARDBASE
				float3 staticSwitch2764_g19983 = ( localcalcSpecularTerm2521_g19983 + localcalcSpecularTerm2609_g19983 + localcalcSpecularTerm2626_g19983 + localcalcSpecularTerm2643_g19983 );
			#else
				float3 staticSwitch2764_g19983 = float3( 0,0,0 );
			#endif
			#ifdef VERTEXLIGHT_ON
				float3 staticSwitch2765_g19983 = staticSwitch2764_g19983;
			#else
				float3 staticSwitch2765_g19983 = float3( 0,0,0 );
			#endif
			float3 VertexLightGGXPBRMetallicWF2533_g19983 = staticSwitch2765_g19983;
			float3 specularTerm2404_g19983 = ( ifLocalVar2672_g19983 + VertexLightGGXPBRMetallicWF2533_g19983 );
			float NdotV2404_g19983 = CorrectedNdotV2507_g19983;
			float3 specColor2404_g19983 = SpecColor2715_g19983;
			float roughness2404_g19983 = roughness2729_g19983;
			float OneMinusReflectivity2718_g19983 = oneMinusReflectivity2324_g19983;
			float oneMinusReflectivity2404_g19983 = OneMinusReflectivity2718_g19983;
			float localGetSpecCubeDimensions1255_g19983 = ( 0.0 );
			float testW1255_g19983 = 0;
			float testH1255_g19983 = 0;
			{
			#ifndef SHADER_TARGET_SURFACE_ANALYSIS
			unity_SpecCube0.GetDimensions(testW1255_g19983,testH1255_g19983);
			#endif
			}
			float3 indirectNormal2316_g19983 = WorldNormals305_g19983;
			Unity_GlossyEnvironmentData g2316_g19983 = UnityGlossyEnvironmentSetup( SmoothnessTex290_g19983, data.worldViewDir, indirectNormal2316_g19983, float3(0,0,0));
			float3 indirectSpecular2316_g19983 = UnityGI_IndirectSpecular( data, 1.0, indirectNormal2316_g19983, g2316_g19983 );
			float3 ase_worldReflection = WorldReflectionVector( i, float3( 0, 0, 1 ) );
			float3 ifLocalVar45_g19983 = 0;
			if( 1.0 > IgnoreNormalsToggle323_g19983 )
				ifLocalVar45_g19983 = WorldReflectionVector( i , normals7395 );
			else if( 1.0 == IgnoreNormalsToggle323_g19983 )
				ifLocalVar45_g19983 = ase_worldReflection;
			half3 linearRgb1631_g19967 = ( ase_lightColor.rgb * staticSwitch1035_g19967 );
			half localgetLinearRgbToLuminance1631_g19967 = getLinearRgbToLuminance( linearRgb1631_g19967 );
			half3 linearRgb1630_g19967 = ( lerpResult1661_g19967 * AmbientLightBoosted1782_g19967 );
			half localgetLinearRgbToLuminance1630_g19967 = getLinearRgbToLuminance( linearRgb1630_g19967 );
			#ifdef UNITY_PASS_FORWARDBASE
				float staticSwitch1995_g19967 = localgetLinearRgbToLuminance1433_g19967;
			#else
				float staticSwitch1995_g19967 = 0.0;
			#endif
			#ifdef VERTEXLIGHT_ON
				float staticSwitch1994_g19967 = staticSwitch1995_g19967;
			#else
				float staticSwitch1994_g19967 = 0.0;
			#endif
			float LuminancedVertexLights1991_g19967 = staticSwitch1994_g19967;
			float LuminancedLight7517 = ( ( localgetLinearRgbToLuminance1631_g19967 + localgetLinearRgbToLuminance1630_g19967 ) + LuminancedVertexLights1991_g19967 );
			float3 BakedCubemap1524_g19983 = ( (SAMPLE_TEXTURECUBE_LOD( _Cubemap, sampler_Cubemap, ifLocalVar45_g19983, ( ( 1.0 - SmoothnessTex290_g19983 ) * 10.0 ) )).rgb * saturate( LuminancedLight7517 ) );
			float3 ifLocalVar2337_g19983 = 0;
			if( testW1255_g19983 >= 16 )
				ifLocalVar2337_g19983 = indirectSpecular2316_g19983;
			else
				ifLocalVar2337_g19983 = BakedCubemap1524_g19983;
			float3 ifLocalVar2338_g19983 = 0;
			UNITY_BRANCH 
			if( 1.0 > _WorkflowSwitch )
				ifLocalVar2338_g19983 = ifLocalVar2337_g19983;
			else if( 1.0 == _WorkflowSwitch )
				ifLocalVar2338_g19983 = BakedCubemap1524_g19983;
			else if( 1.0 < _WorkflowSwitch )
				ifLocalVar2338_g19983 = indirectSpecular2316_g19983;
			float AmbientOcclusion7454 = lerpResult54_g19967;
			float AO2783_g19983 = AmbientOcclusion7454;
			float3 indirectspecular2404_g19983 = ( ifLocalVar2338_g19983 * AO2783_g19983 );
			float smoothness2404_g19983 = SmoothnessTex290_g19983;
			float perceptualRoughness2404_g19983 = perceptualRoughness2761_g19983;
			float3 localcalcSpecularBase2404_g19983 = calcSpecularBase( specularTerm2404_g19983 , NdotV2404_g19983 , specColor2404_g19983 , roughness2404_g19983 , oneMinusReflectivity2404_g19983 , indirectspecular2404_g19983 , smoothness2404_g19983 , perceptualRoughness2404_g19983 );
			float3 SpecularReflections316_g19983 = localcalcSpecularBase2404_g19983;
			float3 temp_output_7991_0 = ( SpecularReflections316_g19983 * temp_output_80_0_g19983 );
			float3 CubemapReflections7525 = ( temp_output_7991_0 * temp_output_7513_0 );
			float3 worldSpaceViewDir449_g19987 = WorldSpaceViewDir( float4( 0,0,0,1 ) );
			float3 normalizeResult803_g19987 = ASESafeNormalize( worldSpaceViewDir449_g19987 );
			float3 ifLocalVar906_g19987 = 0;
			if( 1.0 > _MatcapViewDir )
				ifLocalVar906_g19987 = ase_worldViewDir;
			else if( 1.0 == _MatcapViewDir )
				ifLocalVar906_g19987 = normalizeResult803_g19987;
			float3 _Vector0 = float3(0,1,0);
			float dotResult9_g19987 = dot( ifLocalVar906_g19987 , _Vector0 );
			float3 normalizeResult13_g19987 = normalize( ( _Vector0 - ( dotResult9_g19987 * ifLocalVar906_g19987 ) ) );
			float3 normalizeResult19_g19987 = normalize( cross( ifLocalVar906_g19987 , normalizeResult13_g19987 ) );
			float3 normalizeResult16_g19987 = normalize( ase_worldNormal );
			float3 ifLocalVar20_g19987 = 0;
			if( 1.0 > _IgnoreNormalsMatcap )
				ifLocalVar20_g19987 = worldnormals7361;
			else if( 1.0 == _IgnoreNormalsMatcap )
				ifLocalVar20_g19987 = normalizeResult16_g19987;
			float dotResult22_g19987 = dot( normalizeResult19_g19987 , ifLocalVar20_g19987 );
			float dotResult23_g19987 = dot( normalizeResult13_g19987 , ifLocalVar20_g19987 );
			float2 appendResult25_g19987 = (float2(dotResult22_g19987 , dotResult23_g19987));
			float2 MatcapUV215_g19987 = ( ( appendResult25_g19987 * 0.5 ) + 0.5 );
			float ReflectionR1Intensity224_g19987 = _ReflectionR1Intensity;
			float3 temp_output_45_0_g19987 = ( ( (SAMPLE_TEXTURE2D_LOD( _MatcapR1, sampler_trilinear_repeat, MatcapUV215_g19987, ( ( 1.0 - _MatcapR1smoothness ) * 10.0 ) )).rgb * (_MatcapR1Color).rgb * ( _MatcapR1Color.a * MatcapR1Blending703_g19987 ) ) * ReflectionR1Intensity224_g19987 );
			#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch2216_g19967 = ( ase_lightColor.rgb * ase_lightAtten );
			#else
				float3 staticSwitch2216_g19967 = ase_lightColor.rgb;
			#endif
			half3 linearRgb2203_g19967 = staticSwitch2216_g19967;
			half localgetLinearRgbToLuminance2203_g19967 = getLinearRgbToLuminance( linearRgb2203_g19967 );
			half3 linearRgb2202_g19967 = AmbientLightBoosted1782_g19967;
			half localgetLinearRgbToLuminance2202_g19967 = getLinearRgbToLuminance( linearRgb2202_g19967 );
			float LuminancedLightNoShadows8001 = ( localgetLinearRgbToLuminance2203_g19967 + localgetLinearRgbToLuminance2202_g19967 + LuminancedVertexLights1991_g19967 );
			float MatcapLighting825_g19987 = saturate( LuminancedLightNoShadows8001 );
			float3 MainTex207_g19987 = MainTexSaturate7397;
			float AmbientOcclusion834_g19987 = AmbientOcclusion7454;
			float3 PreClampFinalLight7447 = ( ForFinalLightCalculation993_g19967 + DiffuseVertexLighting354_g19967 );
			float3 MatcapLightingRGB901_g19987 = PreClampFinalLight7447;
			float3 ifLocalVar59_g19987 = 0;
			if( 1.0 > _MatcapR1Mode )
				ifLocalVar59_g19987 = ( temp_output_45_0_g19987 * MatcapLighting825_g19987 * MainTex207_g19987 * AmbientOcclusion834_g19987 );
			else if( 1.0 == _MatcapR1Mode )
				ifLocalVar59_g19987 = ( temp_output_45_0_g19987 * MatcapLightingRGB901_g19987 );
			else if( 1.0 < _MatcapR1Mode )
				ifLocalVar59_g19987 = ( ( 1.0 - temp_output_45_0_g19987 ) * MatcapLightingRGB901_g19987 );
			float3 lerpResult60_g19987 = lerp( float3( 1,1,1 ) , MainTex207_g19987 , _ReflectionR1Tint);
			float3 ifLocalVar427_g19987 = 0;
			UNITY_BRANCH 
			if( _MatcapR1Toggle > 0 )
				ifLocalVar427_g19987 = ( ifLocalVar59_g19987 * lerpResult60_g19987 * ( ReflectionR1Intensity224_g19987 * ReflectionMaskR199_g19987 ) );
			float3 MatcapR1calc419_g19987 = ( ifLocalVar427_g19987 * temp_output_570_0_g19987 );
			float ReflectionG2Intensity298_g19987 = _ReflectionG2Intensity;
			float3 temp_output_277_0_g19987 = ( ( (SAMPLE_TEXTURE2D_LOD( _MatcapG2, sampler_trilinear_repeat, MatcapUV215_g19987, ( ( 1.0 - _MatcapG2smoothness ) * 10.0 ) )).rgb * (_MatcapG2Color).rgb * ( _MatcapG2Color.a * MatcapG2Blending706_g19987 ) ) * ReflectionG2Intensity298_g19987 );
			float3 ifLocalVar262_g19987 = 0;
			if( 1.0 > _MatcapG2Mode )
				ifLocalVar262_g19987 = ( temp_output_277_0_g19987 * MatcapLighting825_g19987 * MainTex207_g19987 * AmbientOcclusion834_g19987 );
			else if( 1.0 == _MatcapG2Mode )
				ifLocalVar262_g19987 = ( temp_output_277_0_g19987 * MatcapLightingRGB901_g19987 );
			else if( 1.0 < _MatcapG2Mode )
				ifLocalVar262_g19987 = ( ( 1.0 - temp_output_277_0_g19987 ) * MatcapLightingRGB901_g19987 );
			float3 lerpResult254_g19987 = lerp( float3( 1,1,1 ) , MainTex207_g19987 , _ReflectionG2Tint);
			float3 ifLocalVar437_g19987 = 0;
			UNITY_BRANCH 
			if( _MatcapG2Toggle > 0 )
				ifLocalVar437_g19987 = ( ifLocalVar262_g19987 * lerpResult254_g19987 * ( ReflectionG2Intensity298_g19987 * ReflectionMaskG200_g19987 ) );
			float3 MatcapG2calc420_g19987 = ( ifLocalVar437_g19987 * temp_output_573_0_g19987 );
			float ReflectionB3Intensity300_g19987 = _ReflectionB3Intensity;
			float3 temp_output_361_0_g19987 = ( ( (SAMPLE_TEXTURE2D_LOD( _MatcapB3, sampler_trilinear_repeat, MatcapUV215_g19987, ( ( 1.0 - _MatcapB3smoothness ) * 10.0 ) )).rgb * (_MatcapB3Color).rgb * ( _MatcapB3Color.a * MatcapB3Blending708_g19987 ) ) * ReflectionB3Intensity300_g19987 );
			float3 ifLocalVar348_g19987 = 0;
			if( 1.0 > _MatcapB3Mode )
				ifLocalVar348_g19987 = ( temp_output_361_0_g19987 * MatcapLighting825_g19987 * MainTex207_g19987 * AmbientOcclusion834_g19987 );
			else if( 1.0 == _MatcapB3Mode )
				ifLocalVar348_g19987 = ( temp_output_361_0_g19987 * MatcapLightingRGB901_g19987 );
			else if( 1.0 < _MatcapB3Mode )
				ifLocalVar348_g19987 = ( ( 1.0 - temp_output_361_0_g19987 ) * MatcapLightingRGB901_g19987 );
			float3 lerpResult340_g19987 = lerp( float3( 1,1,1 ) , MainTex207_g19987 , _ReflectionB3Tint);
			float3 ifLocalVar438_g19987 = 0;
			UNITY_BRANCH 
			if( _MatcapB3Toggle > 0 )
				ifLocalVar438_g19987 = ( ifLocalVar348_g19987 * lerpResult340_g19987 * ( ReflectionB3Intensity300_g19987 * ReflectionMaskB201_g19987 ) );
			float3 MatcapB3calc421_g19987 = ( ifLocalVar438_g19987 * temp_output_576_0_g19987 );
			float ReflectionA4Intensity302_g19987 = _ReflectionA4Intensity;
			float3 temp_output_402_0_g19987 = ( ( (SAMPLE_TEXTURE2D_LOD( _MatcapA4, sampler_trilinear_repeat, MatcapUV215_g19987, ( ( 1.0 - _MatcapA4smoothness ) * 10.0 ) )).rgb * (_MatcapA4Color).rgb * ( _MatcapA4Color.a * MatcapA4Blending710_g19987 ) ) * ReflectionA4Intensity302_g19987 );
			float3 ifLocalVar389_g19987 = 0;
			if( 1.0 > _MatcapA4Mode )
				ifLocalVar389_g19987 = ( temp_output_402_0_g19987 * MatcapLighting825_g19987 * MainTex207_g19987 * AmbientOcclusion834_g19987 );
			else if( 1.0 == _MatcapA4Mode )
				ifLocalVar389_g19987 = ( temp_output_402_0_g19987 * MatcapLightingRGB901_g19987 );
			else if( 1.0 < _MatcapA4Mode )
				ifLocalVar389_g19987 = ( ( 1.0 - temp_output_402_0_g19987 ) * MatcapLightingRGB901_g19987 );
			float3 lerpResult381_g19987 = lerp( float3( 1,1,1 ) , MainTex207_g19987 , _ReflectionA4Tint);
			float3 ifLocalVar439_g19987 = 0;
			UNITY_BRANCH 
			if( _MatcapA4Toggle > 0 )
				ifLocalVar439_g19987 = ( ifLocalVar389_g19987 * lerpResult381_g19987 * ( ReflectionA4Intensity302_g19987 * ReflectionMaskA202_g19987 ) );
			float3 MatcapA4calc422_g19987 = ( ifLocalVar439_g19987 * temp_output_579_0_g19987 );
			float3 Matcap7524 = ( MatcapR1calc419_g19987 + MatcapG2calc420_g19987 + MatcapB3calc421_g19987 + MatcapA4calc422_g19987 );
			float DirectionToggle135_g19980 = _RimDirectionToggle;
			float RimShape196_g19980 = pow( ( 1.0 - saturate( ( NdotV7095 + _RimOffset ) ) ) , max( _RimPower , ( 1E-06 + 1E-06 ) ) );
			float3 WorldNormals127_g19980 = worldnormals7361;
			float fresnelNdotV93_g19980 = dot( WorldNormals127_g19980, ase_worldViewDir );
			float fresnelNode93_g19980 = ( _RimFresnelBias + _RimFresnelScale * pow( 1.0 - fresnelNdotV93_g19980, _RimFresnelPower ) );
			float Fresnel171_g19980 = fresnelNode93_g19980;
			float ifLocalVar274_g19980 = 0;
			if( 1.0 > DirectionToggle135_g19980 )
				ifLocalVar274_g19980 = RimShape196_g19980;
			else if( 1.0 == DirectionToggle135_g19980 )
				ifLocalVar274_g19980 = Fresnel171_g19980;
			float temp_output_2_0_g19981 = _RimTint;
			float temp_output_3_0_g19981 = ( 1.0 - temp_output_2_0_g19981 );
			float3 appendResult7_g19981 = (float3(temp_output_3_0_g19981 , temp_output_3_0_g19981 , temp_output_3_0_g19981));
			float3 temp_output_35_0_g19980 = ( ( MainTexSaturate7397 * temp_output_2_0_g19981 ) + appendResult7_g19981 );
			float UVSwitchProp340_g19980 = _RimMaskUVSwitch;
			float2 UV0340_g19980 = i.uv_texcoord.xy;
			float2 UV1340_g19980 = i.uv2_texcoord2;
			float2 UV2340_g19980 = i.uv3_texcoord3;
			float2 UV3340_g19980 = i.uv4_texcoord4;
			float2 localUVSwitch340_g19980 = UVSwitch( UVSwitchProp340_g19980 , UV0340_g19980 , UV1340_g19980 , UV2340_g19980 , UV3340_g19980 );
			float4 tex2DNode296_g19980 = SAMPLE_TEXTURE2D( _RimMask, sampler_trilinear_repeat, ( ( _RimMask_ST.xy * localUVSwitch340_g19980 ) + _RimMask_ST.zw ) );
			float ifLocalVar104_g19980 = 0;
			if( 1.0 > _RimLightMaskinv )
				ifLocalVar104_g19980 = tex2DNode296_g19980.g;
			else if( 1.0 == _RimLightMaskinv )
				ifLocalVar104_g19980 = ( 1.0 - tex2DNode296_g19980.g );
			float FinalMask165_g19980 = ifLocalVar104_g19980;
			float ifLocalVar181_g19980 = 0;
			if( 1.0 > DirectionToggle135_g19980 )
				ifLocalVar181_g19980 = RimShape196_g19980;
			else if( 1.0 == DirectionToggle135_g19980 )
				ifLocalVar181_g19980 = Fresnel171_g19980;
			float3 indirectNormal184_g19980 = WorldNormals127_g19980;
			Unity_GlossyEnvironmentData g184_g19980 = UnityGlossyEnvironmentSetup( _RimSpecLightsmoothness, data.worldViewDir, indirectNormal184_g19980, float3(0,0,0));
			float3 indirectSpecular184_g19980 = UnityGI_IndirectSpecular( data, AmbientOcclusion7454, indirectNormal184_g19980, g184_g19980 );
			float3 ifLocalVar203_g19980 = 0;
			if( 1.0 == _RimSpecToggle )
				ifLocalVar203_g19980 = ( saturate( ifLocalVar181_g19980 ) * indirectSpecular184_g19980 );
			float3 temp_output_189_0_g19980 = ( ( ( PreClampFinalLight7447 * saturate( ifLocalVar274_g19980 ) ) * temp_output_35_0_g19980 * (_RimColor).rgb * FinalMask165_g19980 ) + ( ifLocalVar203_g19980 * temp_output_35_0_g19980 * FinalMask165_g19980 * _RimOpacity ) );
			float3 switchResult252_g19980 = (((i.ASEVFace>0)?(temp_output_189_0_g19980):(float3( 0,0,0 ))));
			float3 switchResult253_g19980 = (((i.ASEVFace>0)?(float3( 0,0,0 )):(temp_output_189_0_g19980)));
			float3 ifLocalVar251_g19980 = 0;
			if( 1.0 > _RimFaceCulling )
				ifLocalVar251_g19980 = temp_output_189_0_g19980;
			else if( 1.0 == _RimFaceCulling )
				ifLocalVar251_g19980 = switchResult252_g19980;
			else if( 1.0 < _RimFaceCulling )
				ifLocalVar251_g19980 = switchResult253_g19980;
			float3 ifLocalVar7506 = 0;
			if( 1.0 == _RimToggle )
				ifLocalVar7506 = ifLocalVar251_g19980;
			float3 rimlight7527 = ( ifLocalVar7506 * ( _RimToggle * ToggleAdvanced7295 ) );
			float3 uvs_Flipbook = i.uv_texcoord;
			uvs_Flipbook.xy = i.uv_texcoord.xy * _Flipbook_ST.xy + _Flipbook_ST.zw;
			float cos16_g19976 = cos( ( _RotateFlipbook * UNITY_PI ) );
			float sin16_g19976 = sin( ( _RotateFlipbook * UNITY_PI ) );
			float2 rotator16_g19976 = mul( uvs_Flipbook.xy - float2( 0.5,0.5 ) , float2x2( cos16_g19976 , -sin16_g19976 , sin16_g19976 , cos16_g19976 )) + float2( 0.5,0.5 );
			float2 _Vector3 = float2(0,0);
			float2 temp_output_6_0_g19976 = ( 1.0 - float2( 1,1 ) );
			float2 temp_output_7_0_g19976 = ( 2.0 + float2( 0,0 ) );
			float2 _Vector2 = float2(1,1);
			float2 temp_output_19_0_g19976 = (_Vector3 + (rotator16_g19976 - ( _Vector3 + ( temp_output_6_0_g19976 / temp_output_7_0_g19976 ) )) * (_Vector2 - _Vector3) / (( _Vector2 - ( temp_output_6_0_g19976 / temp_output_7_0_g19976 ) ) - ( _Vector3 + ( temp_output_6_0_g19976 / temp_output_7_0_g19976 ) )));
			float temp_output_4_0_g19978 = (float)_Columns;
			float temp_output_5_0_g19978 = (float)_Rows;
			float2 appendResult7_g19978 = (float2(temp_output_4_0_g19978 , temp_output_5_0_g19978));
			float totalFrames39_g19978 = ( temp_output_4_0_g19978 * temp_output_5_0_g19978 );
			float2 appendResult8_g19978 = (float2(totalFrames39_g19978 , temp_output_5_0_g19978));
			float mulTime26_g19976 = _Time.y * (float)_Speed;
			float clampResult42_g19978 = clamp( 0.0 , 0.0001 , ( totalFrames39_g19978 - 1.0 ) );
			float temp_output_35_0_g19978 = frac( ( ( fmod( mulTime26_g19976 , (float)(float)_MaxFrames ) + clampResult42_g19978 ) / totalFrames39_g19978 ) );
			float2 appendResult29_g19978 = (float2(temp_output_35_0_g19978 , ( 1.0 - temp_output_35_0_g19978 )));
			float2 temp_output_15_0_g19978 = ( ( temp_output_19_0_g19976 / appendResult7_g19978 ) + ( floor( ( appendResult8_g19978 * appendResult29_g19978 ) ) / appendResult7_g19978 ) );
			float2 break20_g19976 = temp_output_19_0_g19976;
			float A1_g19977 = floor( max( break20_g19976.x , break20_g19976.y ) );
			float B1_g19977 = floor( ( 1.0 - min( break20_g19976.x , break20_g19976.y ) ) );
			float localASEOr1_g19977 = ASEOr( A1_g19977 , B1_g19977 );
			float3 PreFinalLight7428 = ( temp_output_1997_0_g19967 + temp_output_782_0_g19967 );
			float3 lerpResult43_g19976 = lerp( PreFinalLight7428 , FinalLight7423 , _FlipbookTint);
			float3 ifLocalVar7772 = 0;
			if( _FlipbookToggle == 1.0 )
				ifLocalVar7772 = ( ( (SAMPLE_TEXTURE2D( _Flipbook, sampler_Flipbook, temp_output_15_0_g19978 )).rgb * ( 1.0 - localASEOr1_g19977 ) ) * (_FlipbookColor).rgb * _FlipbookColor.a * lerpResult43_g19976 );
			float3 Flipbook7528 = ( ifLocalVar7772 * ( _FlipbookToggle * ToggleAdvanced7295 ) );
			float temp_output_142_0_g19982 = GrayscaledLight7101;
			float3 WorldNormals72_g19982 = worldnormals7361;
			float3 temp_cast_48 = (1.0).xxx;
			float UVSwitchProp449_g19982 = _SSSThicknessMapUVSwitch;
			float2 UV0449_g19982 = i.uv_texcoord.xy;
			float2 UV1449_g19982 = i.uv2_texcoord2;
			float2 UV2449_g19982 = i.uv3_texcoord3;
			float2 UV3449_g19982 = i.uv4_texcoord4;
			float2 localUVSwitch449_g19982 = UVSwitch( UVSwitchProp449_g19982 , UV0449_g19982 , UV1449_g19982 , UV2449_g19982 , UV3449_g19982 );
			float3 temp_output_349_0_g19982 = (SAMPLE_TEXTURE2D( _SSSThicknessMap, sampler_trilinear_repeat, ( ( _SSSThicknessMap_ST.xy * localUVSwitch449_g19982 ) + _SSSThicknessMap_ST.zw ) )).rgb;
			float3 ifLocalVar52_g19982 = 0;
			if( 1.0 > _SSSThicknessinv )
				ifLocalVar52_g19982 = temp_output_349_0_g19982;
			else if( 1.0 == _SSSThicknessinv )
				ifLocalVar52_g19982 = ( 1.0 - temp_output_349_0_g19982 );
			float3 ifLocalVar426_g19982 = 0;
			if( 1.0 > _SSSMapMode )
				ifLocalVar426_g19982 = temp_cast_48;
			else if( 1.0 == _SSSMapMode )
				ifLocalVar426_g19982 = ifLocalVar52_g19982;
			float3 ThicknessMapMod432_g19982 = ifLocalVar426_g19982;
			float3 break435_g19982 = ThicknessMapMod432_g19982;
			float SubsurfaceDistortionModifier73_g19982 = ( _SubsurfaceDistortionModifier * break435_g19982.z );
			float dotResult9_g19982 = dot( -( ase_worldlightDir + ( WorldNormals72_g19982 * SubsurfaceDistortionModifier73_g19982 ) ) , ase_worldViewDir );
			float SSSPower74_g19982 = ( _SSSPower * break435_g19982.y );
			float SSSIntensity75_g19982 = ( _SSSScale * break435_g19982.x );
			float temp_output_428_0_g19982 = ( saturate( pow( saturate( dotResult9_g19982 ) , SSSPower74_g19982 ) ) * SSSIntensity75_g19982 );
			float3 temp_cast_49 = (temp_output_428_0_g19982).xxx;
			float3 MainTex76_g19982 = MainTexSaturate7397;
			float SSSTint77_g19982 = _SSSTint;
			float3 lerpResult40_g19982 = lerp( temp_cast_49 , ( temp_output_428_0_g19982 * MainTex76_g19982 ) , SSSTint77_g19982);
			#ifdef UNITY_PASS_FORWARDADD
				float staticSwitch248_g19982 = ase_lightAtten;
			#else
				float staticSwitch248_g19982 = 0.0;
			#endif
			float3 TangentNormals2171_g19967 = normals7395;
			float3 temp_cast_50 = (ase_lightAtten).xxx;
			float dotResult2167_g19967 = dot( TangentNormals2171_g19967 , temp_cast_50 );
			float SSSTangentNormalAtten2169_g19967 = ( ( dotResult2167_g19967 * ( NdLHalfingControl704_g19967 + 0.5 ) ) + ( ( ( ( 1.0 - NdLHalfingControl704_g19967 ) * 0.5 ) - 0.25 ) + ( RampOffset167_g19967 - 0.5 ) ) );
			float2 temp_cast_51 = (SSSTangentNormalAtten2169_g19967).xx;
			float3 SSSToonRampTexATTEN2175_g19967 = (SAMPLE_TEXTURE2D( _ToonRamp, sampler_linear_clamp, temp_cast_51 )).rgb;
			#ifdef DIRECTIONAL
				float3 staticSwitch2152_g19967 = SSSToonRampTexATTEN2175_g19967;
			#else
				float3 staticSwitch2152_g19967 = _egg;
			#endif
			float3 SSSDirectionalAttenuationRamp2190_g19967 = staticSwitch2152_g19967;
			half3 linearRgb2154_g19967 = SSSDirectionalAttenuationRamp2190_g19967;
			half localgetLinearRgbToLuminance2154_g19967 = getLinearRgbToLuminance( linearRgb2154_g19967 );
			#ifdef DIRECTIONAL
				float staticSwitch2192_g19967 = SSSTangentNormalAtten2169_g19967;
			#else
				float staticSwitch2192_g19967 = 1.0;
			#endif
			float SSSDirectionalAttenuationSteps2194_g19967 = staticSwitch2192_g19967;
			float SSSShadowCasterSteps2195_g19967 = saturate( ( floor( ( SSSDirectionalAttenuationSteps2194_g19967 * Steps30_g19967 ) ) / ( Steps30_g19967 - 1 ) ) );
			float ifLocalVar2197_g19967 = 0;
			UNITY_BRANCH 
			if( 1.0 > ToggleSteps66_g19967 )
				ifLocalVar2197_g19967 = localgetLinearRgbToLuminance2154_g19967;
			else if( 1.0 == ToggleSteps66_g19967 )
				ifLocalVar2197_g19967 = SSSShadowCasterSteps2195_g19967;
			float SSSAtten8000 = ifLocalVar2197_g19967;
			#ifdef DIRECTIONAL
				float staticSwitch120_g19982 = SSSAtten8000;
			#else
				float staticSwitch120_g19982 = staticSwitch248_g19982;
			#endif
			float3 temp_output_56_0_g19982 = ( ase_lightColor.rgb * staticSwitch120_g19982 );
			float3 localambientDir58_g19982 = ambientDir();
			float dotResult92_g19982 = dot( -( localambientDir58_g19982 + ( WorldNormals72_g19982 * SubsurfaceDistortionModifier73_g19982 ) ) , ase_worldViewDir );
			float temp_output_427_0_g19982 = ( saturate( pow( saturate( dotResult92_g19982 ) , SSSPower74_g19982 ) ) * SSSIntensity75_g19982 );
			float3 temp_cast_52 = (temp_output_427_0_g19982).xxx;
			float3 lerpResult98_g19982 = lerp( temp_cast_52 , ( temp_output_427_0_g19982 * MainTex76_g19982 ) , SSSTint77_g19982);
			half3 localAmbient319_g19982 = Ambient();
			float3 ifLocalVar351_g19982 = 0;
			if( temp_output_142_0_g19982 > 0.0 )
				ifLocalVar351_g19982 = ( lerpResult40_g19982 * temp_output_56_0_g19982 );
			else if( temp_output_142_0_g19982 == 0.0 )
				ifLocalVar351_g19982 = ( lerpResult98_g19982 * localAmbient319_g19982 );
			float3 temp_cast_53 = (1.0).xxx;
			float3 ifLocalVar424_g19982 = 0;
			if( 1.0 > _SSSMapMode )
				ifLocalVar424_g19982 = ifLocalVar52_g19982;
			else if( 1.0 == _SSSMapMode )
				ifLocalVar424_g19982 = temp_cast_53;
			float3 ThicknessMapColor431_g19982 = ifLocalVar424_g19982;
			half3 linearRgb390_g19982 = ase_lightColor.rgb;
			half localgetLinearRgbToLuminance390_g19982 = getLinearRgbToLuminance( linearRgb390_g19982 );
			half3 linearRgb391_g19982 = localAmbient319_g19982;
			half localgetLinearRgbToLuminance391_g19982 = getLinearRgbToLuminance( linearRgb391_g19982 );
			float3 ifLocalVar388_g19982 = 0;
			if( temp_output_142_0_g19982 > 0.0 )
				ifLocalVar388_g19982 = ( lerpResult40_g19982 * staticSwitch120_g19982 * localgetLinearRgbToLuminance390_g19982 );
			else if( temp_output_142_0_g19982 == 0.0 )
				ifLocalVar388_g19982 = ( lerpResult98_g19982 * localgetLinearRgbToLuminance391_g19982 );
			float3 SSSColor84_g19982 = (_SSSColor).rgb;
			float3 ifLocalVar389_g19982 = 0;
			if( temp_output_142_0_g19982 > 0.0 )
				ifLocalVar389_g19982 = ( lerpResult40_g19982 * temp_output_56_0_g19982 );
			else if( temp_output_142_0_g19982 == 0.0 )
				ifLocalVar389_g19982 = ( lerpResult98_g19982 * localAmbient319_g19982 );
			float3 ifLocalVar7495 = 0;
			if( 1.0 > _SSSSetting )
				ifLocalVar7495 = ( ifLocalVar351_g19982 * ThicknessMapColor431_g19982 );
			else if( 1.0 == _SSSSetting )
				ifLocalVar7495 = ( ifLocalVar388_g19982 * ThicknessMapColor431_g19982 * SSSColor84_g19982 );
			else if( 1.0 < _SSSSetting )
				ifLocalVar7495 = ( ifLocalVar389_g19982 * ThicknessMapColor431_g19982 * SSSColor84_g19982 );
			float3 SSS7518 = ifLocalVar7495;
			float3 temp_output_6855_0 = ( ( SpecularHighlight7511 * ( ToggleAdvanced7295 * _SpecularToggle ) ) + CubemapReflections7525 + Matcap7524 + rimlight7527 + Flipbook7528 + ( SSS7518 * ( ToggleAdvanced7295 * _SSSToggle ) ) );
			float3 ifLocalVar7337 = 0;
			if( 1.0 == _RenderingMode )
				ifLocalVar7337 = ( temp_output_6855_0 * AlphaChannelMul7530 );
			else
				ifLocalVar7337 = temp_output_6855_0;
			float UVSwitchProp7967 = _EmissionUVSwitch;
			float2 UV07967 = i.uv_texcoord.xy;
			float2 UV17967 = i.uv2_texcoord2;
			float2 UV27967 = i.uv3_texcoord3;
			float2 UV37967 = i.uv4_texcoord4;
			float2 localUVSwitch7967 = UVSwitch( UVSwitchProp7967 , UV07967 , UV17967 , UV27967 , UV37967 );
			float2 EmissionUVSwitch7973 = ( ( _Emission_ST.xy * localUVSwitch7967 ) + _Emission_ST.zw );
			float3 lerpResult7630 = lerp( float3( 1,1,1 ) , MainTexSaturate7397 , _EmissionTint);
			float3 lerpResult7636 = lerp( ( (SAMPLE_TEXTURE2D( _Emission, sampler_MainTex, EmissionUVSwitch7973 )).rgb * (_EmissionColor).rgb * lerpResult7630 ) , float3( 0,0,0 ) , saturate( ( _EmissionLightscale * LuminancedLight7517 ) ));
			#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch7947 = float3( 0,0,0 );
			#else
				float3 staticSwitch7947 = lerpResult7636;
			#endif
			float3 BasicEmission7638 = staticSwitch7947;
			float3 ase_vertex3Pos = mul( unity_WorldToObject, float4( i.worldPos , 1 ) );
			float4 transform698_g19994 = mul(unity_ObjectToWorld,float4( ase_vertex3Pos , 0.0 ));
			float Space701_g19994 = transform698_g19994.y;
			float ifLocalVar717_g19994 = 0;
			if( _ToggleMaterializeDirInv > 0.0 )
				ifLocalVar717_g19994 = -Space701_g19994;
			else if( _ToggleMaterializeDirInv == 0.0 )
				ifLocalVar717_g19994 = Space701_g19994;
			float3 ase_parentObjectScale = (1.0/float3( length( unity_WorldToObject[ 0 ].xyz ), length( unity_WorldToObject[ 1 ].xyz ), length( unity_WorldToObject[ 2 ].xyz ) ));
			float ObjectScale711_g19994 = max( ase_parentObjectScale.y , 1.0 );
			float temp_output_739_0_g19994 = ( ifLocalVar717_g19994 / ObjectScale711_g19994 );
			float DissolveDensity732_g19994 = exp2( _DissolveDensity );
			float temp_output_753_0_g19994 = ( ( temp_output_739_0_g19994 + (-1.0 + (_MaterializeR - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g19994 );
			float UVSwitchProp991_g19994 = _DissolvePatternUVSwitch;
			float2 UV0991_g19994 = i.uv_texcoord.xy;
			float2 UV1991_g19994 = i.uv2_texcoord2;
			float2 UV2991_g19994 = i.uv3_texcoord3;
			float2 UV3991_g19994 = i.uv4_texcoord4;
			float2 localUVSwitch991_g19994 = UVSwitch( UVSwitchProp991_g19994 , UV0991_g19994 , UV1991_g19994 , UV2991_g19994 , UV3991_g19994 );
			float2 DissolvePatternUVSwitch999_g19994 = ( ( _DissolvePattern_ST.xy * localUVSwitch991_g19994 ) + _DissolvePattern_ST.zw );
			float4 tex2DNode794_g19994 = SAMPLE_TEXTURE2D( _DissolvePattern, sampler_trilinear_repeat, DissolvePatternUVSwitch999_g19994 );
			float DissolvePattern801_g19994 = max( max( tex2DNode794_g19994.r , tex2DNode794_g19994.g ) , tex2DNode794_g19994.b );
			float4 ifLocalVar752_g19994 = 0;
			if( 1.0 > _MaterializeVertexColor )
				ifLocalVar752_g19994 = SAMPLE_TEXTURE2D( _MaterializeTex, sampler_point_clamp, i.uv_texcoord.xy );
			else if( 1.0 == _MaterializeVertexColor )
				ifLocalVar752_g19994 = i.vertexColor;
			float temp_output_708_0_g19994 = ( _MaterializeColorLayerR / 100.0 );
			float temp_output_714_0_g19994 = ( temp_output_708_0_g19994 - 0.005 );
			float temp_output_716_0_g19994 = ( temp_output_708_0_g19994 + 0.005 );
			float2 appendResult727_g19994 = (float2(temp_output_714_0_g19994 , temp_output_716_0_g19994));
			float2 appendResult722_g19994 = (float2(-0.005 , temp_output_716_0_g19994));
			float2 appendResult720_g19994 = (float2(temp_output_714_0_g19994 , 1.005));
			float2 ifLocalVar734_g19994 = 0;
			if( 1.0 > _MaterializeLayerModeR )
				ifLocalVar734_g19994 = appendResult727_g19994;
			else if( 1.0 == _MaterializeLayerModeR )
				ifLocalVar734_g19994 = appendResult722_g19994;
			else if( 1.0 < _MaterializeLayerModeR )
				ifLocalVar734_g19994 = appendResult720_g19994;
			float2 break751_g19994 = ifLocalVar734_g19994;
			float temp_output_927_0_g19994 = ( _MaterializeColorLayerG / 100.0 );
			float temp_output_925_0_g19994 = ( temp_output_927_0_g19994 - 0.005 );
			float temp_output_922_0_g19994 = ( temp_output_927_0_g19994 + 0.005 );
			float2 appendResult919_g19994 = (float2(temp_output_925_0_g19994 , temp_output_922_0_g19994));
			float2 appendResult918_g19994 = (float2(-0.005 , temp_output_922_0_g19994));
			float2 appendResult916_g19994 = (float2(temp_output_925_0_g19994 , 1.005));
			float2 ifLocalVar921_g19994 = 0;
			if( 1.0 > _MaterializeLayerModeG )
				ifLocalVar921_g19994 = appendResult919_g19994;
			else if( 1.0 == _MaterializeLayerModeG )
				ifLocalVar921_g19994 = appendResult918_g19994;
			else if( 1.0 < _MaterializeLayerModeG )
				ifLocalVar921_g19994 = appendResult916_g19994;
			float2 break920_g19994 = ifLocalVar921_g19994;
			float temp_output_941_0_g19994 = ( _MaterializeColorLayerB / 100.0 );
			float temp_output_939_0_g19994 = ( temp_output_941_0_g19994 - 0.005 );
			float temp_output_936_0_g19994 = ( temp_output_941_0_g19994 + 0.005 );
			float2 appendResult933_g19994 = (float2(temp_output_939_0_g19994 , temp_output_936_0_g19994));
			float2 appendResult932_g19994 = (float2(-0.005 , temp_output_936_0_g19994));
			float2 appendResult930_g19994 = (float2(temp_output_939_0_g19994 , 1.005));
			float2 ifLocalVar935_g19994 = 0;
			if( 1.0 > _MaterializeLayerModeB )
				ifLocalVar935_g19994 = appendResult933_g19994;
			else if( 1.0 == _MaterializeLayerModeB )
				ifLocalVar935_g19994 = appendResult932_g19994;
			else if( 1.0 < _MaterializeLayerModeB )
				ifLocalVar935_g19994 = appendResult930_g19994;
			float2 break934_g19994 = ifLocalVar935_g19994;
			float temp_output_955_0_g19994 = ( _MaterializeColorLayerA / 100.0 );
			float temp_output_953_0_g19994 = ( temp_output_955_0_g19994 - 0.005 );
			float temp_output_950_0_g19994 = ( temp_output_955_0_g19994 + 0.005 );
			float2 appendResult947_g19994 = (float2(temp_output_953_0_g19994 , temp_output_950_0_g19994));
			float2 appendResult946_g19994 = (float2(-0.005 , temp_output_950_0_g19994));
			float2 appendResult944_g19994 = (float2(temp_output_953_0_g19994 , 1.005));
			float2 ifLocalVar949_g19994 = 0;
			if( 1.0 > _MaterializeLayerModeA )
				ifLocalVar949_g19994 = appendResult947_g19994;
			else if( 1.0 == _MaterializeLayerModeA )
				ifLocalVar949_g19994 = appendResult946_g19994;
			else if( 1.0 < _MaterializeLayerModeA )
				ifLocalVar949_g19994 = appendResult944_g19994;
			float2 break948_g19994 = ifLocalVar949_g19994;
			float4 appendResult956_g19994 = (float4(break751_g19994.x , break920_g19994.x , break934_g19994.x , break948_g19994.x));
			float4 appendResult957_g19994 = (float4(break751_g19994.y , break920_g19994.y , break934_g19994.y , break948_g19994.y));
			float4 MaterialzeLayers912_g19994 = (( ifLocalVar752_g19994 >= appendResult956_g19994 && ifLocalVar752_g19994 <= appendResult957_g19994 ) ? ifLocalVar752_g19994 :  float4( 0,0,0,0 ) );
			float4 break768_g19994 = ceil( MaterialzeLayers912_g19994 );
			float temp_output_755_0_g19994 = ( ( temp_output_739_0_g19994 + (-1.0 + (_MaterializeG - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g19994 );
			float temp_output_765_0_g19994 = ( ( temp_output_739_0_g19994 + (-1.0 + (_MaterializeB - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g19994 );
			float temp_output_779_0_g19994 = ( ( temp_output_739_0_g19994 + (-1.0 + (_MaterializeA - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g19994 );
			float ifLocalVar761_g19994 = 0;
			if( _ToggleDissolveDirInv > 0.0 )
				ifLocalVar761_g19994 = -Space701_g19994;
			else if( _ToggleDissolveDirInv == 0.0 )
				ifLocalVar761_g19994 = Space701_g19994;
			float temp_output_784_0_g19994 = ( ( ( ifLocalVar761_g19994 / ObjectScale711_g19994 ) + (-1.0 + (_DissolveModifier - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g19994 );
			float2 uv_DissolveMask = i.uv_texcoord * _DissolveMask_ST.xy + _DissolveMask_ST.zw;
			float4 tex2DNode764_g19994 = SAMPLE_TEXTURE2D( _DissolveMask, sampler_trilinear_repeat, uv_DissolveMask );
			float A1_g19996 = i.vertexColor.r;
			float B1_g19996 = i.vertexColor.g;
			float localASEAnd1_g19996 = ASEAnd( A1_g19996 , B1_g19996 );
			float A1_g19995 = localASEAnd1_g19996;
			float B1_g19995 = i.vertexColor.b;
			float localASEAnd1_g19995 = ASEAnd( A1_g19995 , B1_g19995 );
			float ifLocalVar788_g19994 = 0;
			if( 1.0 > _MaterializeVertexColor )
				ifLocalVar788_g19994 = max( max( tex2DNode764_g19994.r , tex2DNode764_g19994.g ) , tex2DNode764_g19994.b );
			else if( 1.0 == _MaterializeVertexColor )
				ifLocalVar788_g19994 = localASEAnd1_g19995;
			float lerpResult795_g19994 = lerp( saturate( temp_output_784_0_g19994 ) , 1.0 , ifLocalVar788_g19994);
			clip( 1.0 - ( ( 1.0 - max( max( max( max( ( saturate( ( temp_output_753_0_g19994 + DissolvePattern801_g19994 ) ) * break768_g19994.r ) , ( saturate( ( temp_output_755_0_g19994 + DissolvePattern801_g19994 ) ) * break768_g19994.g ) ) , ( saturate( ( temp_output_765_0_g19994 + DissolvePattern801_g19994 ) ) * break768_g19994.b ) ) , ( saturate( ( temp_output_779_0_g19994 + DissolvePattern801_g19994 ) ) * break768_g19994.a ) ) , lerpResult795_g19994 ) ) + 0.005 ));
			float ifLocalVar806_g19994 = 0;
			if( 1.0 > _DissolveModifier )
				ifLocalVar806_g19994 = 1.0;
			else if( 1.0 == _DissolveModifier )
				ifLocalVar806_g19994 = 1.0;
			c.rgb = ( ( lerpResult7792 + ifLocalVar7337 + BasicEmission7638 ) * ifLocalVar806_g19994 );
			c.a = AlphaChannelMul7530;
			clip( ifLocalVar44_g19997 - _MaskClipValue );
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
			float mulTime7_g19993 = _Time.y * _NoiseSpeed;
			float UVSwitchProp79_g19993 = _NoiseTextureUVSwitch;
			float2 UV079_g19993 = i.uv_texcoord.xy;
			float2 UV179_g19993 = i.uv2_texcoord2;
			float2 UV279_g19993 = i.uv3_texcoord3;
			float2 UV379_g19993 = i.uv4_texcoord4;
			float2 localUVSwitch79_g19993 = UVSwitch( UVSwitchProp79_g19993 , UV079_g19993 , UV179_g19993 , UV279_g19993 , UV379_g19993 );
			float2 NoiseTextureUVSwitch90_g19993 = ( ( _NoiseTexture_ST.xy * localUVSwitch79_g19993 ) + _NoiseTexture_ST.zw );
			float2 panner17_g19993 = ( mulTime7_g19993 * _NoiseVectorXY + NoiseTextureUVSwitch90_g19993);
			float mulTime4_g19993 = _Time.y * _NoiseSpeed;
			float2 panner12_g19993 = ( ( mulTime4_g19993 * 2.179 ) * _NoiseVectorXY + ( 1.0 - NoiseTextureUVSwitch90_g19993 ));
			float mulTime16_g19993 = _Time.y * _Emiossionscrollspeed;
			float UVSwitchProp80_g19993 = _EmissionscrollUVSwitch;
			float2 UV080_g19993 = i.uv_texcoord.xy;
			float2 UV180_g19993 = i.uv2_texcoord2;
			float2 UV280_g19993 = i.uv3_texcoord3;
			float2 UV380_g19993 = i.uv4_texcoord4;
			float2 localUVSwitch80_g19993 = UVSwitch( UVSwitchProp80_g19993 , UV080_g19993 , UV180_g19993 , UV280_g19993 , UV380_g19993 );
			float2 EmissionscrollUVSwitch88_g19993 = ( ( _Emissionscroll_ST.xy * localUVSwitch80_g19993 ) + _Emissionscroll_ST.zw );
			float2 panner21_g19993 = ( mulTime16_g19993 * _VectorXY + EmissionscrollUVSwitch88_g19993);
			float4 Emissionsscrollcolor7639 = _EmissionscrollColor;
			float UVSwitchProp7963 = _EmissionScrollMaskUVSwitch;
			float2 UV07963 = i.uv_texcoord.xy;
			float2 UV17963 = i.uv2_texcoord2;
			float2 UV27963 = i.uv3_texcoord3;
			float2 UV37963 = i.uv4_texcoord4;
			float2 localUVSwitch7963 = UVSwitch( UVSwitchProp7963 , UV07963 , UV17963 , UV27963 , UV37963 );
			float2 EmissionScrollMaskUVSwitch7972 = ( ( _EmissionScrollMask_ST.xy * localUVSwitch7963 ) + _EmissionScrollMask_ST.zw );
			float4 tex2DNode7614 = SAMPLE_TEXTURE2D( _EmissionScrollMask, sampler_MainTex, EmissionScrollMaskUVSwitch7972 );
			float local_AudioTextureDimensions287_g19988 = ( 0.0 );
			float w287_g19988 = 0;
			float h287_g19988 = 0;
			{
			#ifndef SHADER_TARGET_SURFACE_ANALYSIS
			_AudioTexture.GetDimensions(w287_g19988, h287_g19988);
			#endif
			}
			float temp_output_840_0_g19988 = ( w287_g19988 + _AudioLinkSwitch );
			float A1_g19989 = (( temp_output_840_0_g19988 >= 33.0 && temp_output_840_0_g19988 <= 35.0 ) ? 1.0 :  0.0 );
			float B1_g19989 = (( temp_output_840_0_g19988 >= 129.0 && temp_output_840_0_g19988 <= 131.0 ) ? 1.0 :  0.0 );
			float localASEOr1_g19989 = ASEOr( A1_g19989 , B1_g19989 );
			float AudioTextureCheck808_g19988 = localASEOr1_g19989;
			float mulTime5_g19988 = _Time.y * _ESSpeed;
			float locallongIF931_g19988 = ( 0.0 );
			float2 Out931_g19988 = float2( 0,0 );
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
			float3 normals7395 = normalizeResult52_g1;
			float3 ifLocalVar112_g19988 = 0;
			if( 1.0 > _IgnoreNormalsESv2 )
				ifLocalVar112_g19988 = normals7395;
			else if( 1.0 == _IgnoreNormalsESv2 )
				ifLocalVar112_g19988 = float3(0,0,0);
			float3 break437_g19988 = ifLocalVar112_g19988;
			float3 ase_worldNormal = WorldNormalVector( i, float3( 0, 0, 1 ) );
			float3 ase_vertexNormal = mul( unity_WorldToObject, float4( ase_worldNormal, 0 ) );
			ase_vertexNormal = normalize( ase_vertexNormal );
			float2 appendResult113_g19988 = (float2(( break437_g19988.x + ase_vertexNormal.x ) , ( break437_g19988.y + ase_vertexNormal.y )));
			float2 VertexNormal244_g19988 = appendResult113_g19988;
			float2 VertexNormal931_g19988 = VertexNormal244_g19988;
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
			float3 worldnormals7361 = normalizeResult53_g1;
			float3 normalizeResult85_g19988 = normalize( ase_worldNormal );
			float3 ifLocalVar86_g19988 = 0;
			if( 1.0 > _IgnoreNormalsESv2 )
				ifLocalVar86_g19988 = worldnormals7361;
			else if( 1.0 == _IgnoreNormalsESv2 )
				ifLocalVar86_g19988 = normalizeResult85_g19988;
			float fresnelNdotV58_g19988 = dot( ifLocalVar86_g19988, ase_worldViewDir );
			float fresnelNode58_g19988 = ( 0.0 + 1.0 * pow( 1.0 - fresnelNdotV58_g19988, 5.0 ) );
			float FresnelCamera248_g19988 = fresnelNode58_g19988;
			float FresnelCamera931_g19988 = FresnelCamera248_g19988;
			float3 ase_vertex3Pos = mul( unity_WorldToObject, float4( i.worldPos , 1 ) );
			float4 transform187_g19988 = mul(unity_ObjectToWorld,float4( ase_vertex3Pos , 0.0 ));
			float2 appendResult209_g19988 = (float2(( transform187_g19988.x + break437_g19988.x ) , ( transform187_g19988.y + break437_g19988.y )));
			float2 VertextoWorldPos251_g19988 = appendResult209_g19988;
			float2 VertextoWorldPos931_g19988 = VertextoWorldPos251_g19988;
			float mulTime62_g19988 = _Time.y * _ESVoronoiSpeed;
			float time64_g19988 = mulTime62_g19988;
			float2 voronoiSmoothId64_g19988 = 0;
			float2 coords64_g19988 = VertextoWorldPos251_g19988 * _ESVoronoiScale;
			float2 id64_g19988 = 0;
			float2 uv64_g19988 = 0;
			float voroi64_g19988 = voronoi64_g19988( coords64_g19988, time64_g19988, id64_g19988, uv64_g19988, 0, voronoiSmoothId64_g19988 );
			float Voronoi255_g19988 = voroi64_g19988;
			float Voronoi931_g19988 = Voronoi255_g19988;
			float2 appendResult482_g19988 = (float2(( break437_g19988.x + i.uv_texcoord.xy.x ) , ( break437_g19988.y + i.uv_texcoord.xy.y )));
			float2 VertexUV481_g19988 = appendResult482_g19988;
			float2 VertexUV931_g19988 = VertexUV481_g19988;
			{
			if (_ESRenderMethod == 0)
				Out931_g19988 = VertexNormal931_g19988;
			else if (_ESRenderMethod == 1)
				Out931_g19988 = FresnelCamera931_g19988;
			else if (_ESRenderMethod == 2)
				Out931_g19988 = VertextoWorldPos931_g19988;
			else if (_ESRenderMethod == 3)
				Out931_g19988 = Voronoi931_g19988;
			else if (_ESRenderMethod == 4)
				Out931_g19988 = VertexUV931_g19988;
			}
			float dotResult6_g19988 = dot( Out931_g19988 , _ESCoordinates );
			float ifLocalVar728_g19988 = 0;
			if( 1.0 > AudioTextureCheck808_g19988 )
				ifLocalVar728_g19988 = _ESSize;
			else if( 1.0 == AudioTextureCheck808_g19988 )
				ifLocalVar728_g19988 = 1.0;
			float ifLocalVar732_g19988 = 0;
			if( 1.0 > AudioTextureCheck808_g19988 )
				ifLocalVar732_g19988 = _ESSharpness;
			float temp_output_18_0_g19988 = saturate( ( ( pow( ( 1.0 - ( frac( ( ( mulTime5_g19988 + _ESScrollOffset ) - dotResult6_g19988 ) ) / ifLocalVar728_g19988 ) ) , ( 1.0 - ifLocalVar732_g19988 ) ) + 1E-06 ) + _ESLevelOffset ) );
			float2 break742_g19988 = tex2DNode7614.rg;
			float ESMaskR738_g19988 = break742_g19988.x;
			int Band697_g19988 = (int)i.uv_texcoord.xy.y;
			float ifLocalVar846_g19988 = 0;
			if( 32.0 == w287_g19988 )
				ifLocalVar846_g19988 = 32.0;
			else if( 32.0 < w287_g19988 )
				ifLocalVar846_g19988 = _AudioLinkBandHistory;
			float VectorCalculation793_g19988 = temp_output_18_0_g19988;
			float temp_output_845_0_g19988 = ( ifLocalVar846_g19988 * VectorCalculation793_g19988 );
			float Delay697_g19988 = temp_output_845_0_g19988;
			float localAudioLinkLerp697_g19988 = AudioLinkLerp( Band697_g19988 , Delay697_g19988 );
			int Band702_g19988 = (int)( i.uv_texcoord.xy.y + 1.0 );
			float Delay702_g19988 = temp_output_845_0_g19988;
			float localAudioLinkLerp702_g19988 = AudioLinkLerp( Band702_g19988 , Delay702_g19988 );
			int Band706_g19988 = (int)( i.uv_texcoord.xy.y + 2.0 );
			float Delay706_g19988 = temp_output_845_0_g19988;
			float localAudioLinkLerp706_g19988 = AudioLinkLerp( Band706_g19988 , Delay706_g19988 );
			int Band710_g19988 = (int)( i.uv_texcoord.xy.y + 3.0 );
			float Delay710_g19988 = temp_output_845_0_g19988;
			float localAudioLinkLerp710_g19988 = AudioLinkLerp( Band710_g19988 , Delay710_g19988 );
			float AudioLinkV1V2Bands800_g19988 = ( ( ( localAudioLinkLerp697_g19988 * _AudioBandIntensity.x ) + ( localAudioLinkLerp702_g19988 * _AudioBandIntensity.y ) + ( localAudioLinkLerp706_g19988 * _AudioBandIntensity.z ) + ( localAudioLinkLerp710_g19988 * _AudioBandIntensity.w ) ) * ESMaskR738_g19988 );
			float2 appendResult608_g19988 = (float2(_WaveformCoordinates.x , _WaveformCoordinates.y));
			float2 appendResult609_g19988 = (float2(_WaveformCoordinates.z , _WaveformCoordinates.w));
			float2 uvs_TexCoord606_g19988 = i.uv_texcoord;
			uvs_TexCoord606_g19988.xy = i.uv_texcoord.xy * appendResult608_g19988 + appendResult609_g19988;
			float cos593_g19988 = cos( ( _WaveformRotation * UNITY_PI ) );
			float sin593_g19988 = sin( ( _WaveformRotation * UNITY_PI ) );
			float2 rotator593_g19988 = mul( uvs_TexCoord606_g19988.xy - float2( 0.5,0.5 ) , float2x2( cos593_g19988 , -sin593_g19988 , sin593_g19988 , cos593_g19988 )) + float2( 0.5,0.5 );
			float2 _Vec001a = float2(0,0);
			float2 temp_output_581_0_g19988 = ( 1.0 - float2( 1,1 ) );
			float2 temp_output_589_0_g19988 = ( 2.0 + float2( 0,0 ) );
			float2 _Vec111a = float2(1,1);
			float2 temp_output_587_0_g19988 = (_Vec001a + (rotator593_g19988 - ( _Vec001a + ( temp_output_581_0_g19988 / temp_output_589_0_g19988 ) )) * (_Vec111a - _Vec001a) / (( _Vec111a - ( temp_output_581_0_g19988 / temp_output_589_0_g19988 ) ) - ( _Vec001a + ( temp_output_581_0_g19988 / temp_output_589_0_g19988 ) )));
			float2 uv564_g19988 = temp_output_587_0_g19988;
			float thickness564_g19988 = _WaveformThickness;
			float2 localAudioLinkWaveformsample564_g19988 = AudioLinkWaveformsample( uv564_g19988 , thickness564_g19988 );
			float cos869_g19988 = cos( ( _WaveformRotation * UNITY_PI ) );
			float sin869_g19988 = sin( ( _WaveformRotation * UNITY_PI ) );
			float2 rotator869_g19988 = mul( uvs_TexCoord606_g19988.xy - float2( 0.5,0.5 ) , float2x2( cos869_g19988 , -sin869_g19988 , sin869_g19988 , cos869_g19988 )) + float2( 0.5,0.5 );
			float2 break905_g19988 = rotator869_g19988;
			float2 appendResult906_g19988 = (float2(break905_g19988.x , ( 1.0 - break905_g19988.y )));
			float2 _Vector2a = float2(0,0);
			float2 temp_output_866_0_g19988 = ( 1.0 - float2( 1,1 ) );
			float2 temp_output_855_0_g19988 = ( 2.0 + float2( 0,0 ) );
			float2 _Vector0a = float2(1,1);
			float2 temp_output_871_0_g19988 = (_Vector2a + (appendResult906_g19988 - ( _Vector2a + ( temp_output_866_0_g19988 / temp_output_855_0_g19988 ) )) * (_Vector0a - _Vector2a) / (( _Vector0a - ( temp_output_866_0_g19988 / temp_output_855_0_g19988 ) ) - ( _Vector2a + ( temp_output_866_0_g19988 / temp_output_855_0_g19988 ) )));
			float2 uv881_g19988 = temp_output_871_0_g19988;
			float thickness881_g19988 = _WaveformThickness;
			float2 localAudioLinkWaveformsample881_g19988 = AudioLinkWaveformsample( uv881_g19988 , thickness881_g19988 );
			float2 break874_g19988 = temp_output_871_0_g19988;
			float A1_g19992 = floor( max( break874_g19988.x , break874_g19988.y ) );
			float B1_g19992 = floor( ( 1.0 - min( break874_g19988.x , break874_g19988.y ) ) );
			float localASEOr1_g19992 = ASEOr( A1_g19992 , B1_g19992 );
			float2 uv922_g19988 = temp_output_587_0_g19988;
			float2 localAudioLinkWaveformsampleMirror922_g19988 = AudioLinkWaveformsampleMirror( uv922_g19988 );
			float ifLocalVar924_g19988 = 0;
			if( 1.0 > _AudioLinkWaveformMirrorToggle )
				ifLocalVar924_g19988 = localAudioLinkWaveformsample564_g19988.y;
			else if( 1.0 == _AudioLinkWaveformMirrorToggle )
				ifLocalVar924_g19988 = max( localAudioLinkWaveformsample564_g19988.y , ( localAudioLinkWaveformsample881_g19988.y * ( 1.0 - localASEOr1_g19992 ) ) );
			else if( 1.0 < _AudioLinkWaveformMirrorToggle )
				ifLocalVar924_g19988 = localAudioLinkWaveformsampleMirror922_g19988.y;
			float2 break571_g19988 = temp_output_587_0_g19988;
			float A1_g19991 = floor( max( break571_g19988.x , break571_g19988.y ) );
			float B1_g19991 = floor( ( 1.0 - min( break571_g19988.x , break571_g19988.y ) ) );
			float localASEOr1_g19991 = ASEOr( A1_g19991 , B1_g19991 );
			float4 break419_g19988 = _AudioLinkColor;
			float ESMaskG743_g19988 = break742_g19988.y;
			float AudioLinkV2Waveform801_g19988 = ( ( ifLocalVar924_g19988 * ( 1.0 - localASEOr1_g19991 ) ) * break419_g19988.a * ESMaskG743_g19988 );
			float ifLocalVar600_g19988 = 0;
			if( 2.0 > _AudioLinkSwitch )
				ifLocalVar600_g19988 = AudioLinkV1V2Bands800_g19988;
			else if( 2.0 == _AudioLinkSwitch )
				ifLocalVar600_g19988 = AudioLinkV2Waveform801_g19988;
			else if( 2.0 < _AudioLinkSwitch )
				ifLocalVar600_g19988 = ( AudioLinkV1V2Bands800_g19988 + AudioLinkV2Waveform801_g19988 );
			float mulTime301_g19988 = _Time.y * _AudioHueSpeed;
			float3 hsvTorgb3_g19990 = HSVToRGB( float3(mulTime301_g19988,1.0,1.0) );
			float3 ifLocalVar416_g19988 = 0;
			if( _AudioHueSpeed > 0.0 )
				ifLocalVar416_g19988 = ( hsvTorgb3_g19990 * max( max( break419_g19988.r , break419_g19988.g ) , break419_g19988.b ) );
			else if( _AudioHueSpeed == 0.0 )
				ifLocalVar416_g19988 = (_AudioLinkColor).rgb;
			float3 ifLocalVar289_g19988 = 0;
			if( 1.0 > AudioTextureCheck808_g19988 )
				ifLocalVar289_g19988 = ( temp_output_18_0_g19988 * (Emissionsscrollcolor7639).rgb * ESMaskR738_g19988 );
			else if( 1.0 == AudioTextureCheck808_g19988 )
				ifLocalVar289_g19988 = ( ifLocalVar600_g19988 * ifLocalVar416_g19988 );
			float UVSwitchProp7958 = _MainTexUVSwitch;
			float2 UV07958 = i.uv_texcoord.xy;
			float2 UV17958 = i.uv2_texcoord2;
			float2 UV27958 = i.uv3_texcoord3;
			float2 UV37958 = i.uv4_texcoord4;
			float2 localUVSwitch7958 = UVSwitch( UVSwitchProp7958 , UV07958 , UV17958 , UV27958 , UV37958 );
			float2 MainTexUVSwitch7961 = ( ( _MainTex_ST.xy * localUVSwitch7958 ) + _MainTex_ST.zw );
			float4 tex2DNode7368 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, MainTexUVSwitch7961 );
			float3 Texture18_g2 = tex2DNode7368.rgb;
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
			clip( tex2DNode7368.a - _Cutout);
			float3 desaturateInitialColor7392 = ( lerpResult16_g2 * (_MainColor).rgb );
			float desaturateDot7392 = dot( desaturateInitialColor7392, float3( 0.299, 0.587, 0.114 ));
			float3 desaturateVar7392 = lerp( desaturateInitialColor7392, desaturateDot7392.xxx, ( 1.0 - _Saturation ) );
			float3 MainTexSaturate7397 = desaturateVar7392;
			float3 lerpResult369_g19988 = lerp( ifLocalVar289_g19988 , ( ifLocalVar289_g19988 * MainTexSaturate7397 ) , _EmissionscrollTint);
			float3 EmissionScrollV27606 = lerpResult369_g19988;
			float3 ifLocalVar7615 = 0;
			if( 1.0 == _EmissionScrollToggle )
				ifLocalVar7615 = ( ( ( (SAMPLE_TEXTURE2D( _NoiseTexture, sampler_trilinear_repeat, ( panner17_g19993 + 0.25 ) )).rgb * (SAMPLE_TEXTURE2D( _NoiseTexture, sampler_NoiseTexture, ( 1.0 - panner12_g19993 ) )).rgb ) * ( (SAMPLE_TEXTURE2D( _Emissionscroll, sampler_trilinear_repeat, panner21_g19993 )).rgb * (Emissionsscrollcolor7639).rgb ) ) * tex2DNode7614.r );
			else if( 1.0 < _EmissionScrollToggle )
				ifLocalVar7615 = EmissionScrollV27606;
			float ToggleAdvanced7295 = _COLORCOLOR;
			float3 temp_output_7623_0 = ( ifLocalVar7615 * ( saturate( _EmissionScrollToggle ) * ToggleAdvanced7295 ) );
			float3 Emissionscroll7627 = temp_output_7623_0;
			float3 WorldNormals20_g19720 = worldnormals7361;
			float dotResult442_g19720 = dot( WorldNormals20_g19720 , ase_worldViewDir );
			float NdotV7095 = dotResult442_g19720;
			float smoothstepResult10_g19722 = smoothstep( min( _ShadowRimSharpness , ( 1.0 - 1E-06 ) ) , 1.0 , ( NdotV7095 + _ShadowRimRange ));
			float lerpResult11_g19722 = lerp( 1.0 , smoothstepResult10_g19722 , _ShadowRimOpacity);
			float mulTime25_g19722 = _Time.y * _RimHueSpeed;
			float3 hsvTorgb3_g19723 = HSVToRGB( float3(mulTime25_g19722,1.0,1.0) );
			float3 temp_cast_7 = 1;
			float3 ifLocalVar27_g19722 = 0;
			if( _RimHueSpeed > 0.0 )
				ifLocalVar27_g19722 = hsvTorgb3_g19723;
			else if( _RimHueSpeed == 0.0 )
				ifLocalVar27_g19722 = temp_cast_7;
			float3 ifLocalVar7526 = 0;
			if( 1.0 == _RimSwitch )
				ifLocalVar7526 = ( ( ( 1.0 - lerpResult11_g19722 ) * (_EmissiveRimColor).rgb ) * ifLocalVar27_g19722 );
			float3 EmissiveRim7531 = ifLocalVar7526;
			float4 transform698_g19994 = mul(unity_ObjectToWorld,float4( ase_vertex3Pos , 0.0 ));
			float Space701_g19994 = transform698_g19994.y;
			float ifLocalVar717_g19994 = 0;
			if( _ToggleMaterializeDirInv > 0.0 )
				ifLocalVar717_g19994 = -Space701_g19994;
			else if( _ToggleMaterializeDirInv == 0.0 )
				ifLocalVar717_g19994 = Space701_g19994;
			float3 ase_parentObjectScale = (1.0/float3( length( unity_WorldToObject[ 0 ].xyz ), length( unity_WorldToObject[ 1 ].xyz ), length( unity_WorldToObject[ 2 ].xyz ) ));
			float ObjectScale711_g19994 = max( ase_parentObjectScale.y , 1.0 );
			float temp_output_739_0_g19994 = ( ifLocalVar717_g19994 / ObjectScale711_g19994 );
			float DissolveDensity732_g19994 = exp2( _DissolveDensity );
			float temp_output_753_0_g19994 = ( ( temp_output_739_0_g19994 + (-1.0 + (_MaterializeR - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g19994 );
			float4 ifLocalVar752_g19994 = 0;
			if( 1.0 > _MaterializeVertexColor )
				ifLocalVar752_g19994 = SAMPLE_TEXTURE2D( _MaterializeTex, sampler_point_clamp, i.uv_texcoord.xy );
			else if( 1.0 == _MaterializeVertexColor )
				ifLocalVar752_g19994 = i.vertexColor;
			float temp_output_708_0_g19994 = ( _MaterializeColorLayerR / 100.0 );
			float temp_output_714_0_g19994 = ( temp_output_708_0_g19994 - 0.005 );
			float temp_output_716_0_g19994 = ( temp_output_708_0_g19994 + 0.005 );
			float2 appendResult727_g19994 = (float2(temp_output_714_0_g19994 , temp_output_716_0_g19994));
			float2 appendResult722_g19994 = (float2(-0.005 , temp_output_716_0_g19994));
			float2 appendResult720_g19994 = (float2(temp_output_714_0_g19994 , 1.005));
			float2 ifLocalVar734_g19994 = 0;
			if( 1.0 > _MaterializeLayerModeR )
				ifLocalVar734_g19994 = appendResult727_g19994;
			else if( 1.0 == _MaterializeLayerModeR )
				ifLocalVar734_g19994 = appendResult722_g19994;
			else if( 1.0 < _MaterializeLayerModeR )
				ifLocalVar734_g19994 = appendResult720_g19994;
			float2 break751_g19994 = ifLocalVar734_g19994;
			float temp_output_927_0_g19994 = ( _MaterializeColorLayerG / 100.0 );
			float temp_output_925_0_g19994 = ( temp_output_927_0_g19994 - 0.005 );
			float temp_output_922_0_g19994 = ( temp_output_927_0_g19994 + 0.005 );
			float2 appendResult919_g19994 = (float2(temp_output_925_0_g19994 , temp_output_922_0_g19994));
			float2 appendResult918_g19994 = (float2(-0.005 , temp_output_922_0_g19994));
			float2 appendResult916_g19994 = (float2(temp_output_925_0_g19994 , 1.005));
			float2 ifLocalVar921_g19994 = 0;
			if( 1.0 > _MaterializeLayerModeG )
				ifLocalVar921_g19994 = appendResult919_g19994;
			else if( 1.0 == _MaterializeLayerModeG )
				ifLocalVar921_g19994 = appendResult918_g19994;
			else if( 1.0 < _MaterializeLayerModeG )
				ifLocalVar921_g19994 = appendResult916_g19994;
			float2 break920_g19994 = ifLocalVar921_g19994;
			float temp_output_941_0_g19994 = ( _MaterializeColorLayerB / 100.0 );
			float temp_output_939_0_g19994 = ( temp_output_941_0_g19994 - 0.005 );
			float temp_output_936_0_g19994 = ( temp_output_941_0_g19994 + 0.005 );
			float2 appendResult933_g19994 = (float2(temp_output_939_0_g19994 , temp_output_936_0_g19994));
			float2 appendResult932_g19994 = (float2(-0.005 , temp_output_936_0_g19994));
			float2 appendResult930_g19994 = (float2(temp_output_939_0_g19994 , 1.005));
			float2 ifLocalVar935_g19994 = 0;
			if( 1.0 > _MaterializeLayerModeB )
				ifLocalVar935_g19994 = appendResult933_g19994;
			else if( 1.0 == _MaterializeLayerModeB )
				ifLocalVar935_g19994 = appendResult932_g19994;
			else if( 1.0 < _MaterializeLayerModeB )
				ifLocalVar935_g19994 = appendResult930_g19994;
			float2 break934_g19994 = ifLocalVar935_g19994;
			float temp_output_955_0_g19994 = ( _MaterializeColorLayerA / 100.0 );
			float temp_output_953_0_g19994 = ( temp_output_955_0_g19994 - 0.005 );
			float temp_output_950_0_g19994 = ( temp_output_955_0_g19994 + 0.005 );
			float2 appendResult947_g19994 = (float2(temp_output_953_0_g19994 , temp_output_950_0_g19994));
			float2 appendResult946_g19994 = (float2(-0.005 , temp_output_950_0_g19994));
			float2 appendResult944_g19994 = (float2(temp_output_953_0_g19994 , 1.005));
			float2 ifLocalVar949_g19994 = 0;
			if( 1.0 > _MaterializeLayerModeA )
				ifLocalVar949_g19994 = appendResult947_g19994;
			else if( 1.0 == _MaterializeLayerModeA )
				ifLocalVar949_g19994 = appendResult946_g19994;
			else if( 1.0 < _MaterializeLayerModeA )
				ifLocalVar949_g19994 = appendResult944_g19994;
			float2 break948_g19994 = ifLocalVar949_g19994;
			float4 appendResult956_g19994 = (float4(break751_g19994.x , break920_g19994.x , break934_g19994.x , break948_g19994.x));
			float4 appendResult957_g19994 = (float4(break751_g19994.y , break920_g19994.y , break934_g19994.y , break948_g19994.y));
			float4 MaterialzeLayers912_g19994 = (( ifLocalVar752_g19994 >= appendResult956_g19994 && ifLocalVar752_g19994 <= appendResult957_g19994 ) ? ifLocalVar752_g19994 :  float4( 0,0,0,0 ) );
			float4 break768_g19994 = ceil( MaterialzeLayers912_g19994 );
			float ifLocalVar817_g19994 = 0;
			if( 1.0 > saturate( _MaterializeR ) )
				ifLocalVar817_g19994 = ( ( temp_output_753_0_g19994 + 1.0 ) * break768_g19994.r );
			float temp_output_755_0_g19994 = ( ( temp_output_739_0_g19994 + (-1.0 + (_MaterializeG - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g19994 );
			float ifLocalVar812_g19994 = 0;
			if( 1.0 > saturate( _MaterializeG ) )
				ifLocalVar812_g19994 = ( ( temp_output_755_0_g19994 + 1.0 ) * break768_g19994.g );
			float temp_output_765_0_g19994 = ( ( temp_output_739_0_g19994 + (-1.0 + (_MaterializeB - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g19994 );
			float ifLocalVar823_g19994 = 0;
			if( 1.0 > saturate( _MaterializeB ) )
				ifLocalVar823_g19994 = ( ( temp_output_765_0_g19994 + 1.0 ) * break768_g19994.b );
			float temp_output_779_0_g19994 = ( ( temp_output_739_0_g19994 + (-1.0 + (_MaterializeA - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g19994 );
			float ifLocalVar820_g19994 = 0;
			if( 1.0 > saturate( _MaterializeA ) )
				ifLocalVar820_g19994 = ( ( temp_output_779_0_g19994 + 1.0 ) * break768_g19994.a );
			float ifLocalVar761_g19994 = 0;
			if( _ToggleDissolveDirInv > 0.0 )
				ifLocalVar761_g19994 = -Space701_g19994;
			else if( _ToggleDissolveDirInv == 0.0 )
				ifLocalVar761_g19994 = Space701_g19994;
			float temp_output_784_0_g19994 = ( ( ( ifLocalVar761_g19994 / ObjectScale711_g19994 ) + (-1.0 + (_DissolveModifier - _DissolveRemapMin) * (1.0 - -1.0) / (_DissolveRemapMax - _DissolveRemapMin)) ) * DissolveDensity732_g19994 );
			float ifLocalVar818_g19994 = 0;
			if( 1.0 > _DissolveModifier )
				ifLocalVar818_g19994 = max( max( max( max( ifLocalVar817_g19994 , ifLocalVar812_g19994 ) , ifLocalVar823_g19994 ) , ifLocalVar820_g19994 ) , ( temp_output_784_0_g19994 + 1.0 ) );
			float lerpResult408_g19994 = lerp( 0.0 , saturate( ifLocalVar818_g19994 ) , saturate( ( 1.0 - ( ifLocalVar818_g19994 - 1.0 ) ) ));
			float3 ifLocalVar418_g19994 = 0;
			if( _ToggleDissolveEmission == 1.0 )
				ifLocalVar418_g19994 = ( saturate( ( MainTexSaturate7397 + 0.5 ) ) * (_EmissiveDissolveColor).rgb * lerpResult408_g19994 );
			float3 EmissiveDissolve7589 = ifLocalVar418_g19994;
			o.Emission = ( Emissionscroll7627 + EmissiveRim7531 + EmissiveDissolve7589 );
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
				o.customPack5.xyz = customInputData.vertexToFrag2250_g19968;
				o.customPack6.xyz = customInputData.vertexToFrag2251_g19968;
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
				surfIN.vertexToFrag2250_g19968 = IN.customPack5.xyz;
				surfIN.vertexToFrag2251_g19968 = IN.customPack6.xyz;
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
1611;58;2040;919;-5162.377;-227.0533;1;True;False
Node;AmplifyShaderEditor.CommentaryNode;7951;-3296,-1120;Inherit;False;1592.821;638.8351;;25;7973;7972;7971;7970;7969;7968;7967;7966;7965;7964;7963;7962;7961;7960;7959;7958;7957;7956;7955;7954;7953;7952;7988;7989;7990;UV Switch;1,1,1,1;0;0
Node;AmplifyShaderEditor.TexCoordVertexDataNode;7953;-2960,-1008;Inherit;False;0;2;0;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TexCoordVertexDataNode;7955;-2960,-672;Inherit;False;3;2;0;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TexCoordVertexDataNode;7956;-2960,-784;Inherit;False;2;2;0;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;7952;-3232,-1072;Inherit;False;Property;_MainTexUVSwitch;Main Tex UV Switch;107;1;[Enum];Create;True;0;4;UV0;0;UV1;1;UV2;2;UV3;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexCoordVertexDataNode;7954;-2960,-896;Inherit;False;1;2;0;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TextureTransformNode;7957;-2512,-1072;Inherit;False;7368;False;1;0;SAMPLER2D;;False;2;FLOAT2;0;FLOAT2;1
Node;AmplifyShaderEditor.CustomExpressionNode;7958;-2736,-1072;Inherit;False;if (UVSwitchProp == 0)$	return UV0@$else if (UVSwitchProp == 1)$	return UV1@$else if (UVSwitchProp == 2)$	return UV2@$else$	return UV3@;2;Create;5;True;UVSwitchProp;FLOAT;0;In;;Inherit;False;True;UV0;FLOAT2;0,0;In;;Inherit;False;True;UV1;FLOAT2;0,0;In;;Inherit;False;True;UV2;FLOAT2;0,0;In;;Inherit;False;True;UV3;FLOAT2;0,0;In;;Inherit;False;UVSwitch;False;False;0;;False;5;0;FLOAT;0;False;1;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;7959;-2256,-1072;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;7960;-2128,-1072;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CommentaryNode;7363;-1868.7,-256;Inherit;False;1822.427;443.5317;;14;7740;7530;7529;7397;7392;7386;7387;7816;7381;7380;7641;7370;7368;7974;Main Texture;0,0.1310344,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7961;-2000,-1072;Inherit;False;MainTexUVSwitch;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CommentaryNode;7358;-1664,384;Inherit;False;693.5416;284.4319;;2;7395;7361;Normals;0.5019608,0.5019608,1,1;0;0
Node;AmplifyShaderEditor.FunctionNode;7978;-1616,480;Inherit;False;Normals and World Normals;346;;1;a9b4a0b5166a58041907936d7f327add;0;0;2;FLOAT3;0;FLOAT3;14
Node;AmplifyShaderEditor.GetLocalVarNode;7974;-1824,-192;Inherit;False;7961;MainTexUVSwitch;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;7368;-1616,-208;Inherit;True;Property;_MainTex;Main Tex;464;0;Create;True;0;0;0;False;0;False;-1;None;b93fb7d25a2729f49881b9e0b2897862;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;1;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;7361;-1200,448;Inherit;False;worldnormals;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;7092;-1654.879,-1664;Inherit;False;1947.539;1182.55;Utilities;36;7220;7180;7182;7183;7181;7176;7177;7178;7179;7175;7219;7218;7217;7216;7186;7184;7185;7187;7188;7189;7190;7191;7172;7173;7192;7099;7174;7132;7096;7097;7101;7098;7100;7095;7093;7274;;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;7093;-1616,-1616;Inherit;False;7361;worldnormals;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode;7370;-1616,-16;Inherit;False;Property;_MainColor;Main Color;463;0;Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;7641;-1311,-96;Inherit;False;Property;_Cutout;Cutout;258;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;7979;-1312,-208;Inherit;False;Hue Shift;331;;2;ba913d8caaf7acd4a97eca4685e47654;0;1;17;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;7862;-1360,-1616;Inherit;False;Utilities;-1;;19720;9d926cf50a172564e8b49022db15d05a;0;1;19;FLOAT3;0,0,0;False;40;FLOAT;0;FLOAT;14;FLOAT;17;FLOAT;15;FLOAT;16;FLOAT;60;FLOAT;62;FLOAT;63;FLOAT;64;FLOAT;65;FLOAT;13;FLOAT;446;FLOAT;18;FLOAT;114;FLOAT4;372;FLOAT4;373;FLOAT4;374;FLOAT4;375;FLOAT4;397;FLOAT4;376;FLOAT3;377;FLOAT3;378;FLOAT3;379;FLOAT3;380;FLOAT3;382;FLOAT3;384;FLOAT3;386;FLOAT3;388;FLOAT;381;FLOAT;383;FLOAT;385;FLOAT;387;FLOAT;389;FLOAT;390;FLOAT;391;FLOAT;392;FLOAT3;393;FLOAT3;394;FLOAT3;395;FLOAT3;396
Node;AmplifyShaderEditor.RangedFloatNode;7380;-1008,-80;Inherit;False;Property;_Saturation;Saturation;462;0;Create;True;0;0;0;False;0;False;1;1;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.ClipNode;7816;-1008,-208;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;7381;-1424,-16;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;7386;-816,-208;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.OneMinusNode;7387;-736,-80;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;7372;-1664,3456;Inherit;False;1042.624;425.8316;;7;7531;7526;7403;7398;7390;7389;7388;Shadow Rim;0,0,0,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7095;-848,-1136;Inherit;False;NdotV;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DesaturateOpNode;7392;-544,-208;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;7388;-1648,3584;Inherit;False;7095;NdotV;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;7389;-1200,3536;Inherit;False;Property;_RimSwitch;Rim Switch;476;1;[Enum];Create;True;0;2;Shadow;0;Emissive;1;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7397;-288,-208;Inherit;False;MainTexSaturate;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7098;-848,-1616;Inherit;False;NdotL;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7395;-1200,560;Inherit;False;normals;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7174;-512,-1376;Inherit;False;VertexLightNdLNONMAX;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7220;-512,-1296;Inherit;False;VertexLightAtten;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7100;-848,-1376;Inherit;False;NdotAmbientL;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;7396;256,-336;Inherit;False;1259.938;1095.355;;19;7830;7423;7454;7517;7447;7428;8000;7419;7412;7429;7917;7427;7402;7406;7404;7408;7399;7405;8001;Lighting;1,0.9782155,0.759434,1;0;0
Node;AmplifyShaderEditor.FunctionNode;7821;-1456,3584;Inherit;False;Shadow Emissive Rim;449;;19722;4fa91309dca2f3c428e54f87b3f4adf3;0;1;34;FLOAT;0;False;2;FLOAT;0;FLOAT3;22
Node;AmplifyShaderEditor.RangedFloatNode;7390;-1184,3696;Inherit;False;Constant;_Float22;Float 22;192;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7406;288,112;Inherit;False;7174;VertexLightNdLNONMAX;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;7408;288,32;Inherit;False;7220;VertexLightAtten;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;7405;288,-288;Inherit;False;7395;normals;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;7404;288,-128;Inherit;False;7098;NdotL;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;7398;-1008,3536;Inherit;False;False;5;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7402;288,-208;Inherit;False;7397;MainTexSaturate;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;7399;288,-48;Inherit;False;7100;NdotAmbientL;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;8006;608,-112;Inherit;False;Lighting;259;;19967;f969bc2898d94ca4199b47c9b757495b;0;6;1258;FLOAT3;0,0,1;False;150;FLOAT3;0,0,0;False;1264;FLOAT;0;False;1263;FLOAT;0;False;1306;FLOAT4;0,0,0,0;False;1305;FLOAT4;0,0,0,0;False;12;FLOAT3;0;FLOAT3;198;FLOAT3;1309;FLOAT3;2205;FLOAT;210;FLOAT;1989;FLOAT;211;FLOAT;1361;FLOAT;2199;FLOAT;638;FLOAT;2155;FLOAT4;2137
Node;AmplifyShaderEditor.RangedFloatNode;7962;-3232,-848;Inherit;False;Property;_EmissionScrollMaskUVSwitch;Emission Scroll Mask UV Switch;105;1;[Enum];Create;True;0;4;UV0;0;UV1;1;UV2;2;UV3;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7403;-848,3536;Inherit;False;ShadowRim;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;7965;-3232,-656;Inherit;False;Property;_EmissionUVSwitch;Emission UV Switch;106;1;[Enum];Create;True;0;4;UV0;0;UV1;1;UV2;2;UV3;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7427;1216,0;Inherit;False;DirectLightRamp;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;7967;-2736,-656;Inherit;False;if (UVSwitchProp == 0)$	return UV0@$else if (UVSwitchProp == 1)$	return UV1@$else if (UVSwitchProp == 2)$	return UV2@$else$	return UV3@;2;Create;5;True;UVSwitchProp;FLOAT;0;In;;Inherit;False;True;UV0;FLOAT2;0,0;In;;Inherit;False;True;UV1;FLOAT2;0,0;In;;Inherit;False;True;UV2;FLOAT2;0,0;In;;Inherit;False;True;UV3;FLOAT2;0,0;In;;Inherit;False;UVSwitch;False;False;0;;False;5;0;FLOAT;0;False;1;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7099;-848,-1296;Inherit;False;NdotAmbientH;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7274;-848,-976;Inherit;False;NdotVCorr;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;7424;-1664,2176;Inherit;False;1823.935;1088.794;;33;7511;7890;7891;7892;7893;7894;7895;7896;7898;7899;7900;7901;7902;7903;7904;7905;7906;7907;7908;7909;7910;7911;7912;7914;7915;7916;7913;7918;7919;7920;7993;7994;7995;Specular Highlights;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7917;1216,672;Inherit;False;NdLVertexLightsShadows;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7132;-848,-1216;Inherit;False;AmbientLdotAmbientH;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7101;-848,-1056;Inherit;False;GrayscaledLight;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7096;-848,-1536;Inherit;False;NdotH;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7097;-848,-1456;Inherit;False;LdotH;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;7963;-2736,-848;Inherit;False;if (UVSwitchProp == 0)$	return UV0@$else if (UVSwitchProp == 1)$	return UV1@$else if (UVSwitchProp == 2)$	return UV2@$else$	return UV3@;2;Create;5;True;UVSwitchProp;FLOAT;0;In;;Inherit;False;True;UV0;FLOAT2;0,0;In;;Inherit;False;True;UV1;FLOAT2;0,0;In;;Inherit;False;True;UV2;FLOAT2;0,0;In;;Inherit;False;True;UV3;FLOAT2;0,0;In;;Inherit;False;UVSwitch;False;False;0;;False;5;0;FLOAT;0;False;1;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CommentaryNode;7310;8880,592;Inherit;False;891.5;452.2001;Kaj Optimizer;4;7309;7272;7746;8005;;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;7412;832,-192;Inherit;False;7403;ShadowRim;1;0;OBJECT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TextureTransformNode;7964;-2512,-848;Inherit;False;7614;False;1;0;SAMPLER2D;;False;2;FLOAT2;0;FLOAT2;1
Node;AmplifyShaderEditor.RegisterLocalVarNode;7429;1216,192;Inherit;False;AmbientRamp;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TextureTransformNode;7966;-2512,-656;Inherit;False;7621;False;1;0;SAMPLER2D;;False;2;FLOAT2;0;FLOAT2;1
Node;AmplifyShaderEditor.GetLocalVarNode;7903;-1648,2400;Inherit;False;7174;VertexLightNdLNONMAX;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;7898;-1376,2320;Inherit;False;7427;DirectLightRamp;1;0;OBJECT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7899;-1200,2400;Inherit;False;7096;NdotH;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7892;-1152,2320;Inherit;False;7429;AmbientRamp;1;0;OBJECT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7890;-1376,2400;Inherit;False;7098;NdotL;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;7969;-2256,-656;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;7896;-1376,2240;Inherit;False;7361;worldnormals;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;7895;-1376,2640;Inherit;False;7132;AmbientLdotAmbientH;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7901;-1168,2560;Inherit;False;7099;NdotAmbientH;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7902;-1184,2480;Inherit;False;7097;LdotH;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7900;-1120,2640;Inherit;False;7101;GrayscaledLight;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7918;-1648,2320;Inherit;False;7917;NdLVertexLightsShadows;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;7894;-1376,2560;Inherit;False;7100;NdotAmbientL;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7891;-1376,2480;Inherit;False;7274;NdotVCorr;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;7968;-2256,-848;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CommentaryNode;7597;449.6,-1664;Inherit;False;2716.211;1280.084;;19;7762;7627;7638;7634;7947;7623;7618;7615;7616;7612;7607;7613;7609;7614;7600;7608;7611;7598;7975;Emission;1,0.724138,0,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;7419;1072,-288;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;7309;8928,752;Inherit;False;784.9004;263.6;If Optimizer is toggled, make sure nothing is accidentally activated when its set to Off;6;7293;7295;7292;7294;7828;7829;;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;7995;-1568,2240;Inherit;False;7395;normals;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;7893;-1168,2240;Inherit;False;7397;MainTexSaturate;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;7971;-2128,-656;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CommentaryNode;7426;-1664,1536;Inherit;False;1227.628;453.2062;;12;7548;7545;7538;7535;7534;7518;7495;7456;7452;7450;7448;7999;Subsurface Scattering;1,0.4009434,0.4009434,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;7598;544,-1328;Inherit;False;951.7302;245.8046;Emission Scroll V1;3;7759;7639;7599;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;7768;256,2176;Inherit;False;1273.458;361.4141;;8;7777;7776;7774;7773;7772;7771;7770;7528;Flipbook;1,0,1,1;0;0
Node;AmplifyShaderEditor.FunctionNode;8004;-816,2320;Inherit;False;Specular Highlights;413;;19968;f01d465b622765446a78e511544ff258;0;28;2254;FLOAT3;0,0,0;False;44;FLOAT3;0,0,0;False;49;FLOAT3;0,0,0;False;1922;FLOAT4;0,0,0,0;False;1665;FLOAT4;0,0,0,0;False;192;FLOAT;1;False;293;FLOAT;1;False;594;FLOAT;0;False;578;FLOAT;0;False;1737;FLOAT;0;False;634;FLOAT;0;False;596;FLOAT;0;False;579;FLOAT;0;False;671;FLOAT;0;False;1739;FLOAT;0;False;1666;FLOAT4;0,0,0,0;False;1671;FLOAT3;0,0,0;False;1672;FLOAT3;0,0,0;False;1673;FLOAT3;0,0,0;False;1674;FLOAT3;0,0,0;False;1675;FLOAT;0;False;1676;FLOAT;0;False;1677;FLOAT;0;False;1678;FLOAT;0;False;1679;FLOAT;0;False;1680;FLOAT;0;False;1681;FLOAT;0;False;1682;FLOAT;0;False;6;FLOAT3;0;FLOAT3;58;FLOAT3;125;FLOAT3;2152;FLOAT3;1894;FLOAT4;1933
Node;AmplifyShaderEditor.RegisterLocalVarNode;7423;1216,-288;Inherit;False;FinalLight;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7454;1216,480;Inherit;False;AmbientOcclusion;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;7293;8960,912;Inherit;False;Property;_COLORCOLOR;Toggle Advanced;180;0;Create;False;0;0;0;False;1;ToggleOff(_COLORCOLOR_ON);False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;7970;-2128,-848;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CommentaryNode;7434;-1671,896;Inherit;False;1203.111;504.6198;;11;7494;7820;7527;7522;7507;7506;7496;7459;7478;7470;7472;Rim Light;1,1,0,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7428;1216,-192;Inherit;False;PreFinalLight;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7447;1216,-96;Inherit;False;PreClampFinalLight;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;7292;8960,816;Inherit;False;Property;_COLORADDSUBDIFF;Cubemap Toggle;177;0;Create;False;0;0;0;False;1;ToggleOff(_COLORADDSUBDIFF_ON);False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8000;1216,576;Inherit;False;SSSAtten;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7517;1216,288;Inherit;False;LuminancedLight;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7186;0,-1456;Inherit;False;VLNdotHThree;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7190;0,-1056;Inherit;False;VLLdotHFour;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7189;0,-1136;Inherit;False;VLLdotHThree;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7919;-256,2480;Inherit;False;PixelAmbientShadows;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7920;-256,2560;Inherit;False;VertexLightShadows;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;7999;-1440,1792;Inherit;False;8000;SSSAtten;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7450;-1392,1888;Inherit;False;7101;GrayscaledLight;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7187;0,-1376;Inherit;False;VLNdotHFour;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7973;-2000,-656;Inherit;False;EmissionUVSwitch;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CommentaryNode;7611;497.2,-864;Inherit;False;1630.196;442.3832;Emission;19;7617;7976;7779;7782;7781;7780;7636;7632;7633;7629;7626;7630;7628;7620;7621;7622;7625;7624;7619;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7185;0,-1536;Inherit;False;VLNdotHTwo;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7188;0,-1216;Inherit;False;VLLdotHTwo;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7459;-1632,1216;Inherit;False;7095;NdotV;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;7449;256,1312;Inherit;False;2213.919;722.1575;;32;7786;7525;7787;7521;7509;7513;7499;7498;7943;7942;7941;7940;7939;7938;7937;7936;7935;7934;7933;7932;7931;7930;7929;7928;7927;7926;7925;7924;7923;7922;7921;7991;Cubemap;0,0.5019608,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7184;0,-1616;Inherit;False;VLNdotHOne;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7191;0,-1296;Inherit;False;VLLdotHOne;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7294;9184,816;Inherit;False;ToggleCubemap;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;7599;576,-1264;Inherit;False;Property;_EmissionscrollColor;Emission scroll Color;467;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;0,0,0,1;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;7448;-1440,1632;Inherit;False;7361;worldnormals;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;7774;288,2400;Inherit;False;7423;FinalLight;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;7470;-1632,1056;Inherit;False;7361;worldnormals;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;7820;-1632,1296;Inherit;False;7454;AmbientOcclusion;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7295;9184,912;Inherit;False;ToggleAdvanced;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7478;-1632,1136;Inherit;False;7397;MainTexSaturate;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;7472;-1632,976;Inherit;False;7447;PreClampFinalLight;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7972;-2000,-848;Inherit;False;EmissionScrollMaskUVSwitch;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;7452;-1440,1712;Inherit;False;7397;MainTexSaturate;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;7773;288,2320;Inherit;False;7428;PreFinalLight;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;7930;736,1680;Inherit;False;7097;LdotH;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7922;288,1936;Inherit;False;7190;VLLdotHFour;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7921;288,1872;Inherit;False;7189;VLLdotHThree;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7924;784,1600;Inherit;False;7096;NdotH;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7939;784,1520;Inherit;False;7454;AmbientOcclusion;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7931;560,1520;Inherit;False;7397;MainTexSaturate;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;7929;768,1760;Inherit;False;7099;NdotAmbientH;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7923;560,1440;Inherit;False;7361;worldnormals;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;7937;288,1680;Inherit;False;7187;VLNdotHFour;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7933;560,1600;Inherit;False;7101;GrayscaledLight;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7935;288,1744;Inherit;False;7191;VLLdotHOne;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7938;560,1680;Inherit;False;7274;NdotVCorr;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7928;288,1360;Inherit;False;7920;VertexLightShadows;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;7943;560,1360;Inherit;False;7919;PixelAmbientShadows;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;7936;560,1840;Inherit;False;7132;AmbientLdotAmbientH;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7941;288,1808;Inherit;False;7188;VLLdotHTwo;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7976;528,-800;Inherit;False;7973;EmissionUVSwitch;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;7932;288,1552;Inherit;False;7185;VLNdotHTwo;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7934;288,1424;Inherit;False;7220;VertexLightAtten;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SamplerStateNode;7617;560,-720;Inherit;False;0;0;0;2;7368;None;1;0;SAMPLER2D;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.GetLocalVarNode;7926;288,1488;Inherit;False;7184;VLNdotHOne;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;7456;-1008,1600;Inherit;False;Property;_SSSSetting;SSS Setting;472;1;[Enum];Create;True;0;3;Light Based;0;Color Based;1;Mixed;2;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7925;560,1760;Inherit;False;7100;NdotAmbientL;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;7496;-1216,960;Inherit;False;Property;_RimToggle;Rim Toggle;474;0;Create;True;0;2;Off;0;On;1;0;False;1;ToggleUI;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7940;816,1360;Inherit;False;7517;LuminancedLight;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;7977;544,2336;Inherit;False;Clamped Flipbook;1;;19976;87fba7ae5c66562488908889b8d68bfa;0;2;51;FLOAT3;1,1,1;False;52;FLOAT3;1,1,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;7499;1600,1584;Inherit;False;7294;ToggleCubemap;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7975;544,-1056;Inherit;False;7972;EmissionScrollMaskUVSwitch;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CommentaryNode;7845;256,848;Inherit;False;1226.348;379.565;;8;7785;7524;7856;7855;7853;7852;7946;8002;Matcap;0,0.5019608,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7639;800,-1264;Inherit;False;Emissionsscrollcolor;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;7600;544,-1600;Inherit;False;1146.265;258.0206;Emission Scroll V2;6;7606;7604;7603;7602;7601;7949;;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;7776;736,2432;Inherit;False;7295;ToggleAdvanced;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;7981;-1168,1680;Inherit;False;Subsurface scattering;393;;19982;b3a8a731faf6b9a4bbb4cf58bc679816;0;9;24;FLOAT3;0,0,0;False;41;FLOAT3;0,0,0;False;445;FLOAT;0;False;142;FLOAT;0;False;169;FLOAT3;0,0,0;False;176;FLOAT3;0,0,0;False;186;FLOAT3;0,0,0;False;194;FLOAT3;0,0,0;False;237;FLOAT4;0,0,0,0;False;3;FLOAT3;35;FLOAT3;36;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;7927;768,1440;Inherit;False;7395;normals;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;7498;1600,1504;Inherit;False;7295;ToggleAdvanced;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7494;-1280,1200;Inherit;False;7295;ToggleAdvanced;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7942;288,1616;Inherit;False;7186;VLNdotHThree;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;7982;-1360,1040;Inherit;False;Rim Light;361;;19980;6b1931f25cd84864d9988266c3b81246;0;5;271;FLOAT3;0,0,0;False;22;FLOAT3;0,0,0;False;33;FLOAT3;0,0,0;False;260;FLOAT;0;False;322;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8001;1216,384;Inherit;False;LuminancedLightNoShadows;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;7777;592,2256;Inherit;False;Property;_FlipbookToggle;Flipbook Toggle;468;0;Create;True;0;2;Off;0;On;1;0;False;1;ToggleUI;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerStateNode;7608;640,-976;Inherit;False;0;0;0;2;7368;None;1;0;SAMPLER2D;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.GetLocalVarNode;7602;672,-1536;Inherit;False;7395;normals;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;7625;944,-544;Inherit;False;Property;_EmissionTint;Emission Tint;471;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;7621;736,-816;Inherit;True;Property;_Emission;Emission;466;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;7622;1408,-512;Inherit;False;7517;LuminancedLight;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7619;976,-624;Inherit;False;7397;MainTexSaturate;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode;7620;736,-624;Inherit;False;Property;_EmissionColor;Emission Color;465;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,0;0.5019608,0.5019608,0.5019608,0;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;7991;1104,1392;Inherit;False;Baked Cubemap and Ambient Reflections;304;;19983;eb37bac9792209a4a9e79fa57ed77ae1;0;25;2903;SAMPLERSTATE;0;False;2821;FLOAT3;0,0,0;False;2817;FLOAT;0;False;2191;FLOAT3;0,0,0;False;86;FLOAT3;0,0,0;False;93;FLOAT3;0,0,0;False;89;FLOAT3;1,1,1;False;1847;FLOAT;1;False;2674;FLOAT;1;False;2409;FLOAT;0;False;2671;FLOAT;0;False;2411;FLOAT;0;False;2500;FLOAT;0;False;2501;FLOAT;0;False;2502;FLOAT;0;False;2545;FLOAT4;0,0,0,0;False;2842;FLOAT4;0,0,0,0;False;2590;FLOAT;0;False;2602;FLOAT;0;False;2619;FLOAT;0;False;2636;FLOAT;0;False;2543;FLOAT;0;False;2604;FLOAT;0;False;2621;FLOAT;0;False;2638;FLOAT;0;False;2;FLOAT3;0;FLOAT;2705
Node;AmplifyShaderEditor.ConditionalIfNode;7495;-816,1632;Inherit;False;False;5;0;FLOAT;1;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CustomExpressionNode;7993;-288,2304;Inherit;False;UNITY_BRANCH$if (_SpecularSetting == 0)$	Out = Toon@$else if (_SpecularSetting == 1)$	Out = GGX@$else if (_SpecularSetting == 2)$	Out = Anisotropic@$else$	Out = GGXAnisotropic@;1;Call;5;True;Out;FLOAT3;0,0,0;Out;;Inherit;False;True;Toon;FLOAT3;0,0,0;In;;Inherit;False;True;GGX;FLOAT3;0,0,0;In;;Inherit;False;True;Anisotropic;FLOAT3;0,0,0;In;;Inherit;False;True;GGXAnisotropic;FLOAT3;0,0,0;In;;Inherit;False;longIF;False;False;0;;False;6;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;2;FLOAT;0;FLOAT3;2
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;7513;1840,1536;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;7624;1408,-592;Inherit;False;Property;_EmissionLightscale;Emission Lightscale;478;0;Create;True;0;0;0;False;1;ToggleUI;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7852;288,912;Inherit;False;7361;worldnormals;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ConditionalIfNode;7772;800,2272;Inherit;False;False;5;0;FLOAT;1;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;7771;1008,2288;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7856;512,1072;Inherit;False;7295;ToggleAdvanced;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;7614;816,-1072;Inherit;True;Property;_EmissionScrollMask;Emission Scroll Mask;469;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;7853;288,1072;Inherit;False;7454;AmbientOcclusion;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7604;848,-1536;Inherit;False;7361;worldnormals;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;7603;816,-1456;Inherit;False;7639;Emissionsscrollcolor;1;0;OBJECT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;7855;496,912;Inherit;False;7397;MainTexSaturate;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ConditionalIfNode;7506;-1024,976;Inherit;False;False;5;0;FLOAT;1;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;8002;496,992;Inherit;False;8001;LuminancedLightNoShadows;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7601;576,-1456;Inherit;False;7397;MainTexSaturate;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;7507;-1008,1152;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7946;288,992;Inherit;False;7447;PreClampFinalLight;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ConditionalIfNode;7787;1984,1536;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;7630;1248,-640;Inherit;False;3;0;FLOAT3;1,1,1;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;7629;1024,-720;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;7628;1632,-592;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;7949;1088,-1536;Inherit;False;Emission Scroll V2;184;;19988;995e6dd10a2936e4a88f19546ea48650;0;5;70;FLOAT3;0,0,0;False;71;FLOAT3;0,0,1;False;30;FLOAT3;0,0,0;False;28;COLOR;1,1,1,1;False;725;FLOAT2;0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;7529;-1152,64;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;7626;1024,-816;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;7522;-832,976;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7518;-640,1632;Inherit;False;SSS;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;7319;4816,608;Inherit;False;7295;ToggleAdvanced;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7329;4784,1152;Inherit;False;7295;ToggleAdvanced;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;5935;4784,1232;Inherit;False;Property;_SSSToggle;SSS Toggle;330;0;Create;True;0;2;Off;0;On;1;0;False;1;ToggleOff(_SUNDISK_NONE);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;7521;2016,1408;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;6201;4816,688;Inherit;False;Property;_SpecularToggle;Specular Toggle;329;0;Create;True;0;2;Off;0;On;1;0;False;1;ToggleOff(_REQUIRE_UV2);False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;7770;1152,2288;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;8003;784,912;Inherit;False;Matcap;19;;19987;9363e9c7b7d1f2d4ab0056224472b0d9;0;6;65;FLOAT3;0,0,0;False;72;FLOAT3;0,0,0;False;900;FLOAT3;0,0,0;False;890;FLOAT;0;False;833;FLOAT;0;False;581;FLOAT;0;False;2;FLOAT3;0;FLOAT;647
Node;AmplifyShaderEditor.RegisterLocalVarNode;7511;-48,2320;Inherit;False;SpecularHighlight;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7786;2160,1536;Inherit;False;CubemapLightAbsorbtion;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;7985;1088,-1264;Inherit;False;Emission Scroll V1;233;;19993;b2dc8236d7837514dbd2e9707c89d6c6;0;1;32;COLOR;1,1,1,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7785;1216,992;Inherit;False;MatcapLightAbsorbtion;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7530;-1024,80;Inherit;False;AlphaChannelMul;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;7633;1760,-592;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7321;4816,528;Inherit;False;7511;SpecularHighlight;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;7632;1440,-816;Inherit;True;3;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7524;1216,912;Inherit;False;Matcap;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;7609;1696,-1328;Inherit;False;Property;_EmissionScrollToggle;Emission Scroll Toggle;475;1;[Enum];Create;True;0;3;Off;0;ES v1;1;ES v2;2;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;7327;5072,1184;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7606;1440,-1536;Inherit;False;EmissionScrollV2;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7528;1296,2288;Inherit;False;Flipbook;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7527;-688,976;Inherit;False;rimlight;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;7322;5120,640;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7328;4832,1072;Inherit;False;7518;SSS;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7525;2160,1408;Inherit;False;CubemapReflections;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;7616;1520,-1264;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;7789;5728,448;Inherit;False;7785;MatcapLightAbsorbtion;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;7636;1968,-816;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;7574;6528,1408;Inherit;False;922.2013;441.0284;;3;7594;7589;7580;Dissolve;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;7788;5728,368;Inherit;False;7786;CubemapLightAbsorbtion;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7343;5776,608;Inherit;False;7530;AlphaChannelMul;1;0;OBJECT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7344;5776,528;Inherit;False;7423;FinalLight;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;7613;2192,-1152;Inherit;False;7295;ToggleAdvanced;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;6854;5184,832;Inherit;False;7524;Matcap;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;6852;5168,752;Inherit;False;7525;CubemapReflections;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SaturateNode;7612;2192,-1232;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;6849;5200,912;Inherit;False;7527;rimlight;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;7607;1680,-1168;Inherit;False;7606;EmissionScrollV2;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;7325;5248,1072;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;7324;5296,528;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;6850;5200,992;Inherit;False;7528;Flipbook;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;7947;2144,-816;Inherit;False;Property;_Keyword0;Keyword 0;162;0;Create;True;0;0;0;False;0;False;0;0;0;False;UNITY_PASS_FORWARDADD;Toggle;2;Key0;Key1;Fetch;False;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;7340;5520,496;Inherit;False;Property;_RenderingMode;Rendering Mode;473;1;[Enum];Create;True;0;3;Opaque;0;Fade;1;Transparent;2;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;7615;1952,-1328;Inherit;False;False;5;0;FLOAT;1;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;7580;6560,1616;Inherit;False;7397;MainTexSaturate;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;7342;6000,560;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;7338;5520,656;Inherit;False;7530;AlphaChannelMul;1;0;OBJECT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;7618;2432,-1232;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;6855;5520,736;Inherit;True;6;6;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;7790;6048,384;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;7339;5808,752;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;7623;2576,-1328;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SaturateNode;7791;6176,384;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7638;2464,-816;Inherit;False;BasicEmission;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ConditionalIfNode;7526;-1008,3712;Inherit;False;False;5;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ConditionalIfNode;7341;6160,480;Inherit;False;False;5;0;FLOAT;1;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;7998;6800,1616;Inherit;False;Dissolve;109;;19994;82730ad0d4bfc13408a9f4bccf476772;0;1;424;FLOAT3;0,0,0;False;4;FLOAT;0;FLOAT;310;FLOAT3;425;FLOAT3;426
Node;AmplifyShaderEditor.RegisterLocalVarNode;7627;2960,-1328;Inherit;False;Emissionscroll;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;6171;7184,400;Inherit;False;1625.112;461.4236;Custom Rendering Options;8;6191;6190;6183;6175;6174;6173;6172;7271;;1,1,1,1;0;0
Node;AmplifyShaderEditor.LerpOp;7792;6352,480;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7531;-848,3712;Inherit;False;EmissiveRim;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;4083;6208,784;Inherit;False;7638;BasicEmission;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7740;-1024,0;Inherit;False;AlphaChannel;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;7337;5968,688;Inherit;False;False;5;0;FLOAT;1;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7589;7184,1680;Inherit;False;EmissiveDissolve;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;7741;6528,1088;Inherit;False;563.6001;257.8;;1;7743;Dither;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;6839;8880,400;Inherit;False;371;165;Custom Inspector Settings;1;6841;;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;7631;6512,288;Inherit;False;7627;Emissionscroll;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7594;7184,1760;Inherit;False;VertexOffsetDissolve;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;6173;7760,464;Inherit;False;568.8174;379.8966;Stencil;7;6194;6193;6189;6188;6184;6182;6177;;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;7635;6512,368;Inherit;False;7531;EmissiveRim;1;0;OBJECT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;7945;6512,448;Inherit;False;7589;EmissiveDissolve;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;6172;7488,464;Inherit;False;263;291;Blend Alpha;3;6195;6185;6181;;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleAddOpNode;6857;6560,624;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;6174;7216,464;Inherit;False;259;291;Blend RGB;3;6192;6180;6176;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;6175;8352,464;Inherit;False;434.1172;215.0966;Depth;4;6187;6186;6179;6178;;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;7743;6592,1184;Inherit;False;7740;AlphaChannel;1;0;OBJECT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;7747;-2416,-256;Inherit;False;391;431.3881;Shader Optimizer Animated States;4;7750;7749;7748;7752;;0,0.1294118,1,1;0;0
Node;AmplifyShaderEditor.IntNode;7780;1920,-608;Inherit;False;Property;_EmissionTintAnimated;_EmissionTint;108;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7912;-1120,2784;Inherit;False;7185;VLNdotHTwo;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;6180;7232,512;Inherit;False;Property;_SourceBlendRGB;Source Blend RGB;256;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.BlendMode;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;7326;5008,1072;Inherit;False;Property;_SSSToggle;SSS Toggle;125;0;Create;False;0;0;0;False;0;False;0;0;0;False;_SUNDISK_NONE;ToggleOff;2;OFF;ON;Create;True;False;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;7323;5056,528;Inherit;False;Property;_SpecularToggle;Specular Toggle;125;0;Create;False;0;0;0;False;0;False;0;0;0;False;_REQUIRE_UV2;ToggleOff;2;OFF;ON;Create;True;False;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;7746;9216,656;Inherit;False;Property;_LockTooltip;LockTooltip;229;0;Create;True;0;0;0;False;1;HelpBox(3);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7911;-1120,2848;Inherit;False;7186;VLNdotHThree;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7545;-1616,1696;Inherit;False;7217;VLDirTwo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7172;-512,-1456;Inherit;False;FourLightPosZ0WorldPos;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.IntNode;7748;-2352,-208;Inherit;False;Property;_OptimizerExcludeMainSettings;OptimizerExcludeMainSettings;175;0;Create;True;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7905;-1376,2912;Inherit;False;7182;VLHalfVectorThree;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;6182;8064,752;Inherit;False;Property;_StencilBufferZFailFront;Stencil Buffer ZFail Front;250;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.StencilOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;6176;7232,592;Inherit;False;Property;_DestinationBlendRGB;Destination Blend RGB;226;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.BlendMode;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7192;-512,-1616;Inherit;False;FourLightPosX0WorldPos;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.IntNode;7826;4816,768;Inherit;False;Property;_SpecularToggleAnimated;_SpecularToggle;176;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7538;-1616,1824;Inherit;False;7219;VLDirFour;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;7910;-1120,2912;Inherit;False;7187;VLNdotHFour;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7535;-1616,1760;Inherit;False;7218;VLDirThree;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;6841;8928,464;Inherit;False;Property;_AdvancedExperimentalToggle;Advanced Experimental Toggle;253;1;[Enum];Create;True;0;3;Basic;0;Advanced;1;Advanced Plus;2;0;True;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7218;0,-816;Inherit;False;VLDirThree;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.IntNode;7990;-3232,-576;Inherit;False;Property;_EmissionUVSwitchAnimated;_EmissionUVSwitch;171;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.IntNode;7825;4784,1312;Inherit;False;Property;_SSSToggleAnimated1;_SSSToggle;170;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.StaticSwitch;7634;2720,-1328;Inherit;False;Property;_COLORCOLOR3;Toggle Advanced;127;0;Create;False;0;0;0;False;0;False;0;0;0;True;_GLOSSYREFLECTIONS;Toggle;2;OFF;ON;Reference;6858;False;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;6858;6192,688;Inherit;False;Property;_COLORCOLOR;Toggle Advanced;127;0;Create;False;0;0;0;False;0;False;0;0;0;False;_COLORCOLOR_ON;ToggleOff;2;OFF;ON;Create;True;False;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;6194;7776,512;Inherit;False;Property;_StencilBufferReference;Stencil Buffer Reference;232;0;Create;True;0;0;1;UnityEngine.Rendering.BlendMode;True;0;False;0;0;0;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7176;-512,-1136;Inherit;False;VLFinalOne;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7183;-512,-576;Inherit;False;VLHalfVectorFour;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;6188;8064,592;Inherit;False;Property;_StencilBufferPassFront;Stencil Buffer Pass Front;254;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.StencilOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7908;-1376,2720;Inherit;False;7220;VertexLightAtten;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.IntNode;7752;-2352,32;Inherit;False;Property;_CutoutAnimated;_Cutout;169;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.RangedFloatNode;6193;8064,512;Inherit;False;Property;_StencilBufferComparison;Stencil Buffer Comparison;251;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.CompareFunction;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7830;1216,96;Inherit;False;DirectionalAttenuation;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7173;-512,-1536;Inherit;False;FourLightPosY0WorldPos;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;7916;-1120,3104;Inherit;False;7189;VLLdotHThree;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;7994;-256,2224;Half;False;Property;_SpecularSetting;Specular Setting;470;1;[Enum];Create;True;0;4;Toon;0;Unity Standard GGX;1;Anisotropic by James OHare;2;Anisotropic GGX;3;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;6185;7504,512;Inherit;False;Property;_SourceBlendAlpha;Source Blend Alpha;255;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.BlendMode;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;7779;1920,-688;Inherit;False;Property;_EmissionColorAnimated;_EmissionColor;162;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.IntNode;7828;9408,912;Inherit;False;Property;_COLORCOLORAnimated;_COLORCOLOR;178;0;Create;False;0;0;0;True;1;ToggleUI;False;1;1;False;0;1;INT;0
Node;AmplifyShaderEditor.RangedFloatNode;6179;8560,592;Inherit;False;Property;_DepthOffsetUnits;Depth Offset Units;231;0;Create;True;0;0;1;UnityEngine.Rendering.BlendMode;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7175;-512,-1216;Inherit;False;VertexLightAttenNdL;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.IntNode;7749;-2352,-128;Inherit;False;Property;_MainColorAnimated;_MainColor;167;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7219;0,-736;Inherit;False;VLDirFour;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.IntNode;7781;1904,-528;Inherit;False;Property;_EmissionLightscaleAnimated;_EmissionLightscale;163;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.RangedFloatNode;6181;7504,592;Inherit;False;Property;_DestinationBlendAlpha;Destination Blend Alpha;182;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.BlendMode;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;7509;1728,1392;Inherit;False;Property;_COLORADDSUBDIFF1;Cubemap Toggle;125;0;Create;False;0;0;0;False;0;False;0;0;0;False;_COLORADDSUBDIFF_ON;ToggleOff;2;OFF;ON;Create;True;False;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.IntNode;7827;5520,576;Inherit;False;Property;_RenderingModeAnimated;_RenderingMode;172;0;Create;False;0;0;0;True;1;ToggleUI;False;1;1;False;0;1;INT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7534;-1616,1888;Inherit;False;7220;VertexLightAtten;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7178;-512,-976;Inherit;False;VLFinalThree;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;7005;6768,384;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;6195;7504,672;Inherit;False;Property;_BlendOpAlpha;Blend Op Alpha;181;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.BlendOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;7829;9408,816;Inherit;False;Property;_COLORADDSUBDIFFAnimated;_COLORADDSUBDIFF;179;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7180;-512,-816;Inherit;False;VLHalfVectorOne;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;7808;6784,624;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7181;-512,-736;Inherit;False;VLHalfVectorTwo;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;6178;8560,512;Inherit;False;Property;_DepthOffsetFactor;Depth Offset Factor;230;0;Create;True;0;0;1;UnityEngine.Rendering.BlendMode;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;7272;8928,656;Inherit;False;Property;_ShaderOptimizerEnabled;Shader Optimizer Enabled;0;0;Create;True;0;3;Basic;0;Advanced;1;Advanced Plus;2;0;True;1;ShaderOptimizerLockButton;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7216;0,-976;Inherit;False;VLDirOne;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;7909;-1120,2976;Inherit;False;7191;VLLdotHOne;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;6191;7232,768;Float;False;Property;_CullMode;Cull Mode;257;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.CullMode;True;0;False;2;2;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;8005;9424,656;Inherit;False;Property;_IgnoreProjector;IgnoreProjector;88;0;Create;True;0;0;0;True;1;OverrideTagToggle(IgnoreProjector);False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.GetLocalVarNode;6331;6688,544;Inherit;False;7530;AlphaChannelMul;1;0;OBJECT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;7987;6800,1184;Inherit;False;Dither;89;;19997;043df5c2e430b6241a679a3821a80d10;0;1;53;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7006;6656,752;Inherit;False;7594;VertexOffsetDissolve;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;7548;-1616,1632;Inherit;False;7216;VLDirOne;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;7271;8368,736;Inherit;False;Property;_MaskClipValue;Mask Clip Value;477;0;Create;True;0;0;1;;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;6192;7232,672;Inherit;False;Property;_BlendOpRGB;Blend Op RGB;183;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.BlendOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;7782;1648,-688;Inherit;False;Property;_OptimizerExcludeEmission;OptimizerExcludeEmission;164;0;Create;True;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7914;-1120,2720;Inherit;False;7184;VLNdotHOne;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;7762;1696,-1408;Inherit;False;Property;_EmissionScrollToggleAnimated;_EmissionScrollToggle;165;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.IntNode;7750;-2352,-48;Inherit;False;Property;_SaturationAnimated;_Saturation;174;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7182;-512,-656;Inherit;False;VLHalfVectorThree;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.IntNode;7759;800,-1184;Inherit;False;Property;_EmissionscrollColorAnimated;_EmissionscrollColor;166;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.IntNode;7988;-3232,-992;Inherit;False;Property;_MainTexUVSwitchAnimated;_MainTexUVSwitch;173;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7907;-1376,2848;Inherit;False;7181;VLHalfVectorTwo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;7906;-1376,2784;Inherit;False;7180;VLHalfVectorOne;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;7904;-1376,2976;Inherit;False;7183;VLHalfVectorFour;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;6177;8064,672;Inherit;False;Property;_StencilBufferFailFront;Stencil Buffer Fail Front;249;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.StencilOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;6190;7376,768;Inherit;False;Property;_AlphatoCoverage;Alpha to Coverage;447;1;[Enum];Create;True;0;2;Off;0;On;1;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7179;-512,-896;Inherit;False;VLFinalFour;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;6183;7584,768;Inherit;False;Property;_ColorMask;Color Mask;448;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.ColorWriteMask;True;0;False;15;15;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;7989;-3232,-768;Inherit;False;Property;_EmissionScrollMaskUVSwitchAnimated;_EmissionScrollMaskUVSwitch;168;0;Create;False;0;0;0;True;1;ToggleUI;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7177;-512,-1056;Inherit;False;VLFinalTwo;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;6189;7776,592;Inherit;False;Property;_StencilBufferReadMask;Stencil Buffer Read Mask;228;0;Create;True;0;0;1;UnityEngine.Rendering.BlendMode;True;0;False;255;255;0;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;6184;7776,672;Inherit;False;Property;_StencilBufferWriteMask;Stencil Buffer Write Mask;227;0;Create;True;0;0;1;UnityEngine.Rendering.BlendMode;True;0;False;255;255;0;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7915;-1120,3040;Inherit;False;7188;VLLdotHTwo;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;7913;-1120,3168;Inherit;False;7190;VLLdotHFour;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;6186;8368,512;Inherit;False;Property;_ZWriteMode;ZWrite Mode;446;1;[Enum];Create;True;0;2;Off;0;On;1;0;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;6187;8368,592;Inherit;False;Property;_ZTestMode;ZTest Mode;252;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.CompareFunction;True;0;False;4;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7217;0,-896;Inherit;False;VLDirTwo;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;6944,400;Float;False;True;-1;7;MorisMaterialInspector;0;0;CustomLighting;Moriohs Shaders/Moris Toon Shader/Cutout;False;False;False;False;True;True;True;True;True;False;True;False;False;False;False;False;False;False;False;False;False;Back;0;True;6186;0;True;6187;True;0;True;6178;0;True;6179;False;0;Custom;0.5;True;True;0;True;TransparentCutout;;AlphaTest;ForwardOnly;5;d3d11;glcore;gles3;vulkan;nomrt;True;True;True;True;0;True;6183;True;0;True;6194;255;True;6189;255;True;6184;0;True;6193;0;True;6188;0;True;6177;0;True;6182;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;0;4;10;25;False;0.5;True;1;5;True;6180;10;True;6176;1;0;True;6185;0;True;6181;0;True;6192;4;True;6195;0;False;5E-06;0,0,0,0;VertexOffset;True;False;Cylindrical;False;True;Relative;0;Legacy Shaders/Transparent/Cutout/VertexLit;-1;-1;-1;-1;1;IgnoreProjectorPlaceholder=True;False;0;0;True;6191;-1;0;True;7271;0;0;0;False;0.1;False;-1;0;True;6190;True;15;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;7958;0;7952;0
WireConnection;7958;1;7953;0
WireConnection;7958;2;7954;0
WireConnection;7958;3;7956;0
WireConnection;7958;4;7955;0
WireConnection;7959;0;7957;0
WireConnection;7959;1;7958;0
WireConnection;7960;0;7959;0
WireConnection;7960;1;7957;1
WireConnection;7961;0;7960;0
WireConnection;7368;1;7974;0
WireConnection;7361;0;7978;0
WireConnection;7979;17;7368;0
WireConnection;7862;19;7093;0
WireConnection;7816;0;7979;0
WireConnection;7816;1;7368;4
WireConnection;7816;2;7641;0
WireConnection;7381;0;7370;0
WireConnection;7386;0;7816;0
WireConnection;7386;1;7381;0
WireConnection;7387;0;7380;0
WireConnection;7095;0;7862;13
WireConnection;7392;0;7386;0
WireConnection;7392;1;7387;0
WireConnection;7397;0;7392;0
WireConnection;7098;0;7862;0
WireConnection;7395;0;7978;14
WireConnection;7174;0;7862;375
WireConnection;7220;0;7862;397
WireConnection;7100;0;7862;60
WireConnection;7821;34;7388;0
WireConnection;7398;1;7389;0
WireConnection;7398;2;7821;0
WireConnection;7398;3;7390;0
WireConnection;8006;1258;7405;0
WireConnection;8006;150;7402;0
WireConnection;8006;1264;7404;0
WireConnection;8006;1263;7399;0
WireConnection;8006;1306;7408;0
WireConnection;8006;1305;7406;0
WireConnection;7403;0;7398;0
WireConnection;7427;0;8006;210
WireConnection;7967;0;7965;0
WireConnection;7967;1;7953;0
WireConnection;7967;2;7954;0
WireConnection;7967;3;7956;0
WireConnection;7967;4;7955;0
WireConnection;7099;0;7862;62
WireConnection;7274;0;7862;446
WireConnection;7917;0;8006;2137
WireConnection;7132;0;7862;64
WireConnection;7101;0;7862;18
WireConnection;7096;0;7862;14
WireConnection;7097;0;7862;15
WireConnection;7963;0;7962;0
WireConnection;7963;1;7953;0
WireConnection;7963;2;7954;0
WireConnection;7963;3;7956;0
WireConnection;7963;4;7955;0
WireConnection;7429;0;8006;211
WireConnection;7969;0;7966;0
WireConnection;7969;1;7967;0
WireConnection;7968;0;7964;0
WireConnection;7968;1;7963;0
WireConnection;7419;0;8006;0
WireConnection;7419;1;7412;0
WireConnection;7971;0;7969;0
WireConnection;7971;1;7966;1
WireConnection;8004;2254;7995;0
WireConnection;8004;44;7896;0
WireConnection;8004;49;7893;0
WireConnection;8004;1922;7918;0
WireConnection;8004;1665;7903;0
WireConnection;8004;192;7898;0
WireConnection;8004;293;7892;0
WireConnection;8004;594;7890;0
WireConnection;8004;578;7899;0
WireConnection;8004;1737;7891;0
WireConnection;8004;634;7902;0
WireConnection;8004;596;7894;0
WireConnection;8004;579;7901;0
WireConnection;8004;671;7895;0
WireConnection;8004;1739;7900;0
WireConnection;7423;0;7419;0
WireConnection;7454;0;8006;638
WireConnection;7970;0;7968;0
WireConnection;7970;1;7964;1
WireConnection;7428;0;8006;198
WireConnection;7447;0;8006;1309
WireConnection;8000;0;8006;2155
WireConnection;7517;0;8006;1361
WireConnection;7186;0;7862;385
WireConnection;7190;0;7862;392
WireConnection;7189;0;7862;391
WireConnection;7919;0;8004;1894
WireConnection;7920;0;8004;1933
WireConnection;7187;0;7862;387
WireConnection;7973;0;7971;0
WireConnection;7185;0;7862;383
WireConnection;7188;0;7862;390
WireConnection;7184;0;7862;381
WireConnection;7191;0;7862;389
WireConnection;7294;0;7292;0
WireConnection;7295;0;7293;0
WireConnection;7972;0;7970;0
WireConnection;7977;51;7773;0
WireConnection;7977;52;7774;0
WireConnection;7639;0;7599;0
WireConnection;7981;24;7448;0
WireConnection;7981;41;7452;0
WireConnection;7981;445;7999;0
WireConnection;7981;142;7450;0
WireConnection;7982;271;7472;0
WireConnection;7982;22;7470;0
WireConnection;7982;33;7478;0
WireConnection;7982;260;7459;0
WireConnection;7982;322;7820;0
WireConnection;8001;0;8006;2199
WireConnection;7621;1;7976;0
WireConnection;7621;7;7617;0
WireConnection;7991;2821;7943;0
WireConnection;7991;2817;7940;0
WireConnection;7991;86;7923;0
WireConnection;7991;93;7927;0
WireConnection;7991;89;7931;0
WireConnection;7991;1847;7939;0
WireConnection;7991;2674;7933;0
WireConnection;7991;2409;7924;0
WireConnection;7991;2671;7938;0
WireConnection;7991;2411;7930;0
WireConnection;7991;2500;7925;0
WireConnection;7991;2501;7929;0
WireConnection;7991;2502;7936;0
WireConnection;7991;2545;7928;0
WireConnection;7991;2842;7934;0
WireConnection;7991;2590;7926;0
WireConnection;7991;2602;7932;0
WireConnection;7991;2619;7942;0
WireConnection;7991;2636;7937;0
WireConnection;7991;2543;7935;0
WireConnection;7991;2604;7941;0
WireConnection;7991;2621;7921;0
WireConnection;7991;2638;7922;0
WireConnection;7495;1;7456;0
WireConnection;7495;2;7981;35
WireConnection;7495;3;7981;36
WireConnection;7495;4;7981;0
WireConnection;7993;2;8004;0
WireConnection;7993;3;8004;58
WireConnection;7993;4;8004;125
WireConnection;7993;5;8004;2152
WireConnection;7513;0;7498;0
WireConnection;7513;1;7499;0
WireConnection;7772;0;7777;0
WireConnection;7772;3;7977;0
WireConnection;7771;0;7777;0
WireConnection;7771;1;7776;0
WireConnection;7614;1;7975;0
WireConnection;7614;7;7608;0
WireConnection;7506;1;7496;0
WireConnection;7506;3;7982;0
WireConnection;7507;0;7496;0
WireConnection;7507;1;7494;0
WireConnection;7787;0;7513;0
WireConnection;7787;2;7991;2705
WireConnection;7630;1;7619;0
WireConnection;7630;2;7625;0
WireConnection;7629;0;7620;0
WireConnection;7628;0;7624;0
WireConnection;7628;1;7622;0
WireConnection;7949;70;7604;0
WireConnection;7949;71;7602;0
WireConnection;7949;30;7601;0
WireConnection;7949;28;7603;0
WireConnection;7949;725;7614;0
WireConnection;7529;0;7368;4
WireConnection;7529;1;7370;4
WireConnection;7626;0;7621;0
WireConnection;7522;0;7506;0
WireConnection;7522;1;7507;0
WireConnection;7518;0;7495;0
WireConnection;7521;0;7991;0
WireConnection;7521;1;7513;0
WireConnection;7770;0;7772;0
WireConnection;7770;1;7771;0
WireConnection;8003;65;7852;0
WireConnection;8003;72;7855;0
WireConnection;8003;900;7946;0
WireConnection;8003;890;8002;0
WireConnection;8003;833;7853;0
WireConnection;8003;581;7856;0
WireConnection;7511;0;7993;2
WireConnection;7786;0;7787;0
WireConnection;7985;32;7639;0
WireConnection;7785;0;8003;647
WireConnection;7530;0;7529;0
WireConnection;7633;0;7628;0
WireConnection;7632;0;7626;0
WireConnection;7632;1;7629;0
WireConnection;7632;2;7630;0
WireConnection;7524;0;8003;0
WireConnection;7327;0;7329;0
WireConnection;7327;1;5935;0
WireConnection;7606;0;7949;0
WireConnection;7528;0;7770;0
WireConnection;7527;0;7522;0
WireConnection;7322;0;7319;0
WireConnection;7322;1;6201;0
WireConnection;7525;0;7521;0
WireConnection;7616;0;7985;0
WireConnection;7616;1;7614;1
WireConnection;7636;0;7632;0
WireConnection;7636;2;7633;0
WireConnection;7612;0;7609;0
WireConnection;7325;0;7328;0
WireConnection;7325;1;7327;0
WireConnection;7324;0;7321;0
WireConnection;7324;1;7322;0
WireConnection;7947;1;7636;0
WireConnection;7615;1;7609;0
WireConnection;7615;3;7616;0
WireConnection;7615;4;7607;0
WireConnection;7342;0;7344;0
WireConnection;7342;1;7343;0
WireConnection;7618;0;7612;0
WireConnection;7618;1;7613;0
WireConnection;6855;0;7324;0
WireConnection;6855;1;6852;0
WireConnection;6855;2;6854;0
WireConnection;6855;3;6849;0
WireConnection;6855;4;6850;0
WireConnection;6855;5;7325;0
WireConnection;7790;0;7788;0
WireConnection;7790;1;7789;0
WireConnection;7339;0;6855;0
WireConnection;7339;1;7338;0
WireConnection;7623;0;7615;0
WireConnection;7623;1;7618;0
WireConnection;7791;0;7790;0
WireConnection;7638;0;7947;0
WireConnection;7526;1;7389;0
WireConnection;7526;3;7821;22
WireConnection;7341;1;7340;0
WireConnection;7341;2;7344;0
WireConnection;7341;3;7342;0
WireConnection;7341;4;7342;0
WireConnection;7998;424;7580;0
WireConnection;7627;0;7623;0
WireConnection;7792;0;7341;0
WireConnection;7792;2;7791;0
WireConnection;7531;0;7526;0
WireConnection;7740;0;7368;4
WireConnection;7337;1;7340;0
WireConnection;7337;2;6855;0
WireConnection;7337;3;7339;0
WireConnection;7337;4;6855;0
WireConnection;7589;0;7998;425
WireConnection;7594;0;7998;426
WireConnection;6857;0;7792;0
WireConnection;6857;1;7337;0
WireConnection;6857;2;4083;0
WireConnection;7326;1;7328;0
WireConnection;7323;1;7321;0
WireConnection;7172;0;7862;374
WireConnection;7192;0;7862;372
WireConnection;7218;0;7862;395
WireConnection;7634;1;7623;0
WireConnection;6858;1;7337;0
WireConnection;7176;0;7862;377
WireConnection;7183;0;7862;388
WireConnection;7830;0;8006;1989
WireConnection;7173;0;7862;373
WireConnection;7175;0;7862;376
WireConnection;7219;0;7862;396
WireConnection;7509;1;7991;0
WireConnection;7178;0;7862;379
WireConnection;7005;0;7631;0
WireConnection;7005;1;7635;0
WireConnection;7005;2;7945;0
WireConnection;7180;0;7862;382
WireConnection;7808;0;6857;0
WireConnection;7808;1;7998;0
WireConnection;7181;0;7862;384
WireConnection;7216;0;7862;393
WireConnection;7987;53;7743;0
WireConnection;7182;0;7862;386
WireConnection;7179;0;7862;380
WireConnection;7177;0;7862;378
WireConnection;7217;0;7862;394
WireConnection;0;2;7005;0
WireConnection;0;9;6331;0
WireConnection;0;10;7987;0
WireConnection;0;13;7808;0
WireConnection;0;11;7006;0
ASEEND*/
//CHKSM=9F411FFCDAA642640687CB6DFAC5635A626A6DD2