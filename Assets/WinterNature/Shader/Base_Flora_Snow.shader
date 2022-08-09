// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.18 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.18;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:8579,x:32719,y:32712,varname:node_8579,prsc:2|diff-7335-OUT,normal-4013-OUT,voffset-8241-OUT;n:type:ShaderForge.SFN_Tex2d,id:1646,x:31459,y:31237,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_1646,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:7838,x:31459,y:31066,ptovrint:False,ptlb:Diffuse Color,ptin:_DiffuseColor,varname:node_7838,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:945,x:31882,y:31213,varname:node_945,prsc:2|A-283-OUT,B-7838-RGB;n:type:ShaderForge.SFN_Lerp,id:3228,x:32043,y:31239,varname:node_3228,prsc:2|A-945-OUT,B-1487-OUT,T-938-OUT;n:type:ShaderForge.SFN_Multiply,id:1487,x:31877,y:30877,varname:node_1487,prsc:2|A-8066-OUT,B-2740-RGB;n:type:ShaderForge.SFN_Lerp,id:7335,x:32212,y:31636,varname:node_7335,prsc:2|A-3228-OUT,B-6798-OUT,T-7645-OUT;n:type:ShaderForge.SFN_Color,id:1641,x:29941,y:30837,ptovrint:False,ptlb:Snow color,ptin:_Snowcolor,varname:_DiffuseColor_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:4481,x:29941,y:31008,ptovrint:False,ptlb:Snow,ptin:_Snow,varname:_Diffuse_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:6798,x:30156,y:30988,varname:node_6798,prsc:2|A-4481-RGB,B-1641-RGB;n:type:ShaderForge.SFN_Tex2d,id:9552,x:31457,y:30864,ptovrint:False,ptlb:Diffuse2,ptin:_Diffuse2,varname:node_9552,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:2740,x:31457,y:30692,ptovrint:False,ptlb:Diffuse2 color,ptin:_Diffuse2color,varname:node_2740,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:5795,x:30623,y:34622,ptovrint:False,ptlb:Gradient2,ptin:_Gradient2,varname:node_5795,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-4261-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:8344,x:30623,y:34439,ptovrint:False,ptlb:Gradient1,ptin:_Gradient1,varname:node_8344,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-3330-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:4261,x:30271,y:34658,varname:node_4261,prsc:2,uv:3;n:type:ShaderForge.SFN_TexCoord,id:3330,x:30271,y:34453,varname:node_3330,prsc:2,uv:2;n:type:ShaderForge.SFN_Multiply,id:8379,x:31136,y:31683,varname:node_8379,prsc:2|A-3672-OUT,B-1646-A;n:type:ShaderForge.SFN_ValueProperty,id:8327,x:30795,y:31683,ptovrint:False,ptlb:Diff Root max,ptin:_DiffRootmax,varname:node_8327,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:7;n:type:ShaderForge.SFN_ValueProperty,id:4131,x:31136,y:31840,ptovrint:False,ptlb:Diff root Str,ptin:_DiffrootStr,varname:node_4131,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:4;n:type:ShaderForge.SFN_Power,id:2788,x:31297,y:31683,varname:node_2788,prsc:2|VAL-8379-OUT,EXP-4131-OUT;n:type:ShaderForge.SFN_Clamp01,id:938,x:31655,y:31680,varname:node_938,prsc:2|IN-2028-OUT;n:type:ShaderForge.SFN_Multiply,id:3672,x:30974,y:31683,varname:node_3672,prsc:2|A-8327-OUT,B-5795-R;n:type:ShaderForge.SFN_Tex2d,id:4108,x:31788,y:33079,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:node_4108,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:1876,x:31788,y:33298,ptovrint:False,ptlb:Normal2,ptin:_Normal2,varname:node_1876,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Lerp,id:9702,x:31998,y:33079,varname:node_9702,prsc:2|A-4108-RGB,B-1876-RGB,T-938-OUT;n:type:ShaderForge.SFN_NormalVector,id:4153,x:28302,y:32771,prsc:2,pt:True;n:type:ShaderForge.SFN_Clamp01,id:9634,x:28462,y:32771,varname:node_9634,prsc:2|IN-4153-OUT;n:type:ShaderForge.SFN_Dot,id:6231,x:28645,y:32771,varname:node_6231,prsc:2,dt:0|A-9634-OUT,B-4097-OUT;n:type:ShaderForge.SFN_Vector3,id:4097,x:28462,y:32895,varname:node_4097,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_Power,id:3644,x:28810,y:32771,varname:node_3644,prsc:2|VAL-6231-OUT,EXP-9976-OUT;n:type:ShaderForge.SFN_Clamp01,id:7645,x:29381,y:32701,varname:node_7645,prsc:2|IN-8347-OUT;n:type:ShaderForge.SFN_Multiply,id:8347,x:28975,y:32772,varname:node_8347,prsc:2|A-3644-OUT,B-7533-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9976,x:28637,y:32682,ptovrint:False,ptlb:Snow Mask Contrast,ptin:_SnowMaskContrast,varname:node_9976,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:7533,x:28781,y:32682,ptovrint:False,ptlb:Snow Mask Brightness,ptin:_SnowMaskBrightness,varname:node_7533,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Add,id:8256,x:32071,y:33800,varname:node_8256,prsc:2|A-1276-OUT,B-604-OUT,C-5493-OUT;n:type:ShaderForge.SFN_Vector1,id:1276,x:31976,y:33672,varname:node_1276,prsc:2,v1:0;n:type:ShaderForge.SFN_Sin,id:6794,x:30452,y:35230,varname:node_6794,prsc:2|IN-2929-OUT;n:type:ShaderForge.SFN_Time,id:9849,x:30034,y:35299,varname:node_9849,prsc:2;n:type:ShaderForge.SFN_Add,id:2929,x:30286,y:35230,varname:node_2929,prsc:2|A-7979-OUT,B-9849-T,C-1686-OUT,D-3176-OUT;n:type:ShaderForge.SFN_Pi,id:7979,x:30067,y:35197,varname:node_7979,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:6982,x:30452,y:35395,ptovrint:False,ptlb:Main Wind Str,ptin:_MainWindStr,varname:node_8610,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.3;n:type:ShaderForge.SFN_ValueProperty,id:7479,x:30120,y:35119,ptovrint:False,ptlb:Additional wind str,ptin:_Additionalwindstr,varname:_BulgeShape,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.01;n:type:ShaderForge.SFN_Multiply,id:4676,x:30605,y:35230,varname:node_4676,prsc:2|A-6794-OUT,B-6982-OUT;n:type:ShaderForge.SFN_Vector4Property,id:7467,x:30605,y:35395,ptovrint:False,ptlb:Main Wind vector,ptin:_MainWindvector,varname:node_5857,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Multiply,id:7196,x:30772,y:35222,varname:node_7196,prsc:2|A-4676-OUT,B-7467-XYZ;n:type:ShaderForge.SFN_Lerp,id:604,x:31446,y:35102,varname:node_604,prsc:2|A-7196-OUT,B-1730-OUT,T-1494-OUT;n:type:ShaderForge.SFN_Vector1,id:1730,x:31120,y:35020,varname:node_1730,prsc:2,v1:0;n:type:ShaderForge.SFN_Power,id:1494,x:30983,y:34719,varname:node_1494,prsc:2|VAL-9607-OUT,EXP-5273-OUT;n:type:ShaderForge.SFN_Vector1,id:5273,x:30661,y:34880,varname:node_5273,prsc:2,v1:1;n:type:ShaderForge.SFN_OneMinus,id:9607,x:30803,y:34678,varname:node_9607,prsc:2|IN-5795-R;n:type:ShaderForge.SFN_Lerp,id:5493,x:31436,y:34852,varname:node_5493,prsc:2|A-1942-OUT,B-1730-OUT,T-760-OUT;n:type:ShaderForge.SFN_OneMinus,id:4753,x:30803,y:34460,varname:node_4753,prsc:2|IN-8344-G;n:type:ShaderForge.SFN_Power,id:760,x:30983,y:34535,varname:node_760,prsc:2|VAL-4753-OUT,EXP-5273-OUT;n:type:ShaderForge.SFN_Panner,id:4089,x:29759,y:34975,varname:node_4089,prsc:2,spu:0,spv:0.1|UVIN-592-UVOUT;n:type:ShaderForge.SFN_UVTile,id:592,x:29564,y:34975,varname:node_592,prsc:2|UVIN-3330-UVOUT,WDT-5259-OUT,HGT-5259-OUT,TILE-5259-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5259,x:29363,y:35009,ptovrint:False,ptlb:Additional wind tile,ptin:_Additionalwindtile,varname:node_7595,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Tex2d,id:2884,x:29944,y:34975,ptovrint:False,ptlb:Additional Wind N,ptin:_AdditionalWindN,varname:_normal_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True|UVIN-4089-UVOUT;n:type:ShaderForge.SFN_Multiply,id:7313,x:30209,y:34943,varname:node_7313,prsc:2|A-2884-R,B-2884-G;n:type:ShaderForge.SFN_Multiply,id:1942,x:30378,y:34943,varname:node_1942,prsc:2|A-7313-OUT,B-7479-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:9585,x:29882,y:35439,varname:node_9585,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1686,x:30104,y:35407,varname:node_1686,prsc:2|A-9585-X,B-3470-OUT;n:type:ShaderForge.SFN_Multiply,id:3176,x:30104,y:35537,varname:node_3176,prsc:2|A-9585-Z,B-3470-OUT;n:type:ShaderForge.SFN_Vector1,id:3470,x:29882,y:35571,varname:node_3470,prsc:2,v1:0.15;n:type:ShaderForge.SFN_SwitchProperty,id:8241,x:32327,y:33629,ptovrint:False,ptlb:Wind ADD,ptin:_WindADD,varname:node_8241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-1276-OUT,B-8256-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:2028,x:31481,y:31680,ptovrint:False,ptlb:Add 2 Diff,ptin:_Add2Diff,varname:node_2028,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-1210-OUT,B-2788-OUT;n:type:ShaderForge.SFN_Vector1,id:1210,x:31297,y:31817,varname:node_1210,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2d,id:4498,x:31788,y:32840,ptovrint:False,ptlb:Snow Normal,ptin:_SnowNormal,varname:node_4498,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Lerp,id:3444,x:32235,y:32926,varname:node_3444,prsc:2|A-9702-OUT,B-4498-RGB,T-8100-OUT;n:type:ShaderForge.SFN_NormalVector,id:228,x:28293,y:32504,prsc:2,pt:False;n:type:ShaderForge.SFN_Clamp01,id:5327,x:28453,y:32504,varname:node_5327,prsc:2|IN-228-OUT;n:type:ShaderForge.SFN_Dot,id:2190,x:28636,y:32504,varname:node_2190,prsc:2,dt:0|A-5327-OUT,B-3724-OUT;n:type:ShaderForge.SFN_Vector3,id:3724,x:28453,y:32628,varname:node_3724,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_Power,id:3884,x:28801,y:32504,varname:node_3884,prsc:2|VAL-2190-OUT,EXP-9976-OUT;n:type:ShaderForge.SFN_Multiply,id:8913,x:28966,y:32505,varname:node_8913,prsc:2|A-3884-OUT,B-7533-OUT;n:type:ShaderForge.SFN_Clamp01,id:8100,x:29381,y:32535,varname:node_8100,prsc:2|IN-8913-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:4013,x:32400,y:32751,ptovrint:False,ptlb:disable Normal,ptin:_disableNormal,varname:node_9568,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-3444-OUT,B-7658-OUT;n:type:ShaderForge.SFN_Vector3,id:7658,x:32176,y:32737,varname:node_7658,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Desaturate,id:283,x:31674,y:31342,varname:node_283,prsc:2|COL-1646-RGB,DES-2686-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2686,x:31459,y:31467,ptovrint:False,ptlb:desaturation,ptin:_desaturation,varname:node_67,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Desaturate,id:8066,x:31687,y:30908,varname:node_8066,prsc:2|COL-9552-RGB,DES-5598-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5598,x:31611,y:31110,ptovrint:False,ptlb:desaturation 2,ptin:_desaturation2,varname:node_5598,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;proporder:1646-2686-7838-4108-9552-5598-2740-1876-4481-1641-4131-8327-8344-5795-9976-7533-8241-6982-7479-7467-5259-2884-2028-4498-4013;pass:END;sub:END;*/

