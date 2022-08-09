// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.18 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.18;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:8579,x:32719,y:32712,varname:node_8579,prsc:2|diff-7335-OUT,normal-3444-OUT;n:type:ShaderForge.SFN_Tex2d,id:1646,x:31459,y:31237,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_1646,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:7838,x:31459,y:31066,ptovrint:False,ptlb:Diffuse Color,ptin:_DiffuseColor,varname:node_7838,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:945,x:31674,y:31217,varname:node_945,prsc:2|A-1646-RGB,B-7838-RGB;n:type:ShaderForge.SFN_Lerp,id:7335,x:32212,y:31636,varname:node_7335,prsc:2|A-945-OUT,B-6798-OUT,T-7645-OUT;n:type:ShaderForge.SFN_Color,id:1641,x:29941,y:30837,ptovrint:False,ptlb:Snow color,ptin:_Snowcolor,varname:_DiffuseColor_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:4481,x:29941,y:31008,ptovrint:False,ptlb:Snow,ptin:_Snow,varname:_Diffuse_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:6798,x:30156,y:30988,varname:node_6798,prsc:2|A-4481-RGB,B-1641-RGB;n:type:ShaderForge.SFN_Tex2d,id:4108,x:31788,y:33079,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:node_4108,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_NormalVector,id:4153,x:28302,y:32771,prsc:2,pt:True;n:type:ShaderForge.SFN_Clamp01,id:9634,x:28462,y:32771,varname:node_9634,prsc:2|IN-4153-OUT;n:type:ShaderForge.SFN_Dot,id:6231,x:28645,y:32771,varname:node_6231,prsc:2,dt:0|A-9634-OUT,B-4097-OUT;n:type:ShaderForge.SFN_Vector3,id:4097,x:28462,y:32895,varname:node_4097,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_Power,id:3644,x:28810,y:32771,varname:node_3644,prsc:2|VAL-6231-OUT,EXP-9976-OUT;n:type:ShaderForge.SFN_Clamp01,id:7645,x:29381,y:32701,varname:node_7645,prsc:2|IN-8347-OUT;n:type:ShaderForge.SFN_Multiply,id:8347,x:28975,y:32772,varname:node_8347,prsc:2|A-3644-OUT,B-7533-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9976,x:28637,y:32682,ptovrint:False,ptlb:Snow Mask Contrast,ptin:_SnowMaskContrast,varname:node_9976,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:7533,x:28781,y:32682,ptovrint:False,ptlb:Snow Mask Brightness,ptin:_SnowMaskBrightness,varname:node_7533,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Tex2d,id:4498,x:31788,y:32840,ptovrint:False,ptlb:Snow Normal,ptin:_SnowNormal,varname:node_4498,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Lerp,id:3444,x:32235,y:32926,varname:node_3444,prsc:2|A-4108-RGB,B-4498-RGB,T-8100-OUT;n:type:ShaderForge.SFN_NormalVector,id:228,x:28293,y:32504,prsc:2,pt:False;n:type:ShaderForge.SFN_Clamp01,id:5327,x:28453,y:32504,varname:node_5327,prsc:2|IN-228-OUT;n:type:ShaderForge.SFN_Dot,id:2190,x:28636,y:32504,varname:node_2190,prsc:2,dt:0|A-5327-OUT,B-3724-OUT;n:type:ShaderForge.SFN_Vector3,id:3724,x:28453,y:32628,varname:node_3724,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_Power,id:3884,x:28801,y:32504,varname:node_3884,prsc:2|VAL-2190-OUT,EXP-9976-OUT;n:type:ShaderForge.SFN_Multiply,id:8913,x:28966,y:32505,varname:node_8913,prsc:2|A-3884-OUT,B-7533-OUT;n:type:ShaderForge.SFN_Clamp01,id:8100,x:29381,y:32535,varname:node_8100,prsc:2|IN-8913-OUT;proporder:1646-7838-4108-4481-1641-9976-7533-4498;pass:END;sub:END;*/

Shader "Custom/Base_Snow" {
    Properties {
        _Diffuse ("Diffuse", 2D) = "white" {}
        _DiffuseColor ("Diffuse Color", Color) = (1,1,1,1)
        _Normal ("Normal", 2D) = "bump" {}
        _Snow ("Snow", 2D) = "white" {}
        _Snowcolor ("Snow color", Color) = (1,1,1,1)
        _SnowMaskContrast ("Snow Mask Contrast", Float ) = 1
        _SnowMaskBrightness ("Snow Mask Brightness", Float ) = 1
        _SnowNormal ("Snow Normal", 2D) = "bump" {}
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
            uniform float4 _LightColor0;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float4 _DiffuseColor;
            uniform float4 _Snowcolor;
            uniform sampler2D _Snow; uniform float4 _Snow_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float _SnowMaskContrast;
            uniform float _SnowMaskBrightness;
            uniform sampler2D _SnowNormal; uniform float4 _SnowNormal_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
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
                float3 _SnowNormal_var = UnpackNormal(tex2D(_SnowNormal,TRANSFORM_TEX(i.uv0, _SnowNormal)));
                float3 normalLocal = lerp(_Normal_var.rgb,_SnowNormal_var.rgb,saturate((pow(dot(saturate(i.normalDir),float3(0,1,0)),_SnowMaskContrast)*_SnowMaskBrightness)));
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
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float3 node_945 = (_Diffuse_var.rgb*_DiffuseColor.rgb);
                float4 _Snow_var = tex2D(_Snow,TRANSFORM_TEX(i.uv0, _Snow));
                float3 diffuseColor = lerp(node_945,(_Snow_var.rgb*_Snowcolor.rgb),saturate((pow(dot(saturate(normalDirection),float3(0,1,0)),_SnowMaskContrast)*_SnowMaskBrightness)));
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
            uniform float4 _LightColor0;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float4 _DiffuseColor;
            uniform float4 _Snowcolor;
            uniform sampler2D _Snow; uniform float4 _Snow_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float _SnowMaskContrast;
            uniform float _SnowMaskBrightness;
            uniform sampler2D _SnowNormal; uniform float4 _SnowNormal_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
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
                float3 _SnowNormal_var = UnpackNormal(tex2D(_SnowNormal,TRANSFORM_TEX(i.uv0, _SnowNormal)));
                float3 normalLocal = lerp(_Normal_var.rgb,_SnowNormal_var.rgb,saturate((pow(dot(saturate(i.normalDir),float3(0,1,0)),_SnowMaskContrast)*_SnowMaskBrightness)));
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float3 node_945 = (_Diffuse_var.rgb*_DiffuseColor.rgb);
                float4 _Snow_var = tex2D(_Snow,TRANSFORM_TEX(i.uv0, _Snow));
                float3 diffuseColor = lerp(node_945,(_Snow_var.rgb*_Snowcolor.rgb),saturate((pow(dot(saturate(normalDirection),float3(0,1,0)),_SnowMaskContrast)*_SnowMaskBrightness)));
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
