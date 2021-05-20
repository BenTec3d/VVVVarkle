/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ShiftRGB_TextureFX
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
@C    Direction_id76 => ShiftRGB_TextureFX.Direction
@C    Shift_id77 => ShiftRGB_TextureFX.Shift
@C    Hue_id78 => ShiftRGB_TextureFX.Hue
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
@S    ShiftRGB_TextureFX => f47a7b5de748e9a79abfa1d11fb426b6
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
#line 197 "C:\Users\benox\Documents\vvvv\gamma\Exports\VVVVarkle\lib\log\shader_ShiftRGB_TextureFX_824bdd4b85b56c953136b9830389f433.hlsl"
dp4 o0.x, v0.xyzw, cb0[0].xyzw
dp4 o0.y, v0.xyzw, cb0[1].xyzw
dp4 o0.z, v0.xyzw, cb0[2].xyzw
dp4 o0.w, v0.xyzw, cb0[3].xyzw

#line 201
mov o1.xy, v1.xyxx
ret 
// Approximately 6 instruction slots used
@G    Pixel => fd140b8d828bcff896dd4d8b269c069b
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
//   float Direction_id76;              // Offset:   80 Size:     4
//      = 0x3e800000 
//   float Shift_id77;                  // Offset:   84 Size:     4
//      = 0x3dcccccd 
//   float Hue_id78;                    // Offset:   88 Size:     4
//      = 0x3dcccccd 
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
dcl_temps 7
//
// Initial variable locations:
//   v0.x <- __input__.ShadingPosition_id0.x; v0.y <- __input__.ShadingPosition_id0.y; v0.z <- __input__.ShadingPosition_id0.z; v0.w <- __input__.ShadingPosition_id0.w; 
//   v1.x <- __input__.TexCoord_id62.x; v1.y <- __input__.TexCoord_id62.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 163 "C:\Users\benox\Documents\vvvv\gamma\Exports\VVVVarkle\lib\log\shader_ShiftRGB_TextureFX_824bdd4b85b56c953136b9830389f433.hlsl"
add r0.xyzw, cb0[5].xxxx, l(0.000000, 0.250000, 0.000000, 0.250000)
mul r0.xyzw, r0.xyzw, l(6.283185, 6.283185, 6.283185, 6.283185)
sincos r0.xyzw, null, r0.xyzw  // r0.z <- dir.x; r0.w <- dir.y

#line 179
mul r1.xyzw, cb0[5].yyyy, l(0.100000, 0.100000, -0.100000, -0.100000)  // r1.w <- offset.x

#line 164
mad r0.xyzw, r0.xyzw, r1.xyzw, v1.xyxy  // r0.z <- uv.x; r0.w <- uv.y; r0.z <- uv.x; r0.w <- uv.y

#line 165
sample_l_indexable(texture2d)(float,float,float,float) r1.xyz, r0.zwzz, t0.xyzw, s0, l(0.000000)  // r1.x <- col.x; r1.y <- col.y; r1.z <- col.z; r1.x <- col.x; r1.y <- col.y; r1.z <- col.z
sample_l_indexable(texture2d)(float,float,float,float) r0.xyz, r0.xyxx, t0.xyzw, s0, l(0.000000)  // r0.x <- col.x; r0.y <- col.y; r0.z <- col.z; r0.x <- col.x; r0.y <- col.y; r0.z <- col.z

#line 146
min r2.x, r1.z, r1.y
min r2.x, r1.x, r2.x  // r2.x <- M

#line 145
max r2.y, r1.z, r1.y
max r3.z, r1.x, r2.y  // r3.z <- HSV.z

#line 147
add r2.x, -r2.x, r3.z  // r2.x <- C

#line 154
ge r2.yzw, r1.xxyz, r3.zzzz
and r2.yzw, r2.yyzw, l(0, 0x3f800000, 0x3f800000, 0x3f800000)

#line 151
mov r1.w, l(0)
add r1.xyzw, -r1.xyzw, r3.zzzz
div r1.xyzw, r1.xyzw, r2.xxxx  // r1.x <- Delta.x; r1.y <- Delta.y; r1.z <- Delta.z; r1.w <- Delta.w

#line 148
ne r2.x, r2.x, l(0.000000)

