//Maya ASCII 2015 scene
//Name: training_level.ma
//Last modified: Wed, Oct 28, 2015 02:38:43 PM
//Codeset: 1252
requires maya "2015";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201503261530-955654";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 17.743865639286842 13.596941393992548 -11.918926550912611 ;
	setAttr ".r" -type "double3" -2186.1383528018077 -13543.399999992342 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 24.482265426558779;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 5.3318217396736145e-007 0.19057943452701309 4.1071325540542603e-007 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.5527136788005009e-015 133.80168718729868 3.5527136788005009e-014 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 93.267050221895019;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.76837158203125e-007 -0.83942608009472153 103.9521491513226 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 12.865681702296184;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 101.57271754774915 0.080891649996805093 0.86704296951598425 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 7.1327391095963169;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCylinder1";
	setAttr ".t" -type "double3" 0 -0.7345101035703685 0 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 30 ".pt";
	setAttr ".pt[0]" -type "float3" 0 -0.99084997 0 ;
	setAttr ".pt[1]" -type "float3" 0 -0.99084997 0 ;
	setAttr ".pt[2]" -type "float3" 0 -0.99084997 0 ;
	setAttr ".pt[3]" -type "float3" 0 -0.99084997 0 ;
	setAttr ".pt[4]" -type "float3" 0 -0.99084997 0 ;
	setAttr ".pt[5]" -type "float3" 0 -0.99084997 0 ;
	setAttr ".pt[6]" -type "float3" 0 -0.99084997 0 ;
	setAttr ".pt[7]" -type "float3" 0 -0.99084997 0 ;
	setAttr ".pt[8]" -type "float3" 0 -0.99084997 0 ;
	setAttr ".pt[9]" -type "float3" 0 -0.99084997 0 ;
	setAttr ".pt[10]" -type "float3" 0 -0.99084997 0 ;
	setAttr ".pt[17]" -type "float3" -0.1538524 0.1421698 0 ;
	setAttr ".pt[18]" -type "float3" 0 0.07856483 0 ;
	setAttr ".pt[24]" -type "float3" 0 0.087267123 0 ;
	setAttr ".pt[25]" -type "float3" 0 -0.99084997 0 ;
	setAttr ".pt[26]" -type "float3" 0 -0.99084997 0 ;
	setAttr ".pt[27]" -type "float3" 0.022348549 -0.99059355 -0.053954195 ;
	setAttr ".pt[28]" -type "float3" 0 -0.99084997 0 ;
	setAttr ".pt[29]" -type "float3" 0 -0.99084997 0 ;
	setAttr ".pt[30]" -type "float3" 0 -0.99084997 0 ;
	setAttr ".pt[31]" -type "float3" 0 -0.99084997 0 ;
	setAttr ".pt[32]" -type "float3" 0 -0.99084997 0 ;
	setAttr ".pt[33]" -type "float3" 0 -0.99084997 0 ;
	setAttr ".pt[34]" -type "float3" -0.022348545 -0.99110639 0.05395418 ;
	setAttr ".pt[35]" -type "float3" 0 -0.99084997 0 ;
	setAttr ".pt[36]" -type "float3" 0 -0.99084997 0 ;
	setAttr ".pt[37]" -type "float3" 0 -0.99084997 0 ;
	setAttr ".pt[38]" -type "float3" 0 -0.99084997 0 ;
	setAttr ".pt[101]" -type "float3" 0 0.095004812 0 ;
	setAttr ".pt[103]" -type "float3" 0 0.22371472 0 ;
	setAttr ".dr" 1;
createNode transform -n "pCylinder2";
	setAttr ".t" -type "double3" 0 1.8843969007606234 -2.7755575615628914e-017 ;
	setAttr ".r" -type "double3" -74.820386973270573 0 0 ;
createNode transform -n "transform1" -p "pCylinder2";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape2" -p "transform1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".pt[0:17]" -type "float3"  0 0 1.8626451e-009 0 5.9604645e-008 
		-3.7252903e-009 0 0 1.8626451e-009 0 -8.9406967e-008 -1.8626451e-009 0 -8.9406967e-008 
		0 0 0 0 0 -8.9406967e-008 -1.8626451e-009 0 -8.9406967e-008 -1.8626451e-009 0 8.9406967e-008 
		0 0 0 0 0 8.9406967e-008 0 0 8.9406967e-008 1.8626451e-009 0 0 -1.8626451e-009 0 
		-5.9604645e-008 1.8626451e-009 0 0 -1.8626451e-009 0 8.9406967e-008 1.8626451e-009 
		0 -8.9406967e-008 -1.8626451e-009 0 8.9406967e-008 1.8626451e-009;
createNode transform -n "pCube1";
	setAttr ".r" -type "double3" 10.905249144624911 6.2334918790118286 -29.404402349671816 ;
	setAttr ".s" -type "double3" 0.20655663237040947 0.20655663237040947 0.20655663237040947 ;
	setAttr ".rp" -type "double3" 0 1.8959001404665001 0 ;
	setAttr ".sp" -type "double3" 0 9.1785972626948045 0 ;
	setAttr ".spt" -type "double3" 0 -7.2826971222283046 0 ;
createNode transform -n "transform3" -p "pCube1";
	setAttr ".v" no;
createNode mesh -n "pCubeShape1" -p "transform3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 -4.4801054 0 0 -4.4801054 
		0 0 4.4801054 0 0 4.4801054 0 0 4.4801054 0 0 4.4801054 0 0 -4.4801054 0 0 -4.4801054 
		0;
createNode transform -n "pCube2";
	setAttr ".r" -type "double3" 10.905249144624911 -6.2334918790118286 29.404402349671816 ;
	setAttr ".s" -type "double3" 0.20655663237040947 0.20655663237040947 0.20655663237040947 ;
	setAttr ".rp" -type "double3" 0 1.8959001404665001 0 ;
	setAttr ".sp" -type "double3" 0 9.1785972626948045 0 ;
	setAttr ".spt" -type "double3" 0 -7.2826971222283046 0 ;
createNode transform -n "transform4" -p "pCube2";
	setAttr ".v" no;
createNode mesh -n "pCubeShape2" -p "transform4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 -4.4801054 0 0 -4.4801054 
		0 0 4.4801054 0 0 4.4801054 0 0 4.4801054 0 0 4.4801054 0 0 -4.4801054 0 0 -4.4801054 
		0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube3";
	setAttr ".t" -type "double3" 0 0.78886938102750537 -0.41237643065163798 ;
	setAttr ".r" -type "double3" -29.999999999999996 0 0 ;
	setAttr ".s" -type "double3" 0.207 0.25770711303130422 0.20655663237040947 ;
	setAttr ".rp" -type "double3" 0 -0.46948966177961005 0 ;
	setAttr ".rpt" -type "double3" 0 0.31690214364832892 1.182694901123055 ;
	setAttr ".spt" -type "double3" 0 -0.46948966177961005 0 ;
createNode transform -n "transform2" -p "pCube3";
	setAttr ".v" no;
createNode mesh -n "pCubeShape3" -p "transform2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 -4.4801054 0 0 -4.4801054 
		0 0 4.4801054 0 0 4.4801054 0 0 4.4801054 0 0 4.4801054 0 0 -4.4801054 0 0 -4.4801054 
		0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube4";
	setAttr ".t" -type "double3" -1.6621088882588553 -0.36303039977421758 9.2328522170154912 ;
	setAttr ".r" -type "double3" 0 -19.224680410631976 0 ;
	setAttr ".s" -type "double3" 0.43985516379610623 0.43985516379610623 0.43985516379610623 ;
createNode mesh -n "pCube4Shape" -p "pCube4";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5000000074505806 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 30 ".pt";
	setAttr ".pt[0]" -type "float3" -0.4754515 0.66162854 0 ;
	setAttr ".pt[1]" -type "float3" -0.36316341 0.56095606 0 ;
	setAttr ".pt[6]" -type "float3" -0.4754515 0.6168353 0 ;
	setAttr ".pt[7]" -type "float3" -0.36316341 0.51616281 0 ;
	setAttr ".pt[8]" -type "float3" 0.34770045 0.56087732 0 ;
	setAttr ".pt[9]" -type "float3" 0.45998847 0.66169095 0 ;
	setAttr ".pt[14]" -type "float3" 0.34770045 0.51602119 0 ;
	setAttr ".pt[15]" -type "float3" 0.45998847 0.61683488 0 ;
	setAttr ".pt[16]" -type "float3" 0 0.43597299 -0.27528143 ;
	setAttr ".pt[17]" -type "float3" 0 0.43597299 -0.27528143 ;
	setAttr ".pt[22]" -type "float3" 0 0.53924447 -0.378512 ;
	setAttr ".pt[23]" -type "float3" 0 0.53924447 -0.378512 ;
	setAttr ".pt[24]" -type "float3" 0.069398299 -0.07340163 0.005508285 ;
	setAttr ".pt[25]" -type "float3" -5.8498393e-009 -0.1011444 -0.0020186654 ;
	setAttr ".pt[26]" -type "float3" -0.069398291 -0.07340163 0.005508285 ;
	setAttr ".pt[27]" -type "float3" -0.098144002 -0.0064246664 0.023679946 ;
	setAttr ".pt[28]" -type "float3" -0.069398291 0.060552306 0.041851591 ;
	setAttr ".pt[29]" -type "float3" -5.8498393e-009 0.088295102 0.049378522 ;
	setAttr ".pt[30]" -type "float3" 0.069398284 0.060552329 0.041851602 ;
	setAttr ".pt[31]" -type "float3" 0.098144002 -0.0064246664 0.023679946 ;
	setAttr ".pt[32]" -type "float3" 0.069398299 -0.060552329 -0.041851591 ;
	setAttr ".pt[33]" -type "float3" -5.8498393e-009 -0.088295087 -0.049378522 ;
	setAttr ".pt[34]" -type "float3" -0.069398291 -0.060552329 -0.041851591 ;
	setAttr ".pt[35]" -type "float3" -0.098144002 0.0064246557 -0.023679946 ;
	setAttr ".pt[36]" -type "float3" -0.069398291 0.073401622 -0.005508285 ;
	setAttr ".pt[37]" -type "float3" -5.8498393e-009 0.10114441 0.0020186654 ;
	setAttr ".pt[38]" -type "float3" 0.069398284 0.073401622 -0.0055082832 ;
	setAttr ".pt[39]" -type "float3" 0.098144002 0.0064246557 -0.023679946 ;
	setAttr ".pt[40]" -type "float3" -5.8498393e-009 -0.0064246664 0.023679946 ;
	setAttr ".pt[41]" -type "float3" -5.8498393e-009 0.0064246557 -0.023679946 ;
