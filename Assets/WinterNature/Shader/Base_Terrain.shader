// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.18 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.18;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,nrmq:0,nrsp:0,vomd:0,spxs:False,tesm:0,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:6083,x:33082,y:32846,varname:node_6083,prsc:2|diff-3804-OUT,spec-7724-OUT,gloss-9098-OUT,disp-8246-OUT,tess-9390-OUT;n:type:ShaderForge.SFN_Tex2d,id:89,x:29477,y:30196,varname:node_89,prsc:2,ntxv:0,isnm:False|UVIN-7238-OUT,TEX-2010-TEX;n:type:ShaderForge.SFN_Multiply,id:9426,x:29931,y:30530,varname:node_9426,prsc:2|A-6132-OUT,B-1805-RGB;n:type:ShaderForge.SFN_Color,id:1805,x:29664,y:30481,ptovrint:False,ptlb:Color1,ptin:_Color1,varname:node_1805,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Lerp,id:2591,x:31848,y:31896,varname:node_2591,prsc:2|A-9714-OUT,B-2750-OUT,T-2272-OUT;n:type:ShaderForge.SFN_Multiply,id:6250,x:29934,y:30874,varname:node_6250,prsc:2|A-8126-OUT,B-480-RGB;n:type:ShaderForge.SFN_Color,id:480,x:29678,y:30978,ptovrint:False,ptlb:Color2,ptin:_Color2,varname:_Color2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Power,id:7848,x:29086,y:32532,varname:node_7848,prsc:2|VAL-1169-OUT,EXP-6313-OUT;n:type:ShaderForge.SFN_OneMinus,id:1169,x:28926,y:32532,varname:node_1169,prsc:2|IN-3977-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6313,x:28876,y:32679,ptovrint:False,ptlb:layer 1 mix str,ptin:_layer1mixstr,varname:node_6313,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.43;n:type:ShaderForge.SFN_Multiply,id:3977,x:28767,y:32532,varname:node_3977,prsc:2|A-7556-OUT,B-9242-OUT;n:type:ShaderForge.SFN_Subtract,id:7774,x:28457,y:32532,varname:node_7774,prsc:2|A-7947-OUT,B-6113-OUT;n:type:ShaderForge.SFN_Divide,id:567,x:28457,y:32653,varname:node_567,prsc:2|A-1642-OUT,B-8049-OUT;n:type:ShaderForge.SFN_Clamp01,id:7556,x:28608,y:32517,varname:node_7556,prsc:2|IN-7774-OUT;n:type:ShaderForge.SFN_OneMinus,id:8049,x:28275,y:32672,varname:node_8049,prsc:2|IN-6113-OUT;n:type:ShaderForge.SFN_Vector1,id:1642,x:28275,y:32614,varname:node_1642,prsc:2,v1:1;n:type:ShaderForge.SFN_ComponentMask,id:7947,x:28275,y:32459,varname:node_7947,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-5863-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6113,x:28073,y:32672,ptovrint:False,ptlb:layer 1 mix angle,ptin:_layer1mixangle,varname:node_6113,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.95;n:type:ShaderForge.SFN_NormalVector,id:5863,x:28106,y:32459,prsc:2,pt:False;n:type:ShaderForge.SFN_Clamp01,id:2272,x:29460,y:32532,varname:node_2272,prsc:2|IN-7848-OUT;n:type:ShaderForge.SFN_Multiply,id:6842,x:29942,y:31275,varname:node_6842,prsc:2|A-4063-OUT,B-646-RGB;n:type:ShaderForge.SFN_Color,id:646,x:29692,y:31468,ptovrint:False,ptlb:Color3,ptin:_Color3,varname:_Color3,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:447,x:29958,y:31832,varname:node_447,prsc:2|A-2982-OUT,B-3667-RGB;n:type:ShaderForge.SFN_Color,id:3667,x:29692,y:31920,ptovrint:False,ptlb:Color4,ptin:_Color4,varname:_Color4,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Lerp,id:6031,x:32074,y:31991,varname:node_6031,prsc:2|A-2591-OUT,B-1874-OUT,T-5119-OUT;n:type:ShaderForge.SFN_Lerp,id:3968,x:32240,y:32084,varname:node_3968,prsc:2|A-6031-OUT,B-2546-OUT,T-6069-OUT;n:type:ShaderForge.SFN_Power,id:971,x:29068,y:32990,varname:node_971,prsc:2|VAL-9668-OUT,EXP-4671-OUT;n:type:ShaderForge.SFN_OneMinus,id:9668,x:28908,y:32990,varname:node_9668,prsc:2|IN-2237-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4671,x:28858,y:33137,ptovrint:False,ptlb:layer 2 mix str,ptin:_layer2mixstr,varname:_layer1mixstr_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Multiply,id:2237,x:28749,y:32990,varname:node_2237,prsc:2|A-2345-OUT,B-5369-OUT;n:type:ShaderForge.SFN_Subtract,id:2441,x:28439,y:32990,varname:node_2441,prsc:2|A-6971-OUT,B-4435-OUT;n:type:ShaderForge.SFN_Divide,id:3444,x:28439,y:33111,varname:node_3444,prsc:2|A-5248-OUT,B-3446-OUT;n:type:ShaderForge.SFN_Clamp01,id:2345,x:28594,y:32990,varname:node_2345,prsc:2|IN-2441-OUT;n:type:ShaderForge.SFN_OneMinus,id:3446,x:28257,y:33130,varname:node_3446,prsc:2|IN-4435-OUT;n:type:ShaderForge.SFN_Vector1,id:5248,x:27895,y:33113,varname:node_5248,prsc:2,v1:1;n:type:ShaderForge.SFN_ComponentMask,id:6971,x:28257,y:32917,varname:node_6971,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-5182-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4435,x:27895,y:33208,ptovrint:False,ptlb:layer 2 mix angle,ptin:_layer2mixangle,varname:_layer1mixangle_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.75;n:type:ShaderForge.SFN_NormalVector,id:5182,x:27938,y:32934,prsc:2,pt:False;n:type:ShaderForge.SFN_Clamp01,id:5119,x:29709,y:32991,varname:node_5119,prsc:2|IN-3045-OUT;n:type:ShaderForge.SFN_Power,id:1057,x:29067,y:33969,varname:node_1057,prsc:2|VAL-9719-OUT,EXP-363-OUT;n:type:ShaderForge.SFN_OneMinus,id:9719,x:28907,y:33969,varname:node_9719,prsc:2|IN-3866-OUT;n:type:ShaderForge.SFN_ValueProperty,id:363,x:28857,y:34116,ptovrint:False,ptlb:layer 3 mix str,ptin:_layer3mixstr,varname:_layer2mixstr_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:4;n:type:ShaderForge.SFN_Multiply,id:3866,x:28748,y:33969,varname:node_3866,prsc:2|A-1233-OUT,B-9953-OUT;n:type:ShaderForge.SFN_Subtract,id:7580,x:28438,y:33969,varname:node_7580,prsc:2|A-3684-OUT,B-7155-OUT;n:type:ShaderForge.SFN_Divide,id:7505,x:28438,y:34090,varname:node_7505,prsc:2|A-799-OUT,B-3147-OUT;n:type:ShaderForge.SFN_Clamp01,id:1233,x:28593,y:33969,varname:node_1233,prsc:2|IN-7580-OUT;n:type:ShaderForge.SFN_OneMinus,id:3147,x:28256,y:34109,varname:node_3147,prsc:2|IN-7155-OUT;n:type:ShaderForge.SFN_Vector1,id:799,x:28256,y:34050,varname:node_799,prsc:2,v1:1;n:type:ShaderForge.SFN_ComponentMask,id:3684,x:28256,y:33896,varname:node_3684,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-6035-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7155,x:28057,y:34109,ptovrint:False,ptlb:layer 3 mix angle,ptin:_layer3mixangle,varname:_layer2mixangle_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_NormalVector,id:6035,x:28087,y:33896,prsc:2,pt:False;n:type:ShaderForge.SFN_Clamp01,id:6069,x:29403,y:33810,varname:node_6069,prsc:2|IN-1057-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:1925,x:27928,y:30604,varname:node_1925,prsc:2;n:type:ShaderForge.SFN_Append,id:7356,x:28495,y:30577,varname:node_7356,prsc:2|A-1925-Z,B-1925-X;n:type:ShaderForge.SFN_Tex2d,id:8529,x:29477,y:30314,varname:_Diffuse2,prsc:2,ntxv:0,isnm:False|UVIN-7356-OUT,TEX-2010-TEX;n:type:ShaderForge.SFN_Tex2d,id:8053,x:29477,y:30441,varname:_Diffuse3,prsc:2,ntxv:0,isnm:False|UVIN-768-OUT,TEX-2010-TEX;n:type:ShaderForge.SFN_ChannelBlend,id:6132,x:29675,y:30314,varname:node_6132,prsc:2,chbt:0|M-42-OUT,R-89-RGB,G-8529-RGB,B-8053-RGB;n:type:ShaderForge.SFN_NormalVector,id:676,x:28160,y:30320,prsc:2,pt:False;n:type:ShaderForge.SFN_Abs,id:396,x:28328,y:30320,varname:node_396,prsc:2|IN-676-OUT;n:type:ShaderForge.SFN_Multiply,id:42,x:28495,y:30320,varname:node_42,prsc:2|A-396-OUT,B-396-OUT;n:type:ShaderForge.SFN_Append,id:768,x:28495,y:30696,varname:node_768,prsc:2|A-1925-X,B-1925-Y;n:type:ShaderForge.SFN_Append,id:7238,x:28495,y:30450,varname:node_7238,prsc:2|A-1925-Y,B-1925-Z;n:type:ShaderForge.SFN_Tex2dAsset,id:2010,x:29247,y:30236,ptovrint:False,ptlb:Diff 1,ptin:_Diff1,varname:node_2010,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ChannelBlend,id:8126,x:29678,y:30772,varname:node_8126,prsc:2,chbt:0|M-42-OUT,R-8313-RGB,G-5534-RGB,B-4219-RGB;n:type:ShaderForge.SFN_ChannelBlend,id:4063,x:29683,y:31250,varname:node_4063,prsc:2,chbt:0|M-42-OUT,R-9591-RGB,G-6982-RGB,B-5368-RGB;n:type:ShaderForge.SFN_ChannelBlend,id:2982,x:29692,y:31708,varname:node_2982,prsc:2,chbt:0|M-42-OUT,R-6372-RGB,G-7946-RGB,B-41-RGB;n:type:ShaderForge.SFN_Tex2dAsset,id:7628,x:29247,y:30684,ptovrint:False,ptlb:Diff 2,ptin:_Diff2,varname:node_7628,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:2548,x:29246,y:31120,ptovrint:False,ptlb: Diff 3,ptin:_Diff3,varname:node_2548,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:5693,x:29224,y:31556,ptovrint:False,ptlb:Diff 4,ptin:_Diff4,varname:node_5693,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:8313,x:29479,y:30643,varname:node_8313,prsc:2,ntxv:0,isnm:False|UVIN-7238-OUT,TEX-7628-TEX;n:type:ShaderForge.SFN_Tex2d,id:5534,x:29479,y:30772,varname:node_5534,prsc:2,ntxv:0,isnm:False|UVIN-7356-OUT,TEX-7628-TEX;n:type:ShaderForge.SFN_Tex2d,id:4219,x:29479,y:30899,varname:node_4219,prsc:2,ntxv:0,isnm:False|UVIN-768-OUT,TEX-7628-TEX;n:type:ShaderForge.SFN_Tex2d,id:9591,x:29479,y:31120,varname:node_9591,prsc:2,ntxv:0,isnm:False|UVIN-7238-OUT,TEX-2548-TEX;n:type:ShaderForge.SFN_Tex2d,id:6982,x:29479,y:31250,varname:node_6982,prsc:2,ntxv:0,isnm:False|UVIN-7356-OUT,TEX-2548-TEX;n:type:ShaderForge.SFN_Tex2d,id:5368,x:29479,y:31372,varname:node_5368,prsc:2,ntxv:0,isnm:False|UVIN-768-OUT,TEX-2548-TEX;n:type:ShaderForge.SFN_Tex2d,id:6372,x:29479,y:31608,varname:node_6372,prsc:2,ntxv:0,isnm:False|UVIN-7238-OUT,TEX-5693-TEX;n:type:ShaderForge.SFN_Tex2d,id:7946,x:29479,y:31720,varname:node_7946,prsc:2,ntxv:0,isnm:False|UVIN-7356-OUT,TEX-5693-TEX;n:type:ShaderForge.SFN_Tex2d,id:41,x:29479,y:31850,varname:node_41,prsc:2,ntxv:0,isnm:False|UVIN-768-OUT,TEX-5693-TEX;n:type:ShaderForge.SFN_Lerp,id:25,x:31022,y:33391,varname:node_25,prsc:2|A-306-OUT,B-1979-OUT,T-2272-OUT;n:type:ShaderForge.SFN_Lerp,id:879,x:31189,y:33474,varname:node_879,prsc:2|A-25-OUT,B-3267-OUT,T-5119-OUT;n:type:ShaderForge.SFN_Lerp,id:8030,x:31352,y:33582,varname:node_8030,prsc:2|A-879-OUT,B-9488-OUT,T-6069-OUT;n:type:ShaderForge.SFN_Tex2d,id:1138,x:30547,y:30161,varname:node_1138,prsc:2,ntxv:0,isnm:False|UVIN-7238-OUT,TEX-9017-TEX;n:type:ShaderForge.SFN_Tex2d,id:1577,x:30543,y:30298,varname:node_1577,prsc:2,ntxv:0,isnm:False|UVIN-7356-OUT,TEX-9017-TEX;n:type:ShaderForge.SFN_Tex2d,id:9787,x:30548,y:30428,varname:node_9787,prsc:2,ntxv:0,isnm:False|UVIN-768-OUT,TEX-9017-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:9017,x:30369,y:30201,ptovrint:False,ptlb:Norm 1,ptin:_Norm1,varname:node_9017,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:9874,x:30542,y:30651,varname:node_9874,prsc:2,ntxv:0,isnm:False|UVIN-7238-OUT,TEX-5646-TEX;n:type:ShaderForge.SFN_Tex2d,id:8729,x:30542,y:30779,varname:node_8729,prsc:2,ntxv:0,isnm:False|UVIN-7356-OUT,TEX-5646-TEX;n:type:ShaderForge.SFN_Tex2d,id:7180,x:30542,y:30899,varname:node_7180,prsc:2,ntxv:0,isnm:False|UVIN-768-OUT,TEX-5646-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:5646,x:30346,y:30692,ptovrint:False,ptlb:Norm 2,ptin:_Norm2,varname:node_5646,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2dAsset,id:8827,x:30280,y:31163,ptovrint:False,ptlb:Norm 3,ptin:_Norm3,varname:node_8827,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:5100,x:30472,y:31123,varname:node_5100,prsc:2,ntxv:0,isnm:False|UVIN-7238-OUT,TEX-8827-TEX;n:type:ShaderForge.SFN_Tex2d,id:7132,x:30472,y:31243,varname:node_7132,prsc:2,ntxv:0,isnm:False|UVIN-7356-OUT,TEX-8827-TEX;n:type:ShaderForge.SFN_Tex2d,id:4756,x:30472,y:31370,varname:node_4756,prsc:2,ntxv:0,isnm:False|UVIN-768-OUT,TEX-8827-TEX;n:type:ShaderForge.SFN_Tex2d,id:1080,x:30456,y:31618,varname:node_1080,prsc:2,ntxv:0,isnm:False|UVIN-7238-OUT,TEX-5338-TEX;n:type:ShaderForge.SFN_Tex2d,id:4585,x:30456,y:31738,varname:node_4585,prsc:2,ntxv:0,isnm:False|UVIN-7356-OUT,TEX-5338-TEX;n:type:ShaderForge.SFN_Tex2d,id:5669,x:30456,y:31863,varname:node_5669,prsc:2,ntxv:0,isnm:False|UVIN-768-OUT,TEX-5338-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:5338,x:30260,y:31660,ptovrint:False,ptlb:Norm 4,ptin:_Norm4,varname:node_5338,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_ChannelBlend,id:4039,x:30729,y:30288,varname:node_4039,prsc:2,chbt:0|M-42-OUT,R-1138-RGB,G-1577-RGB,B-9787-RGB;n:type:ShaderForge.SFN_ChannelBlend,id:8993,x:30733,y:30738,varname:node_8993,prsc:2,chbt:0|M-42-OUT,R-9874-RGB,G-8729-RGB,B-7180-RGB;n:type:ShaderForge.SFN_ChannelBlend,id:1346,x:30683,y:31209,varname:node_1346,prsc:2,chbt:0|M-42-OUT,R-5100-RGB,G-7132-RGB,B-4756-RGB;n:type:ShaderForge.SFN_ChannelBlend,id:8487,x:30678,y:31699,varname:node_8487,prsc:2,chbt:0|M-42-OUT,R-1080-RGB,G-4585-RGB,B-5669-RGB;n:type:ShaderForge.SFN_ValueProperty,id:8089,x:32508,y:32963,ptovrint:False,ptlb:Spec,ptin:_Spec,varname:node_8089,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:3804,x:32934,y:32126,varname:node_3804,prsc:2|A-9547-OUT,B-8084-OUT;n:type:ShaderForge.SFN_Multiply,id:7724,x:32743,y:32953,varname:node_7724,prsc:2|A-3522-OUT,B-8089-OUT;n:type:ShaderForge.SFN_Multiply,id:9098,x:32743,y:33104,varname:node_9098,prsc:2|A-3522-OUT,B-1940-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1940,x:32541,y:33238,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:node_1940,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Power,id:7159,x:32460,y:32794,varname:node_7159,prsc:2|VAL-3456-R,EXP-8432-OUT;n:type:ShaderForge.SFN_Clamp01,id:8084,x:32669,y:32794,varname:node_8084,prsc:2|IN-7159-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8432,x:32273,y:32836,ptovrint:False,ptlb:FakeNormal Str,ptin:_FakeNormalStr,varname:node_8432,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ComponentMask,id:3456,x:31702,y:33581,varname:node_3456,prsc:2,cc1:2,cc2:0,cc3:-1,cc4:-1|IN-5066-OUT;n:type:ShaderForge.SFN_Clamp01,id:3522,x:32541,y:33069,varname:node_3522,prsc:2|IN-3456-R;n:type:ShaderForge.SFN_Lerp,id:9547,x:32759,y:32126,varname:node_9547,prsc:2|A-5331-OUT,B-9714-OUT,T-409-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4414,x:32074,y:31138,ptovrint:False,ptlb:Snowe mask Power,ptin:_SnowemaskPower,varname:node_4414,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Power,id:7145,x:32503,y:31205,varname:node_7145,prsc:2|VAL-6300-OUT,EXP-2150-OUT;n:type:ShaderForge.SFN_OneMinus,id:2150,x:32250,y:31138,varname:node_2150,prsc:2|IN-4414-OUT;n:type:ShaderForge.SFN_ChannelBlend,id:1442,x:29958,y:31659,varname:node_1442,prsc:2,chbt:0|M-42-OUT,R-6372-A,G-7946-A,B-41-A;n:type:ShaderForge.SFN_ChannelBlend,id:7410,x:29942,y:31120,varname:node_7410,prsc:2,chbt:0|M-42-OUT,R-9591-A,G-6982-A,B-5368-A;n:type:ShaderForge.SFN_ChannelBlend,id:7557,x:29934,y:30720,varname:node_7557,prsc:2,chbt:0|M-42-OUT,R-8313-A,G-5534-A,B-4219-A;n:type:ShaderForge.SFN_ChannelBlend,id:8296,x:29931,y:30374,varname:node_8296,prsc:2,chbt:0|M-42-OUT,R-89-A,G-8529-A,B-8053-A;n:type:ShaderForge.SFN_Lerp,id:9567,x:31372,y:34194,varname:node_9567,prsc:2|A-7769-OUT,B-8950-OUT,T-2272-OUT;n:type:ShaderForge.SFN_Lerp,id:4661,x:31570,y:34307,varname:node_4661,prsc:2|A-9567-OUT,B-2181-OUT,T-5119-OUT;n:type:ShaderForge.SFN_Lerp,id:1095,x:31733,y:34415,varname:node_1095,prsc:2|A-4661-OUT,B-262-OUT,T-6069-OUT;n:type:ShaderForge.SFN_Multiply,id:8246,x:32096,y:34516,varname:node_8246,prsc:2|A-858-OUT,B-7929-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7033,x:30934,y:34066,ptovrint:False,ptlb:Laqyer 1 Vertex offset,ptin:_Laqyer1Vertexoffset,varname:node_7033,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_NormalVector,id:7929,x:31733,y:34594,prsc:2,pt:False;n:type:ShaderForge.SFN_ValueProperty,id:1880,x:32074,y:31522,ptovrint:False,ptlb:Snow Mask multiply,ptin:_SnowMaskmultiply,varname:node_1880,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:9390,x:32901,y:33397,ptovrint:False,ptlb:tessellation,ptin:_tessellation,varname:node_9390,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:2181,x:31372,y:34318,varname:node_2181,prsc:2|A-7410-OUT,B-3610-OUT;n:type:ShaderForge.SFN_Multiply,id:262,x:31570,y:34439,varname:node_262,prsc:2|A-1442-OUT,B-9907-OUT;n:type:ShaderForge.SFN_Multiply,id:7769,x:31154,y:34066,varname:node_7769,prsc:2|A-8296-OUT,B-7033-OUT;n:type:ShaderForge.SFN_Multiply,id:8950,x:31154,y:34194,varname:node_8950,prsc:2|A-7557-OUT,B-8086-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8086,x:30934,y:34240,ptovrint:False,ptlb:Laqyer 2 Vertex offset,ptin:_Laqyer2Vertexoffset,varname:node_8086,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:3610,x:31130,y:34368,ptovrint:False,ptlb:Laqyer 3 Vertex offset,ptin:_Laqyer3Vertexoffset,varname:node_3610,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_ValueProperty,id:9907,x:31352,y:34473,ptovrint:False,ptlb:Laqyer 4 Vertex offset,ptin:_Laqyer4Vertexoffset,varname:node_9907,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_Lerp,id:5134,x:31736,y:30727,varname:node_5134,prsc:2|A-4037-OUT,B-8017-OUT,T-2272-OUT;n:type:ShaderForge.SFN_Lerp,id:1134,x:31916,y:30827,varname:node_1134,prsc:2|A-5134-OUT,B-4041-OUT,T-5119-OUT;n:type:ShaderForge.SFN_Lerp,id:8206,x:32094,y:30927,varname:node_8206,prsc:2|A-1134-OUT,B-9137-OUT,T-6069-OUT;n:type:ShaderForge.SFN_Clamp01,id:409,x:32228,y:31767,varname:node_409,prsc:2|IN-7145-OUT;n:type:ShaderForge.SFN_Multiply,id:6300,x:32287,y:31365,varname:node_6300,prsc:2|A-4794-OUT,B-1880-OUT;n:type:ShaderForge.SFN_OneMinus,id:4794,x:32088,y:31365,varname:node_4794,prsc:2|IN-5867-OUT;n:type:ShaderForge.SFN_ComponentMask,id:5867,x:32452,y:30927,varname:node_5867,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-98-OUT;n:type:ShaderForge.SFN_Add,id:9137,x:31787,y:31030,varname:node_9137,prsc:2|A-9488-OUT,B-6426-OUT;n:type:ShaderForge.SFN_Slider,id:1052,x:31060,y:30689,ptovrint:False,ptlb:Layer 1 Snow Mask,ptin:_Layer1SnowMask,varname:node_1052,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:1,max:2;n:type:ShaderForge.SFN_Slider,id:4872,x:31007,y:30865,ptovrint:False,ptlb:Layer 2 Snow Mask,ptin:_Layer2SnowMask,varname:node_4872,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:1,max:2;n:type:ShaderForge.SFN_Slider,id:1001,x:31198,y:30975,ptovrint:False,ptlb:Layer 3 Snow Mask,ptin:_Layer3SnowMask,varname:node_1001,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:1.019231,max:2;n:type:ShaderForge.SFN_Slider,id:6426,x:31386,y:31107,ptovrint:False,ptlb:Layer 4 Snow Mask,ptin:_Layer4SnowMask,varname:node_6426,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:-1,max:2;n:type:ShaderForge.SFN_Add,id:4041,x:31685,y:30870,varname:node_4041,prsc:2|A-3267-OUT,B-1001-OUT;n:type:ShaderForge.SFN_Add,id:8017,x:31439,y:30806,varname:node_8017,prsc:2|A-1979-OUT,B-4872-OUT;n:type:ShaderForge.SFN_Add,id:4037,x:31439,y:30591,varname:node_4037,prsc:2|A-306-OUT,B-1052-OUT;n:type:ShaderForge.SFN_ObjectPosition,id:5954,x:27928,y:30462,varname:node_5954,prsc:2;n:type:ShaderForge.SFN_Clamp01,id:5369,x:28608,y:33111,varname:node_5369,prsc:2|IN-3444-OUT;n:type:ShaderForge.SFN_Clamp01,id:9953,x:28611,y:34090,varname:node_9953,prsc:2|IN-7505-OUT;n:type:ShaderForge.SFN_Clamp01,id:9242,x:28618,y:32653,varname:node_9242,prsc:2|IN-567-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:2805,x:30065,y:32458,ptovrint:False,ptlb:Control,ptin:_Control,varname:node_2805,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:4477,x:31496,y:32158,ptovrint:False,ptlb:Splat1,ptin:_Splat1,varname:node_4477,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:9106,x:31496,y:32337,ptovrint:False,ptlb:Splat2,ptin:_Splat2,varname:node_9106,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:980,x:31496,y:32513,ptovrint:False,ptlb:Splat3,ptin:_Splat3,varname:node_980,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:1193,x:30258,y:32458,varname:node_1193,prsc:2,ntxv:0,isnm:False|TEX-2805-TEX;n:type:ShaderForge.SFN_Tex2d,id:64,x:31688,y:32158,varname:node_64,prsc:2,ntxv:0,isnm:False|TEX-4477-TEX;n:type:ShaderForge.SFN_Tex2d,id:2411,x:31688,y:32337,varname:node_2411,prsc:2,ntxv:0,isnm:False|TEX-9106-TEX;n:type:ShaderForge.SFN_Tex2d,id:8383,x:31688,y:32513,varname:node_8383,prsc:2,ntxv:0,isnm:False|TEX-980-TEX;n:type:ShaderForge.SFN_Append,id:9074,x:30452,y:32491,varname:node_9074,prsc:2|A-1193-RGB,B-1193-A;n:type:ShaderForge.SFN_ChannelBlend,id:5331,x:32507,y:32240,varname:node_5331,prsc:2,chbt:0|M-9074-OUT,R-3968-OUT,G-64-RGB,B-2411-RGB,A-8383-RGB;n:type:ShaderForge.SFN_Tex2dAsset,id:7685,x:30504,y:32854,ptovrint:False,ptlb:Normal1,ptin:_Normal1,varname:node_7685,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2dAsset,id:5700,x:30504,y:33035,ptovrint:False,ptlb:Normal2,ptin:_Normal2,varname:node_5700,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2dAsset,id:7141,x:30504,y:33213,ptovrint:False,ptlb:Normal3,ptin:_Normal3,varname:node_7141,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:7759,x:30686,y:33201,varname:node_7759,prsc:2,ntxv:0,isnm:False|TEX-7141-TEX;n:type:ShaderForge.SFN_Tex2d,id:3088,x:30686,y:33054,varname:node_3088,prsc:2,ntxv:0,isnm:False|TEX-5700-TEX;n:type:ShaderForge.SFN_Tex2d,id:7239,x:30686,y:32892,varname:node_7239,prsc:2,ntxv:0,isnm:False|TEX-7685-TEX;n:type:ShaderForge.SFN_ChannelBlend,id:5066,x:30982,y:32850,varname:node_5066,prsc:2,chbt:0|M-9074-OUT,R-8030-OUT,G-7878-OUT,B-7878-OUT,A-7878-OUT;n:type:ShaderForge.SFN_ChannelBlend,id:858,x:32254,y:34058,varname:node_858,prsc:2,chbt:0|M-9074-OUT,R-1095-OUT,G-3200-OUT,B-7181-OUT,A-4542-OUT;n:type:ShaderForge.SFN_Multiply,id:3200,x:32045,y:34011,varname:node_3200,prsc:2|A-64-A,B-1632-OUT;n:type:ShaderForge.SFN_Multiply,id:7181,x:32045,y:34140,varname:node_7181,prsc:2|A-2411-A,B-8281-OUT;n:type:ShaderForge.SFN_Multiply,id:4542,x:32045,y:34263,varname:node_4542,prsc:2|A-8383-A,B-4871-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1632,x:31861,y:34057,ptovrint:False,ptlb:Splat 2 Vertex offset,ptin:_Splat2Vertexoffset,varname:node_1632,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:8281,x:31861,y:34174,ptovrint:False,ptlb:Splat 3 Vertex offset,ptin:_Splat3Vertexoffset,varname:node_8281,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:4871,x:31861,y:34297,ptovrint:False,ptlb:Splat 4 Vertex offset,ptin:_Splat4Vertexoffset,varname:node_4871,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ChannelBlend,id:98,x:31876,y:31339,varname:node_98,prsc:2,chbt:0|M-9074-OUT,R-8206-OUT,G-9996-OUT,B-4060-OUT,A-9483-OUT;n:type:ShaderForge.SFN_Add,id:9996,x:31579,y:31281,varname:node_9996,prsc:2|A-6039-OUT,B-3050-OUT;n:type:ShaderForge.SFN_Add,id:4060,x:31579,y:31419,varname:node_4060,prsc:2|A-9396-OUT,B-3671-OUT;n:type:ShaderForge.SFN_Add,id:9483,x:31579,y:31552,varname:node_9483,prsc:2|A-8048-OUT,B-2051-OUT;n:type:ShaderForge.SFN_Slider,id:3050,x:31211,y:31323,ptovrint:False,ptlb:Splat 2 Snow Mask,ptin:_Splat2SnowMask,varname:node_3050,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:1,max:2;n:type:ShaderForge.SFN_Slider,id:3671,x:31211,y:31434,ptovrint:False,ptlb:Splat 3 Snow Mask,ptin:_Splat3SnowMask,varname:node_3671,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:1,max:2;n:type:ShaderForge.SFN_Slider,id:2051,x:31211,y:31557,ptovrint:False,ptlb:Splat 4 Snow Mask,ptin:_Splat4SnowMask,varname:node_2051,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:1,max:2;n:type:ShaderForge.SFN_Negate,id:6039,x:31246,y:31675,varname:node_6039,prsc:2|IN-64-A;n:type:ShaderForge.SFN_Negate,id:9396,x:31246,y:31814,varname:node_9396,prsc:2|IN-2411-A;n:type:ShaderForge.SFN_Negate,id:8048,x:31246,y:31941,varname:node_8048,prsc:2|IN-8383-A;n:type:ShaderForge.SFN_Vector1,id:7878,x:30566,y:32696,varname:node_7878,prsc:2,v1:1;n:type:ShaderForge.SFN_SwitchProperty,id:3045,x:29494,y:33051,ptovrint:False,ptlb:Large Mountains Mask,ptin:_LargeMountainsMask,varname:node_3045,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-971-OUT,B-502-OUT;n:type:ShaderForge.SFN_Multiply,id:502,x:29272,y:33277,varname:node_502,prsc:2|A-8275-OUT,B-236-OUT;n:type:ShaderForge.SFN_Power,id:8275,x:29046,y:33356,varname:node_8275,prsc:2|VAL-2220-OUT,EXP-4671-OUT;n:type:ShaderForge.SFN_OneMinus,id:2220,x:28886,y:33356,varname:node_2220,prsc:2|IN-2484-OUT;n:type:ShaderForge.SFN_Multiply,id:2484,x:28727,y:33356,varname:node_2484,prsc:2|A-9564-OUT,B-2894-OUT;n:type:ShaderForge.SFN_Subtract,id:721,x:28417,y:33356,varname:node_721,prsc:2|A-5021-OUT,B-4435-OUT;n:type:ShaderForge.SFN_Divide,id:597,x:28417,y:33477,varname:node_597,prsc:2|A-5248-OUT,B-3715-OUT;n:type:ShaderForge.SFN_Clamp01,id:9564,x:28572,y:33356,varname:node_9564,prsc:2|IN-721-OUT;n:type:ShaderForge.SFN_OneMinus,id:3715,x:28235,y:33477,varname:node_3715,prsc:2|IN-4435-OUT;n:type:ShaderForge.SFN_ComponentMask,id:7841,x:28031,y:33347,varname:node_7841,prsc:2,cc1:2,cc2:-1,cc3:-1,cc4:-1|IN-5182-OUT;n:type:ShaderForge.SFN_Clamp01,id:2894,x:28585,y:33477,varname:node_2894,prsc:2|IN-597-OUT;n:type:ShaderForge.SFN_Power,id:236,x:29046,y:33605,varname:node_236,prsc:2|VAL-6433-OUT,EXP-4671-OUT;n:type:ShaderForge.SFN_OneMinus,id:6433,x:28886,y:33605,varname:node_6433,prsc:2|IN-9317-OUT;n:type:ShaderForge.SFN_Multiply,id:9317,x:28727,y:33605,varname:node_9317,prsc:2|A-76-OUT,B-8027-OUT;n:type:ShaderForge.SFN_Subtract,id:315,x:28417,y:33605,varname:node_315,prsc:2|A-6195-OUT,B-4435-OUT;n:type:ShaderForge.SFN_Divide,id:1194,x:28417,y:33726,varname:node_1194,prsc:2|A-5248-OUT,B-9803-OUT;n:type:ShaderForge.SFN_Clamp01,id:76,x:28572,y:33605,varname:node_76,prsc:2|IN-315-OUT;n:type:ShaderForge.SFN_OneMinus,id:9803,x:28235,y:33752,varname:node_9803,prsc:2|IN-4435-OUT;n:type:ShaderForge.SFN_ComponentMask,id:8597,x:28039,y:33616,varname:node_8597,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-5182-OUT;n:type:ShaderForge.SFN_Clamp01,id:8027,x:28585,y:33726,varname:node_8027,prsc:2|IN-1194-OUT;n:type:ShaderForge.SFN_OneMinus,id:5021,x:28221,y:33347,varname:node_5021,prsc:2|IN-7841-OUT;n:type:ShaderForge.SFN_OneMinus,id:6195,x:28221,y:33616,varname:node_6195,prsc:2|IN-8597-OUT;n:type:ShaderForge.SFN_Distance,id:460,x:28010,y:30978,varname:node_460,prsc:2|A-2628-XYZ,B-1954-XYZ;n:type:ShaderForge.SFN_FragmentPosition,id:2628,x:27832,y:30881,varname:node_2628,prsc:2;n:type:ShaderForge.SFN_ViewPosition,id:1954,x:27832,y:31030,varname:node_1954,prsc:2;n:type:ShaderForge.SFN_Divide,id:7062,x:28182,y:30978,varname:node_7062,prsc:2|A-460-OUT,B-2113-OUT;n:type:ShaderForge.SFN_Power,id:1310,x:28344,y:30984,varname:node_1310,prsc:2|VAL-7062-OUT,EXP-7811-OUT;n:type:ShaderForge.SFN_Clamp01,id:6772,x:28509,y:30984,varname:node_6772,prsc:2|IN-1310-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2113,x:28010,y:30926,ptovrint:False,ptlb:Distance color,ptin:_Distancecolor,varname:node_2113,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:220;n:type:ShaderForge.SFN_ValueProperty,id:7811,x:28140,y:30926,ptovrint:False,ptlb:Distance color str,ptin:_Distancecolorstr,varname:node_7811,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:10;n:type:ShaderForge.SFN_Lerp,id:9714,x:30101,y:30573,varname:node_9714,prsc:2|A-9426-OUT,B-9366-RGB,T-6772-OUT;n:type:ShaderForge.SFN_Lerp,id:2750,x:30101,y:30918,varname:node_2750,prsc:2|A-6250-OUT,B-8238-RGB,T-6772-OUT;n:type:ShaderForge.SFN_Lerp,id:1874,x:30101,y:31330,varname:node_1874,prsc:2|A-6842-OUT,B-8365-RGB,T-6772-OUT;n:type:ShaderForge.SFN_Lerp,id:2546,x:30103,y:31916,varname:node_2546,prsc:2|A-447-OUT,B-6490-RGB,T-6772-OUT;n:type:ShaderForge.SFN_Lerp,id:9488,x:30858,y:31709,varname:node_9488,prsc:2|A-8487-OUT,B-4678-OUT,T-6772-OUT;n:type:ShaderForge.SFN_Lerp,id:3267,x:30886,y:31209,varname:node_3267,prsc:2|A-1346-OUT,B-4678-OUT,T-6772-OUT;n:type:ShaderForge.SFN_Lerp,id:1979,x:30912,y:30738,varname:node_1979,prsc:2|A-8993-OUT,B-4678-OUT,T-6772-OUT;n:type:ShaderForge.SFN_Lerp,id:306,x:30913,y:30365,varname:node_306,prsc:2|A-4039-OUT,B-4678-OUT,T-6772-OUT;n:type:ShaderForge.SFN_Lerp,id:9328,x:30101,y:30384,varname:node_9328,prsc:2|T-6772-OUT;n:type:ShaderForge.SFN_Lerp,id:7695,x:30101,y:30751,varname:node_7695,prsc:2|T-6772-OUT;n:type:ShaderForge.SFN_Lerp,id:4157,x:30101,y:31130,varname:node_4157,prsc:2|T-6772-OUT;n:type:ShaderForge.SFN_Lerp,id:5142,x:30103,y:31719,varname:node_5142,prsc:2|T-6772-OUT;n:type:ShaderForge.SFN_Color,id:6490,x:29869,y:32053,ptovrint:False,ptlb:Far Color4,ptin:_FarColor4,varname:node_6490,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:8365,x:29843,y:31468,ptovrint:False,ptlb:Far Color3,ptin:_FarColor3,varname:node_8365,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:8238,x:29813,y:31018,ptovrint:False,ptlb:Far Color2,ptin:_FarColor2,varname:node_8238,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:9366,x:29791,y:30621,ptovrint:False,ptlb:Far Color1,ptin:_FarColor1,varname:node_9366,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Vector3,id:4678,x:30456,y:32015,varname:node_4678,prsc:2,v1:0,v2:0,v3:1;proporder:2010-9017-1805-9366-1052-7033-6313-6113-7628-5646-480-8238-4872-8086-4671-4435-2548-8827-646-8365-1001-3610-363-7155-5693-5338-3667-6490-6426-9907-8089-1940-8432-4414-1880-9390-1632-3050-8281-3671-4871-2051-2805-4477-9106-980-7685-5700-7141-3045-7811-2113;pass:END;sub:END;*/

