/**************************
***** Compiler Parameters *****
***************************
@P EffectName: Blend_Hardlight_Internal_TextureFX
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 64]
@C    MatrixTransform_id73 => SpriteBase.MatrixTransform
cbuffer Globals [Size: 96]
@C    Texture0TexelSize_id15 => Texturing.Texture0TexelSize
@C    Texture1TexelSize_id17 => Texturing.Texture1TexelSize
@C    Texture2TexelSize_id19 => Texturing.Texture2TexelSize
@C    Texture3TexelSize_id21 => Texturing.Texture3TexelSize
@C    Texture4TexelSize_id23 => Texturing.Texture4TexelSize
@C    Texture5TexelSize_id25 => Texturing.Texture5TexelSize
@C    Texture6TexelSize_id27 => Texturing.Texture6TexelSize
@C    Texture7TexelSize_id29 => Texturing.Texture7TexelSize
@C    Texture8TexelSize_id31 => Texturing.Texture8TexelSize
@C    Texture9TexelSize_id33 => Texturing.Texture9TexelSize
@C    Opacity_id76 => Blend.Opacity
***************************
******  Resources    ******
***************************
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    Sampler_id42 => Texturing.Sampler [Stage: Pixel, Slot: (0-0)]
@R    LinearSampler_id44 => Texturing.LinearSampler [Stage: Pixel, Slot: (1-1)]
@R    Texture0_id14 => Texturing.Texture0 [Stage: Pixel, Slot: (0-0)]
@R    Texture1_id16 => Texturing.Texture1 [Stage: Pixel, Slot: (1-1)]
@R    Texture2_id18 => Texturing.Texture2 [Stage: Pixel, Slot: (2-2)]
@R    Globals => Globals [Stage: Pixel, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    Blend_Hardlight_Internal_TextureFX => d2b5792d1020e07a7ee8090ccfa95a62
@S    Blend => e9995d8f3f471ec103563dc89f1ff8db
@S    Masked => 9a832fb38f61b993f2443f0850c59433
@S    TextureFX => 733e12e1d7dcba0a71c11dec4224f6a1
@S    ImageEffectShader => 9b7cefba2dd674808bc791525995b495
@S    SpriteBase => 67b12f03dd9d34e76b6fcfb517afba8c
@S    ShaderBase => 01e372056ff6c06edab8e988414a8f75
@S    ShaderBaseStream => 91c0ea8aae0a45ca00578a4084fa3607
@S    Texturing => 6605f68230266eff2bc8b4e8102ede6b
@S    ShaderUtils => 322a94f64a804439ad8484ffa917bb03
***************************
*****     Stages      *****
***************************
@G    Vertex => 79eb7ff071584feaa45b858a38e87b6a
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 MatrixTransform_id73;     // Offset:    0 Size:    64
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// PerDraw                           cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyzw
// TEXCOORD                 0   xy          1     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float   xyzw
// TEXCOORD                 0   xy          1     NONE   float   xy  
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[4], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xy
dcl_output_siv o0.xyzw, position
dcl_output o1.xy
//
// Initial variable locations:
//   v0.x <- __input__.Position_id72.x; v0.y <- __input__.Position_id72.y; v0.z <- __input__.Position_id72.z; v0.w <- __input__.Position_id72.w; 
//   v1.x <- __input__.TexCoord_id62.x; v1.y <- __input__.TexCoord_id62.y; 
//   o1.x <- <VSMain return value>.TexCoord_id62.x; o1.y <- <VSMain return value>.TexCoord_id62.y; 
//   o0.x <- <VSMain return value>.ShadingPosition_id0.x; o0.y <- <VSMain return value>.ShadingPosition_id0.y; o0.z <- <VSMain return value>.ShadingPosition_id0.z; o0.w <- <VSMain return value>.ShadingPosition_id0.w
//
#line 169 "C:\Users\benox\Documents\vvvv\gamma\Exports\VVVVarkle\lib\log\shader_Blend_Hardlight_Internal_TextureFX_3c16725792faf59398a710c3934a1747.hlsl"
dp4 o0.x, v0.xyzw, cb0[0].xyzw
dp4 o0.y, v0.xyzw, cb0[1].xyzw
dp4 o0.z, v0.xyzw, cb0[2].xyzw
dp4 o0.w, v0.xyzw, cb0[3].xyzw

#line 173
mov o1.xy, v1.xyxx
ret 
// Approximately 6 instruction slots used
@G    Pixel => c3390a641eeaf914629be7a70612909f
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer Globals
// {
//
//   float2 Texture0TexelSize_id15;     // Offset:    0 Size:     8 [unused]
//   float2 Texture1TexelSize_id17;     // Offset:    8 Size:     8 [unused]
//   float2 Texture2TexelSize_id19;     // Offset:   16 Size:     8 [unused]
//   float2 Texture3TexelSize_id21;     // Offset:   24 Size:     8 [unused]
//   float2 Texture4TexelSize_id23;     // Offset:   32 Size:     8 [unused]
//   float2 Texture5TexelSize_id25;     // Offset:   40 Size:     8 [unused]
//   float2 Texture6TexelSize_id27;     // Offset:   48 Size:     8 [unused]
//   float2 Texture7TexelSize_id29;     // Offset:   56 Size:     8 [unused]
//   float2 Texture8TexelSize_id31;     // Offset:   64 Size:     8 [unused]
//   float2 Texture9TexelSize_id33;     // Offset:   72 Size:     8 [unused]
//   float Opacity_id76;                // Offset:   80 Size:     4
//      = 0x3f800000 
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// Sampler_id42                      sampler      NA          NA             s0      1 
// LinearSampler_id44                sampler      NA          NA             s1      1 
// Texture0_id14                     texture  float4          2d             t0      1 
// Texture1_id16                     texture  float4          2d             t1      1 
// Texture2_id18                     texture  float4          2d             t2      1 
// Globals                           cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float       
// TEXCOORD                 0   xy          1     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Target                0   xyzw        0   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[6], immediateIndexed
dcl_sampler s0, mode_default
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture2d (float,float,float,float) t2
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 7
//
// Initial variable locations:
//   v0.x <- __input__.ShadingPosition_id0.x; v0.y <- __input__.ShadingPosition_id0.y; v0.z <- __input__.ShadingPosition_id0.z; v0.w <- __input__.ShadingPosition_id0.w; 
//   v1.x <- __input__.TexCoord_id62.x; v1.y <- __input__.TexCoord_id62.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 137 "C:\Users\benox\Documents\vvvv\gamma\Exports\VVVVarkle\lib\log\shader_Blend_Hardlight_Internal_TextureFX_3c16725792faf59398a710c3934a1747.hlsl"
sample_l_indexable(texture2d)(float,float,float,float) r0.xyzw, v1.xyxx, t1.xyzw, s1, l(0.000000)  // r0.x <- <InTex2_id18 return value>.x; r0.y <- <InTex2_id18 return value>.y; r0.z <- <InTex2_id18 return value>.z; r0.w <- <InTex2_id18 return value>.w

#line 133
lt r1.xyz, r0.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000)

#line 141
mul r0.w, r0.w, cb0[5].x  // r0.w <- c1.w

#line 133
add r2.xyz, -r0.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)

#line 146
sample_l_indexable(texture2d)(float,float,float,float) r3.xyzw, v1.xyxx, t0.xyzw, s1, l(0.000000)  // r3.x <- <InTex_id17 return value>.x; r3.y <- <InTex_id17 return value>.y; r3.z <- <InTex_id17 return value>.z; r3.w <- <InTex_id17 return value>.w

#line 129
add r4.xyzw, -r3.xyzw, l(1.000000, 1.000000, 1.000000, 1.000000)

#line 133
add r4.xyz, r4.xyzx, r4.xyzx
mad r2.xyz, -r4.xyzx, r2.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)

#line 129
mul r5.xyzw, r0.xyzw, r3.xyzw
mul r0.xyz, r0.wwww, r0.xyzx
mad_sat r6.w, r0.w, r4.w, r3.w
mul r0.xyz, r4.wwww, r0.xyzx
mad r0.xyz, r3.xyzx, r3.wwww, r0.xyzx
div r0.xyz, r0.xyzx, r6.wwww

#line 133
add r4.xyz, r5.xyzx, r5.xyzx
movc r1.xyz, r1.xyzx, r4.xyzx, r2.xyzx  // r1.x <- <GetOp_id23 return value>.x; r1.y <- <GetOp_id23 return value>.y; r1.z <- <GetOp_id23 return value>.z

#line 129
add r1.xyz, -r0.xyzx, r1.xyzx
mad r6.xyz, r5.wwww, r1.xyzx, r0.xyzx  // r6.x <- <blend_id21 return value>.x; r6.y <- <blend_id21 return value>.y; r6.z <- <blend_id21 return value>.z

#line 151
sample_indexable(texture2d)(float,float,float,float) r0.xyzw, v1.xyxx, t2.xyzw, s0  // r0.x <- mask.x; r0.y <- mask.y; r0.z <- mask.z; r0.w <- mask.w

#line 153
add r1.xyzw, -r0.xyzw, l(1.000000, 1.000000, 1.000000, 1.000000)
mul r1.xyzw, r1.xyzw, r3.xyzw
mad o0.xyzw, r6.xyzw, r0.xyzw, r1.xyzw

#line 162
ret 
// Approximately 23 instruction slots used
***************************
*************************/
struct PS_STREAMS 
{
    float2 TexCoord_id62;
    float4 ColorTarget_id2;
};
struct PS_OUTPUT 
{
    float4 ColorTarget_id2 : SV_Target0;
};
struct PS_INPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
    float2 TexCoord_id62 : TEXCOORD0;
};
struct VS_STREAMS 
{
    float4 Position_id72;
    float2 TexCoord_id62;
    float4 ShadingPosition_id0;
};
struct VS_OUTPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
    float2 TexCoord_id62 : TEXCOORD0;
};
struct VS_INPUT 
{
    float4 Position_id72 : POSITION;
    float2 TexCoord_id62 : TEXCOORD0;
};
cbuffer PerDraw 
{
    float4x4 MatrixTransform_id73;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id15;
    float2 Texture1TexelSize_id17;
    float2 Texture2TexelSize_id19;
    float2 Texture3TexelSize_id21;
    float2 Texture4TexelSize_id23;
    float2 Texture5TexelSize_id25;
    float2 Texture6TexelSize_id27;
    float2 Texture7TexelSize_id29;
    float2 Texture8TexelSize_id31;
    float2 Texture9TexelSize_id33;
    float Opacity_id76 = 1;
};
Texture2D Texture0_id14;
Texture2D Texture1_id16;
Texture2D Texture2_id18;
Texture2D Texture3_id20;
Texture2D Texture4_id22;
Texture2D Texture5_id24;
Texture2D Texture6_id26;
Texture2D Texture7_id28;
Texture2D Texture8_id30;
Texture2D Texture9_id32;
TextureCube TextureCube0_id34;
TextureCube TextureCube1_id35;
TextureCube TextureCube2_id36;
TextureCube TextureCube3_id37;
Texture3D Texture3D0_id38;
Texture3D Texture3D1_id39;
Texture3D Texture3D2_id40;
Texture3D Texture3D3_id41;
SamplerState Sampler_id42;
SamplerState PointSampler_id43 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id44 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id45 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id46 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id47 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id48 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id49 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id50 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id51 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id52;
SamplerState Sampler1_id53;
SamplerState Sampler2_id54;
SamplerState Sampler3_id55;
SamplerState Sampler4_id56;
SamplerState Sampler5_id57;
SamplerState Sampler6_id58;
SamplerState Sampler7_id59;
SamplerState Sampler8_id60;
SamplerState Sampler9_id61;
float4 blend_id21(float4 op, float4 c0, float4 c1)
{
    return float4(lerp((c0 * c0.a + c1 * c1.a * (1 - c0.a)) / saturate(c0.a + c1.a * (1 - c0.a)), op, c0.a * c1.a).rgb, saturate(c0.a + c1.a * (1 - c0.a)));
}
float4 GetOp_id23(float4 c0, float4 c1)
{
    return (c1 < .5) ? (2 * c0 * c1) : 1 - 2 * (1 - c0) * (1 - c1);
}
float4 InTex2_id18(inout PS_STREAMS streams)
{
    return Texture1_id16.SampleLevel(LinearSampler_id44, streams.TexCoord_id62, 0);
}
float4 Filtering_id22(inout PS_STREAMS streams, float4 c0)
{
    float4 c1 = InTex2_id18(streams) * float4(1, 1, 1, Opacity_id76);
    return blend_id21(GetOp_id23(c0, c1), c0, c1);
}
float4 InTex_id17(inout PS_STREAMS streams)
{
    return Texture0_id14.SampleLevel(LinearSampler_id44, streams.TexCoord_id62, 0);
}
float4 Shading_id20(inout PS_STREAMS streams)
{
    float4 c0 = InTex_id17(streams);
    float4 mask = Texture2_id18.Sample(Sampler_id42, streams.TexCoord_id62);
    float4 c = Filtering_id22(streams, c0);
    return c * mask + c0 * (1 - mask);
}
PS_OUTPUT PSMain(PS_INPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.TexCoord_id62 = __input__.TexCoord_id62;
    streams.ColorTarget_id2 = Shading_id20(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    return __output__;
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id72 = __input__.Position_id72;
    streams.TexCoord_id62 = __input__.TexCoord_id62;
    streams.ShadingPosition_id0 = mul(streams.Position_id72, MatrixTransform_id73);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.TexCoord_id62 = streams.TexCoord_id62;
    return __output__;
}
