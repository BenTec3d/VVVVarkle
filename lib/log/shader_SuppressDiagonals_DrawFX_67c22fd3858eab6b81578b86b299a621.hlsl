/**************************
***** Compiler Parameters *****
***************************
@P EffectName: SuppressDiagonals_DrawFX
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 416]
@C    World_id29 => Transformation.World
@C    WorldInverse_id30 => Transformation.WorldInverse
@C    WorldInverseTranspose_id31 => Transformation.WorldInverseTranspose
@C    WorldView_id32 => Transformation.WorldView
@C    WorldViewInverse_id33 => Transformation.WorldViewInverse
@C    WorldViewProjection_id34 => Transformation.WorldViewProjection
@C    WorldScale_id35 => Transformation.WorldScale
@C    EyeMS_id36 => Transformation.EyeMS
cbuffer Globals [Size: 16]
@C    ColorInput_id40 => SuppressDiagonals_DrawFX.ColorInput
***************************
******  Resources    ******
***************************
@R    PerDraw => PerDraw [Stage: Geometry, Slot: (0-0)]
@R    Globals => Globals [Stage: Pixel, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    SuppressDiagonals_DrawFX => e2acc43132dc55c988e4f6b580f27075
@S    VS_PS_Base => dd9c2756ab59db00c5dcacc592c1524a
@S    ShaderBase => 01e372056ff6c06edab8e988414a8f75
@S    ShaderBaseStream => 91c0ea8aae0a45ca00578a4084fa3607
@S    PositionStream4 => 978c413387a2cb385e61d6d096be6d21
@S    NormalStream => 901c352015317e9dff7f9aef777dc0c7
@S    Transformation => 6c40fce14b58a620257103f7d0f4c093
@S    ColorBase => dfd6a7f32152592371bd8b6ee11c5078
@S    ShaderUtils => 322a94f64a804439ad8484ffa917bb03
***************************
*****     Stages      *****
***************************
@G    Vertex => 434794ee6b474645b1d499b41fd1be24
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyzw
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_input v0.xyzw
dcl_output_siv o0.xyzw, position
//
// Initial variable locations:
//   v0.x <- __input__.Position_id14.x; v0.y <- __input__.Position_id14.y; v0.z <- __input__.Position_id14.z; v0.w <- __input__.Position_id14.w; 
//   o0.x <- <VSMain return value>.ShadingPosition_id0.x; o0.y <- <VSMain return value>.ShadingPosition_id0.y; o0.z <- <VSMain return value>.ShadingPosition_id0.z; o0.w <- <VSMain return value>.ShadingPosition_id0.w
//
#line 147 "C:\Users\benox\Documents\vvvv\gamma\Exports\VVVVarkle\lib\log\shader_SuppressDiagonals_DrawFX_67c22fd3858eab6b81578b86b299a621.hlsl"
mov o0.xyzw, v0.xyzw
ret 
// Approximately 2 instruction slots used
@G    Geometry => 9939cc5983256573ed7164c67037d358
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 World_id29;               // Offset:    0 Size:    64 [unused]
//   float4x4 WorldInverse_id30;        // Offset:   64 Size:    64 [unused]
//   float4x4 WorldInverseTranspose_id31;// Offset:  128 Size:    64 [unused]
//   float4x4 WorldView_id32;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id33;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id34; // Offset:  320 Size:    64
//   float3 WorldScale_id35;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id36;                 // Offset:  400 Size:    16 [unused]
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
// SV_Position              0   xyzw        0      POS   float   xyz 
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float   xyzw
//
gs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[24], immediateIndexed
dcl_input_siv v[3][0].xyzw, position
dcl_temps 3
dcl_inputprimitive triangle 
dcl_stream m0
dcl_outputtopology linestrip 
dcl_output_siv o0.xyzw, position
dcl_maxout 6
//
// Initial variable locations:
//   m0 <- gsout; 
//   v[0][0].x <- input[0].ShadingPosition_id0.x; v[0][0].y <- input[0].ShadingPosition_id0.y; v[0][0].z <- input[0].ShadingPosition_id0.z; v[0][0].w <- input[0].ShadingPosition_id0.w; 
//   v[1][0].x <- input[1].ShadingPosition_id0.x; v[1][0].y <- input[1].ShadingPosition_id0.y; v[1][0].z <- input[1].ShadingPosition_id0.z; v[1][0].w <- input[1].ShadingPosition_id0.w; 
//   v[2][0].x <- input[2].ShadingPosition_id0.x; v[2][0].y <- input[2].ShadingPosition_id0.y; v[2][0].z <- input[2].ShadingPosition_id0.z; v[2][0].w <- input[2].ShadingPosition_id0.w
//
#line 78 "C:\Users\benox\Documents\vvvv\gamma\Exports\VVVVarkle\lib\log\shader_SuppressDiagonals_DrawFX_67c22fd3858eab6b81578b86b299a621.hlsl"
add r0.xyz, -v[0][0].xyzx, v[1][0].xyzx  // r0.x <- l1.x; r0.y <- l1.y; r0.z <- l1.z

#line 79
add r1.xyz, -v[1][0].xyzx, v[2][0].xyzx  // r1.x <- l2.x; r1.y <- l2.y; r1.z <- l2.z

#line 80
add r2.xyz, -v[0][0].xyzx, v[2][0].xyzx  // r2.x <- l3.x; r2.y <- l3.y; r2.z <- l3.z

#line 81
dp3 r0.x, r0.xyzx, r0.xyzx  // r0.x <- dl1

#line 82
dp3 r0.y, r1.xyzx, r1.xyzx  // r0.y <- dl2

#line 83
dp3 r0.z, r2.xyzx, r2.xyzx  // r0.z <- dl3

#line 84
max r0.w, r0.y, r0.x
max r0.w, r0.z, r0.w  // r0.w <- maxdistsqr

#line 85
lt r0.x, r0.x, r0.w
if_nz r0.x

#line 87
  mov r1.xyz, v[0][0].xyzx
  mov r1.w, l(1.000000)
  dp4 r0.x, r1.xyzw, cb0[20].xyzw  // r0.x <- streams.ShadingPosition_id0.x
  dp4 r2.x, r1.xyzw, cb0[21].xyzw  // r2.x <- streams.ShadingPosition_id0.y
  dp4 r2.y, r1.xyzw, cb0[22].xyzw  // r2.y <- streams.ShadingPosition_id0.z
  dp4 r1.x, r1.xyzw, cb0[23].xyzw  // r1.x <- streams.ShadingPosition_id0.w

#line 92
  mov o0.x, r0.x
  mov o0.y, r2.x
  mov o0.z, r2.y
  mov o0.w, r1.x
  emit_stream m0

#line 94
  mov r1.xyz, v[1][0].xyzx
  mov r1.w, l(1.000000)
  dp4 r0.x, r1.xyzw, cb0[20].xyzw
  dp4 r2.x, r1.xyzw, cb0[21].xyzw
  dp4 r2.y, r1.xyzw, cb0[22].xyzw
  dp4 r1.x, r1.xyzw, cb0[23].xyzw  // r1.x <- streams.ShadingPosition_id0.w

#line 99
  mov o0.x, r0.x
  mov o0.y, r2.x
  mov o0.z, r2.y
  mov o0.w, r1.x
  emit_stream m0

#line 101
  cut_stream m0

#line 102
endif 

#line 103
lt r0.x, r0.y, r0.w
if_nz r0.x

#line 105
  mov r1.xyz, v[2][0].xyzx
  mov r1.w, l(1.000000)
  dp4 r0.x, r1.xyzw, cb0[20].xyzw  // r0.x <- streams.ShadingPosition_id0.x
  dp4 r0.y, r1.xyzw, cb0[21].xyzw  // r0.y <- streams.ShadingPosition_id0.y
  dp4 r2.x, r1.xyzw, cb0[22].xyzw  // r2.x <- streams.ShadingPosition_id0.z
  dp4 r1.x, r1.xyzw, cb0[23].xyzw  // r1.x <- streams.ShadingPosition_id0.w

#line 110
  mov o0.x, r0.x
  mov o0.y, r0.y
  mov o0.z, r2.x
  mov o0.w, r1.x
  emit_stream m0

#line 112
  mov r1.xyz, v[1][0].xyzx
  mov r1.w, l(1.000000)
  dp4 r0.x, r1.xyzw, cb0[20].xyzw
  dp4 r0.y, r1.xyzw, cb0[21].xyzw
  dp4 r2.x, r1.xyzw, cb0[22].xyzw
  dp4 r1.x, r1.xyzw, cb0[23].xyzw  // r1.x <- streams.ShadingPosition_id0.w

#line 117
  mov o0.x, r0.x
  mov o0.y, r0.y
  mov o0.z, r2.x
  mov o0.w, r1.x
  emit_stream m0

#line 119
  cut_stream m0

#line 120
endif 

#line 121
lt r0.x, r0.z, r0.w
if_nz r0.x

#line 123
  mov r0.xyz, v[2][0].xyzx
  mov r0.w, l(1.000000)
  dp4 r1.x, r0.xyzw, cb0[20].xyzw  // r1.x <- streams.ShadingPosition_id0.x
  dp4 r1.y, r0.xyzw, cb0[21].xyzw  // r1.y <- streams.ShadingPosition_id0.y
  dp4 r1.z, r0.xyzw, cb0[22].xyzw  // r1.z <- streams.ShadingPosition_id0.z
  dp4 r0.x, r0.xyzw, cb0[23].xyzw  // r0.x <- streams.ShadingPosition_id0.w

#line 128
  mov o0.x, r1.x
  mov o0.y, r1.y
  mov o0.z, r1.z
  mov o0.w, r0.x
  emit_stream m0

#line 130
  mov r0.xyz, v[0][0].xyzx
  mov r0.w, l(1.000000)
  dp4 r1.x, r0.xyzw, cb0[20].xyzw
  dp4 r1.y, r0.xyzw, cb0[21].xyzw
  dp4 r1.z, r0.xyzw, cb0[22].xyzw
  dp4 r0.x, r0.xyzw, cb0[23].xyzw  // r0.x <- streams.ShadingPosition_id0.w

#line 135
  mov o0.x, r1.x
  mov o0.y, r1.y
  mov o0.z, r1.z
  mov o0.w, r0.x
  emit_stream m0

#line 137
  cut_stream m0

#line 138
endif 

#line 139
ret 
// Approximately 87 instruction slots used
@G    Pixel => 4d62a48b7f0941211df26d776d50d680
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer Globals
// {
//
//   float4 ColorInput_id40;            // Offset:    0 Size:    16
//      = 0x3f800000 0x3f800000 0x3f800000 0x3f800000 
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// Globals                           cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float       
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
dcl_constantbuffer CB0[1], immediateIndexed
dcl_output o0.xyzw
//
// Initial variable locations:
//   v0.x <- __input__.ShadingPosition_id0.x; v0.y <- __input__.ShadingPosition_id0.y; v0.z <- __input__.ShadingPosition_id0.z; v0.w <- __input__.ShadingPosition_id0.w; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 66 "C:\Users\benox\Documents\vvvv\gamma\Exports\VVVVarkle\lib\log\shader_SuppressDiagonals_DrawFX_67c22fd3858eab6b81578b86b299a621.hlsl"
mul o0.xyzw, cb0[0].wwww, cb0[0].xyzw

#line 69
ret 
// Approximately 2 instruction slots used
***************************
*************************/
struct PS_STREAMS 
{
    float4 ColorTarget_id2;
};
struct PS_OUTPUT 
{
    float4 ColorTarget_id2 : SV_Target0;
};
struct PS_INPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
};
struct GS_STREAMS 
{
    float4 ShadingPosition_id0;
};
struct GS_OUTPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
};
struct GS_INPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
};
struct VS_STREAMS 
{
    float4 Position_id14;
    float4 ShadingPosition_id0;
};
struct VS_OUTPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
};
struct VS_INPUT 
{
    float4 Position_id14 : POSITION;
};
cbuffer PerDraw 
{
    float4x4 World_id29;
    float4x4 WorldInverse_id30;
    float4x4 WorldInverseTranspose_id31;
    float4x4 WorldView_id32;
    float4x4 WorldViewInverse_id33;
    float4x4 WorldViewProjection_id34;
    float3 WorldScale_id35;
    float4 EyeMS_id36;
};
cbuffer PerView 
{
    float4x4 View_id22;
    float4x4 ViewInverse_id23;
    float4x4 Projection_id24;
    float4x4 ProjectionInverse_id25;
    float4x4 ViewProjection_id26;
    float2 ProjScreenRay_id27;
    float4 Eye_id28;
};
cbuffer Globals 
{
    float4 ColorInput_id40 = float4(1, 1, 1, 1);
};
PS_OUTPUT PSMain(PS_INPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.ColorTarget_id2 = ColorInput_id40 * ColorInput_id40.a;
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    return __output__;
}
[maxvertexcount(6)]
void GSMain(triangle GS_INPUT input[3], inout LineStream<GS_OUTPUT> gsout)
{
    GS_STREAMS streams = (GS_STREAMS)0;
    float3 t1 = input[0].ShadingPosition_id0.xyz;
    float3 t2 = input[1].ShadingPosition_id0.xyz;
    float3 t3 = input[2].ShadingPosition_id0.xyz;
    float3 l1 = t2 - t1;
    float3 l2 = t3 - t2;
    float3 l3 = t3 - t1;
    float dl1 = dot(l1, l1);
    float dl2 = dot(l2, l2);
    float dl3 = dot(l3, l3);
    float maxdistsqr = max(max(dl1, dl2), dl3);
    if (dl1 < maxdistsqr)
    {
        streams.ShadingPosition_id0 = mul(float4(t1, 1), WorldViewProjection_id34);

        {
            GS_OUTPUT output = (GS_OUTPUT)0;
            output.ShadingPosition_id0 = streams.ShadingPosition_id0;
            gsout.Append(output);
        }
        streams.ShadingPosition_id0 = mul(float4(t2, 1), WorldViewProjection_id34);

        {
            GS_OUTPUT output = (GS_OUTPUT)0;
            output.ShadingPosition_id0 = streams.ShadingPosition_id0;
            gsout.Append(output);
        }
        gsout.RestartStrip();
    }
    if (dl2 < maxdistsqr)
    {
        streams.ShadingPosition_id0 = mul(float4(t3, 1), WorldViewProjection_id34);

        {
            GS_OUTPUT output = (GS_OUTPUT)0;
            output.ShadingPosition_id0 = streams.ShadingPosition_id0;
            gsout.Append(output);
        }
        streams.ShadingPosition_id0 = mul(float4(t2, 1), WorldViewProjection_id34);

        {
            GS_OUTPUT output = (GS_OUTPUT)0;
            output.ShadingPosition_id0 = streams.ShadingPosition_id0;
            gsout.Append(output);
        }
        gsout.RestartStrip();
    }
    if (dl3 < maxdistsqr)
    {
        streams.ShadingPosition_id0 = mul(float4(t3, 1), WorldViewProjection_id34);

        {
            GS_OUTPUT output = (GS_OUTPUT)0;
            output.ShadingPosition_id0 = streams.ShadingPosition_id0;
            gsout.Append(output);
        }
        streams.ShadingPosition_id0 = mul(float4(t1, 1), WorldViewProjection_id34);

        {
            GS_OUTPUT output = (GS_OUTPUT)0;
            output.ShadingPosition_id0 = streams.ShadingPosition_id0;
            gsout.Append(output);
        }
        gsout.RestartStrip();
    }
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id14 = __input__.Position_id14;
    streams.ShadingPosition_id0 = streams.Position_id14;
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    return __output__;
}