createNode transform -n "pCube5";
	setAttr ".t" -type "double3" 0 -0.36303039977421669 9.6756919082556259 ;
	setAttr ".r" -type "double3" 0 -19.224680410631976 0 ;
	setAttr ".s" -type "double3" 0.43985516379610623 0.43985516379610623 0.43985516379610623 ;
createNode mesh -n "pCube5Shape" -p "pCube5";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:41]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5000000074505806 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 78 ".uvst[0].uvsp[0:77]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0.3125 0.40625 0.3125 0.40625
		 0.68843985 0.375 0.68843985 0.4375 0.3125 0.4375 0.68843985 0.46875 0.3125 0.46875
		 0.68843985 0.5 0.3125 0.5 0.68843985 0.53125 0.3125 0.53125 0.68843985 0.5625 0.3125
		 0.5625 0.68843985 0.59375 0.3125 0.59375 0.68843985 0.625 0.3125 0.625 0.68843985
		 0.5 1.4901161e-008 0.61048543 0.04576458 0.5 0.15000001 0.38951457 0.04576458 0.34375
		 0.15625 0.38951457 0.26673543 0.5 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.61048543
		 0.95423543 0.5 1 0.5 0.83749998 0.38951457 0.95423543 0.34375 0.84375 0.38951457
		 0.73326457 0.5 0.6875 0.61048543 0.73326457 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 30 ".pt";
	setAttr ".pt[0]" -type "float3" -0.4754515 0.66162854 0 ;
	setAttr ".pt[1]" -type "float3" -0.36316341 0.56095606 0 ;
	setAttr ".pt[6]" -type "float3" -0.4754515 0.6168353 0 ;
	setAttr ".pt[7]" -type "float3" -0.36316341 0.51616281 0 ;
	setAttr ".pt[8]" -type "float3" 0.34770045 0.56087732 0 ;
	setAttr ".pt[9]" -type "float3" 0.45998847 0.66169095 0 ;
	setAttr ".pt[14]" -type "float3" 0.34770045 0.51602119 0 ;
	setAttr ".pt[15]" -type "float3" 0.45998847 0.61683488 0 ;
	setAttr ".pt[16]" -type "float3" 0 0.43597299 -0.27528143 ;
	setAttr ".pt[17]" -type "float3" 0 0.43597299 -0.27528143 ;
	setAttr ".pt[22]" -type "float3" 0 0.53924447 -0.378512 ;
	setAttr ".pt[23]" -type "float3" 0 0.53924447 -0.378512 ;
	setAttr ".pt[24]" -type "float3" 0.069398299 -0.07340163 0.005508285 ;
	setAttr ".pt[25]" -type "float3" -5.8498393e-009 -0.1011444 -0.0020186654 ;
	setAttr ".pt[26]" -type "float3" -0.069398291 -0.07340163 0.005508285 ;
	setAttr ".pt[27]" -type "float3" -0.098144002 -0.0064246664 0.023679946 ;
	setAttr ".pt[28]" -type "float3" -0.069398291 0.060552306 0.041851591 ;
	setAttr ".pt[29]" -type "float3" -5.8498393e-009 0.088295102 0.049378522 ;
	setAttr ".pt[30]" -type "float3" 0.069398284 0.060552329 0.041851602 ;
	setAttr ".pt[31]" -type "float3" 0.098144002 -0.0064246664 0.023679946 ;
	setAttr ".pt[32]" -type "float3" 0.069398299 -0.060552329 -0.041851591 ;
	setAttr ".pt[33]" -type "float3" -5.8498393e-009 -0.088295087 -0.049378522 ;
	setAttr ".pt[34]" -type "float3" -0.069398291 -0.060552329 -0.041851591 ;
	setAttr ".pt[35]" -type "float3" -0.098144002 0.0064246557 -0.023679946 ;
	setAttr ".pt[36]" -type "float3" -0.069398291 0.073401622 -0.005508285 ;
	setAttr ".pt[37]" -type "float3" -5.8498393e-009 0.10114441 0.0020186654 ;
	setAttr ".pt[38]" -type "float3" 0.069398284 0.073401622 -0.0055082832 ;
	setAttr ".pt[39]" -type "float3" 0.098144002 0.0064246557 -0.023679946 ;
	setAttr ".pt[40]" -type "float3" -5.8498393e-009 -0.0064246664 0.023679946 ;
	setAttr ".pt[41]" -type "float3" -5.8498393e-009 0.0064246557 -0.023679946 ;
	setAttr -s 42 ".vt[0:41]"  1.37284529 -0.64924788 -0.46041584 1.55172861 -0.54843426 -0.43798783
		 0.34417152 1.089948177 -0.073496908 0.52305484 1.1907618 -0.051068902 0.34417152 1.13480425 -0.27512422
		 0.52305484 1.23561788 -0.25269622 1.37284529 -0.60439181 -0.66204315 1.55172861 -0.50357819 -0.63961518
		 -1.55172861 -0.54843426 -0.43798783 -1.37284529 -0.64924788 -0.46041584 -0.52305484 1.1907618 -0.051068902
		 -0.34417152 1.089948177 -0.073496908 -0.52305484 1.23561788 -0.25269622 -0.34417152 1.13480425 -0.27512422
		 -1.55172861 -0.50357819 -0.63961518 -1.37284529 -0.60439181 -0.66204315 -0.1035 -0.42354333 1.50146437
		 0.1035 -0.42354333 1.50146437 -0.1035 1.79938543 0.21805578 0.1035 1.79938543 0.21805578
		 -0.1035 1.69610703 0.039172471 0.1035 1.69610703 0.039172471 -0.1035 -0.52682173 1.32258105
		 0.1035 -0.52682173 1.32258105 0.70710671 1.13649988 0.056124508 0 0.85382593 -0.020568401
		 -0.70710671 1.13649988 0.056124508 -0.99999988 1.81893539 0.24127752 -0.70710671 2.50137091 0.42643043
		 0 2.78404522 0.50312316 0.70710677 2.50137115 0.42643046 1 1.81893539 0.24127752
		 0.70710671 1.2674228 -0.42643043 0 0.98474878 -0.50312316 -0.70710671 1.2674228 -0.42643043
		 -0.99999988 1.94985843 -0.24127752 -0.70710671 2.63229394 -0.056124508 0 2.91496801 0.020568401
		 0.70710677 2.63229394 -0.056124493 1 1.94985843 -0.24127752 0 1.81893539 0.24127752
		 0 1.94985843 -0.24127752;
	setAttr -s 76 ".ed[0:75]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 10 12 0
		 11 13 0 12 14 0 13 15 0 14 8 0 15 9 0 16 17 0 18 19 0 20 21 0 22 23 0 16 18 0 17 19 0
		 18 20 0 19 21 0 20 22 0 21 23 0 22 16 0 23 17 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 24 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 32 0
		 24 32 0 25 33 0 26 34 0 27 35 0 28 36 0 29 37 0 30 38 0 31 39 0 40 24 1 40 25 1 40 26 1
		 40 27 1 40 28 1 40 29 1 40 30 1 40 31 1 32 41 1 33 41 1 34 41 1 35 41 1 36 41 1 37 41 1
		 38 41 1 39 41 1;
	setAttr -s 42 -ch 152 ".fc[0:41]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 12 17 -14 -17
		mu 0 4 14 15 16 17
		f 4 13 19 -15 -19
		mu 0 4 17 16 18 19
		f 4 14 21 -16 -21
		mu 0 4 19 18 20 21
		f 4 15 23 -13 -23
		mu 0 4 21 20 22 23
		f 4 -24 -22 -20 -18
		mu 0 4 15 24 25 16
		f 4 22 16 18 20
		mu 0 4 26 14 17 27
		f 4 24 29 -26 -29
		mu 0 4 28 29 30 31
		f 4 25 31 -27 -31
		mu 0 4 31 30 32 33
		f 4 26 33 -28 -33
		mu 0 4 33 32 34 35
		f 4 27 35 -25 -35
		mu 0 4 35 34 36 37
		f 4 -36 -34 -32 -30
		mu 0 4 29 38 39 30
		f 4 34 28 30 32
		mu 0 4 40 28 31 41
		f 4 36 53 -45 -53
		mu 0 4 42 43 44 45
		f 4 37 54 -46 -54
		mu 0 4 43 46 47 44
		f 4 38 55 -47 -55
		mu 0 4 46 48 49 47
		f 4 39 56 -48 -56
		mu 0 4 48 50 51 49
		f 4 40 57 -49 -57
		mu 0 4 50 52 53 51
		f 4 41 58 -50 -58
		mu 0 4 52 54 55 53
		f 4 42 59 -51 -59
		mu 0 4 54 56 57 55
		f 4 43 52 -52 -60
		mu 0 4 56 58 59 57
		f 3 -37 -61 61
		mu 0 3 60 61 62
		f 3 -38 -62 62
		mu 0 3 63 60 62
		f 3 -39 -63 63
		mu 0 3 64 63 62
		f 3 -40 -64 64
		mu 0 3 65 64 62
		f 3 -41 -65 65
		mu 0 3 66 65 62
		f 3 -42 -66 66
		mu 0 3 67 66 62
		f 3 -43 -67 67
		mu 0 3 68 67 62
		f 3 -44 -68 60
		mu 0 3 61 68 62
		f 3 44 69 -69
		mu 0 3 69 70 71
		f 3 45 70 -70
		mu 0 3 70 72 71
		f 3 46 71 -71
		mu 0 3 72 73 71
		f 3 47 72 -72
		mu 0 3 73 74 71
		f 3 48 73 -73
		mu 0 3 74 75 71
		f 3 49 74 -74
		mu 0 3 75 76 71
		f 3 50 75 -75
		mu 0 3 76 77 71
		f 3 51 68 -76
		mu 0 3 77 69 71;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube6";
	setAttr ".t" -type "double3" -3.2247579128681254 -0.36303039977421758 8.6195358649356084 ;
	setAttr ".r" -type "double3" 0 -19.224680410631976 0 ;
	setAttr ".s" -type "double3" 0.43985516379610623 0.43985516379610623 0.43985516379610623 ;
