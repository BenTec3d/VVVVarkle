/**************************
***** Compiler Parameters *****
***************************
@P EffectName: SimpleBloom_TextureFX
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
@C    size_id76 => SimpleBloom_TextureFX.size
@C    intensity_id77 => SimpleBloom_TextureFX.intensity
***************************
******  Resources    ******
***************************
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    LinearSampler_id44 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    Texture0_id14 => Texturing.Texture0 [Stage: Pixel, Slot: (0-0)]
@R    Globals => Globals [Stage: Pixel, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    SimpleBloom_TextureFX => 3ba51ff6d0202fe555fd8b06b06a1019
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
#line 167 "C:\Users\benox\Documents\vvvv\gamma\Exports\VVVVarkle\lib\log\shader_SimpleBloom_TextureFX_a8bae0dc85ffeab7a984cef155ff1d4f.hlsl"
dp4 o0.x, v0.xyzw, cb0[0].xyzw
dp4 o0.y, v0.xyzw, cb0[1].xyzw
dp4 o0.z, v0.xyzw, cb0[2].xyzw
dp4 o0.w, v0.xyzw, cb0[3].xyzw

#line 171
mov o1.xy, v1.xyxx
ret 
// Approximately 6 instruction slots used
@G    Pixel => f119ab1f4bbb90de2b77ab2e70e0edf8
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
//   float size_id76;                   // Offset:   80 Size:     4
//      = 0x3f800000 
//   float intensity_id77;              // Offset:   84 Size:     4
//      = 0x3eb33333 
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// LinearSampler_id44                sampler      NA          NA             s0      1 
// Texture0_id14                     texture  float4          2d             t0      1 
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
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 5
//
// Initial variable locations:
//   v0.x <- __input__.ShadingPosition_id0.x; v0.y <- __input__.ShadingPosition_id0.y; v0.z <- __input__.ShadingPosition_id0.z; v0.w <- __input__.ShadingPosition_id0.w; 
//   v1.x <- __input__.TexCoord_id62.x; v1.y <- __input__.TexCoord_id62.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 136 "C:\Users\benox\Documents\vvvv\gamma\Exports\VVVVarkle\lib\log\shader_SimpleBloom_TextureFX_a8bae0dc85ffeab7a984cef155ff1d4f.hlsl"
mad r0.xyzw, -cb0[5].xxxx, l(0.003906, 0.007813, 0.001953, 0.005859), v1.xxxx

#line 134
mov r1.xz, r0.yywy
mov r1.yw, v1.yyyy
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r1.zwzz, t0.xyzw, s0

#line 133
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, r1.xyxx, t0.xyzw, s0

#line 134
mul r2.xyzw, r2.xyzw, l(0.090000, 0.090000, 0.090000, 0.090000)
mad r1.xyzw, r1.xyzw, l(0.050000, 0.050000, 0.050000, 0.050000), r2.xyzw  // r1.x <- sum.x; r1.y <- sum.y; r1.z <- sum.z; r1.w <- sum.w

#line 136
mov r0.yw, v1.yyyy

#line 135
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r0.xyxx, t0.xyzw, s0

#line 136
sample_indexable(texture2d)(float,float,float,float) r0.xyzw, r0.zwzz, t0.xyzw, s0

#line 135
mad r1.xyzw, r2.xyzw, l(0.120000, 0.120000, 0.120000, 0.120000), r1.xyzw

#line 136
mad r0.xyzw, r0.xyzw, l(0.150000, 0.150000, 0.150000, 0.150000), r1.xyzw  // r0.x <- sum.x; r0.y <- sum.y; r0.z <- sum.z; r0.w <- sum.w

#line 137
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, v1.xyxx, t0.xyzw, s0
mad r0.xyzw, r1.xyzw, l(0.160000, 0.160000, 0.160000, 0.160000), r0.xyzw

#line 141
mad r2.xyzw, cb0[5].xxxx, l(0.005859, 0.001953, 0.007813, 0.003906), v1.xxxx

#line 139
mov r3.xz, r2.yywy
mov r3.yw, v1.yyyy

#line 138
sample_indexable(texture2d)(float,float,float,float) r4.xyzw, r3.xyxx, t0.xyzw, s0

#line 139
sample_indexable(texture2d)(float,float,float,float) r3.xyzw, r3.zwzz, t0.xyzw, s0

#line 138
mad r0.xyzw, r4.xyzw, l(0.150000, 0.150000, 0.150000, 0.150000), r0.xyzw

#line 139
mad r0.xyzw, r3.xyzw, l(0.120000, 0.120000, 0.120000, 0.120000), r0.xyzw

#line 141
mov r2.yw, v1.yyyy

#line 140
sample_indexable(texture2d)(float,float,float,float) r3.xyzw, r2.xyxx, t0.xyzw, s0

#line 141
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r2.zwzz, t0.xyzw, s0

#line 140
mad r0.xyzw, r3.xyzw, l(0.090000, 0.090000, 0.090000, 0.090000), r0.xyzw

#line 141
mad r0.xyzw, r2.xyzw, l(0.050000, 0.050000, 0.050000, 0.050000), r0.xyzw

#line 143
mov r2.xz, v1.xxxx

#line 145
mad r3.xyzw, -cb0[5].xxxx, l(0.007813, 0.003906, 0.005859, 0.001953), v1.yyyy

#line 143
mov r2.yw, r3.xxxz

#line 142
sample_indexable(texture2d)(float,float,float,float) r4.xyzw, r2.xyxx, t0.xyzw, s0

#line 143
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r2.zwzz, t0.xyzw, s0

#line 142
mad r0.xyzw, r4.xyzw, l(0.050000, 0.050000, 0.050000, 0.050000), r0.xyzw

#line 143
mad r0.xyzw, r2.xyzw, l(0.090000, 0.090000, 0.090000, 0.090000), r0.xyzw

#line 145
mov r3.xz, v1.xxxx

#line 144
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r3.xyxx, t0.xyzw, s0

#line 145
sample_indexable(texture2d)(float,float,float,float) r3.xyzw, r3.zwzz, t0.xyzw, s0

#line 144
mad r0.xyzw, r2.xyzw, l(0.120000, 0.120000, 0.120000, 0.120000), r0.xyzw

#line 145
mad r0.xyzw, r3.xyzw, l(0.150000, 0.150000, 0.150000, 0.150000), r0.xyzw

#line 146
mad r0.xyzw, r1.xyzw, l(0.160000, 0.160000, 0.160000, 0.160000), r0.xyzw

#line 148
mov r2.xz, v1.xxxx

#line 150
mad r3.xyzw, cb0[5].xxxx, l(0.001953, 0.005859, 0.003906, 0.007813), v1.yyyy

#line 148
mov r2.yw, r3.xxxz

#line 147
sample_indexable(texture2d)(float,float,float,float) r4.xyzw, r2.xyxx, t0.xyzw, s0

#line 148
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r2.zwzz, t0.xyzw, s0

#line 147
mad r0.xyzw, r4.xyzw, l(0.150000, 0.150000, 0.150000, 0.150000), r0.xyzw

#line 148
mad r0.xyzw, r2.xyzw, l(0.120000, 0.120000, 0.120000, 0.120000), r0.xyzw

#line 150
mov r3.xz, v1.xxxx

#line 149
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r3.xyxx, t0.xyzw, s0

#line 150
sample_indexable(texture2d)(float,float,float,float) r3.xyzw, r3.zwzz, t0.xyzw, s0

#line 149
mad r0.xyzw, r2.xyzw, l(0.090000, 0.090000, 0.090000, 0.090000), r0.xyzw

#line 150
mad r0.xyzw, r3.xyzw, l(0.050000, 0.050000, 0.050000, 0.050000), r0.xyzw

#line 151
mad o0.xyzw, r0.xyzw, cb0[5].yyyy, r1.xyzw

#line 160
ret 
// Approximately 53 instruction slots used
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
    float size_id76 = 1;
    float intensity_id77 = 0.35f;
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
float4 Shading_id20(inout PS_STREAMS streams)
{
    float4 sum = float4(0, 0, 0, 0);
    float2 texcoord = streams.TexCoord_id62;
    float blurSize = size_id76 / 512;
    sum += Texture0_id14.Sample(LinearSampler_id44, float2(texcoord.x - 4 * blurSize, texcoord.y)) * 0.05f;
    sum += Texture0_id14.Sample(LinearSampler_id44, float2(texcoord.x - 3 * blurSize, texcoord.y)) * 0.09f;
    sum += Texture0_id14.Sample(LinearSampler_id44, float2(texcoord.x - 2 * blurSize, texcoord.y)) * 0.12f;
    sum += Texture0_id14.Sample(LinearSampler_id44, float2(texcoord.x - blurSize, texcoord.y)) * 0.15f;
    sum += Texture0_id14.Sample(LinearSampler_id44, float2(texcoord.x, texcoord.y)) * 0.16f;
    sum += Texture0_id14.Sample(LinearSampler_id44, float2(texcoord.x + blurSize, texcoord.y)) * 0.15f;
    sum += Texture0_id14.Sample(LinearSampler_id44, float2(texcoord.x + 2 * blurSize, texcoord.y)) * 0.12f;
    sum += Texture0_id14.Sample(LinearSampler_id44, float2(texcoord.x + 3 * blurSize, texcoord.y)) * 0.09f;
    sum += Texture0_id14.Sample(LinearSampler_id44, float2(texcoord.x + 4 * blurSize, texcoord.y)) * 0.05f;
    sum += Texture0_id14.Sample(LinearSampler_id44, float2(texcoord.x, texcoord.y - 4 * blurSize)) * 0.05f;
    sum += Texture0_id14.Sample(LinearSampler_id44, float2(texcoord.x, texcoord.y - 3 * blurSize)) * 0.09f;
    sum += Texture0_id14.Sample(LinearSampler_id44, float2(texcoord.x, texcoord.y - 2 * blurSize)) * 0.12f;
    sum += Texture0_id14.Sample(LinearSampler_id44, float2(texcoord.x, texcoord.y - blurSize)) * 0.15f;
    sum += Texture0_id14.Sample(LinearSampler_id44, float2(texcoord.x, texcoord.y)) * 0.16f;
    sum += Texture0_id14.Sample(LinearSampler_id44, float2(texcoord.x, texcoord.y + blurSize)) * 0.15f;
    sum += Texture0_id14.Sample(LinearSampler_id44, float2(texcoord.x, texcoord.y + 2 * blurSize)) * 0.12f;
    sum += Texture0_id14.Sample(LinearSampler_id44, float2(texcoord.x, texcoord.y + 3 * blurSize)) * 0.09f;
    sum += Texture0_id14.Sample(LinearSampler_id44, float2(texcoord.x, texcoord.y + 4 * blurSize)) * 0.05f;
    return sum * intensity_id77 + Texture0_id14.Sample(LinearSampler_id44, texcoord);
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
