// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.18 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.18;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:9224,x:32719,y:32712,varname:node_9224,prsc:2|diff-5620-OUT,normal-9568-OUT,transm-7148-RGB,lwrap-7148-RGB,clip-5220-OUT,voffset-6204-OUT;n:type:ShaderForge.SFN_Tex2d,id:8340,x:31523,y:31301,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_1646,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:4368,x:31523,y:31130,ptovrint:False,ptlb:Diffuse Color,ptin:_DiffuseColor,varname:node_7838,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:202,x:31936,y:31277,varname:node_202,prsc:2|A-4914-OUT,B-4368-RGB;n:type:ShaderForge.SFN_Lerp,id:5620,x:32276,y:31700,varname:node_5620,prsc:2|A-202-OUT,B-5547-OUT,T-2403-OUT;n:type:ShaderForge.SFN_Color,id:9000,x:30005,y:30901,ptovrint:False,ptlb:Snow color,ptin:_Snowcolor,varname:_DiffuseColor_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:4141,x:30005,y:31072,ptovrint:False,ptlb:Snow,ptin:_Snow,varname:_Diffuse_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:5547,x:30220,y:31052,varname:node_5547,prsc:2|A-4141-RGB,B-9000-RGB;n:type:ShaderForge.SFN_Tex2d,id:1324,x:30687,y:34686,ptovrint:False,ptlb:Gradient2,ptin:_Gradient2,varname:node_5795,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-2939-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:2369,x:30687,y:34503,ptovrint:False,ptlb:Gradient1,ptin:_Gradient1,varname:node_8344,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-3409-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:2939,x:30335,y:34722,varname:node_2939,prsc:2,uv:3;n:type:ShaderForge.SFN_TexCoord,id:3409,x:30335,y:34517,varname:node_3409,prsc:2,uv:2;n:type:ShaderForge.SFN_Tex2d,id:3092,x:31594,y:33198,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:node_4108,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_NormalVector,id:3410,x:28366,y:32835,prsc:2,pt:True;n:type:ShaderForge.SFN_Clamp01,id:2351,x:28526,y:32835,varname:node_2351,prsc:2|IN-3410-OUT;n:type:ShaderForge.SFN_Dot,id:6666,x:28709,y:32835,varname:node_6666,prsc:2,dt:0|A-2351-OUT,B-9401-OUT;n:type:ShaderForge.SFN_Vector3,id:9401,x:28526,y:32959,varname:node_9401,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_Power,id:1455,x:28874,y:32835,varname:node_1455,prsc:2|VAL-6666-OUT,EXP-8812-OUT;n:type:ShaderForge.SFN_Clamp01,id:4118,x:29199,y:32836,varname:node_4118,prsc:2|IN-8719-OUT;n:type:ShaderForge.SFN_Multiply,id:8719,x:29039,y:32836,varname:node_8719,prsc:2|A-1455-OUT,B-4939-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8812,x:28701,y:32746,ptovrint:False,ptlb:Snow Mask Contrast,ptin:_SnowMaskContrast,varname:node_9976,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:4939,x:28845,y:32746,ptovrint:False,ptlb:Snow Mask Brightness,ptin:_SnowMaskBrightness,varname:node_7533,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Add,id:7630,x:32135,y:33864,varname:node_7630,prsc:2|A-8241-OUT,B-1126-OUT,C-1070-OUT;n:type:ShaderForge.SFN_Vector1,id:8241,x:32040,y:33736,varname:node_8241,prsc:2,v1:0;n:type:ShaderForge.SFN_Sin,id:7652,x:30516,y:35294,varname:node_7652,prsc:2|IN-8132-OUT;n:type:ShaderForge.SFN_Time,id:6281,x:30098,y:35363,varname:node_6281,prsc:2;n:type:ShaderForge.SFN_Add,id:8132,x:30350,y:35294,varname:node_8132,prsc:2|A-3150-OUT,B-6281-T,C-4613-OUT,D-9608-OUT;n:type:ShaderForge.SFN_Pi,id:3150,x:30131,y:35261,varname:node_3150,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:2407,x:30516,y:35459,ptovrint:False,ptlb:Main Wind Str,ptin:_MainWindStr,varname:node_8610,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.3;n:type:ShaderForge.SFN_ValueProperty,id:2806,x:30184,y:35183,ptovrint:False,ptlb:Additional wind str,ptin:_Additionalwindstr,varname:_BulgeShape,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.01;n:type:ShaderForge.SFN_Multiply,id:4739,x:30669,y:35294,varname:node_4739,prsc:2|A-7652-OUT,B-2407-OUT;n:type:ShaderForge.SFN_Vector4Property,id:6858,x:30669,y:35459,ptovrint:False,ptlb:Main Wind vector,ptin:_MainWindvector,varname:node_5857,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Multiply,id:3720,x:30836,y:35286,varname:node_3720,prsc:2|A-4739-OUT,B-6858-XYZ;n:type:ShaderForge.SFN_Lerp,id:1126,x:31510,y:35166,varname:node_1126,prsc:2|A-3720-OUT,B-102-OUT,T-5442-OUT;n:type:ShaderForge.SFN_Vector1,id:102,x:31184,y:35084,varname:node_102,prsc:2,v1:0;n:type:ShaderForge.SFN_Power,id:5442,x:31047,y:34783,varname:node_5442,prsc:2|VAL-5190-OUT,EXP-2556-OUT;n:type:ShaderForge.SFN_Vector1,id:2556,x:30725,y:34944,varname:node_2556,prsc:2,v1:1;n:type:ShaderForge.SFN_OneMinus,id:5190,x:30867,y:34742,varname:node_5190,prsc:2|IN-1324-R;n:type:ShaderForge.SFN_Lerp,id:1070,x:31500,y:34916,varname:node_1070,prsc:2|A-5325-OUT,B-102-OUT,T-1714-OUT;n:type:ShaderForge.SFN_OneMinus,id:2181,x:30867,y:34524,varname:node_2181,prsc:2|IN-2369-R;n:type:ShaderForge.SFN_Power,id:1714,x:31047,y:34599,varname:node_1714,prsc:2|VAL-2181-OUT,EXP-2556-OUT;n:type:ShaderForge.SFN_Panner,id:4614,x:29823,y:35039,varname:node_4614,prsc:2,spu:0,spv:0.1|UVIN-1528-UVOUT;n:type:ShaderForge.SFN_UVTile,id:1528,x:29628,y:35039,varname:node_1528,prsc:2|UVIN-9035-UVOUT,WDT-7766-OUT,HGT-7766-OUT,TILE-7766-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7766,x:29409,y:35101,ptovrint:False,ptlb:Additional wind tile,ptin:_Additionalwindtile,varname:node_7595,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Tex2d,id:1059,x:30008,y:35039,ptovrint:False,ptlb:Additional Wind N,ptin:_AdditionalWindN,varname:_normal_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True|UVIN-4614-UVOUT;n:type:ShaderForge.SFN_Multiply,id:2092,x:30273,y:35007,varname:node_2092,prsc:2|A-1059-R,B-1059-G;n:type:ShaderForge.SFN_Multiply,id:5325,x:30442,y:35007,varname:node_5325,prsc:2|A-2092-OUT,B-2806-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:5116,x:29946,y:35503,varname:node_5116,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4613,x:30168,y:35471,varname:node_4613,prsc:2|A-5116-X,B-1516-OUT;n:type:ShaderForge.SFN_Multiply,id:9608,x:30168,y:35601,varname:node_9608,prsc:2|A-5116-Z,B-1516-OUT;n:type:ShaderForge.SFN_Vector1,id:1516,x:29946,y:35635,varname:node_1516,prsc:2,v1:0.15;n:type:ShaderForge.SFN_SwitchProperty,id:6204,x:32372,y:33707,ptovrint:False,ptlb:Wind Add,ptin:_WindAdd,varname:node_6204,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-8241-OUT,B-7630-OUT;n:type:ShaderForge.SFN_TexCoord,id:9035,x:29409,y:34906,varname:node_9035,prsc:2,uv:2;n:type:ShaderForge.SFN_Multiply,id:6084,x:31787,y:32844,varname:node_6084,prsc:2|A-8340-A,B-583-OUT;n:type:ShaderForge.SFN_ValueProperty,id:583,x:31343,y:32830,ptovrint:False,ptlb:Opacity str,ptin:_Opacitystr,varname:node_583,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Tex2d,id:4782,x:31168,y:32779,ptovrint:False,ptlb:snow opacity mask,ptin:_snowopacitymask,varname:node_4782,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:2544,x:31359,y:32907,varname:node_2544,prsc:2|A-4782-RGB,B-1616-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1616,x:31168,y:32975,ptovrint:False,ptlb:Snow opacity str,ptin:_Snowopacitystr,varname:node_1616,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Color,id:7148,x:32337,y:32838,ptovrint:False,ptlb:SSS,ptin:_SSS,varname:node_7148,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Add,id:2221,x:31923,y:31880,varname:node_2221,prsc:2|A-4118-OUT,B-2544-OUT;n:type:ShaderForge.SFN_Add,id:5220,x:31968,y:32844,varname:node_5220,prsc:2|A-6084-OUT,B-2544-OUT;n:type:ShaderForge.SFN_Tex2d,id:2839,x:31594,y:33413,ptovrint:False,ptlb:Snow Normal,ptin:_SnowNormal,varname:node_2839,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Lerp,id:2665,x:32186,y:33292,varname:node_2665,prsc:2|A-3092-RGB,B-2839-RGB,T-9304-OUT;n:type:ShaderForge.SFN_Clamp01,id:2403,x:32101,y:31810,varname:node_2403,prsc:2|IN-2221-OUT;n:type:ShaderForge.SFN_Clamp01,id:9304,x:31866,y:33078,varname:node_9304,prsc:2|IN-2544-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:9568,x:32418,y:33158,ptovrint:False,ptlb:disable Normal,ptin:_disableNormal,varname:node_9568,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-2665-OUT,B-7632-OUT;n:type:ShaderForge.SFN_Vector3,id:7632,x:32175,y:33139,varname:node_7632,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Desaturate,id:4914,x:31755,y:31321,varname:node_4914,prsc:2|COL-8340-RGB,DES-67-OUT;n:type:ShaderForge.SFN_ValueProperty,id:67,x:31577,y:31507,ptovrint:False,ptlb:desaturation,ptin:_desaturation,varname:node_67,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;proporder:3092-8340-67-4368-9000-4141-8812-4939-1324-2369-2407-2806-6858-7766-1059-6204-583-4782-1616-7148-2839-9568;pass:END;sub:END;*/