createNode mesh -n "pCube6Shape" -p "pCube6";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:41]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5000000074505806 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 78 ".uvst[0].uvsp[0:77]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0.3125 0.40625 0.3125 0.40625
		 0.68843985 0.375 0.68843985 0.4375 0.3125 0.4375 0.68843985 0.46875 0.3125 0.46875
		 0.68843985 0.5 0.3125 0.5 0.68843985 0.53125 0.3125 0.53125 0.68843985 0.5625 0.3125
		 0.5625 0.68843985 0.59375 0.3125 0.59375 0.68843985 0.625 0.3125 0.625 0.68843985
		 0.5 1.4901161e-008 0.61048543 0.04576458 0.5 0.15000001 0.38951457 0.04576458 0.34375
		 0.15625 0.38951457 0.26673543 0.5 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.61048543
		 0.95423543 0.5 1 0.5 0.83749998 0.38951457 0.95423543 0.34375 0.84375 0.38951457
		 0.73326457 0.5 0.6875 0.61048543 0.73326457 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 30 ".pt";
	setAttr ".pt[0]" -type "float3" -0.4754515 0.66162854 0 ;
	setAttr ".pt[1]" -type "float3" -0.36316341 0.56095606 0 ;
	setAttr ".pt[6]" -type "float3" -0.4754515 0.6168353 0 ;
	setAttr ".pt[7]" -type "float3" -0.36316341 0.51616281 0 ;
	setAttr ".pt[8]" -type "float3" 0.34770045 0.56087732 0 ;
	setAttr ".pt[9]" -type "float3" 0.45998847 0.66169095 0 ;
	setAttr ".pt[14]" -type "float3" 0.34770045 0.51602119 0 ;
	setAttr ".pt[15]" -type "float3" 0.45998847 0.61683488 0 ;
	setAttr ".pt[16]" -type "float3" 0 0.43597299 -0.27528143 ;
	setAttr ".pt[17]" -type "float3" 0 0.43597299 -0.27528143 ;
	setAttr ".pt[22]" -type "float3" 0 0.53924447 -0.378512 ;
	setAttr ".pt[23]" -type "float3" 0 0.53924447 -0.378512 ;
	setAttr ".pt[24]" -type "float3" 0.069398299 -0.07340163 0.005508285 ;
	setAttr ".pt[25]" -type "float3" -5.8498393e-009 -0.1011444 -0.0020186654 ;
	setAttr ".pt[26]" -type "float3" -0.069398291 -0.07340163 0.005508285 ;
	setAttr ".pt[27]" -type "float3" -0.098144002 -0.0064246664 0.023679946 ;
	setAttr ".pt[28]" -type "float3" -0.069398291 0.060552306 0.041851591 ;
	setAttr ".pt[29]" -type "float3" -5.8498393e-009 0.088295102 0.049378522 ;
	setAttr ".pt[30]" -type "float3" 0.069398284 0.060552329 0.041851602 ;
	setAttr ".pt[31]" -type "float3" 0.098144002 -0.0064246664 0.023679946 ;
	setAttr ".pt[32]" -type "float3" 0.069398299 -0.060552329 -0.041851591 ;
	setAttr ".pt[33]" -type "float3" -5.8498393e-009 -0.088295087 -0.049378522 ;
	setAttr ".pt[34]" -type "float3" -0.069398291 -0.060552329 -0.041851591 ;
	setAttr ".pt[35]" -type "float3" -0.098144002 0.0064246557 -0.023679946 ;
	setAttr ".pt[36]" -type "float3" -0.069398291 0.073401622 -0.005508285 ;
	setAttr ".pt[37]" -type "float3" -5.8498393e-009 0.10114441 0.0020186654 ;
	setAttr ".pt[38]" -type "float3" 0.069398284 0.073401622 -0.0055082832 ;
	setAttr ".pt[39]" -type "float3" 0.098144002 0.0064246557 -0.023679946 ;
	setAttr ".pt[40]" -type "float3" -5.8498393e-009 -0.0064246664 0.023679946 ;
	setAttr ".pt[41]" -type "float3" -5.8498393e-009 0.0064246557 -0.023679946 ;
	setAttr -s 42 ".vt[0:41]"  1.37284529 -0.64924788 -0.46041584 1.55172861 -0.54843426 -0.43798783
		 0.34417152 1.089948177 -0.073496908 0.52305484 1.1907618 -0.051068902 0.34417152 1.13480425 -0.27512422
		 0.52305484 1.23561788 -0.25269622 1.37284529 -0.60439181 -0.66204315 1.55172861 -0.50357819 -0.63961518
		 -1.55172861 -0.54843426 -0.43798783 -1.37284529 -0.64924788 -0.46041584 -0.52305484 1.1907618 -0.051068902
		 -0.34417152 1.089948177 -0.073496908 -0.52305484 1.23561788 -0.25269622 -0.34417152 1.13480425 -0.27512422
		 -1.55172861 -0.50357819 -0.63961518 -1.37284529 -0.60439181 -0.66204315 -0.1035 -0.42354333 1.50146437
		 0.1035 -0.42354333 1.50146437 -0.1035 1.79938543 0.21805578 0.1035 1.79938543 0.21805578
		 -0.1035 1.69610703 0.039172471 0.1035 1.69610703 0.039172471 -0.1035 -0.52682173 1.32258105
		 0.1035 -0.52682173 1.32258105 0.70710671 1.13649988 0.056124508 0 0.85382593 -0.020568401
		 -0.70710671 1.13649988 0.056124508 -0.99999988 1.81893539 0.24127752 -0.70710671 2.50137091 0.42643043
		 0 2.78404522 0.50312316 0.70710677 2.50137115 0.42643046 1 1.81893539 0.24127752
		 0.70710671 1.2674228 -0.42643043 0 0.98474878 -0.50312316 -0.70710671 1.2674228 -0.42643043
		 -0.99999988 1.94985843 -0.24127752 -0.70710671 2.63229394 -0.056124508 0 2.91496801 0.020568401
		 0.70710677 2.63229394 -0.056124493 1 1.94985843 -0.24127752 0 1.81893539 0.24127752
		 0 1.94985843 -0.24127752;
	setAttr -s 76 ".ed[0:75]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 10 12 0
		 11 13 0 12 14 0 13 15 0 14 8 0 15 9 0 16 17 0 18 19 0 20 21 0 22 23 0 16 18 0 17 19 0
		 18 20 0 19 21 0 20 22 0 21 23 0 22 16 0 23 17 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 24 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 32 0
		 24 32 0 25 33 0 26 34 0 27 35 0 28 36 0 29 37 0 30 38 0 31 39 0 40 24 1 40 25 1 40 26 1
		 40 27 1 40 28 1 40 29 1 40 30 1 40 31 1 32 41 1 33 41 1 34 41 1 35 41 1 36 41 1 37 41 1
		 38 41 1 39 41 1;
	setAttr -s 42 -ch 152 ".fc[0:41]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 12 17 -14 -17
		mu 0 4 14 15 16 17
		f 4 13 19 -15 -19
		mu 0 4 17 16 18 19
		f 4 14 21 -16 -21
		mu 0 4 19 18 20 21
		f 4 15 23 -13 -23
		mu 0 4 21 20 22 23
		f 4 -24 -22 -20 -18
		mu 0 4 15 24 25 16
		f 4 22 16 18 20
		mu 0 4 26 14 17 27
		f 4 24 29 -26 -29
		mu 0 4 28 29 30 31
		f 4 25 31 -27 -31
		mu 0 4 31 30 32 33
		f 4 26 33 -28 -33
		mu 0 4 33 32 34 35
		f 4 27 35 -25 -35
		mu 0 4 35 34 36 37
		f 4 -36 -34 -32 -30
		mu 0 4 29 38 39 30
		f 4 34 28 30 32
		mu 0 4 40 28 31 41
		f 4 36 53 -45 -53
		mu 0 4 42 43 44 45
		f 4 37 54 -46 -54
		mu 0 4 43 46 47 44
		f 4 38 55 -47 -55
		mu 0 4 46 48 49 47
		f 4 39 56 -48 -56
		mu 0 4 48 50 51 49
		f 4 40 57 -49 -57
		mu 0 4 50 52 53 51
		f 4 41 58 -50 -58
		mu 0 4 52 54 55 53
		f 4 42 59 -51 -59
		mu 0 4 54 56 57 55
		f 4 43 52 -52 -60
		mu 0 4 56 58 59 57
		f 3 -37 -61 61
		mu 0 3 60 61 62
		f 3 -38 -62 62
		mu 0 3 63 60 62
		f 3 -39 -63 63
		mu 0 3 64 63 62
		f 3 -40 -64 64
		mu 0 3 65 64 62
		f 3 -41 -65 65
		mu 0 3 66 65 62
		f 3 -42 -66 66
		mu 0 3 67 66 62
		f 3 -43 -67 67
		mu 0 3 68 67 62
		f 3 -44 -68 60
		mu 0 3 61 68 62
		f 3 44 69 -69
		mu 0 3 69 70 71
		f 3 45 70 -70
		mu 0 3 70 72 71
		f 3 46 71 -71
		mu 0 3 72 73 71
		f 3 47 72 -72
		mu 0 3 73 74 71
		f 3 48 73 -73
		mu 0 3 74 75 71
		f 3 49 74 -74
		mu 0 3 75 76 71
		f 3 50 75 -75
		mu 0 3 76 77 71
		f 3 51 68 -76
		mu 0 3 77 69 71;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPrism1";
	setAttr ".t" -type "double3" 7.2759547787273 0.34763473443594051 8.2335596976691221 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 1 1 0.7710709489244929 ;
createNode mesh -n "pPrismShape1" -p "pPrism1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pPrism2";
	setAttr ".t" -type "double3" 7.1165460285177708 0.34763473443594051 11.377480991389977 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 1 1 0.7710709489244929 ;
createNode mesh -n "pPrismShape2" -p "pPrism2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.421875 0.020933509
		 0.421875 0.29156646 0.65625 0.15625 0.375 0.3125 0.45833334 0.3125 0.54166669 0.3125
		 0.625 0.3125 0.375 0.68843985 0.45833334 0.68843985 0.54166669 0.68843985 0.625 0.68843985
		 0.421875 0.70843351 0.421875 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".vt[0:5]"  -0.69282025 -1.54999995 -1.20000017 -0.69282037 -1.54999995 1.19999993
		 1.38564062 -1.54999995 0 -0.69282025 1.54999995 -1.20000017 -0.69282037 1.54999995 1.19999993
		 1.38564062 1.54999995 0;
	setAttr -s 9 ".ed[0:8]"  0 1 0 1 2 0 2 0 0 3 4 0 4 5 0 5 3 0 0 3 0
		 1 4 0 2 5 0;
	setAttr -s 5 -ch 18 ".fc[0:4]" -type "polyFaces" 
		f 4 0 7 -4 -7
		mu 0 4 3 4 8 7
		f 4 1 8 -5 -8
		mu 0 4 4 5 9 8
		f 4 2 6 -6 -9
		mu 0 4 5 6 10 9
		f 3 -3 -2 -1
		mu 0 3 0 2 1
		f 3 3 4 5
		mu 0 3 12 11 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n"
		+ "            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n"
		+ "            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n"
		+ "                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n"
		+ "                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n"
		+ "                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n"
		+ "                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n"
		+ "                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n"
		+ "                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n"
		+ "            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n"
		+ "            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n"
		+ "                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n"
		+ "                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n"
		+ "                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n"
		+ "                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode groupId -n "groupId57";
	setAttr ".ihi" 0;
createNode groupId -n "groupId61";
	setAttr ".ihi" 0;
createNode groupId -n "groupId82";
	setAttr ".ihi" 0;