#line 152
add r1.xyz, -r1.yzxy, r1.zxyz  // r1.x <- Delta.z; r1.y <- Delta.x; r1.z <- Delta.y

#line 157
div r4.y, l(1.000000, 1.000000, 1.000000, 1.000000), r1.w  // r4.y <- HSV.y

#line 153
add r1.xyz, r1.xyzx, l(6.000000, 2.000000, 4.000000, 0.000000)

#line 154
mul r1.xyz, r1.xyzx, r2.yzwy

#line 155
max r1.x, r1.x, r1.z
max r1.x, r1.x, r1.y  // r1.x <- HSV.x

#line 156
mul r1.x, r1.x, l(0.166667)
frc r4.x, r1.x  // r4.x <- HSV.x

#line 158
and r3.xy, r2.xxxx, r4.xyxx  // r3.x <- HSV.x; r3.y <- HSV.y

#line 166
mov r1.x, cb0[5].z
mov r1.yz, l(0,0,0,0)
add r2.xyz, r3.xyzx, r1.xzzx

#line 131
frc r1.w, r2.x  // r1.w <- H

#line 134
mad r1.w, r1.w, l(6.000000), l(-4.000000)
add_sat r1.w, -|r1.w|, l(2.000000)  // r1.w <- <HUEtoRGB_id8 return value>.z

#line 140
add r1.w, r1.w, l(-1.000000)
mad r1.w, r1.w, r2.y, l(1.000000)
mul r2.z, r2.z, r1.w  // r2.z <- <HSVtoRGB_id9 return value>.z

#line 170
sample_l_indexable(texture2d)(float,float,float,float) r3.xyzw, v1.xyxx, t0.xyzw, s0, l(0.000000)  // r3.w <- <InTex_id17 return value>.w

#line 146
min r1.w, r3.z, r3.y
min r1.w, r1.w, r3.x  // r1.w <- M

#line 145
max r4.x, r3.z, r3.y
max r4.z, r3.x, r4.x  // r4.z <- HSV.z

#line 147
add r1.w, -r1.w, r4.z  // r1.w <- C

#line 151
mov r5.w, l(0)
mov r5.xyz, r3.xyzx
add r6.xyzw, r4.zzzz, -r5.xyzw
div r6.xyzw, r6.xyzw, r1.wwww  // r6.x <- Delta.x; r6.y <- Delta.y; r6.z <- Delta.z; r6.w <- Delta.w

#line 148
ne r1.w, r1.w, l(0.000000)

#line 152
add r3.xyz, -r6.yzxy, r6.zxyz  // r3.x <- Delta.z; r3.y <- Delta.x; r3.z <- Delta.y

#line 157
div r6.y, l(1.000000, 1.000000, 1.000000, 1.000000), r6.w  // r6.y <- HSV.y

#line 153
add r3.xyz, r3.xyzx, l(6.000000, 2.000000, 4.000000, 0.000000)

#line 154
ge r5.xyz, r5.xyzx, r4.zzzz

#line 190
mov o0.w, r3.w

#line 154
and r5.xyz, r5.xyzx, l(0x3f800000, 0x3f800000, 0x3f800000, 0)
mul r3.xyz, r3.xyzx, r5.xyzx

#line 155
max r3.x, r3.x, r3.z
max r3.x, r3.x, r3.y  // r3.x <- HSV.x

#line 156
mul r3.x, r3.x, l(0.166667)
frc r6.x, r3.x  // r6.x <- HSV.x

#line 158
and r4.xy, r1.wwww, r6.xyxx  // r4.y <- HSV.y; r4.x <- HSV.x

#line 166
add r3.xyz, r1.xzzx, r4.xyzx

#line 131
frc r1.w, r3.x  // r1.w <- H

#line 133
mad r1.w, r1.w, l(6.000000), l(-2.000000)
add_sat r1.w, -|r1.w|, l(2.000000)  // r1.w <- <HUEtoRGB_id8 return value>.y

#line 140
add r1.w, r1.w, l(-1.000000)
mad r1.w, r1.w, r3.y, l(1.000000)
mul r2.y, r3.z, r1.w  // r2.y <- <HSVtoRGB_id9 return value>.y