Shader "Custom/Base_Terrain" {
    Properties {
        _Diff1 ("Diff 1", 2D) = "white" {}
        _Norm1 ("Norm 1", 2D) = "bump" {}
        _Color1 ("Color1", Color) = (1,1,1,1)
        _FarColor1 ("Far Color1", Color) = (1,1,1,1)
        _Layer1SnowMask ("Layer 1 Snow Mask", Range(-1, 2)) = 1
        _Laqyer1Vertexoffset ("Laqyer 1 Vertex offset", Float ) = 0.1
        _layer1mixstr ("layer 1 mix str", Float ) = 0.43
        _layer1mixangle ("layer 1 mix angle", Float ) = 0.95
        _Diff2 ("Diff 2", 2D) = "bump" {}
        _Norm2 ("Norm 2", 2D) = "bump" {}
        _Color2 ("Color2", Color) = (1,1,1,1)
        _FarColor2 ("Far Color2", Color) = (1,1,1,1)
        _Layer2SnowMask ("Layer 2 Snow Mask", Range(-1, 2)) = 1
        _Laqyer2Vertexoffset ("Laqyer 2 Vertex offset", Float ) = 0
        _layer2mixstr ("layer 2 mix str", Float ) = 2
        _layer2mixangle ("layer 2 mix angle", Float ) = 0.75
        _Diff3 (" Diff 3", 2D) = "bump" {}
        _Norm3 ("Norm 3", 2D) = "bump" {}
        _Color3 ("Color3", Color) = (1,1,1,1)
        _FarColor3 ("Far Color3", Color) = (1,1,1,1)
        _Layer3SnowMask ("Layer 3 Snow Mask", Range(-1, 2)) = 1.019231
        _Laqyer3Vertexoffset ("Laqyer 3 Vertex offset", Float ) = 0.1
        _layer3mixstr ("layer 3 mix str", Float ) = 4
        _layer3mixangle ("layer 3 mix angle", Float ) = 0.5
        _Diff4 ("Diff 4", 2D) = "bump" {}
        _Norm4 ("Norm 4", 2D) = "bump" {}
        _Color4 ("Color4", Color) = (1,1,1,1)
        _FarColor4 ("Far Color4", Color) = (1,1,1,1)
        _Layer4SnowMask ("Layer 4 Snow Mask", Range(-1, 2)) = -1
        _Laqyer4Vertexoffset ("Laqyer 4 Vertex offset", Float ) = 0.1
        _Spec ("Spec", Float ) = 1
        _Gloss ("Gloss", Float ) = 0
        _FakeNormalStr ("FakeNormal Str", Float ) = 1
        _SnowemaskPower ("Snowe mask Power", Float ) = 1
        _SnowMaskmultiply ("Snow Mask multiply", Float ) = 1
        _tessellation ("tessellation", Float ) = 1
        _Splat2Vertexoffset ("Splat 2 Vertex offset", Float ) = 0
        _Splat2SnowMask ("Splat 2 Snow Mask", Range(-1, 2)) = 1
        _Splat3Vertexoffset ("Splat 3 Vertex offset", Float ) = 0
        _Splat3SnowMask ("Splat 3 Snow Mask", Range(-1, 2)) = 1
        _Splat4Vertexoffset ("Splat 4 Vertex offset", Float ) = 0
        _Splat4SnowMask ("Splat 4 Snow Mask", Range(-1, 2)) = 1
        _Control ("Control", 2D) = "white" {}
        _Splat1 ("Splat1", 2D) = "white" {}
        _Splat2 ("Splat2", 2D) = "white" {}
        _Splat3 ("Splat3", 2D) = "white" {}
        _Normal1 ("Normal1", 2D) = "bump" {}
        _Normal2 ("Normal2", 2D) = "bump" {}
        _Normal3 ("Normal3", 2D) = "bump" {}
        [MaterialToggle] _LargeMountainsMask ("Large Mountains Mask", Float ) = 1
        _Distancecolorstr ("Distance color str", Float ) = 10
        _Distancecolor ("Distance color", Float ) = 220
    }
    SubShader {
        Tags {
        "SplatCount" = "4"
            "RenderType"="Opaque"
        }
        LOD 200
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Tessellation.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 5.0
            uniform float4 _LightColor0;
            uniform float4 _Color1;
            uniform float4 _Color2;
            uniform float _layer1mixstr;
            uniform float _layer1mixangle;
            uniform float4 _Color3;
            uniform float4 _Color4;
            uniform float _layer2mixstr;
            uniform float _layer2mixangle;
            uniform float _layer3mixstr;
            uniform float _layer3mixangle;
            uniform sampler2D _Diff1; uniform float4 _Diff1_ST;
            uniform sampler2D _Diff2; uniform float4 _Diff2_ST;
            uniform sampler2D _Diff3; uniform float4 _Diff3_ST;
            uniform sampler2D _Diff4; uniform float4 _Diff4_ST;
            uniform sampler2D _Norm1; uniform float4 _Norm1_ST;
            uniform sampler2D _Norm2; uniform float4 _Norm2_ST;
            uniform sampler2D _Norm3; uniform float4 _Norm3_ST;
            uniform sampler2D _Norm4; uniform float4 _Norm4_ST;
            uniform float _Spec;
            uniform float _Gloss;
            uniform float _FakeNormalStr;
            uniform float _SnowemaskPower;
            uniform float _Laqyer1Vertexoffset;
            uniform float _SnowMaskmultiply;
            uniform float _tessellation;
            uniform float _Laqyer2Vertexoffset;
            uniform float _Laqyer3Vertexoffset;
            uniform float _Laqyer4Vertexoffset;
            uniform float _Layer1SnowMask;
            uniform float _Layer2SnowMask;
            uniform float _Layer3SnowMask;
            uniform float _Layer4SnowMask;
            uniform sampler2D _Control; uniform float4 _Control_ST;
            uniform sampler2D _Splat1; uniform float4 _Splat1_ST;
            uniform sampler2D _Splat2; uniform float4 _Splat2_ST;
            uniform sampler2D _Splat3; uniform float4 _Splat3_ST;
            uniform float _Splat2Vertexoffset;
            uniform float _Splat3Vertexoffset;
            uniform float _Splat4Vertexoffset;
            uniform float _Splat2SnowMask;
            uniform float _Splat3SnowMask;
            uniform float _Splat4SnowMask;
            uniform fixed _LargeMountainsMask;
            uniform float _Distancecolor;
            uniform float _Distancecolorstr;
            uniform float4 _FarColor4;
            uniform float4 _FarColor3;
            uniform float4 _FarColor2;
            uniform float4 _FarColor1;
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
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float4 node_1193 = tex2Dlod(_Control,float4(TRANSFORM_TEX(v.texcoord0, _Control),0.0,0));
                    float4 node_9074 = float4(node_1193.rgb,node_1193.a);
                    float3 node_396 = abs(v.normal);
                    float3 node_42 = (node_396*node_396);
                    float2 node_7238 = float2(mul(unity_ObjectToWorld, v.vertex).g,mul(unity_ObjectToWorld, v.vertex).b);
                    float4 node_89 = tex2Dlod(_Diff1,float4(TRANSFORM_TEX(node_7238, _Diff1),0.0,0));
                    float2 node_7356 = float2(mul(unity_ObjectToWorld, v.vertex).b,mul(unity_ObjectToWorld, v.vertex).r);
                    float4 _Diffuse2 = tex2Dlod(_Diff1,float4(TRANSFORM_TEX(node_7356, _Diff1),0.0,0));
                    float2 node_768 = float2(mul(unity_ObjectToWorld, v.vertex).r,mul(unity_ObjectToWorld, v.vertex).g);
                    float4 _Diffuse3 = tex2Dlod(_Diff1,float4(TRANSFORM_TEX(node_768, _Diff1),0.0,0));
                    float4 node_8313 = tex2Dlod(_Diff2,float4(TRANSFORM_TEX(node_7238, _Diff2),0.0,0));
                    float4 node_5534 = tex2Dlod(_Diff2,float4(TRANSFORM_TEX(node_7356, _Diff2),0.0,0));
                    float4 node_4219 = tex2Dlod(_Diff2,float4(TRANSFORM_TEX(node_768, _Diff2),0.0,0));
                    float node_2272 = saturate(pow((1.0 - (saturate((v.normal.g-_layer1mixangle))*saturate((1.0/(1.0 - _layer1mixangle))))),_layer1mixstr));
                    float4 node_9591 = tex2Dlod(_Diff3,float4(TRANSFORM_TEX(node_7238, _Diff3),0.0,0));
                    float4 node_6982 = tex2Dlod(_Diff3,float4(TRANSFORM_TEX(node_7356, _Diff3),0.0,0));
                    float4 node_5368 = tex2Dlod(_Diff3,float4(TRANSFORM_TEX(node_768, _Diff3),0.0,0));
                    float node_5248 = 1.0;
                    float node_5119 = saturate(lerp( pow((1.0 - (saturate((v.normal.g-_layer2mixangle))*saturate((node_5248/(1.0 - _layer2mixangle))))),_layer2mixstr), (pow((1.0 - (saturate(((1.0 - v.normal.b)-_layer2mixangle))*saturate((node_5248/(1.0 - _layer2mixangle))))),_layer2mixstr)*pow((1.0 - (saturate(((1.0 - v.normal.r)-_layer2mixangle))*saturate((node_5248/(1.0 - _layer2mixangle))))),_layer2mixstr)), _LargeMountainsMask ));
                    float4 node_6372 = tex2Dlod(_Diff4,float4(TRANSFORM_TEX(node_7238, _Diff4),0.0,0));
                    float4 node_7946 = tex2Dlod(_Diff4,float4(TRANSFORM_TEX(node_7356, _Diff4),0.0,0));
                    float4 node_41 = tex2Dlod(_Diff4,float4(TRANSFORM_TEX(node_768, _Diff4),0.0,0));
                    float node_6069 = saturate(pow((1.0 - (saturate((v.normal.g-_layer3mixangle))*saturate((1.0/(1.0 - _layer3mixangle))))),_layer3mixstr));
                    float4 node_64 = tex2Dlod(_Splat1,float4(TRANSFORM_TEX(v.texcoord0, _Splat1),0.0,0));
                    float4 node_2411 = tex2Dlod(_Splat2,float4(TRANSFORM_TEX(v.texcoord0, _Splat2),0.0,0));
                    float4 node_8383 = tex2Dlod(_Splat3,float4(TRANSFORM_TEX(v.texcoord0, _Splat3),0.0,0));
                    v.vertex.xyz += ((node_9074.r*lerp(lerp(lerp(((node_42.r*node_89.a + node_42.g*_Diffuse2.a + node_42.b*_Diffuse3.a)*_Laqyer1Vertexoffset),((node_42.r*node_8313.a + node_42.g*node_5534.a + node_42.b*node_4219.a)*_Laqyer2Vertexoffset),node_2272),((node_42.r*node_9591.a + node_42.g*node_6982.a + node_42.b*node_5368.a)*_Laqyer3Vertexoffset),node_5119),((node_42.r*node_6372.a + node_42.g*node_7946.a + node_42.b*node_41.a)*_Laqyer4Vertexoffset),node_6069) + node_9074.g*(node_64.a*_Splat2Vertexoffset) + node_9074.b*(node_2411.a*_Splat3Vertexoffset) + node_9074.a*(node_8383.a*_Splat4Vertexoffset))*v.normal);
                }
                float Tessellation(TessVertex v){
                    return _tessellation;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float4 node_1193 = tex2D(_Control,TRANSFORM_TEX(i.uv0, _Control));
                float4 node_9074 = float4(node_1193.rgb,node_1193.a);
                float3 node_396 = abs(i.normalDir);
                float3 node_42 = (node_396*node_396);
                float2 node_7238 = float2(i.posWorld.g,i.posWorld.b);
                float3 node_1138 = UnpackNormal(tex2D(_Norm1,TRANSFORM_TEX(node_7238, _Norm1)));
                float2 node_7356 = float2(i.posWorld.b,i.posWorld.r);
                float3 node_1577 = UnpackNormal(tex2D(_Norm1,TRANSFORM_TEX(node_7356, _Norm1)));
                float2 node_768 = float2(i.posWorld.r,i.posWorld.g);
                float3 node_9787 = UnpackNormal(tex2D(_Norm1,TRANSFORM_TEX(node_768, _Norm1)));
                float3 node_4678 = float3(0,0,1);
                float node_6772 = saturate(pow((distance(i.posWorld.rgb,_WorldSpaceCameraPos)/_Distancecolor),_Distancecolorstr));
                float3 node_306 = lerp((node_42.r*node_1138.rgb + node_42.g*node_1577.rgb + node_42.b*node_9787.rgb),node_4678,node_6772);
                float3 node_9874 = UnpackNormal(tex2D(_Norm2,TRANSFORM_TEX(node_7238, _Norm2)));
                float3 node_8729 = UnpackNormal(tex2D(_Norm2,TRANSFORM_TEX(node_7356, _Norm2)));
                float3 node_7180 = UnpackNormal(tex2D(_Norm2,TRANSFORM_TEX(node_768, _Norm2)));
                float3 node_1979 = lerp((node_42.r*node_9874.rgb + node_42.g*node_8729.rgb + node_42.b*node_7180.rgb),node_4678,node_6772);
                float node_2272 = saturate(pow((1.0 - (saturate((i.normalDir.g-_layer1mixangle))*saturate((1.0/(1.0 - _layer1mixangle))))),_layer1mixstr));
                float3 node_5100 = UnpackNormal(tex2D(_Norm3,TRANSFORM_TEX(node_7238, _Norm3)));
                float3 node_7132 = UnpackNormal(tex2D(_Norm3,TRANSFORM_TEX(node_7356, _Norm3)));
                float3 node_4756 = UnpackNormal(tex2D(_Norm3,TRANSFORM_TEX(node_768, _Norm3)));
                float3 node_3267 = lerp((node_42.r*node_5100.rgb + node_42.g*node_7132.rgb + node_42.b*node_4756.rgb),node_4678,node_6772);
                float node_5248 = 1.0;
                float node_5119 = saturate(lerp( pow((1.0 - (saturate((i.normalDir.g-_layer2mixangle))*saturate((node_5248/(1.0 - _layer2mixangle))))),_layer2mixstr), (pow((1.0 - (saturate(((1.0 - i.normalDir.b)-_layer2mixangle))*saturate((node_5248/(1.0 - _layer2mixangle))))),_layer2mixstr)*pow((1.0 - (saturate(((1.0 - i.normalDir.r)-_layer2mixangle))*saturate((node_5248/(1.0 - _layer2mixangle))))),_layer2mixstr)), _LargeMountainsMask ));
                float3 node_1080 = UnpackNormal(tex2D(_Norm4,TRANSFORM_TEX(node_7238, _Norm4)));
                float3 node_4585 = UnpackNormal(tex2D(_Norm4,TRANSFORM_TEX(node_7356, _Norm4)));
                float3 node_5669 = UnpackNormal(tex2D(_Norm4,TRANSFORM_TEX(node_768, _Norm4)));
                float3 node_9488 = lerp((node_42.r*node_1080.rgb + node_42.g*node_4585.rgb + node_42.b*node_5669.rgb),node_4678,node_6772);
                float node_6069 = saturate(pow((1.0 - (saturate((i.normalDir.g-_layer3mixangle))*saturate((1.0/(1.0 - _layer3mixangle))))),_layer3mixstr));
                float node_7878 = 1.0;
                float2 node_3456 = (node_9074.r*lerp(lerp(lerp(node_306,node_1979,node_2272),node_3267,node_5119),node_9488,node_6069) + node_9074.g*node_7878 + node_9074.b*node_7878 + node_9074.a*node_7878).br;
                float node_3522 = saturate(node_3456.r);
                float gloss = (node_3522*_Gloss);
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float node_7724 = (node_3522*_Spec);
                float3 specularColor = float3(node_7724,node_7724,node_7724);
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float4 node_89 = tex2D(_Diff1,TRANSFORM_TEX(node_7238, _Diff1));
                float4 _Diffuse2 = tex2D(_Diff1,TRANSFORM_TEX(node_7356, _Diff1));
                float4 _Diffuse3 = tex2D(_Diff1,TRANSFORM_TEX(node_768, _Diff1));
                float3 node_9714 = lerp(((node_42.r*node_89.rgb + node_42.g*_Diffuse2.rgb + node_42.b*_Diffuse3.rgb)*_Color1.rgb),_FarColor1.rgb,node_6772);
                float4 node_8313 = tex2D(_Diff2,TRANSFORM_TEX(node_7238, _Diff2));
                float4 node_5534 = tex2D(_Diff2,TRANSFORM_TEX(node_7356, _Diff2));
                float4 node_4219 = tex2D(_Diff2,TRANSFORM_TEX(node_768, _Diff2));
                float4 node_9591 = tex2D(_Diff3,TRANSFORM_TEX(node_7238, _Diff3));
                float4 node_6982 = tex2D(_Diff3,TRANSFORM_TEX(node_7356, _Diff3));
                float4 node_5368 = tex2D(_Diff3,TRANSFORM_TEX(node_768, _Diff3));
                float4 node_6372 = tex2D(_Diff4,TRANSFORM_TEX(node_7238, _Diff4));
                float4 node_7946 = tex2D(_Diff4,TRANSFORM_TEX(node_7356, _Diff4));
                float4 node_41 = tex2D(_Diff4,TRANSFORM_TEX(node_768, _Diff4));
                float4 node_64 = tex2D(_Splat1,TRANSFORM_TEX(i.uv0, _Splat1));
                float4 node_2411 = tex2D(_Splat2,TRANSFORM_TEX(i.uv0, _Splat2));
                float4 node_8383 = tex2D(_Splat3,TRANSFORM_TEX(i.uv0, _Splat3));
                float3 diffuseColor = (lerp((node_9074.r*lerp(lerp(lerp(node_9714,lerp(((node_42.r*node_8313.rgb + node_42.g*node_5534.rgb + node_42.b*node_4219.rgb)*_Color2.rgb),_FarColor2.rgb,node_6772),node_2272),lerp(((node_42.r*node_9591.rgb + node_42.g*node_6982.rgb + node_42.b*node_5368.rgb)*_Color3.rgb),_FarColor3.rgb,node_6772),node_5119),lerp(((node_42.r*node_6372.rgb + node_42.g*node_7946.rgb + node_42.b*node_41.rgb)*_Color4.rgb),_FarColor4.rgb,node_6772),node_6069) + node_9074.g*node_64.rgb + node_9074.b*node_2411.rgb + node_9074.a*node_8383.rgb),node_9714,saturate(pow(((1.0 - (node_9074.r*lerp(lerp(lerp((node_306+_Layer1SnowMask),(node_1979+_Layer2SnowMask),node_2272),(node_3267+_Layer3SnowMask),node_5119),(node_9488+_Layer4SnowMask),node_6069) + node_9074.g*((-1*node_64.a)+_Splat2SnowMask) + node_9074.b*((-1*node_2411.a)+_Splat3SnowMask) + node_9074.a*((-1*node_8383.a)+_Splat4SnowMask)).r)*_SnowMaskmultiply),(1.0 - _SnowemaskPower))))*saturate(pow(node_3456.r,_FakeNormalStr)));
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
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
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Tessellation.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 5.0
            uniform float4 _LightColor0;
            uniform float4 _Color1;
            uniform float4 _Color2;
            uniform float _layer1mixstr;
            uniform float _layer1mixangle;
            uniform float4 _Color3;
            uniform float4 _Color4;
            uniform float _layer2mixstr;
            uniform float _layer2mixangle;
            uniform float _layer3mixstr;
            uniform float _layer3mixangle;
            uniform sampler2D _Diff1; uniform float4 _Diff1_ST;
            uniform sampler2D _Diff2; uniform float4 _Diff2_ST;
            uniform sampler2D _Diff3; uniform float4 _Diff3_ST;
            uniform sampler2D _Diff4; uniform float4 _Diff4_ST;
            uniform sampler2D _Norm1; uniform float4 _Norm1_ST;
            uniform sampler2D _Norm2; uniform float4 _Norm2_ST;
            uniform sampler2D _Norm3; uniform float4 _Norm3_ST;
            uniform sampler2D _Norm4; uniform float4 _Norm4_ST;
            uniform float _Spec;
            uniform float _Gloss;
            uniform float _FakeNormalStr;
            uniform float _SnowemaskPower;
            uniform float _Laqyer1Vertexoffset;
            uniform float _SnowMaskmultiply;
            uniform float _tessellation;
            uniform float _Laqyer2Vertexoffset;
            uniform float _Laqyer3Vertexoffset;
            uniform float _Laqyer4Vertexoffset;
            uniform float _Layer1SnowMask;
            uniform float _Layer2SnowMask;
            uniform float _Layer3SnowMask;
            uniform float _Layer4SnowMask;
            uniform sampler2D _Control; uniform float4 _Control_ST;
            uniform sampler2D _Splat1; uniform float4 _Splat1_ST;
            uniform sampler2D _Splat2; uniform float4 _Splat2_ST;
            uniform sampler2D _Splat3; uniform float4 _Splat3_ST;
            uniform float _Splat2Vertexoffset;
            uniform float _Splat3Vertexoffset;
            uniform float _Splat4Vertexoffset;
            uniform float _Splat2SnowMask;
            uniform float _Splat3SnowMask;
            uniform float _Splat4SnowMask;
            uniform fixed _LargeMountainsMask;
            uniform float _Distancecolor;
            uniform float _Distancecolorstr;
            uniform float4 _FarColor4;
            uniform float4 _FarColor3;
            uniform float4 _FarColor2;
            uniform float4 _FarColor1;
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
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float4 node_1193 = tex2Dlod(_Control,float4(TRANSFORM_TEX(v.texcoord0, _Control),0.0,0));
                    float4 node_9074 = float4(node_1193.rgb,node_1193.a);
                    float3 node_396 = abs(v.normal);
                    float3 node_42 = (node_396*node_396);
                    float2 node_7238 = float2(mul(unity_ObjectToWorld, v.vertex).g,mul(unity_ObjectToWorld, v.vertex).b);
                    float4 node_89 = tex2Dlod(_Diff1,float4(TRANSFORM_TEX(node_7238, _Diff1),0.0,0));
                    float2 node_7356 = float2(mul(unity_ObjectToWorld, v.vertex).b,mul(unity_ObjectToWorld, v.vertex).r);
                    float4 _Diffuse2 = tex2Dlod(_Diff1,float4(TRANSFORM_TEX(node_7356, _Diff1),0.0,0));
                    float2 node_768 = float2(mul(unity_ObjectToWorld, v.vertex).r,mul(unity_ObjectToWorld, v.vertex).g);
                    float4 _Diffuse3 = tex2Dlod(_Diff1,float4(TRANSFORM_TEX(node_768, _Diff1),0.0,0));
                    float4 node_8313 = tex2Dlod(_Diff2,float4(TRANSFORM_TEX(node_7238, _Diff2),0.0,0));
                    float4 node_5534 = tex2Dlod(_Diff2,float4(TRANSFORM_TEX(node_7356, _Diff2),0.0,0));
                    float4 node_4219 = tex2Dlod(_Diff2,float4(TRANSFORM_TEX(node_768, _Diff2),0.0,0));
                    float node_2272 = saturate(pow((1.0 - (saturate((v.normal.g-_layer1mixangle))*saturate((1.0/(1.0 - _layer1mixangle))))),_layer1mixstr));
                    float4 node_9591 = tex2Dlod(_Diff3,float4(TRANSFORM_TEX(node_7238, _Diff3),0.0,0));
                    float4 node_6982 = tex2Dlod(_Diff3,float4(TRANSFORM_TEX(node_7356, _Diff3),0.0,0));
                    float4 node_5368 = tex2Dlod(_Diff3,float4(TRANSFORM_TEX(node_768, _Diff3),0.0,0));
                    float node_5248 = 1.0;
                    float node_5119 = saturate(lerp( pow((1.0 - (saturate((v.normal.g-_layer2mixangle))*saturate((node_5248/(1.0 - _layer2mixangle))))),_layer2mixstr), (pow((1.0 - (saturate(((1.0 - v.normal.b)-_layer2mixangle))*saturate((node_5248/(1.0 - _layer2mixangle))))),_layer2mixstr)*pow((1.0 - (saturate(((1.0 - v.normal.r)-_layer2mixangle))*saturate((node_5248/(1.0 - _layer2mixangle))))),_layer2mixstr)), _LargeMountainsMask ));
                    float4 node_6372 = tex2Dlod(_Diff4,float4(TRANSFORM_TEX(node_7238, _Diff4),0.0,0));
                    float4 node_7946 = tex2Dlod(_Diff4,float4(TRANSFORM_TEX(node_7356, _Diff4),0.0,0));
                    float4 node_41 = tex2Dlod(_Diff4,float4(TRANSFORM_TEX(node_768, _Diff4),0.0,0));
                    float node_6069 = saturate(pow((1.0 - (saturate((v.normal.g-_layer3mixangle))*saturate((1.0/(1.0 - _layer3mixangle))))),_layer3mixstr));
                    float4 node_64 = tex2Dlod(_Splat1,float4(TRANSFORM_TEX(v.texcoord0, _Splat1),0.0,0));
                    float4 node_2411 = tex2Dlod(_Splat2,float4(TRANSFORM_TEX(v.texcoord0, _Splat2),0.0,0));
                    float4 node_8383 = tex2Dlod(_Splat3,float4(TRANSFORM_TEX(v.texcoord0, _Splat3),0.0,0));
                    v.vertex.xyz += ((node_9074.r*lerp(lerp(lerp(((node_42.r*node_89.a + node_42.g*_Diffuse2.a + node_42.b*_Diffuse3.a)*_Laqyer1Vertexoffset),((node_42.r*node_8313.a + node_42.g*node_5534.a + node_42.b*node_4219.a)*_Laqyer2Vertexoffset),node_2272),((node_42.r*node_9591.a + node_42.g*node_6982.a + node_42.b*node_5368.a)*_Laqyer3Vertexoffset),node_5119),((node_42.r*node_6372.a + node_42.g*node_7946.a + node_42.b*node_41.a)*_Laqyer4Vertexoffset),node_6069) + node_9074.g*(node_64.a*_Splat2Vertexoffset) + node_9074.b*(node_2411.a*_Splat3Vertexoffset) + node_9074.a*(node_8383.a*_Splat4Vertexoffset))*v.normal);
                }
                float Tessellation(TessVertex v){
                    return _tessellation;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float4 node_1193 = tex2D(_Control,TRANSFORM_TEX(i.uv0, _Control));
                float4 node_9074 = float4(node_1193.rgb,node_1193.a);
                float3 node_396 = abs(i.normalDir);
                float3 node_42 = (node_396*node_396);
                float2 node_7238 = float2(i.posWorld.g,i.posWorld.b);
                float3 node_1138 = UnpackNormal(tex2D(_Norm1,TRANSFORM_TEX(node_7238, _Norm1)));
                float2 node_7356 = float2(i.posWorld.b,i.posWorld.r);
                float3 node_1577 = UnpackNormal(tex2D(_Norm1,TRANSFORM_TEX(node_7356, _Norm1)));
                float2 node_768 = float2(i.posWorld.r,i.posWorld.g);
                float3 node_9787 = UnpackNormal(tex2D(_Norm1,TRANSFORM_TEX(node_768, _Norm1)));
                float3 node_4678 = float3(0,0,1);
                float node_6772 = saturate(pow((distance(i.posWorld.rgb,_WorldSpaceCameraPos)/_Distancecolor),_Distancecolorstr));
                float3 node_306 = lerp((node_42.r*node_1138.rgb + node_42.g*node_1577.rgb + node_42.b*node_9787.rgb),node_4678,node_6772);
                float3 node_9874 = UnpackNormal(tex2D(_Norm2,TRANSFORM_TEX(node_7238, _Norm2)));
                float3 node_8729 = UnpackNormal(tex2D(_Norm2,TRANSFORM_TEX(node_7356, _Norm2)));
                float3 node_7180 = UnpackNormal(tex2D(_Norm2,TRANSFORM_TEX(node_768, _Norm2)));
                float3 node_1979 = lerp((node_42.r*node_9874.rgb + node_42.g*node_8729.rgb + node_42.b*node_7180.rgb),node_4678,node_6772);
                float node_2272 = saturate(pow((1.0 - (saturate((i.normalDir.g-_layer1mixangle))*saturate((1.0/(1.0 - _layer1mixangle))))),_layer1mixstr));
                float3 node_5100 = UnpackNormal(tex2D(_Norm3,TRANSFORM_TEX(node_7238, _Norm3)));
                float3 node_7132 = UnpackNormal(tex2D(_Norm3,TRANSFORM_TEX(node_7356, _Norm3)));
                float3 node_4756 = UnpackNormal(tex2D(_Norm3,TRANSFORM_TEX(node_768, _Norm3)));
                float3 node_3267 = lerp((node_42.r*node_5100.rgb + node_42.g*node_7132.rgb + node_42.b*node_4756.rgb),node_4678,node_6772);
                float node_5248 = 1.0;
                float node_5119 = saturate(lerp( pow((1.0 - (saturate((i.normalDir.g-_layer2mixangle))*saturate((node_5248/(1.0 - _layer2mixangle))))),_layer2mixstr), (pow((1.0 - (saturate(((1.0 - i.normalDir.b)-_layer2mixangle))*saturate((node_5248/(1.0 - _layer2mixangle))))),_layer2mixstr)*pow((1.0 - (saturate(((1.0 - i.normalDir.r)-_layer2mixangle))*saturate((node_5248/(1.0 - _layer2mixangle))))),_layer2mixstr)), _LargeMountainsMask ));
                float3 node_1080 = UnpackNormal(tex2D(_Norm4,TRANSFORM_TEX(node_7238, _Norm4)));
                float3 node_4585 = UnpackNormal(tex2D(_Norm4,TRANSFORM_TEX(node_7356, _Norm4)));
                float3 node_5669 = UnpackNormal(tex2D(_Norm4,TRANSFORM_TEX(node_768, _Norm4)));
                float3 node_9488 = lerp((node_42.r*node_1080.rgb + node_42.g*node_4585.rgb + node_42.b*node_5669.rgb),node_4678,node_6772);
                float node_6069 = saturate(pow((1.0 - (saturate((i.normalDir.g-_layer3mixangle))*saturate((1.0/(1.0 - _layer3mixangle))))),_layer3mixstr));
                float node_7878 = 1.0;
                float2 node_3456 = (node_9074.r*lerp(lerp(lerp(node_306,node_1979,node_2272),node_3267,node_5119),node_9488,node_6069) + node_9074.g*node_7878 + node_9074.b*node_7878 + node_9074.a*node_7878).br;
                float node_3522 = saturate(node_3456.r);
                float gloss = (node_3522*_Gloss);
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float node_7724 = (node_3522*_Spec);
                float3 specularColor = float3(node_7724,node_7724,node_7724);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 node_89 = tex2D(_Diff1,TRANSFORM_TEX(node_7238, _Diff1));
                float4 _Diffuse2 = tex2D(_Diff1,TRANSFORM_TEX(node_7356, _Diff1));
                float4 _Diffuse3 = tex2D(_Diff1,TRANSFORM_TEX(node_768, _Diff1));
                float3 node_9714 = lerp(((node_42.r*node_89.rgb + node_42.g*_Diffuse2.rgb + node_42.b*_Diffuse3.rgb)*_Color1.rgb),_FarColor1.rgb,node_6772);
                float4 node_8313 = tex2D(_Diff2,TRANSFORM_TEX(node_7238, _Diff2));
                float4 node_5534 = tex2D(_Diff2,TRANSFORM_TEX(node_7356, _Diff2));
                float4 node_4219 = tex2D(_Diff2,TRANSFORM_TEX(node_768, _Diff2));
                float4 node_9591 = tex2D(_Diff3,TRANSFORM_TEX(node_7238, _Diff3));
                float4 node_6982 = tex2D(_Diff3,TRANSFORM_TEX(node_7356, _Diff3));
                float4 node_5368 = tex2D(_Diff3,TRANSFORM_TEX(node_768, _Diff3));
                float4 node_6372 = tex2D(_Diff4,TRANSFORM_TEX(node_7238, _Diff4));
                float4 node_7946 = tex2D(_Diff4,TRANSFORM_TEX(node_7356, _Diff4));
                float4 node_41 = tex2D(_Diff4,TRANSFORM_TEX(node_768, _Diff4));
                float4 node_64 = tex2D(_Splat1,TRANSFORM_TEX(i.uv0, _Splat1));
                float4 node_2411 = tex2D(_Splat2,TRANSFORM_TEX(i.uv0, _Splat2));
                float4 node_8383 = tex2D(_Splat3,TRANSFORM_TEX(i.uv0, _Splat3));
                float3 diffuseColor = (lerp((node_9074.r*lerp(lerp(lerp(node_9714,lerp(((node_42.r*node_8313.rgb + node_42.g*node_5534.rgb + node_42.b*node_4219.rgb)*_Color2.rgb),_FarColor2.rgb,node_6772),node_2272),lerp(((node_42.r*node_9591.rgb + node_42.g*node_6982.rgb + node_42.b*node_5368.rgb)*_Color3.rgb),_FarColor3.rgb,node_6772),node_5119),lerp(((node_42.r*node_6372.rgb + node_42.g*node_7946.rgb + node_42.b*node_41.rgb)*_Color4.rgb),_FarColor4.rgb,node_6772),node_6069) + node_9074.g*node_64.rgb + node_9074.b*node_2411.rgb + node_9074.a*node_8383.rgb),node_9714,saturate(pow(((1.0 - (node_9074.r*lerp(lerp(lerp((node_306+_Layer1SnowMask),(node_1979+_Layer2SnowMask),node_2272),(node_3267+_Layer3SnowMask),node_5119),(node_9488+_Layer4SnowMask),node_6069) + node_9074.g*((-1*node_64.a)+_Splat2SnowMask) + node_9074.b*((-1*node_2411.a)+_Splat3SnowMask) + node_9074.a*((-1*node_8383.a)+_Splat4SnowMask)).r)*_SnowMaskmultiply),(1.0 - _SnowemaskPower))))*saturate(pow(node_3456.r,_FakeNormalStr)));
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
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
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 5.0
            uniform float _layer1mixstr;
            uniform float _layer1mixangle;
            uniform float _layer2mixstr;
            uniform float _layer2mixangle;
            uniform float _layer3mixstr;
            uniform float _layer3mixangle;
            uniform sampler2D _Diff1; uniform float4 _Diff1_ST;
            uniform sampler2D _Diff2; uniform float4 _Diff2_ST;
            uniform sampler2D _Diff3; uniform float4 _Diff3_ST;
            uniform sampler2D _Diff4; uniform float4 _Diff4_ST;
            uniform float _Laqyer1Vertexoffset;
            uniform float _tessellation;
            uniform float _Laqyer2Vertexoffset;
            uniform float _Laqyer3Vertexoffset;
            uniform float _Laqyer4Vertexoffset;
            uniform sampler2D _Control; uniform float4 _Control_ST;
            uniform sampler2D _Splat1; uniform float4 _Splat1_ST;
            uniform sampler2D _Splat2; uniform float4 _Splat2_ST;
            uniform sampler2D _Splat3; uniform float4 _Splat3_ST;
            uniform float _Splat2Vertexoffset;
            uniform float _Splat3Vertexoffset;
            uniform float _Splat4Vertexoffset;
            uniform fixed _LargeMountainsMask;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex);
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float4 node_1193 = tex2Dlod(_Control,float4(TRANSFORM_TEX(v.texcoord0, _Control),0.0,0));
                    float4 node_9074 = float4(node_1193.rgb,node_1193.a);
                    float3 node_396 = abs(v.normal);
                    float3 node_42 = (node_396*node_396);
                    float2 node_7238 = float2(mul(unity_ObjectToWorld, v.vertex).g,mul(unity_ObjectToWorld, v.vertex).b);
                    float4 node_89 = tex2Dlod(_Diff1,float4(TRANSFORM_TEX(node_7238, _Diff1),0.0,0));
                    float2 node_7356 = float2(mul(unity_ObjectToWorld, v.vertex).b,mul(unity_ObjectToWorld, v.vertex).r);
                    float4 _Diffuse2 = tex2Dlod(_Diff1,float4(TRANSFORM_TEX(node_7356, _Diff1),0.0,0));
                    float2 node_768 = float2(mul(unity_ObjectToWorld, v.vertex).r,mul(unity_ObjectToWorld, v.vertex).g);
                    float4 _Diffuse3 = tex2Dlod(_Diff1,float4(TRANSFORM_TEX(node_768, _Diff1),0.0,0));
                    float4 node_8313 = tex2Dlod(_Diff2,float4(TRANSFORM_TEX(node_7238, _Diff2),0.0,0));
                    float4 node_5534 = tex2Dlod(_Diff2,float4(TRANSFORM_TEX(node_7356, _Diff2),0.0,0));
                    float4 node_4219 = tex2Dlod(_Diff2,float4(TRANSFORM_TEX(node_768, _Diff2),0.0,0));
                    float node_2272 = saturate(pow((1.0 - (saturate((v.normal.g-_layer1mixangle))*saturate((1.0/(1.0 - _layer1mixangle))))),_layer1mixstr));
                    float4 node_9591 = tex2Dlod(_Diff3,float4(TRANSFORM_TEX(node_7238, _Diff3),0.0,0));
                    float4 node_6982 = tex2Dlod(_Diff3,float4(TRANSFORM_TEX(node_7356, _Diff3),0.0,0));
                    float4 node_5368 = tex2Dlod(_Diff3,float4(TRANSFORM_TEX(node_768, _Diff3),0.0,0));
                    float node_5248 = 1.0;
                    float node_5119 = saturate(lerp( pow((1.0 - (saturate((v.normal.g-_layer2mixangle))*saturate((node_5248/(1.0 - _layer2mixangle))))),_layer2mixstr), (pow((1.0 - (saturate(((1.0 - v.normal.b)-_layer2mixangle))*saturate((node_5248/(1.0 - _layer2mixangle))))),_layer2mixstr)*pow((1.0 - (saturate(((1.0 - v.normal.r)-_layer2mixangle))*saturate((node_5248/(1.0 - _layer2mixangle))))),_layer2mixstr)), _LargeMountainsMask ));
                    float4 node_6372 = tex2Dlod(_Diff4,float4(TRANSFORM_TEX(node_7238, _Diff4),0.0,0));
                    float4 node_7946 = tex2Dlod(_Diff4,float4(TRANSFORM_TEX(node_7356, _Diff4),0.0,0));
                    float4 node_41 = tex2Dlod(_Diff4,float4(TRANSFORM_TEX(node_768, _Diff4),0.0,0));
                    float node_6069 = saturate(pow((1.0 - (saturate((v.normal.g-_layer3mixangle))*saturate((1.0/(1.0 - _layer3mixangle))))),_layer3mixstr));
                    float4 node_64 = tex2Dlod(_Splat1,float4(TRANSFORM_TEX(v.texcoord0, _Splat1),0.0,0));
                    float4 node_2411 = tex2Dlod(_Splat2,float4(TRANSFORM_TEX(v.texcoord0, _Splat2),0.0,0));
                    float4 node_8383 = tex2Dlod(_Splat3,float4(TRANSFORM_TEX(v.texcoord0, _Splat3),0.0,0));
                    v.vertex.xyz += ((node_9074.r*lerp(lerp(lerp(((node_42.r*node_89.a + node_42.g*_Diffuse2.a + node_42.b*_Diffuse3.a)*_Laqyer1Vertexoffset),((node_42.r*node_8313.a + node_42.g*node_5534.a + node_42.b*node_4219.a)*_Laqyer2Vertexoffset),node_2272),((node_42.r*node_9591.a + node_42.g*node_6982.a + node_42.b*node_5368.a)*_Laqyer3Vertexoffset),node_5119),((node_42.r*node_6372.a + node_42.g*node_7946.a + node_42.b*node_41.a)*_Laqyer4Vertexoffset),node_6069) + node_9074.g*(node_64.a*_Splat2Vertexoffset) + node_9074.b*(node_2411.a*_Splat3Vertexoffset) + node_9074.a*(node_8383.a*_Splat4Vertexoffset))*v.normal);
                }
                float Tessellation(TessVertex v){
                    return _tessellation;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    Dependency "BaseMapShader" = "Custom/Base_Terrain"
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