createNode lambert -n "cloud";
	setAttr ".c" -type "float3" 1 1 1 ;
	setAttr ".it" -type "float3" 0.63158619 0.63158619 0.63158619 ;
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode groupId -n "groupId103";
	setAttr ".ihi" 0;
createNode groupId -n "groupId104";
	setAttr ".ihi" 0;
createNode groupId -n "groupId105";
	setAttr ".ihi" 0;
createNode groupId -n "groupId106";
	setAttr ".ihi" 0;
createNode groupId -n "groupId107";
	setAttr ".ihi" 0;
createNode polyCylinder -n "polyCylinder1";
	setAttr ".r" 3.4000000000000004;
	setAttr ".sa" 24;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyBevel2 -n "polyBevel1";
	setAttr ".ics" -type "componentList" 1 "e[24:47]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.7345101035703685 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 27 ".tk";
	setAttr ".tk[27]" -type "float3" 2.9802322e-008 -0.20983192 -7.4505806e-009 ;
	setAttr ".tk[29]" -type "float3" 5.9604645e-008 -0.20983192 -1.4901161e-008 ;
	setAttr ".tk[31]" -type "float3" -2.9802322e-008 -0.20983192 0 ;
	setAttr ".tk[33]" -type "float3" 0 -0.20983192 0 ;
	setAttr ".tk[35]" -type "float3" 7.4505806e-009 -0.20983192 0 ;
	setAttr ".tk[37]" -type "float3" 1.7763568e-015 -0.20983192 0 ;
	setAttr ".tk[39]" -type "float3" 0 -0.20983192 -5.9604645e-008 ;
	setAttr ".tk[41]" -type "float3" 0 -0.20983192 0 ;
	setAttr ".tk[43]" -type "float3" -1.4901161e-008 -0.20983192 0 ;
	setAttr ".tk[45]" -type "float3" 2.9802322e-008 -0.20983192 -1.4901161e-008 ;
	setAttr ".tk[47]" -type "float3" -5.9604645e-008 -0.20983192 7.4505806e-009 ;
	setAttr ".tk[49]" -type "float3" 0 -0.20983192 -7.1054274e-015 ;
	setAttr ".tk[51]" -type "float3" -2.9802322e-008 -0.20983192 7.4505806e-009 ;
	setAttr ".tk[53]" -type "float3" 2.9802322e-008 -0.20983192 -2.9802322e-008 ;
	setAttr ".tk[55]" -type "float3" -1.4901161e-008 -0.20983192 -2.9802322e-008 ;
	setAttr ".tk[57]" -type "float3" -1.4901161e-008 -0.20983192 2.9802322e-008 ;
	setAttr ".tk[59]" -type "float3" 0 -0.20983192 0 ;
	setAttr ".tk[61]" -type "float3" -3.5527137e-015 -0.20983192 0 ;
	setAttr ".tk[63]" -type "float3" 7.4505806e-009 -0.20983192 2.9802322e-008 ;
	setAttr ".tk[65]" -type "float3" -1.4901161e-008 -0.20983192 2.9802322e-008 ;
	setAttr ".tk[67]" -type "float3" 0 -0.20983192 -1.4901161e-008 ;
	setAttr ".tk[69]" -type "float3" -2.9802322e-008 -0.20983192 1.4901161e-008 ;
	setAttr ".tk[71]" -type "float3" 5.9604645e-008 -0.20983192 7.4505806e-009 ;
	setAttr ".tk[73]" -type "float3" 0 -0.20983192 1.7763568e-015 ;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 1 "f[0:23]";
createNode polySoftEdge -n "polySoftEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 24 "e[25]" "e[30]" "e[33]" "e[36]" "e[39]" "e[42]" "e[45]" "e[48]" "e[51]" "e[54]" "e[57]" "e[60]" "e[63]" "e[66]" "e[69]" "e[72]" "e[75]" "e[78]" "e[81]" "e[84]" "e[87]" "e[90]" "e[93]" "e[95]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.7345101035703685 0 1;
	setAttr ".a" 180;
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:23]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.7345101035703685 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 4.7683716e-007 -1.7345101 4.7683716e-007 ;
	setAttr ".rs" 41466;
	setAttr ".lt" -type "double3" -8.8817841970012523e-016 -0.69157411694766513 2.8273531906429792 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.912578821182251 -1.7345101035703685 -3.9125776290893555 ;
	setAttr ".cbx" -type "double3" 3.9125797748565674 -1.7345101035703685 3.9125785827636719 ;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 26 ".tk";
	setAttr ".tk[0]" -type "float3" 0.49511361 0 -0.13266535 ;
	setAttr ".tk[1]" -type "float3" 0.44390664 0 -0.25628972 ;
	setAttr ".tk[2]" -type "float3" 0.36244836 0 -0.36244845 ;
	setAttr ".tk[3]" -type "float3" 0.25628966 0 -0.44390675 ;
	setAttr ".tk[4]" -type "float3" 0.13266532 0 -0.49511373 ;
	setAttr ".tk[5]" -type "float3" -1.0783102e-008 0 -0.51257932 ;
	setAttr ".tk[6]" -type "float3" -0.13266534 0 -0.49511379 ;
	setAttr ".tk[7]" -type "float3" -0.25628972 0 -0.44390693 ;
	setAttr ".tk[8]" -type "float3" -0.36244848 0 -0.36244854 ;
	setAttr ".tk[9]" -type "float3" -0.44390693 0 -0.25628987 ;
	setAttr ".tk[10]" -type "float3" -0.49511379 0 -0.13266547 ;
	setAttr ".tk[11]" -type "float3" -0.51257962 0 -1.2041131e-007 ;
	setAttr ".tk[12]" -type "float3" -0.49511391 0 0.13266526 ;
	setAttr ".tk[13]" -type "float3" -0.44390696 0 0.25628963 ;
	setAttr ".tk[14]" -type "float3" -0.36244854 0 0.36244839 ;
	setAttr ".tk[15]" -type "float3" -0.25628987 0 0.4439069 ;
	setAttr ".tk[16]" -type "float3" -0.13266541 0 0.49511373 ;
	setAttr ".tk[17]" -type "float3" -8.7163436e-008 0 0.51257932 ;
	setAttr ".tk[18]" -type "float3" 0.13266532 0 0.49511379 ;
	setAttr ".tk[19]" -type "float3" 0.25628966 0 0.4439069 ;
	setAttr ".tk[20]" -type "float3" 0.36244845 0 0.36244845 ;
	setAttr ".tk[21]" -type "float3" 0.44390693 0 0.25628972 ;
	setAttr ".tk[22]" -type "float3" 0.49511379 0 0.13266532 ;
	setAttr ".tk[23]" -type "float3" 0.51257962 0 -8.9859213e-008 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 23 "e[146]" "e[148]" "e[150]" "e[152]" "e[154]" "e[156]" "e[158]" "e[160]" "e[162]" "e[164]" "e[166]" "e[168]" "e[170]" "e[172]" "e[174]" "e[176]" "e[178]" "e[180]" "e[182]" "e[184]" "e[186]" "e[188]" "e[190:191]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.7345101035703685 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.3841858e-007 -1.4823004 7.1525574e-007 ;
	setAttr ".rs" 36759;
	setAttr ".lt" -type "double3" -2.7755575615628914e-016 -1.3583752465065653 0.9859132112461928 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -6.7875280380249023 -1.4823009766210582 -6.7875266075134277 ;
	setAttr ".cbx" -type "double3" 6.7875285148620605 -1.4822997845281627 6.7875280380249023 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 23 "e[194]" "e[196]" "e[198]" "e[200]" "e[202]" "e[204]" "e[206]" "e[208]" "e[210]" "e[212]" "e[214]" "e[216]" "e[218]" "e[220]" "e[222]" "e[224]" "e[226]" "e[228]" "e[230]" "e[232]" "e[234]" "e[236]" "e[238:239]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.7345101035703685 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 4.7683716e-007 -0.38049796 9.5367432e-007 ;
	setAttr ".rs" 51945;
	setAttr ".lt" -type "double3" 2.6645352591003757e-015 -3.7758399262538567 -2.9967133791720442 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -8.0428857803344727 -0.38049874673977158 -8.0428848266601562 ;
	setAttr ".cbx" -type "double3" 8.0428867340087891 -0.38049719701900742 8.0428867340087891 ;
createNode polyCylinder -n "polyCylinder2";
	setAttr ".h" 0.49999999999999989;
	setAttr ".sa" 8;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCube -n "polyCube1";
	setAttr ".cuv" 4;
createNode polyUnite -n "polyUnite1";
	setAttr -s 4 ".ip";
	setAttr -s 4 ".im";
createNode groupId -n "groupId108";
	setAttr ".ihi" 0;
createNode groupId -n "groupId109";
	setAttr ".ihi" 0;
createNode groupId -n "groupId110";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId111";
	setAttr ".ihi" 0;
createNode groupId -n "groupId112";
	setAttr ".ihi" 0;
createNode groupId -n "groupId113";
	setAttr ".ihi" 0;
createNode groupId -n "groupId114";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode groupId -n "groupId115";
	setAttr ".ihi" 0;
createNode groupId -n "groupId116";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:41]";
createNode groupId -n "groupId117";
	setAttr ".ihi" 0;
createNode groupId -n "groupId118";
	setAttr ".ihi" 0;