Shader "Custom/Base Flora Shader" {
    Properties {
        _Normal ("Normal", 2D) = "bump" {}
        _Diffuse ("Diffuse", 2D) = "white" {}
        _desaturation ("desaturation", Float ) = 0
        _DiffuseColor ("Diffuse Color", Color) = (1,1,1,1)
        _Snowcolor ("Snow color", Color) = (1,1,1,1)
        _Snow ("Snow", 2D) = "white" {}
        _SnowMaskContrast ("Snow Mask Contrast", Float ) = 1
        _SnowMaskBrightness ("Snow Mask Brightness", Float ) = 1
        _Gradient2 ("Gradient2", 2D) = "white" {}
        _Gradient1 ("Gradient1", 2D) = "white" {}
        _MainWindStr ("Main Wind Str", Float ) = 0.3
        _Additionalwindstr ("Additional wind str", Float ) = 0.01
        _MainWindvector ("Main Wind vector", Vector) = (0,0,0,0)
        _Additionalwindtile ("Additional wind tile", Float ) = 1
        _AdditionalWindN ("Additional Wind N", 2D) = "bump" {}
        [MaterialToggle] _WindAdd ("Wind Add", Float ) = 0.0025
        _Opacitystr ("Opacity str", Float ) = 1
        _snowopacitymask ("snow opacity mask", 2D) = "white" {}
        _Snowopacitystr ("Snow opacity str", Float ) = 1
        _SSS ("SSS", Color) = (0.5,0.5,0.5,1)
        _SnowNormal ("Snow Normal", 2D) = "bump" {}
        [MaterialToggle] _disableNormal ("disable Normal", Float ) = 0.5
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        LOD 200
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            
            
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
            uniform sampler2D _Gradient2; uniform float4 _Gradient2_ST;
            uniform sampler2D _Gradient1; uniform float4 _Gradient1_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float _SnowMaskContrast;
            uniform float _SnowMaskBrightness;
            uniform float _MainWindStr;
            uniform float _Additionalwindstr;
            uniform float4 _MainWindvector;
            uniform float _Additionalwindtile;
            uniform sampler2D _AdditionalWindN; uniform float4 _AdditionalWindN_ST;
            uniform fixed _WindAdd;
            uniform float _Opacitystr;
            uniform sampler2D _snowopacitymask; uniform float4 _snowopacitymask_ST;
            uniform float _Snowopacitystr;
            uniform float4 _SSS;
            uniform sampler2D _SnowNormal; uniform float4 _SnowNormal_ST;
            uniform fixed _disableNormal;
            uniform float _desaturation;
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
                float node_8241 = 0.0;
                float4 node_6281 = _Time + _TimeEditor;
                float node_1516 = 0.15;
                float node_102 = 0.0;
                float4 _Gradient2_var = tex2Dlod(_Gradient2,float4(TRANSFORM_TEX(o.uv3, _Gradient2),0.0,0));
                float node_2556 = 1.0;
                float4 node_4687 = _Time + _TimeEditor;
                float2 node_1528_tc_rcp = float2(1.0,1.0)/float2( _Additionalwindtile, _Additionalwindtile );
                float node_1528_ty = floor(_Additionalwindtile * node_1528_tc_rcp.x);
                float node_1528_tx = _Additionalwindtile - _Additionalwindtile * node_1528_ty;
                float2 node_1528 = (o.uv2 + float2(node_1528_tx, node_1528_ty)) * node_1528_tc_rcp;
                float2 node_4614 = (node_1528+node_4687.g*float2(0,0.1));
                float3 _AdditionalWindN_var = UnpackNormal(tex2Dlod(_AdditionalWindN,float4(TRANSFORM_TEX(node_4614, _AdditionalWindN),0.0,0)));
                float4 _Gradient1_var = tex2Dlod(_Gradient1,float4(TRANSFORM_TEX(o.uv2, _Gradient1),0.0,0));
                v.vertex.xyz += lerp( node_8241, (node_8241+lerp(((sin((3.141592654+node_6281.g+(mul(unity_ObjectToWorld, v.vertex).r*node_1516)+(mul(unity_ObjectToWorld, v.vertex).b*node_1516)))*_MainWindStr)*_MainWindvector.rgb),float3(node_102,node_102,node_102),pow((1.0 - _Gradient2_var.r),node_2556))+lerp(((_AdditionalWindN_var.r*_AdditionalWindN_var.g)*_Additionalwindstr),node_102,pow((1.0 - _Gradient1_var.r),node_2556))), _WindAdd );
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal)));
                float3 _SnowNormal_var = UnpackNormal(tex2D(_SnowNormal,TRANSFORM_TEX(i.uv0, _SnowNormal)));
                float4 _snowopacitymask_var = tex2D(_snowopacitymask,TRANSFORM_TEX(i.uv0, _snowopacitymask));
                float3 node_2544 = (_snowopacitymask_var.rgb*_Snowopacitystr);
                float3 normalLocal = lerp( lerp(_Normal_var.rgb,_SnowNormal_var.rgb,saturate(node_2544)), float3(0,0,1), _disableNormal );
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                clip(((_Diffuse_var.a*_Opacitystr)+node_2544) - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = dot( normalDirection, lightDirection );
                float3 w = _SSS.rgb*0.5; // Light wrapping
                float3 NdotLWrap = NdotL * ( 1.0 - w );
                float3 forwardLight = max(float3(0.0,0.0,0.0), NdotLWrap + w );
                float3 backLight = max(float3(0.0,0.0,0.0), -NdotLWrap + w ) * _SSS.rgb;
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = (forwardLight+backLight) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float4 _Snow_var = tex2D(_Snow,TRANSFORM_TEX(i.uv0, _Snow));
                float3 diffuseColor = lerp((lerp(_Diffuse_var.rgb,dot(_Diffuse_var.rgb,float3(0.3,0.59,0.11)),_desaturation)*_DiffuseColor.rgb),(_Snow_var.rgb*_Snowcolor.rgb),saturate((saturate((pow(dot(saturate(normalDirection),float3(0,1,0)),_SnowMaskContrast)*_SnowMaskBrightness))+node_2544)));
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
            Cull Off
            
            
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
            uniform sampler2D _Gradient2; uniform float4 _Gradient2_ST;
            uniform sampler2D _Gradient1; uniform float4 _Gradient1_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float _SnowMaskContrast;
            uniform float _SnowMaskBrightness;
            uniform float _MainWindStr;
            uniform float _Additionalwindstr;
            uniform float4 _MainWindvector;
            uniform float _Additionalwindtile;
            uniform sampler2D _AdditionalWindN; uniform float4 _AdditionalWindN_ST;
            uniform fixed _WindAdd;
            uniform float _Opacitystr;
            uniform sampler2D _snowopacitymask; uniform float4 _snowopacitymask_ST;
            uniform float _Snowopacitystr;
            uniform float4 _SSS;
            uniform sampler2D _SnowNormal; uniform float4 _SnowNormal_ST;
            uniform fixed _disableNormal;
            uniform float _desaturation;
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
                float node_8241 = 0.0;
                float4 node_6281 = _Time + _TimeEditor;
                float node_1516 = 0.15;
                float node_102 = 0.0;
                float4 _Gradient2_var = tex2Dlod(_Gradient2,float4(TRANSFORM_TEX(o.uv3, _Gradient2),0.0,0));
                float node_2556 = 1.0;
                float4 node_1834 = _Time + _TimeEditor;
                float2 node_1528_tc_rcp = float2(1.0,1.0)/float2( _Additionalwindtile, _Additionalwindtile );
                float node_1528_ty = floor(_Additionalwindtile * node_1528_tc_rcp.x);
                float node_1528_tx = _Additionalwindtile - _Additionalwindtile * node_1528_ty;
                float2 node_1528 = (o.uv2 + float2(node_1528_tx, node_1528_ty)) * node_1528_tc_rcp;
                float2 node_4614 = (node_1528+node_1834.g*float2(0,0.1));
                float3 _AdditionalWindN_var = UnpackNormal(tex2Dlod(_AdditionalWindN,float4(TRANSFORM_TEX(node_4614, _AdditionalWindN),0.0,0)));
                float4 _Gradient1_var = tex2Dlod(_Gradient1,float4(TRANSFORM_TEX(o.uv2, _Gradient1),0.0,0));
                v.vertex.xyz += lerp( node_8241, (node_8241+lerp(((sin((3.141592654+node_6281.g+(mul(unity_ObjectToWorld, v.vertex).r*node_1516)+(mul(unity_ObjectToWorld, v.vertex).b*node_1516)))*_MainWindStr)*_MainWindvector.rgb),float3(node_102,node_102,node_102),pow((1.0 - _Gradient2_var.r),node_2556))+lerp(((_AdditionalWindN_var.r*_AdditionalWindN_var.g)*_Additionalwindstr),node_102,pow((1.0 - _Gradient1_var.r),node_2556))), _WindAdd );
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal)));
                float3 _SnowNormal_var = UnpackNormal(tex2D(_SnowNormal,TRANSFORM_TEX(i.uv0, _SnowNormal)));
                float4 _snowopacitymask_var = tex2D(_snowopacitymask,TRANSFORM_TEX(i.uv0, _snowopacitymask));
                float3 node_2544 = (_snowopacitymask_var.rgb*_Snowopacitystr);
                float3 normalLocal = lerp( lerp(_Normal_var.rgb,_SnowNormal_var.rgb,saturate(node_2544)), float3(0,0,1), _disableNormal );
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                clip(((_Diffuse_var.a*_Opacitystr)+node_2544) - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = dot( normalDirection, lightDirection );
                float3 w = _SSS.rgb*0.5; // Light wrapping
                float3 NdotLWrap = NdotL * ( 1.0 - w );
                float3 forwardLight = max(float3(0.0,0.0,0.0), NdotLWrap + w );
                float3 backLight = max(float3(0.0,0.0,0.0), -NdotLWrap + w ) * _SSS.rgb;
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = (forwardLight+backLight) * attenColor;
                float4 _Snow_var = tex2D(_Snow,TRANSFORM_TEX(i.uv0, _Snow));
                float3 diffuseColor = lerp((lerp(_Diffuse_var.rgb,dot(_Diffuse_var.rgb,float3(0.3,0.59,0.11)),_desaturation)*_DiffuseColor.rgb),(_Snow_var.rgb*_Snowcolor.rgb),saturate((saturate((pow(dot(saturate(normalDirection),float3(0,1,0)),_SnowMaskContrast)*_SnowMaskBrightness))+node_2544)));
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
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform sampler2D _Gradient2; uniform float4 _Gradient2_ST;
            uniform sampler2D _Gradient1; uniform float4 _Gradient1_ST;
            uniform float _MainWindStr;
            uniform float _Additionalwindstr;
            uniform float4 _MainWindvector;
            uniform float _Additionalwindtile;
            uniform sampler2D _AdditionalWindN; uniform float4 _AdditionalWindN_ST;
            uniform fixed _WindAdd;
            uniform float _Opacitystr;
            uniform sampler2D _snowopacitymask; uniform float4 _snowopacitymask_ST;
            uniform float _Snowopacitystr;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord2 : TEXCOORD2;
                float2 texcoord3 : TEXCOORD3;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float2 uv3 : TEXCOORD3;
                float4 posWorld : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv2 = v.texcoord2;
                o.uv3 = v.texcoord3;
                float node_8241 = 0.0;
                float4 node_6281 = _Time + _TimeEditor;
                float node_1516 = 0.15;
                float node_102 = 0.0;
                float4 _Gradient2_var = tex2Dlod(_Gradient2,float4(TRANSFORM_TEX(o.uv3, _Gradient2),0.0,0));
                float node_2556 = 1.0;
                float4 node_9925 = _Time + _TimeEditor;
                float2 node_1528_tc_rcp = float2(1.0,1.0)/float2( _Additionalwindtile, _Additionalwindtile );
                float node_1528_ty = floor(_Additionalwindtile * node_1528_tc_rcp.x);
                float node_1528_tx = _Additionalwindtile - _Additionalwindtile * node_1528_ty;
                float2 node_1528 = (o.uv2 + float2(node_1528_tx, node_1528_ty)) * node_1528_tc_rcp;
                float2 node_4614 = (node_1528+node_9925.g*float2(0,0.1));
                float3 _AdditionalWindN_var = UnpackNormal(tex2Dlod(_AdditionalWindN,float4(TRANSFORM_TEX(node_4614, _AdditionalWindN),0.0,0)));
                float4 _Gradient1_var = tex2Dlod(_Gradient1,float4(TRANSFORM_TEX(o.uv2, _Gradient1),0.0,0));
                v.vertex.xyz += lerp( node_8241, (node_8241+lerp(((sin((3.141592654+node_6281.g+(mul(unity_ObjectToWorld, v.vertex).r*node_1516)+(mul(unity_ObjectToWorld, v.vertex).b*node_1516)))*_MainWindStr)*_MainWindvector.rgb),float3(node_102,node_102,node_102),pow((1.0 - _Gradient2_var.r),node_2556))+lerp(((_AdditionalWindN_var.r*_AdditionalWindN_var.g)*_Additionalwindstr),node_102,pow((1.0 - _Gradient1_var.r),node_2556))), _WindAdd );
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex);
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
/////// Vectors:
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float4 _snowopacitymask_var = tex2D(_snowopacitymask,TRANSFORM_TEX(i.uv0, _snowopacitymask));
                float3 node_2544 = (_snowopacitymask_var.rgb*_Snowopacitystr);
                clip(((_Diffuse_var.a*_Opacitystr)+node_2544) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