#line 145
max r1.w, r2.z, r2.y

#line 146
min r3.x, r0.z, r0.y
min r3.x, r0.x, r3.x  // r3.x <- M; r3.x <- M

#line 145
max r3.y, r0.z, r0.y
max r4.z, r0.x, r3.y

#line 147
add r3.x, -r3.x, r4.z  // r3.x <- C; r3.x <- C

#line 154
ge r3.yzw, r0.xxyz, r4.zzzz
and r3.yzw, r3.yyzw, l(0, 0x3f800000, 0x3f800000, 0x3f800000)

#line 151
mov r0.w, l(0)
add r0.xyzw, -r0.xyzw, r4.zzzz
div r0.xyzw, r0.xyzw, r3.xxxx  // r0.x <- Delta.x; r0.y <- Delta.y; r0.z <- Delta.z; r0.w <- Delta.w; r0.x <- Delta.x; r0.y <- Delta.y; r0.z <- Delta.z; r0.w <- Delta.w

#line 148
ne r3.x, r3.x, l(0.000000)

#line 152
add r0.xyz, -r0.yzxy, r0.zxyz  // r0.x <- Delta.z; r0.y <- Delta.x; r0.z <- Delta.y; r0.x <- Delta.z; r0.y <- Delta.x; r0.z <- Delta.y

#line 157
div r5.y, l(1.000000, 1.000000, 1.000000, 1.000000), r0.w  // r5.y <- HSV.y; r5.y <- HSV.y

#line 153
add r0.xyz, r0.xyzx, l(6.000000, 2.000000, 4.000000, 0.000000)

#line 154
mul r0.xyz, r0.xyzx, r3.yzwy

#line 155
max r0.x, r0.x, r0.z
max r0.x, r0.x, r0.y  // r0.x <- HSV.x; r0.x <- HSV.x

#line 156
mul r0.x, r0.x, l(0.166667)
frc r5.x, r0.x  // r5.x <- HSV.x; r5.x <- HSV.x

#line 158
and r4.xy, r3.xxxx, r5.xyxx  // r4.y <- HSV.y; r4.x <- HSV.x; r4.y <- HSV.y; r4.x <- HSV.x

#line 166
add r0.xyz, r1.xzzx, r4.xyzx

#line 131
frc r0.x, r0.x  // r0.x <- H

#line 132
mad r0.x, r0.x, l(6.000000), l(-3.000000)
add_sat r0.x, |r0.x|, l(-1.000000)  // r0.x <- <HUEtoRGB_id8 return value>.x

#line 140
add r0.x, r0.x, l(-1.000000)
mad r0.x, r0.x, r0.y, l(1.000000)
mul r2.x, r0.z, r0.x  // r2.x <- <HSVtoRGB_id9 return value>.x

#line 145
max r0.z, r1.w, r2.x  // r0.z <- HSV.z

#line 151
mov r2.w, l(0)
add r3.xyzw, r0.zzzz, -r2.xyzw

#line 146
min r0.w, r2.z, r2.y

#line 154
ge r2.yzw, r2.xxyz, r0.zzzz

#line 146
min r0.w, r0.w, r2.x  // r0.w <- M

#line 147
add r0.w, -r0.w, r0.z  // r0.w <- C

#line 154
and r2.xyz, r2.yzwy, l(0x3f800000, 0x3f800000, 0x3f800000, 0)

#line 151
div r3.xyzw, r3.xyzw, r0.wwww  // r3.x <- Delta.x; r3.y <- Delta.y; r3.z <- Delta.z; r3.w <- Delta.w

#line 148
ne r0.w, r0.w, l(0.000000)

#line 152
add r3.xyz, -r3.yzxy, r3.zxyz  // r3.x <- Delta.z; r3.y <- Delta.x; r3.z <- Delta.y

#line 157
div r4.y, l(1.000000, 1.000000, 1.000000, 1.000000), r3.w

#line 153
add r3.xyz, r3.xyzx, l(6.000000, 2.000000, 4.000000, 0.000000)

#line 154
mul r2.xyz, r2.xyzx, r3.xyzx  // r2.x <- Delta.z; r2.y <- Delta.x; r2.z <- Delta.y