createNode polyPrism -n "polyPrism1";
	setAttr ".l" 3.1;
	setAttr ".w" 2.4;
	setAttr ".cuv" 3;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 51 ".tk";
	setAttr ".tk[24]" -type "float3" 0 -0.20983195 0 ;
	setAttr ".tk[25]" -type "float3" 0 0.080160588 0 ;
	setAttr ".tk[27]" -type "float3" 0 0.080160588 0 ;
	setAttr ".tk[29]" -type "float3" 0 0.080160588 0 ;
	setAttr ".tk[31]" -type "float3" 0 0.080160588 0 ;
	setAttr ".tk[33]" -type "float3" 0 0.080160588 0 ;
	setAttr ".tk[35]" -type "float3" 0 0.080160588 0 ;
	setAttr ".tk[37]" -type "float3" 0 0.080160588 0 ;
	setAttr ".tk[39]" -type "float3" 0 0.080160588 0 ;
	setAttr ".tk[41]" -type "float3" 0 0.080160588 0 ;
	setAttr ".tk[43]" -type "float3" 0 0.080160588 0 ;
	setAttr ".tk[45]" -type "float3" 0 0.080160588 0 ;
	setAttr ".tk[47]" -type "float3" 0 0.080160588 0 ;
	setAttr ".tk[49]" -type "float3" 0 0.080160588 0 ;
	setAttr ".tk[51]" -type "float3" 0 0.080160588 0 ;
	setAttr ".tk[53]" -type "float3" 0 0.080160588 0 ;
	setAttr ".tk[55]" -type "float3" 0 0.080160588 0 ;
	setAttr ".tk[57]" -type "float3" 0 0.080160588 0 ;
	setAttr ".tk[59]" -type "float3" 0 0.080160588 0 ;
	setAttr ".tk[61]" -type "float3" 0 0.080160588 0 ;
	setAttr ".tk[63]" -type "float3" 0 0.080160588 0 ;
	setAttr ".tk[65]" -type "float3" 0 0.080160588 0 ;
	setAttr ".tk[67]" -type "float3" 0 0.080160588 0 ;
	setAttr ".tk[69]" -type "float3" 0 0.080160588 0 ;
	setAttr ".tk[71]" -type "float3" 0 0.080160588 0 ;
	setAttr ".tk[73]" -type "float3" 0.43538618 -3.9115378e-008 -0.11666163 ;
	setAttr ".tk[74]" -type "float3" 0.39035666 -3.0710794e-008 -0.22537263 ;
	setAttr ".tk[75]" -type "float3" 0.31872496 -2.3033097e-008 -0.31872496 ;
	setAttr ".tk[76]" -type "float3" 0.22537263 -1.5355397e-008 -0.39035669 ;
	setAttr ".tk[77]" -type "float3" 0.11666144 0 -0.43538621 ;
	setAttr ".tk[78]" -type "float3" 7.5206131e-008 0 -0.45074525 ;
	setAttr ".tk[79]" -type "float3" -0.11666136 1.5355399e-008 -0.43538645 ;
	setAttr ".tk[80]" -type "float3" -0.22537249 2.3033097e-008 -0.3903569 ;
	setAttr ".tk[81]" -type "float3" -0.31872496 7.6776994e-009 -0.31872508 ;
	setAttr ".tk[82]" -type "float3" -0.39035684 2.3033097e-008 -0.22537269 ;
	setAttr ".tk[83]" -type "float3" -0.43538642 2.3033097e-008 -0.11666157 ;
	setAttr ".tk[84]" -type "float3" -0.45074525 3.0710797e-008 -9.4007653e-008 ;
	setAttr ".tk[85]" -type "float3" -0.43538645 3.9115378e-008 0.11666136 ;
	setAttr ".tk[86]" -type "float3" -0.3903569 1.5355399e-008 0.22537248 ;
	setAttr ".tk[87]" -type "float3" -0.31872508 7.6776994e-009 0.31872493 ;
	setAttr ".tk[88]" -type "float3" -0.22537267 2.3033097e-008 0.39035684 ;
	setAttr ".tk[89]" -type "float3" -0.11666141 7.6776994e-009 0.43538642 ;
	setAttr ".tk[90]" -type "float3" -5.4425488e-008 -1.5355397e-008 0.45074525 ;
	setAttr ".tk[91]" -type "float3" 0.11666138 0 0.43538642 ;
	setAttr ".tk[92]" -type "float3" 0.22537261 -7.6776985e-009 0.39035684 ;
	setAttr ".tk[93]" -type "float3" 0.31872496 -7.6776985e-009 0.31872505 ;
	setAttr ".tk[94]" -type "float3" 0.3903569 1.5355399e-008 0.22537263 ;
	setAttr ".tk[95]" -type "float3" 0.43538666 1.5355399e-008 0.1166614 ;
	setAttr ".tk[96]" -type "float3" 0.45074525 7.6776994e-009 -2.236393e-007 ;
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 1 "f[48:71]";
createNode polyCloseBorder -n "polyCloseBorder1";
	setAttr ".ics" -type "componentList" 24 "e[25]" "e[30]" "e[33]" "e[36]" "e[39]" "e[42]" "e[45]" "e[48]" "e[51]" "e[54]" "e[57]" "e[60]" "e[63]" "e[66]" "e[69]" "e[72]" "e[75]" "e[78]" "e[81]" "e[84]" "e[87]" "e[90]" "e[93]" "e[95]";
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 1 "f[120]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.7345101035703685 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 4.7683716e-007 0.055657942 5.9604645e-007 ;
	setAttr ".rs" 59907;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.8957350254058838 0.055657943380925445 -2.8957340717315674 ;
	setAttr ".cbx" -type "double3" 2.8957359790802002 0.055657943380925445 2.8957352638244629 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 1 "f[120]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.7345101035703685 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.9604645e-007 0.055657942 5.9604645e-007 ;
	setAttr ".rs" 38270;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.0785763263702393 0.038140555513951568 -2.078636646270752 ;
	setAttr ".cbx" -type "double3" 2.0785775184631348 0.073175331247899322 2.0786378383636475 ;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 27 ".tk";
	setAttr ".tk[144]" -type "float3" -0.72670227 0.017517379 0.44518989 ;
	setAttr ".tk[145]" -type "float3" -0.81715858 0.016490165 0.24195413 ;
	setAttr ".tk[146]" -type "float3" -0.58672339 0.017350812 0.61808699 ;
	setAttr ".tk[147]" -type "float3" -0.40676036 0.016001819 0.74886221 ;
	setAttr ".tk[148]" -type "float3" -0.19907661 0.013562334 0.82860392 ;
	setAttr ".tk[149]" -type "float3" 0.022173356 0.010198592 0.85187775 ;
	setAttr ".tk[150]" -type "float3" 0.2419125 0.0061398358 0.81709731 ;
	setAttr ".tk[151]" -type "float3" 0.44516578 0.0016626606 0.72663313 ;
	setAttr ".tk[152]" -type "float3" 0.61808163 -0.0029278244 0.58665049 ;
	setAttr ".tk[153]" -type "float3" 0.74887645 -0.0073187854 0.40668792 ;
	setAttr ".tk[154]" -type "float3" 0.82863635 -0.011210981 0.19901055 ;
	setAttr ".tk[155]" -type "float3" 0.85192633 -0.014339165 -0.022229109 ;
	setAttr ".tk[156]" -type "float3" 0.8171587 -0.016490163 -0.24195386 ;
	setAttr ".tk[157]" -type "float3" 0.72670329 -0.01751738 -0.44518992 ;
	setAttr ".tk[158]" -type "float3" 0.58672398 -0.017350821 -0.61808664 ;
	setAttr ".tk[159]" -type "float3" 0.40676075 -0.016001826 -0.7488625 ;
	setAttr ".tk[160]" -type "float3" 0.19907725 -0.013562339 -0.82860428 ;
	setAttr ".tk[161]" -type "float3" -0.022173027 -0.010198598 -0.85187805 ;
	setAttr ".tk[162]" -type "float3" -0.24191226 -0.0061398395 -0.81709743 ;
	setAttr ".tk[163]" -type "float3" -0.44516549 -0.0016626603 -0.72663373 ;
	setAttr ".tk[164]" -type "float3" -0.61808151 0.0029278242 -0.58665013 ;
	setAttr ".tk[165]" -type "float3" -0.74887633 0.0073187845 -0.4066878 ;
	setAttr ".tk[166]" -type "float3" -0.82863599 0.011210985 -0.19901024 ;
	setAttr ".tk[167]" -type "float3" -0.85192609 0.014339169 0.022229418 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 1 "f[120]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.7345101035703685 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.364418e-007 0.055657942 4.7683716e-007 ;
	setAttr ".rs" 63194;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.3926167488098145 0.043995102537724762 -1.3926523923873901 ;
	setAttr ".cbx" -type "double3" 1.3926178216934204 0.067320784224126129 1.3926533460617065 ;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk[168:191]" -type "float3"  -0.73593241 -0.0058545345
		 -0.09619505 -0.6859597 -0.0055112233 -0.28339726 -0.73575264 -0.0057988572 0.09756311
		 -0.68543261 -0.0053480137 0.28467214 -0.58840162 -0.0045327051 0.45238093 -0.45127201
		 -0.0034085014 0.58926117 -0.28338882 -0.0020520056 0.68598425 -0.096193373 -0.00055568805
		 0.73595858 0.097557828 0.00097851967 0.73577839 0.28466058 0.0024460366 0.68545651
		 0.45236376 0.0037468509 0.58842164 0.58923948 0.0047923266 0.45128685 0.68595958
		 0.0055112233 0.28339747 0.73593253 0.0058545345 0.096195117 0.73575306 0.0057988572
		 -0.09756282 0.68543285 0.0053480137 -0.28467169 0.58840197 0.0045327051 -0.45238084
		 0.45127222 0.0034085014 -0.58926111 0.28338903 0.0020520056 -0.68598449 0.096193418
		 0.00055568805 -0.73595828 -0.097557664 -0.00097851967 -0.73577839 -0.28466034 -0.0024460366
		 -0.6854564 -0.45236382 -0.0037468509 -0.58842152 -0.58923948 -0.0047923266 -0.45128649;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 1 "f[120]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.7345101035703685 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.6624413e-007 0.055657942 3.5762787e-007 ;
	setAttr ".rs" 50840;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.43659508228302002 0.052001317633244781 -0.4366108775138855 ;
	setAttr ".cbx" -type "double3" 0.43659621477127075 0.059314569128606109 0.4366115927696228 ;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 48 ".tk";
	setAttr ".tk[24]" -type "float3" 0.02467151 0 0.097862795 ;
	setAttr ".tk[26]" -type "float3" 0.049159598 0 0.088142708 ;
	setAttr ".tk[28]" -type "float3" 0.070297554 0 0.07241597 ;
	setAttr ".tk[30]" -type "float3" 0.086644903 0 0.051754065 ;
	setAttr ".tk[32]" -type "float3" 0.097087465 0 0.027565219 ;
	setAttr ".tk[34]" -type "float3" 0.10091358 0 0.00149792 ;
	setAttr ".tk[36]" -type "float3" 0.097862788 0 -0.024671488 ;
	setAttr ".tk[38]" -type "float3" 0.088142768 0 -0.049159653 ;
	setAttr ".tk[40]" -type "float3" 0.072415873 0 -0.070297539 ;
	setAttr ".tk[42]" -type "float3" 0.05175411 0 -0.086644858 ;
	setAttr ".tk[44]" -type "float3" 0.027565259 0 -0.097087473 ;
	setAttr ".tk[46]" -type "float3" 0.001497946 0 -0.10091366 ;
	setAttr ".tk[48]" -type "float3" -0.024671489 0 -0.09786281 ;
	setAttr ".tk[50]" -type "float3" -0.049159613 0 -0.088142797 ;
	setAttr ".tk[52]" -type "float3" -0.070297509 0 -0.072415933 ;
	setAttr ".tk[54]" -type "float3" -0.086644843 0 -0.051754087 ;
	setAttr ".tk[56]" -type "float3" -0.097087458 0 -0.027565286 ;
	setAttr ".tk[58]" -type "float3" -0.10091361 0 -0.0014979442 ;
	setAttr ".tk[60]" -type "float3" -0.097862765 0 0.024671488 ;
	setAttr ".tk[62]" -type "float3" -0.08814285 0 0.049159609 ;
	setAttr ".tk[64]" -type "float3" -0.072415888 0 0.07029748 ;
	setAttr ".tk[66]" -type "float3" -0.051754035 0 0.086644858 ;
	setAttr ".tk[68]" -type "float3" -0.027565233 0 0.097087413 ;
	setAttr ".tk[70]" -type "float3" -0.0014979019 0 0.10091366 ;
	setAttr ".tk[192]" -type "float3" -0.897834 -0.008006217 0.41431975 ;
	setAttr ".tk[193]" -type "float3" -0.97448027 -0.0075367368 0.16781858 ;
	setAttr ".tk[194]" -type "float3" -0.76000154 -0.0079300748 0.63258618 ;
	setAttr ".tk[195]" -type "float3" -0.57037628 -0.0073135286 0.80774236 ;
	setAttr ".tk[196]" -type "float3" -0.34188142 -0.0061985897 0.92785287 ;
	setAttr ".tk[197]" -type "float3" -0.09008754 -0.0046612192 0.98473161 ;
	setAttr ".tk[198]" -type "float3" 0.16784568 -0.0028061632 0.97450179 ;
	setAttr ".tk[199]" -type "float3" 0.41434059 -0.00075991929 0.89786226 ;
	setAttr ".tk[200]" -type "float3" 0.6325987 0.0013381472 0.76003432 ;
	setAttr ".tk[201]" -type "float3" 0.80774653 0.0033450057 0.5704115 ;
	setAttr ".tk[202]" -type "float3" 0.92784786 0.0051239063 0.34191605 ;
	setAttr ".tk[203]" -type "float3" 0.98471713 0.0065536262 0.090119511 ;
	setAttr ".tk[204]" -type "float3" 0.97448039 0.0075367368 -0.16781844 ;
	setAttr ".tk[205]" -type "float3" 0.89783442 0.008006217 -0.41431987 ;
	setAttr ".tk[206]" -type "float3" 0.76000196 0.0079300748 -0.63258648 ;
	setAttr ".tk[207]" -type "float3" 0.57037699 0.0073135286 -0.80774289 ;
	setAttr ".tk[208]" -type "float3" 0.34188181 0.0061985897 -0.92785335 ;
	setAttr ".tk[209]" -type "float3" 0.090087838 0.0046612192 -0.98473144 ;
	setAttr ".tk[210]" -type "float3" -0.16784538 0.0028061632 -0.97450179 ;
	setAttr ".tk[211]" -type "float3" -0.41434032 0.00075991929 -0.89786202 ;
	setAttr ".tk[212]" -type "float3" -0.63259858 -0.0013381472 -0.76003456 ;
	setAttr ".tk[213]" -type "float3" -0.80774653 -0.0033450057 -0.57041162 ;
	setAttr ".tk[214]" -type "float3" -0.92784786 -0.0051239063 -0.34191594 ;
	setAttr ".tk[215]" -type "float3" -0.98471737 -0.0065536262 -0.090119496 ;