Shader "Custom/Base_Flora_Snow" {
    Properties {
        _Diffuse ("Diffuse", 2D) = "white" {}
        _desaturation ("desaturation", Float ) = 0
        _DiffuseColor ("Diffuse Color", Color) = (1,1,1,1)
        _Normal ("Normal", 2D) = "bump" {}
        _Diffuse2 ("Diffuse2", 2D) = "white" {}
        _desaturation2 ("desaturation 2", Float ) = 0
        _Diffuse2color ("Diffuse2 color", Color) = (1,1,1,1)
        _Normal2 ("Normal2", 2D) = "bump" {}
        _Snow ("Snow", 2D) = "white" {}
        _Snowcolor ("Snow color", Color) = (1,1,1,1)
        _DiffrootStr ("Diff root Str", Float ) = 4
        _DiffRootmax ("Diff Root max", Float ) = 7
        _Gradient1 ("Gradient1", 2D) = "white" {}
        _Gradient2 ("Gradient2", 2D) = "white" {}
        _SnowMaskContrast ("Snow Mask Contrast", Float ) = 1
        _SnowMaskBrightness ("Snow Mask Brightness", Float ) = 1
        [MaterialToggle] _WindADD ("Wind ADD", Float ) = 0.0025
        _MainWindStr ("Main Wind Str", Float ) = 0.3
        _Additionalwindstr ("Additional wind str", Float ) = 0.01
        _MainWindvector ("Main Wind vector", Vector) = (0,0,0,0)
        _Additionalwindtile ("Additional wind tile", Float ) = 1
        _AdditionalWindN ("Additional Wind N", 2D) = "bump" {}
        [MaterialToggle] _Add2Diff ("Add 2 Diff", Float ) = 0
        _SnowNormal ("Snow Normal", 2D) = "bump" {}
        [MaterialToggle] _disableNormal ("disable Normal", Float ) = 0.5
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 200
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float4 _DiffuseColor;
            uniform float4 _Snowcolor;
            uniform sampler2D _Snow; uniform float4 _Snow_ST;
            uniform sampler2D _Diffuse2; uniform float4 _Diffuse2_ST;
            uniform float4 _Diffuse2color;
            uniform sampler2D _Gradient2; uniform float4 _Gradient2_ST;
            uniform sampler2D _Gradient1; uniform float4 _Gradient1_ST;
            uniform float _DiffRootmax;
            uniform float _DiffrootStr;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform sampler2D _Normal2; uniform float4 _Normal2_ST;
            uniform float _SnowMaskContrast;
            uniform float _SnowMaskBrightness;
            uniform float _MainWindStr;
            uniform float _Additionalwindstr;
            uniform float4 _MainWindvector;
            uniform float _Additionalwindtile;
            uniform sampler2D _AdditionalWindN; uniform float4 _AdditionalWindN_ST;
            uniform fixed _WindADD;
            uniform fixed _Add2Diff;
            uniform sampler2D _SnowNormal; uniform float4 _SnowNormal_ST;
            uniform fixed _disableNormal;
            uniform float _desaturation;
            uniform float _desaturation2;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord2 : TEXCOORD2;
                float2 texcoord3 : TEXCOORD3;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv2 : TEXCOORD1;
                float2 uv3 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv2 = v.texcoord2;
                o.uv3 = v.texcoord3;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float node_1276 = 0.0;
                float4 node_9849 = _Time + _TimeEditor;
                float node_3470 = 0.15;
                float node_1730 = 0.0;
                float4 _Gradient2_var = tex2Dlod(_Gradient2,float4(TRANSFORM_TEX(o.uv3, _Gradient2),0.0,0));
                float node_5273 = 1.0;
                float4 node_6017 = _Time + _TimeEditor;
                float2 node_592_tc_rcp = float2(1.0,1.0)/float2( _Additionalwindtile, _Additionalwindtile );
                float node_592_ty = floor(_Additionalwindtile * node_592_tc_rcp.x);
                float node_592_tx = _Additionalwindtile - _Additionalwindtile * node_592_ty;
                float2 node_592 = (o.uv2 + float2(node_592_tx, node_592_ty)) * node_592_tc_rcp;
                float2 node_4089 = (node_592+node_6017.g*float2(0,0.1));
                float3 _AdditionalWindN_var = UnpackNormal(tex2Dlod(_AdditionalWindN,float4(TRANSFORM_TEX(node_4089, _AdditionalWindN),0.0,0)));
                float4 _Gradient1_var = tex2Dlod(_Gradient1,float4(TRANSFORM_TEX(o.uv2, _Gradient1),0.0,0));
                v.vertex.xyz += lerp( node_1276, (node_1276+lerp(((sin((3.141592654+node_9849.g+(mul(unity_ObjectToWorld, v.vertex).r*node_3470)+(mul(unity_ObjectToWorld, v.vertex).b*node_3470)))*_MainWindStr)*_MainWindvector.rgb),float3(node_1730,node_1730,node_1730),pow((1.0 - _Gradient2_var.r),node_5273))+lerp(((_AdditionalWindN_var.r*_AdditionalWindN_var.g)*_Additionalwindstr),node_1730,pow((1.0 - _Gradient1_var.g),node_5273))), _WindADD );
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal)));
                float3 _Normal2_var = UnpackNormal(tex2D(_Normal2,TRANSFORM_TEX(i.uv0, _Normal2)));
                float4 _Gradient2_var = tex2D(_Gradient2,TRANSFORM_TEX(i.uv3, _Gradient2));
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float node_938 = saturate(lerp( 0.0, pow(((_DiffRootmax*_Gradient2_var.r)*_Diffuse_var.a),_DiffrootStr), _Add2Diff ));
                float3 _SnowNormal_var = UnpackNormal(tex2D(_SnowNormal,TRANSFORM_TEX(i.uv0, _SnowNormal)));
                float3 normalLocal = lerp( lerp(lerp(_Normal_var.rgb,_Normal2_var.rgb,node_938),_SnowNormal_var.rgb,saturate((pow(dot(saturate(i.normalDir),float3(0,1,0)),_SnowMaskContrast)*_SnowMaskBrightness))), float3(0,0,1), _disableNormal );
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float4 _Diffuse2_var = tex2D(_Diffuse2,TRANSFORM_TEX(i.uv0, _Diffuse2));
                float4 _Snow_var = tex2D(_Snow,TRANSFORM_TEX(i.uv0, _Snow));
                float3 diffuseColor = lerp(lerp((lerp(_Diffuse_var.rgb,dot(_Diffuse_var.rgb,float3(0.3,0.59,0.11)),_desaturation)*_DiffuseColor.rgb),(lerp(_Diffuse2_var.rgb,dot(_Diffuse2_var.rgb,float3(0.3,0.59,0.11)),_desaturation2)*_Diffuse2color.rgb),node_938),(_Snow_var.rgb*_Snowcolor.rgb),saturate((pow(dot(saturate(normalDirection),float3(0,1,0)),_SnowMaskContrast)*_SnowMaskBrightness)));
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float4 _DiffuseColor;
            uniform float4 _Snowcolor;
            uniform sampler2D _Snow; uniform float4 _Snow_ST;
            uniform sampler2D _Diffuse2; uniform float4 _Diffuse2_ST;
            uniform float4 _Diffuse2color;
            uniform sampler2D _Gradient2; uniform float4 _Gradient2_ST;
            uniform sampler2D _Gradient1; uniform float4 _Gradient1_ST;
            uniform float _DiffRootmax;
            uniform float _DiffrootStr;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform sampler2D _Normal2; uniform float4 _Normal2_ST;
            uniform float _SnowMaskContrast;
            uniform float _SnowMaskBrightness;
            uniform float _MainWindStr;
            uniform float _Additionalwindstr;
            uniform float4 _MainWindvector;
            uniform float _Additionalwindtile;
            uniform sampler2D _AdditionalWindN; uniform float4 _AdditionalWindN_ST;
            uniform fixed _WindADD;
            uniform fixed _Add2Diff;
            uniform sampler2D _SnowNormal; uniform float4 _SnowNormal_ST;
            uniform fixed _disableNormal;
            uniform float _desaturation;
            uniform float _desaturation2;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord2 : TEXCOORD2;
                float2 texcoord3 : TEXCOORD3;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv2 : TEXCOORD1;
                float2 uv3 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv2 = v.texcoord2;
                o.uv3 = v.texcoord3;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float node_1276 = 0.0;
                float4 node_9849 = _Time + _TimeEditor;
                float node_3470 = 0.15;
                float node_1730 = 0.0;
                float4 _Gradient2_var = tex2Dlod(_Gradient2,float4(TRANSFORM_TEX(o.uv3, _Gradient2),0.0,0));
                float node_5273 = 1.0;
                float4 node_8416 = _Time + _TimeEditor;
                float2 node_592_tc_rcp = float2(1.0,1.0)/float2( _Additionalwindtile, _Additionalwindtile );
                float node_592_ty = floor(_Additionalwindtile * node_592_tc_rcp.x);
                float node_592_tx = _Additionalwindtile - _Additionalwindtile * node_592_ty;
                float2 node_592 = (o.uv2 + float2(node_592_tx, node_592_ty)) * node_592_tc_rcp;
                float2 node_4089 = (node_592+node_8416.g*float2(0,0.1));
                float3 _AdditionalWindN_var = UnpackNormal(tex2Dlod(_AdditionalWindN,float4(TRANSFORM_TEX(node_4089, _AdditionalWindN),0.0,0)));
                float4 _Gradient1_var = tex2Dlod(_Gradient1,float4(TRANSFORM_TEX(o.uv2, _Gradient1),0.0,0));
                v.vertex.xyz += lerp( node_1276, (node_1276+lerp(((sin((3.141592654+node_9849.g+(mul(unity_ObjectToWorld, v.vertex).r*node_3470)+(mul(unity_ObjectToWorld, v.vertex).b*node_3470)))*_MainWindStr)*_MainWindvector.rgb),float3(node_1730,node_1730,node_1730),pow((1.0 - _Gradient2_var.r),node_5273))+lerp(((_AdditionalWindN_var.r*_AdditionalWindN_var.g)*_Additionalwindstr),node_1730,pow((1.0 - _Gradient1_var.g),node_5273))), _WindADD );
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal)));
                float3 _Normal2_var = UnpackNormal(tex2D(_Normal2,TRANSFORM_TEX(i.uv0, _Normal2)));
                float4 _Gradient2_var = tex2D(_Gradient2,TRANSFORM_TEX(i.uv3, _Gradient2));
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float node_938 = saturate(lerp( 0.0, pow(((_DiffRootmax*_Gradient2_var.r)*_Diffuse_var.a),_DiffrootStr), _Add2Diff ));
                float3 _SnowNormal_var = UnpackNormal(tex2D(_SnowNormal,TRANSFORM_TEX(i.uv0, _SnowNormal)));
                float3 normalLocal = lerp( lerp(lerp(_Normal_var.rgb,_Normal2_var.rgb,node_938),_SnowNormal_var.rgb,saturate((pow(dot(saturate(i.normalDir),float3(0,1,0)),_SnowMaskContrast)*_SnowMaskBrightness))), float3(0,0,1), _disableNormal );
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 _Diffuse2_var = tex2D(_Diffuse2,TRANSFORM_TEX(i.uv0, _Diffuse2));
                float4 _Snow_var = tex2D(_Snow,TRANSFORM_TEX(i.uv0, _Snow));
                float3 diffuseColor = lerp(lerp((lerp(_Diffuse_var.rgb,dot(_Diffuse_var.rgb,float3(0.3,0.59,0.11)),_desaturation)*_DiffuseColor.rgb),(lerp(_Diffuse2_var.rgb,dot(_Diffuse2_var.rgb,float3(0.3,0.59,0.11)),_desaturation2)*_Diffuse2color.rgb),node_938),(_Snow_var.rgb*_Snowcolor.rgb),saturate((pow(dot(saturate(normalDirection),float3(0,1,0)),_SnowMaskContrast)*_SnowMaskBrightness)));
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform sampler2D _Gradient2; uniform float4 _Gradient2_ST;
            uniform sampler2D _Gradient1; uniform float4 _Gradient1_ST;
            uniform float _MainWindStr;
            uniform float _Additionalwindstr;
            uniform float4 _MainWindvector;
            uniform float _Additionalwindtile;
            uniform sampler2D _AdditionalWindN; uniform float4 _AdditionalWindN_ST;
            uniform fixed _WindADD;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord2 : TEXCOORD2;
                float2 texcoord3 : TEXCOORD3;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv2 : TEXCOORD1;
                float2 uv3 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv2 = v.texcoord2;
                o.uv3 = v.texcoord3;
                float node_1276 = 0.0;
                float4 node_9849 = _Time + _TimeEditor;
                float node_3470 = 0.15;
                float node_1730 = 0.0;
                float4 _Gradient2_var = tex2Dlod(_Gradient2,float4(TRANSFORM_TEX(o.uv3, _Gradient2),0.0,0));
                float node_5273 = 1.0;
                float4 node_4139 = _Time + _TimeEditor;
                float2 node_592_tc_rcp = float2(1.0,1.0)/float2( _Additionalwindtile, _Additionalwindtile );
                float node_592_ty = floor(_Additionalwindtile * node_592_tc_rcp.x);
                float node_592_tx = _Additionalwindtile - _Additionalwindtile * node_592_ty;
                float2 node_592 = (o.uv2 + float2(node_592_tx, node_592_ty)) * node_592_tc_rcp;
                float2 node_4089 = (node_592+node_4139.g*float2(0,0.1));
                float3 _AdditionalWindN_var = UnpackNormal(tex2Dlod(_AdditionalWindN,float4(TRANSFORM_TEX(node_4089, _AdditionalWindN),0.0,0)));
                float4 _Gradient1_var = tex2Dlod(_Gradient1,float4(TRANSFORM_TEX(o.uv2, _Gradient1),0.0,0));
                v.vertex.xyz += lerp( node_1276, (node_1276+lerp(((sin((3.141592654+node_9849.g+(mul(unity_ObjectToWorld, v.vertex).r*node_3470)+(mul(unity_ObjectToWorld, v.vertex).b*node_3470)))*_MainWindStr)*_MainWindvector.rgb),float3(node_1730,node_1730,node_1730),pow((1.0 - _Gradient2_var.r),node_5273))+lerp(((_AdditionalWindN_var.r*_AdditionalWindN_var.g)*_Additionalwindstr),node_1730,pow((1.0 - _Gradient1_var.g),node_5273))), _WindADD );
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex);
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