#line 155
max r1.w, r2.x, r2.z
max r1.w, r1.w, r2.y  // r1.w <- HSV.x

#line 156
mul r1.w, r1.w, l(0.166667)
frc r4.x, r1.w  // r4.x <- HSV.x

#line 158
and r0.xy, r0.wwww, r4.xyxx  // r0.x <- HSV.x; r0.y <- HSV.y

#line 180
add r0.xyz, r0.xyzx, -r1.xyzx

#line 131
frc r0.x, r0.x  // r0.x <- H

#line 134
mad r1.xyz, r0.xxxx, l(6.000000, 6.000000, 6.000000, 0.000000), l(-3.000000, -2.000000, -4.000000, 0.000000)

#line 135
mad_sat r1.xyz, |r1.xyzx|, l(1.000000, -1.000000, -1.000000, 0.000000), l(-1.000000, 2.000000, 2.000000, 0.000000)  // r1.x <- <HUEtoRGB_id8 return value>.x; r1.y <- <HUEtoRGB_id8 return value>.y; r1.z <- <HUEtoRGB_id8 return value>.z

#line 140
add r1.xyz, r1.xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r0.xyw, r1.xyxz, r0.yyyy, l(1.000000, 1.000000, 0.000000, 1.000000)
mul o0.xyz, r0.zzzz, r0.xywx

#line 190
ret 
// Approximately 121 instruction slots used
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
    float Direction_id76 = 0.25f;
    float Shift_id77 = 0.1f;
    float Hue_id78 = 0.1f;
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
float3 HUEtoRGB_id8(in float H)
{
    H = frac(H);
    float R = abs(H * 6 - 3) - 1;
    float G = 2 - abs(H * 6 - 2);
    float B = 2 - abs(H * 6 - 4);
    return saturate(float3(R, G, B));
}
float3 HSVtoRGB_id9(in float3 HSV)
{
    float3 RGB = HUEtoRGB_id8(HSV.x);
    return ((RGB - 1) * HSV.y + 1) * HSV.z;
}
float3 RGBtoHSV_id11(in float3 RGB)
{
    float3 HSV = 0;
    HSV.z = max(RGB.r, max(RGB.g, RGB.b));
    float M = min(RGB.r, min(RGB.g, RGB.b));
    float C = HSV.z - M;
    if (C != 0)
    {
        float4 RGB0 = float4(RGB, 0);
        float4 Delta = (HSV.z - RGB0) / C;
        Delta.rgb -= Delta.brg;
        Delta.rgb += float3(2, 4, 6);
        Delta.brg = step(HSV.z, RGB) * Delta.brg;
        HSV.x = max(Delta.r, max(Delta.g, Delta.b));
        HSV.x = frac(HSV.x / 6);
        HSV.y = 1 / Delta.w;
    }
    return HSV;
}
float4 ts_id21(Texture2D tex2d, float2 uv, float2 offset)
{
    float2 dir = sin((Direction_id76 + float2(0, .25)) * 2 * acos(-1));
    uv += dir * offset;
    float3 col = tex2d.SampleLevel(LinearSampler_id44, uv, 0).rgb;
    return float4(HSVtoRGB_id9(float3(Hue_id78, 0, 0) + RGBtoHSV_id11(col)), 1);
}
float4 InTex_id17(inout PS_STREAMS streams)
{
    return Texture0_id14.SampleLevel(LinearSampler_id44, streams.TexCoord_id62, 0);
}
float4 Shading_id22(inout PS_STREAMS streams)
{
    float4 c = InTex_id17(streams);
    float2 uv0 = streams.TexCoord_id62;
    float sh = Shift_id77;
    c.r = ts_id21(Texture0_id14, uv0, sh * .1).r;
    c.g = ts_id21(Texture0_id14, uv0, sh * 0).g;
    c.b = ts_id21(Texture0_id14, uv0, sh * -.1).b;
    c.rgb = HSVtoRGB_id9(-float3(Hue_id78, 0, 0) + RGBtoHSV_id11(c.rgb));
    return c;
}
PS_OUTPUT PSMain(PS_INPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.TexCoord_id62 = __input__.TexCoord_id62;
    streams.ColorTarget_id2 = Shading_id22(streams);
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