createNode polyMergeVert -n "polyMergeVert1";
	setAttr ".ics" -type "componentList" 1 "vtx[216:239]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.7345101035703685 0 1;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk[216:239]" -type "float3"  -0.43659568 -0.0036566532
		 -0.013843846 -0.41813701 -0.0034422199 -0.12637548 -0.42530137 -0.0036218006 0.099630937
		 -0.38502383 -0.003340234 0.20631653 -0.31850719 -0.0028310185 0.29894155 -0.23028469
		 -0.0021288963 0.37119401 -0.12636903 -0.0012816265 0.41815102 -0.01384146 -0.00034706268
		 0.43661129 0.099629395 0.00061120017 0.42531699 0.20631081 0.0015277008 0.38503826
		 0.29893261 0.0023401761 0.31851971 0.37118262 0.0029931734 0.23029467 0.41813689
		 0.0034422199 0.12637538 0.43659562 0.0036566532 0.013843764 0.42530179 0.0036218006
		 -0.099631146 0.38502407 0.003340234 -0.20631635 0.31850725 0.0028310185 -0.29894167
		 0.23028508 0.0021288963 -0.37119442 0.12636918 0.0012816265 -0.41815114 0.013841441
		 0.00034706268 -0.43661118 -0.099629469 -0.00061120017 -0.42531711 -0.20631081 -0.0015277008
		 -0.38503838 -0.29893261 -0.0023401761 -0.31851989 -0.3711825 -0.0029931734 -0.23029464;
createNode polySoftEdge -n "polySoftEdge2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.7345101035703685 0 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 99 ".tk";
	setAttr ".tk[25]" -type "float3" 5.9604645e-008 -0.011189401 0 ;
	setAttr ".tk[27]" -type "float3" -0.12845461 -0.029782228 -0.18319264 ;
	setAttr ".tk[29]" -type "float3" -0.17127334 0.0049268627 -0.14669195 ;
	setAttr ".tk[31]" -type "float3" -0.049082503 -0.02334255 -0.026942035 ;
	setAttr ".tk[33]" -type "float3" -0.054046683 0.012107557 -0.012376349 ;
	setAttr ".tk[35]" -type "float3" -0.1464332 -0.020895874 -0.0074472744 ;
	setAttr ".tk[37]" -type "float3" -0.13845308 0.015495071 0.036391884 ;
	setAttr ".tk[39]" -type "float3" 0 -0.011189044 5.4016709e-008 ;
	setAttr ".tk[41]" -type "float3" -0.1214827 -0.040256493 0.116057 ;
	setAttr ".tk[43]" -type "float3" -0.088076763 0.0033705602 0.13874385 ;
	setAttr ".tk[45]" -type "float3" -0.01342199 -0.0037691956 0.05646982 ;
	setAttr ".tk[47]" -type "float3" 0.00089043961 -0.031942554 0.05767398 ;
	setAttr ".tk[49]" -type "float3" -5.9604645e-008 -0.027640263 -0.00011401172 ;
	setAttr ".tk[51]" -type "float3" 1.1175871e-008 -0.01118952 2.3841858e-007 ;
	setAttr ".tk[53]" -type "float3" 0.10247771 -0.011189595 0.10927717 ;
	setAttr ".tk[55]" -type "float3" 0.12675108 -0.011189461 0.075784802 ;
	setAttr ".tk[57]" -type "float3" 0.053420652 -0.084530808 0.012181592 ;
	setAttr ".tk[59]" -type "float3" 0.054818153 -0.11069711 -0.0030955065 ;
	setAttr ".tk[61]" -type "float3" -4.7683716e-007 -0.011189103 -1.1920929e-007 ;
	setAttr ".tk[63]" -type "float3" 2.3841858e-007 -0.011189818 -4.6566129e-008 ;
	setAttr ".tk[65]" -type "float3" 2.3841858e-007 -0.011189759 5.9604645e-008 ;
	setAttr ".tk[67]" -type "float3" 0.025297871 -0.13703004 -0.052830826 ;
	setAttr ".tk[69]" -type "float3" 0.011160025 -0.13820049 -0.05882486 ;
	setAttr ".tk[71]" -type "float3" 1.1920929e-007 -0.016560994 -3.2116179e-005 ;
	setAttr ".tk[144]" -type "float3" 0 -0.011189401 -1.1920929e-007 ;
	setAttr ".tk[145]" -type "float3" 0 -0.020139374 0.00018487312 ;
	setAttr ".tk[146]" -type "float3" -0.080374442 -0.03538521 -0.14074731 ;
	setAttr ".tk[147]" -type "float3" -0.11415415 -0.010508511 -0.11821619 ;
	setAttr ".tk[148]" -type "float3" -0.032970719 -0.058082014 -0.023394935 ;
	setAttr ".tk[149]" -type "float3" -0.037751134 -0.030493449 -0.013511961 ;
	setAttr ".tk[150]" -type "float3" -0.098801322 -0.082012579 -0.023083748 ;
	setAttr ".tk[151]" -type "float3" -0.096947789 -0.055485558 0.0089895613 ;
	setAttr ".tk[152]" -type "float3" 2.3841858e-007 -0.011189461 2.9802322e-008 ;
	setAttr ".tk[153]" -type "float3" -0.10038871 -0.0106523 0.073942401 ;
	setAttr ".tk[154]" -type "float3" -0.078417189 0.017877765 0.093409494 ;
	setAttr ".tk[155]" -type "float3" -0.014863488 -0.028870372 0.038723446 ;
	setAttr ".tk[156]" -type "float3" 0.014953515 0.042071112 0.15340891 ;
	setAttr ".tk[157]" -type "float3" 0.046370156 0.069796763 0.10834649 ;
	setAttr ".tk[158]" -type "float3" 2.9802322e-008 -0.011189431 -1.1920929e-007 ;
	setAttr ".tk[159]" -type "float3" 0.060908064 -0.011189513 0.088149734 ;
	setAttr ".tk[160]" -type "float3" 0.091389202 -0.031626314 0.098601438 ;
	setAttr ".tk[161]" -type "float3" 0.20206022 -0.064366832 0.034190238 ;
	setAttr ".tk[162]" -type "float3" 0.18542336 -0.077546701 -0.0024885866 ;
	setAttr ".tk[163]" -type "float3" 2.3841858e-007 -0.047168408 -0.00028282835 ;
	setAttr ".tk[164]" -type "float3" 0 -0.044961635 -0.00019870541 ;
	setAttr ".tk[165]" -type "float3" 0.11685795 -0.083964527 -0.091577448 ;
	setAttr ".tk[166]" -type "float3" 0.11019007 -0.19509318 -0.15362285 ;
	setAttr ".tk[167]" -type "float3" 0.012595301 -0.11343625 -0.040880747 ;
	setAttr ".tk[168]" -type "float3" -0.036488172 -0.011189356 -0.072045848 ;
	setAttr ".tk[169]" -type "float3" -0.016937181 -0.011189386 -0.07576593 ;
	setAttr ".tk[170]" -type "float3" 0 -0.011189584 -3.5762787e-007 ;
	setAttr ".tk[171]" -type "float3" 0.0028248255 -0.022946522 0.0031314888 ;
	setAttr ".tk[172]" -type "float3" -0.020470526 -0.014326458 -0.013166863 ;
	setAttr ".tk[173]" -type "float3" -0.026955096 0.025959812 -0.0060553206 ;
	setAttr ".tk[174]" -type "float3" -0.088697761 -0.06055291 0.00469791 ;
	setAttr ".tk[175]" -type "float3" -0.084978044 -0.06055297 0.024248431 ;
	setAttr ".tk[176]" -type "float3" 1.1920929e-007 -0.011189491 5.4016709e-008 ;
	setAttr ".tk[177]" -type "float3" 3.5762787e-007 -0.01118955 2.9802322e-008 ;
	setAttr ".tk[178]" -type "float3" 0 -0.01118952 -1.1920929e-007 ;
	setAttr ".tk[179]" -type "float3" 1.1920929e-007 -0.011189461 5.9604645e-008 ;
	setAttr ".tk[180]" -type "float3" 0.029761665 0.04673674 0.069279626 ;
	setAttr ".tk[181]" -type "float3" 0.050667129 0.043912031 0.065243863 ;
	setAttr ".tk[182]" -type "float3" -1.4901161e-008 -0.011189438 2.3841858e-007 ;
	setAttr ".tk[183]" -type "float3" 0 -0.011189379 -1.1920929e-007 ;
	setAttr ".tk[184]" -type "float3" -0.027354609 0.022976503 -0.0066213431 ;
	setAttr ".tk[185]" -type "float3" 0.11095492 -0.010715827 -0.023008291 ;
	setAttr ".tk[186]" -type "float3" 0.13035347 -0.07450626 -0.022713931 ;
	setAttr ".tk[187]" -type "float3" 1.1920929e-007 -0.036288571 -0.00019421784 ;
	setAttr ".tk[188]" -type "float3" -1.1920929e-007 -0.034084499 -0.00013281498 ;
	setAttr ".tk[189]" -type "float3" 0.077268273 -0.07013984 -0.073669314 ;
	setAttr ".tk[190]" -type "float3" 0.059431382 -0.080472 -0.085657865 ;
	setAttr ".tk[191]" -type "float3" 5.9604645e-008 -0.011189371 0 ;
	setAttr ".tk[192]" -type "float3" -0.01248189 -0.011189468 -0.023556912 ;
	setAttr ".tk[193]" -type "float3" -0.0062990449 -0.011189431 -0.022715798 ;
	setAttr ".tk[194]" -type "float3" -1.4901161e-008 -0.01118945 -5.9604645e-008 ;
	setAttr ".tk[195]" -type "float3" -0.004903079 0.011897298 -0.0028205449 ;
	setAttr ".tk[196]" -type "float3" -0.010248877 0.0076219873 -0.0095769009 ;
	setAttr ".tk[197]" -type "float3" -0.0081010005 -0.0052056024 -0.0051519899 ;
	setAttr ".tk[198]" -type "float3" -0.035646498 -0.011189427 -0.0059416811 ;
	setAttr ".tk[199]" -type "float3" -0.036487736 -0.011189438 0.00024094514 ;
	setAttr ".tk[200]" -type "float3" 0 -0.011189453 1.4901161e-008 ;
	setAttr ".tk[201]" -type "float3" 0 -0.011189461 -5.7742e-008 ;
	setAttr ".tk[202]" -type "float3" 0 -0.011189587 -1.4901161e-008 ;
	setAttr ".tk[203]" -type "float3" 0 -0.011189453 -2.9802322e-008 ;
	setAttr ".tk[204]" -type "float3" -2.9802322e-008 -0.011189491 -2.9802322e-008 ;
	setAttr ".tk[205]" -type "float3" 0 -0.011189431 -5.9604645e-008 ;
	setAttr ".tk[206]" -type "float3" 0 -0.011189502 2.9802322e-008 ;
	setAttr ".tk[207]" -type "float3" -2.3283064e-009 -0.011189403 5.9604645e-008 ;
	setAttr ".tk[208]" -type "float3" 7.4505806e-009 -0.011189443 0 ;
	setAttr ".tk[209]" -type "float3" 0.0063521201 -0.01677152 0.0034673833 ;
	setAttr ".tk[210]" -type "float3" 0.0072122058 -0.021546254 0.0013518988 ;
	setAttr ".tk[211]" -type "float3" 0 -0.011189394 1.4901161e-008 ;
	setAttr ".tk[212]" -type "float3" -2.9802322e-008 -0.011189431 -1.4901161e-008 ;
	setAttr ".tk[213]" -type "float3" 1.1920929e-007 -0.011189476 -1.4901161e-008 ;
	setAttr ".tk[214]" -type "float3" -5.9604645e-008 -0.011189513 1.4901161e-008 ;
	setAttr ".tk[215]" -type "float3" -2.9802322e-008 -0.011189498 0 ;
	setAttr ".tk[216]" -type "float3" 1.4210855e-014 -0.011189457 -1.4210855e-014 ;
createNode polyTriangulate -n "polyTriangulate1";
	setAttr ".ics" -type "componentList" 2 "f[0:71]" "f[120:215]";
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 37 ".tk";
	setAttr ".tk[145]" -type "float3" 0.093050234 0.00012960727 -0.046748519 ;
	setAttr ".tk[147]" -type "float3" 0.1181591 0.0021147472 -0.083925262 ;
	setAttr ".tk[152]" -type "float3" -0.051010024 0.00070691534 -0.12012021 ;
	setAttr ".tk[153]" -type "float3" -0.062899962 0 -0.13456526 ;
	setAttr ".tk[155]" -type "float3" -0.13214761 -0.001381595 -0.0348235 ;
	setAttr ".tk[158]" -type "float3" -0.12935171 -0.00032849933 0.07736592 ;
	setAttr ".tk[162]" -type "float3" 0.0045044394 -0.0042874175 0.16684194 ;
	setAttr ".tk[173]" -type "float3" 0.029624026 0.0040714825 -0.079979256 ;
	setAttr ".tk[180]" -type "float3" -0.089278787 0.0042874175 0.02574522 ;
	setAttr ".tk[184]" -type "float3" -0.040812921 0.0027216263 0.10539202 ;
	setAttr ".tk[190]" -type "float3" 0.10089616 -0.0035208031 0.059059467 ;
	setAttr ".tk[192]" -type "float3" 0.18315384 -0.0020423667 -0.24755889 ;
	setAttr ".tk[193]" -type "float3" 0.24193111 -0.0021594879 -0.19082591 ;
	setAttr ".tk[194]" -type "float3" 0.13278264 -0.0020613866 -0.28771642 ;
	setAttr ".tk[195]" -type "float3" 0.064600289 0.0092165265 -0.28373367 ;
	setAttr ".tk[196]" -type "float3" -0.036842521 0.0077855769 -0.31319922 ;
	setAttr ".tk[197]" -type "float3" -0.11302996 0.00039256166 -0.29426667 ;
	setAttr ".tk[198]" -type "float3" -0.19778228 -0.0033400981 -0.24082765 ;
	setAttr ".tk[199]" -type "float3" -0.26585203 -0.0031852114 -0.20865314 ;
	setAttr ".tk[200]" -type "float3" -0.28206384 -0.0043744086 -0.1336278 ;
	setAttr ".tk[201]" -type "float3" -0.30611312 -0.0048752306 -0.05555968 ;
	setAttr ".tk[202]" -type "float3" -0.24891049 -0.004508175 0.042397622 ;
	setAttr ".tk[203]" -type "float3" -0.29092923 -0.0056759804 0.10570831 ;
	setAttr ".tk[204]" -type "float3" -0.25273082 -0.0059213866 0.17791773 ;
	setAttr ".tk[205]" -type "float3" -0.23408069 -0.0058174185 0.27165365 ;
	setAttr ".tk[206]" -type "float3" -0.12795939 -0.0060195257 0.28121853 ;
	setAttr ".tk[207]" -type "float3" -0.04988949 -0.0058655953 0.30527008 ;
	setAttr ".tk[208]" -type "float3" 0.031744879 -0.0055873943 0.30829635 ;
	setAttr ".tk[209]" -type "float3" 0.15392929 -0.0070704594 0.26152095 ;
	setAttr ".tk[210]" -type "float3" 0.18752152 -0.010399957 0.24840769 ;
	setAttr ".tk[211]" -type "float3" 0.24345145 -0.0042300578 0.19631274 ;
	setAttr ".tk[212]" -type "float3" 0.28688714 -0.0037064604 0.12712963 ;
	setAttr ".tk[213]" -type "float3" 0.31093648 -0.0032056505 0.049061418 ;
	setAttr ".tk[214]" -type "float3" 0.31396034 -0.00276173 -0.032571629 ;
	setAttr ".tk[215]" -type "float3" 0.29575247 -0.0024049366 -0.11220647 ;
createNode polyReduce -n "polyReduce1";
	setAttr ".ics" -type "componentList" 2 "f[0:143]" "f[192:359]";
	setAttr ".ver" 1;
	setAttr ".p" 67.1533;
	setAttr ".vmp" -type "string" "";
	setAttr ".shp" 0.635;
	setAttr ".sym" -type "double4" 0 1 0 0 ;
	setAttr ".stl" 0.01;
	setAttr ".kqw" 0.5693;
	setAttr ".cr" yes;
createNode polyMoveVertex -n "polyMoveVertex1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "vtx[47:49]" "vtx[71:74]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.7345101035703685 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.73451012 0 ;
	setAttr ".ran" 0.05169999971985817;
	setAttr ".rs" 53596;
createNode polyTweak -n "polyTweak10";
	setAttr ".uopa" yes;
	setAttr -s 71 ".tk";
	setAttr ".tk[0]" -type "float3" 0.21798158 -0.16321008 -0.33432868 ;
	setAttr ".tk[1]" -type "float3" 0 0.12722339 0 ;
	setAttr ".tk[2]" -type "float3" 0 -0.071059875 0 ;
	setAttr ".tk[3]" -type "float3" 0.12251937 0.14565137 -0.19077036 ;
	setAttr ".tk[4]" -type "float3" 0 -0.071059875 0 ;
	setAttr ".tk[5]" -type "float3" -0.18615271 0.012730748 -0.15827519 ;
	setAttr ".tk[6]" -type "float3" -0.25025803 0.20854828 -0.048421118 ;
	setAttr ".tk[7]" -type "float3" 0 0.12722339 0 ;
	setAttr ".tk[8]" -type "float3" 0 -0.19828326 0 ;
	setAttr ".tk[9]" -type "float3" -0.017386269 0.070317246 0.27582121 ;
	setAttr ".tk[10]" -type "float3" 0 0.12722339 0 ;
	setAttr ".tk[11]" -type "float3" 0 -0.077407904 0 ;
	setAttr ".tk[12]" -type "float3" 0 -0.077407904 0 ;
	setAttr ".tk[13]" -type "float3" 0 -0.082299441 0 ;
	setAttr ".tk[14]" -type "float3" 0 -0.082299441 0 ;
	setAttr ".tk[15]" -type "float3" 0 -0.094650142 0 ;
	setAttr ".tk[16]" -type "float3" 0 -0.072188161 0 ;
	setAttr ".tk[17]" -type "float3" 0 -0.072188161 0 ;
	setAttr ".tk[18]" -type "float3" -0.6329999 -0.097613685 0.24774782 ;
	setAttr ".tk[19]" -type "float3" 0 -0.025425518 0 ;
	setAttr ".tk[20]" -type "float3" 0 -0.1025865 0 ;
	setAttr ".tk[21]" -type "float3" 0 -0.077160984 0 ;
	setAttr ".tk[22]" -type "float3" 0 -0.077160984 0 ;
	setAttr ".tk[23]" -type "float3" 0 -0.077160984 0 ;
	setAttr ".tk[24]" -type "float3" 0 -0.054945927 0 ;
	setAttr ".tk[25]" -type "float3" 0 -0.071059875 0 ;
	setAttr ".tk[26]" -type "float3" 0 -0.19828326 0 ;
	setAttr ".tk[27]" -type "float3" 0 0.12722339 0 ;
	setAttr ".tk[28]" -type "float3" 0 -0.071059875 0 ;
	setAttr ".tk[29]" -type "float3" 0 -0.071059875 0 ;
	setAttr ".tk[31]" -type "float3" 0 -0.071059875 0 ;
	setAttr ".tk[33]" -type "float3" 0 0.12722339 0 ;
	setAttr ".tk[34]" -type "float3" 0 0.12722339 0 ;
	setAttr ".tk[35]" -type "float3" 0 -0.071059875 0 ;
	setAttr ".tk[36]" -type "float3" 0 -0.071059875 0 ;
	setAttr ".tk[37]" -type "float3" 0 0.12722339 0 ;
	setAttr ".tk[63]" -type "float3" -3.1061449 5.5453341e-007 0.83229125 ;
	setAttr ".tk[64]" -type "float3" -2.7848928 5.2351533e-007 1.6078591 ;
	setAttr ".tk[65]" -type "float3" -2.2738557 3.4350512e-007 2.2738554 ;
	setAttr ".tk[66]" -type "float3" -1.6078591 1.7907213e-007 2.784893 ;
	setAttr ".tk[67]" -type "float3" -0.83228922 1.35365e-007 3.1061447 ;
	setAttr ".tk[68]" -type "float3" -7.9269631e-007 7.4499582e-008 3.2157173 ;
	setAttr ".tk[69]" -type "float3" 0.83228797 -9.0400675e-008 3.1061449 ;
	setAttr ".tk[70]" -type "float3" 1.6078583 -1.5088573e-007 2.7848938 ;
	setAttr ".tk[71]" -type "float3" 2.2738554 -1.5088573e-007 2.2738566 ;
	setAttr ".tk[72]" -type "float3" 2.7848935 -4.4936618e-007 1.6078594 ;
	setAttr ".tk[73]" -type "float3" 3.1061447 -4.9402274e-007 0.83228964 ;
	setAttr ".tk[74]" -type "float3" 3.2157178 -4.3353654e-007 8.2260931e-007 ;
	setAttr ".tk[75]" -type "float3" 3.1061449 -5.5453341e-007 -0.83228838 ;
	setAttr ".tk[76]" -type "float3" 2.7848938 -2.5488691e-007 -1.6078581 ;
	setAttr ".tk[77]" -type "float3" 2.2738566 4.4657799e-008 -2.273855 ;
	setAttr ".tk[78]" -type "float3" 1.6078594 -1.7077127e-008 -2.784893 ;
	setAttr ".tk[79]" -type "float3" 0.83228874 1.35365e-007 -3.1061447 ;
	setAttr ".tk[80]" -type "float3" -1.4956534e-008 3.1478928e-007 -3.2157173 ;
	setAttr ".tk[81]" -type "float3" -0.83228874 1.7907213e-007 -3.1061447 ;
	setAttr ".tk[82]" -type "float3" -1.6078583 1.7907213e-007 -2.7848938 ;
	setAttr ".tk[83]" -type "float3" -2.2738552 2.3921874e-007 -2.2738559 ;
	setAttr ".tk[84]" -type "float3" -2.7848935 1.35365e-007 -1.6078591 ;
	setAttr ".tk[85]" -type "float3" -3.1061449 -3.2356276e-008 -0.83228874 ;
	setAttr ".tk[86]" -type "float3" -3.2157183 9.0400675e-008 2.378089e-006 ;
	setAttr ".tk[89]" -type "float3" 0 0.022712562 0 ;
	setAttr ".tk[90]" -type "float3" 0 -0.030740373 0 ;
	setAttr ".tk[93]" -type "float3" 0 0.022712562 0 ;
	setAttr ".tk[94]" -type "float3" 0.37147942 0 0.48279443 ;
	setAttr ".tk[95]" -type "float3" 0 -0.0080278143 0 ;
	setAttr ".tk[97]" -type "float3" 0 -0.030740373 0 ;
	setAttr ".tk[98]" -type "float3" 0 -0.0080278143 0 ;
	setAttr ".tk[100]" -type "float3" -0.25872695 0.022712562 -0.25978073 ;
	setAttr ".tk[102]" -type "float3" 0.019840937 -0.030740373 0.24681737 ;
createNode polyMoveVertex -n "polyMoveVertex2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[0:103]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.7345101035703685 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 4.7683716e-007 -0.90880072 9.5367432e-007 ;
	setAttr ".ran" 0.35859999060630798;
	setAttr ".rs" 46937;
createNode polyMoveVertex -n "polyMoveVertex3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[0:103]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.7345101035703685 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 4.7683716e-007 -0.90880072 9.5367432e-007 ;
	setAttr ".ran" 0.35859999060630798;
	setAttr ".rs" 35553;
createNode polyMoveVertex -n "polyMoveVertex4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[0:103]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.7345101035703685 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 4.7683716e-007 -0.90880072 9.5367432e-007 ;
	setAttr ".ran" 0.35859999060630798;
	setAttr ".rs" 47645;
createNode polyMoveVertex -n "polyMoveVertex5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[0:103]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.7345101035703685 0 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 0 0.1 0 ;
	setAttr ".pvt" -type "float3" 4.7683716e-007 -0.90880072 9.5367432e-007 ;
	setAttr ".ran" 1;
	setAttr ".rs" 47546;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 3 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 14 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 11 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polyMoveVertex5.out" "pCylinderShape1.i";
connectAttr "groupId114.id" "pCylinderShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape2.iog.og[0].gco";
connectAttr "groupParts2.og" "pCylinderShape2.i";
connectAttr "groupId115.id" "pCylinderShape2.ciog.cog[0].cgid";
connectAttr "groupId110.id" "pCubeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape1.iog.og[0].gco";
connectAttr "groupParts1.og" "pCubeShape1.i";
connectAttr "groupId111.id" "pCubeShape1.ciog.cog[0].cgid";
connectAttr "groupId108.id" "pCubeShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape2.iog.og[0].gco";
connectAttr "groupId109.id" "pCubeShape2.ciog.cog[0].cgid";
connectAttr "groupId112.id" "pCubeShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape3.iog.og[0].gco";
connectAttr "groupId113.id" "pCubeShape3.ciog.cog[0].cgid";
connectAttr "groupParts3.og" "pCube4Shape.i";
connectAttr "groupId116.id" "pCube4Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCube4Shape.iog.og[0].gco";
connectAttr "groupId117.id" "pCube5Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCube5Shape.iog.og[0].gco";
connectAttr "groupId118.id" "pCube6Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCube6Shape.iog.og[0].gco";
connectAttr "polyPrism1.out" "pPrismShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "cloud.oc" "lambert2SG.ss";
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "cloud.msg" "materialInfo1.m";
connectAttr "polyCylinder1.out" "polyBevel1.ip";
connectAttr "pCylinderShape1.wm" "polyBevel1.mp";
connectAttr "polyBevel1.out" "polyTweak1.ip";
connectAttr "polyTweak1.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polySoftEdge1.ip";
connectAttr "pCylinderShape1.wm" "polySoftEdge1.mp";
connectAttr "polyTweak2.out" "polyExtrudeEdge1.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge1.mp";
connectAttr "polySoftEdge1.out" "polyTweak2.ip";
connectAttr "polyExtrudeEdge1.out" "polyExtrudeEdge2.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge2.mp";
connectAttr "polyExtrudeEdge2.out" "polyExtrudeEdge3.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge3.mp";
connectAttr "pCubeShape2.o" "polyUnite1.ip[0]";
connectAttr "pCubeShape1.o" "polyUnite1.ip[1]";
connectAttr "pCubeShape3.o" "polyUnite1.ip[2]";
connectAttr "pCylinderShape2.o" "polyUnite1.ip[3]";
connectAttr "pCubeShape2.wm" "polyUnite1.im[0]";
connectAttr "pCubeShape1.wm" "polyUnite1.im[1]";
connectAttr "pCubeShape3.wm" "polyUnite1.im[2]";
connectAttr "pCylinderShape2.wm" "polyUnite1.im[3]";
connectAttr "polyCube1.out" "groupParts1.ig";
connectAttr "groupId110.id" "groupParts1.gi";
connectAttr "polyCylinder2.out" "groupParts2.ig";
connectAttr "groupId114.id" "groupParts2.gi";
connectAttr "polyUnite1.out" "groupParts3.ig";
connectAttr "groupId116.id" "groupParts3.gi";
connectAttr "polyExtrudeEdge3.out" "polyTweak3.ip";
connectAttr "polyTweak3.out" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "polyCloseBorder1.ip";
connectAttr "polyCloseBorder1.out" "polyExtrudeFace1.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyTweak4.out" "polyExtrudeFace2.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyExtrudeFace3.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polyExtrudeFace4.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyMergeVert1.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert1.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polySoftEdge2.ip";
connectAttr "pCylinderShape1.wm" "polySoftEdge2.mp";
connectAttr "polyMergeVert1.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polyTriangulate1.ip";
connectAttr "polySoftEdge2.out" "polyTweak9.ip";
connectAttr "polyTriangulate1.out" "polyReduce1.ip";
connectAttr "polyTweak10.out" "polyMoveVertex1.ip";
connectAttr "pCylinderShape1.wm" "polyMoveVertex1.mp";
connectAttr "polyReduce1.out" "polyTweak10.ip";
connectAttr "polyMoveVertex1.out" "polyMoveVertex2.ip";
connectAttr "pCylinderShape1.wm" "polyMoveVertex2.mp";
connectAttr "polyMoveVertex2.out" "polyMoveVertex3.ip";
connectAttr "pCylinderShape1.wm" "polyMoveVertex3.mp";
connectAttr "polyMoveVertex3.out" "polyMoveVertex4.ip";
connectAttr "pCylinderShape1.wm" "polyMoveVertex4.mp";
connectAttr "polyMoveVertex4.out" "polyMoveVertex5.ip";
connectAttr "pCylinderShape1.wm" "polyMoveVertex5.mp";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "cloud.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube4Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube5Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube6Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPrismShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPrismShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "groupId108.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId109.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId110.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId111.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId112.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId113.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId114.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId115.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId116.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId117.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId118.msg" ":initialShadingGroup.gn" -na;
// End of training_level.ma
