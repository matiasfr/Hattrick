//Maya ASCII 2015 scene
//Name: sky_level.ma
//Last modified: Fri, Oct 23, 2015 03:22:46 PM
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
	setAttr ".t" -type "double3" 54.92010712672483 82.939503211451637 247.35331700055559 ;
	setAttr ".r" -type "double3" -2180.1383527897183 -13666.599999991897 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 227.3245564321868;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -9.9329671163552433 0 30.615380934115279 ;
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
	setAttr ".t" -type "double3" -4.4352730535659806 -28.522772238786125 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 71.107426039464556;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 -2.0241831862359096 17.361966298769183 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 166.08744000643793;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCylinder1";
	setAttr ".r" -type "double3" 0 -33.979457197461628 0 ;
	setAttr ".s" -type "double3" 1.0896029080749301 1.4290169077708632 1.0896029080749301 ;
createNode transform -n "transform10" -p "pCylinder1";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape1" -p "transform10";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.40625 0.50046992301940918 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.66403294 3.6536748 -0.49238026 
		7.0256301e-017 3.6536748 0 0 3.6536748 0 -0.50123888 3.6536748 -0.17404643 -0.66867304 
		3.6536748 0.19089748 -0.1674342 3.6536748 0.36494392 0 3.6536748 0 0.66403294 3.6536748 
		-0.49238026;
createNode transform -n "pCylinder2";
	setAttr ".t" -type "double3" 1.6345165370496491 -14.847256411822467 -2.6776064477416961 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".rp" -type "double3" 5.9604644775390625e-008 -2.1766167415630959 0 ;
	setAttr ".rpt" -type "double3" 3.6635255297986804 0.36952071983626777 5.7785038494173335 ;
	setAttr ".sp" -type "double3" 5.9604644775390625e-008 -0.79860138893127441 0 ;
	setAttr ".spt" -type "double3" 0 -1.3780153526318215 0 ;
createNode transform -n "transform9" -p "pCylinder2";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape2" -p "transform9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.515625 0.65625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 15 ".pt[0:14]" -type "float3"  2.3802989 -2.0448763 2.1747737 
		0.28420693 -2.0754273 1.3237534 -1.8144343 -2.0555451 2.1812449 -2.1834874 -2.0282865 
		3.1368768 2.876858 -1.9545108 5.1920652 3.7486408 -2.0131834 3.1282818 0.1913785 
		-0.071050644 0.13100421 0.049087547 -0.10387798 0.071426034 -0.10908137 -0.1029463 
		0.11685336 -0.19423899 0.005336374 0.19778457 -0.14901383 0.010011324 0.35216925 
		-0.0051886551 0.012658807 0.42923215 0.15298307 0.011726621 0.38378638 0.23284686 
		0.0077615753 0.24248195 0.023065263 -0.067588158 0.26303899;
createNode transform -n "pCylinder3";
	setAttr ".t" -type "double3" -0.9480088087883265 -10.203618734691078 -4.4038815611509428 ;
	setAttr ".r" -type "double3" 7.0320437920125265 0 0 ;
	setAttr ".s" -type "double3" 0.82698136610047979 4.1261917446315213 0.82698136610047979 ;
createNode transform -n "transform8" -p "pCylinder3";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape3" -p "transform8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49274271726608276 0.84421992301940918 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 25 ".uvst[0].uvsp[0:24]" -type "float2" 0.375 0.3125 0.40625
		 0.3125 0.4375 0.3125 0.46875 0.3125 0.5 0.3125 0.5625 0.3125 0.59375 0.3125 0.625
		 0.3125 0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5
		 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.61048543 0.73326457
		 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.38951457 0.95423543 0.5 1 0.61048543
		 0.95423543 0.65625 0.84375 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt[7:9]" -type "float3"  0 -0.084754102 0.052162886 
		0 -0.084754102 0.052162886 0 -0.084754102 0.052162886;
	setAttr -s 16 ".vt[0:15]"  2.13367367 -2.59212065 -2.13680983 -1.2025023e-007 -2.59001493 -3.021891594
		 -2.13367319 -2.59212065 -2.13680983 -3.017463684 -2.59720278 -5.1998114e-008 -2.13367319 -2.60228539 2.13680267
		 2.13367343 -2.60228539 2.13681698 3.017463684 -2.59720278 -5.1998114e-008 0.70710671 0.95970076 -0.67791605
		 1.3896634e-022 0.94300824 -0.958718 -0.70710671 0.95970076 -0.67791605 -0.99999988 1 1.9523713e-010
		 -0.70710671 1.040299296 0.67791599 1.3896634e-022 1.056991696 0.95871806 0.70710677 1.040299296 0.67791605
		 1 1 1.9523713e-010 1.3896634e-022 1 1.9523713e-010;
	setAttr -s 29 ".ed[0:28]"  0 1 0 1 2 0 2 3 0 3 4 0 5 6 0 6 0 0 7 8 0
		 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 7 0 0 7 0 1 8 0 2 9 0 3 10 0 4 11 0
		 5 13 0 6 14 0 7 15 1 8 15 1 9 15 1 10 15 1 11 15 1 12 15 1 13 15 1 14 15 1;
	setAttr -s 14 -ch 48 ".fc[0:13]" -type "polyFaces" 
		f 4 0 15 -7 -15
		mu 0 4 0 1 9 8
		f 4 1 16 -8 -16
		mu 0 4 1 2 10 9
		f 4 2 17 -9 -17
		mu 0 4 2 3 11 10
		f 4 3 18 -10 -18
		mu 0 4 3 4 12 11
		f 4 4 20 -13 -20
		mu 0 4 5 6 14 13
		f 4 5 14 -14 -21
		mu 0 4 6 7 15 14
		f 3 6 22 -22
		mu 0 3 22 21 24
		f 3 7 23 -23
		mu 0 3 21 20 24
		f 3 8 24 -24
		mu 0 3 20 19 24
		f 3 9 25 -25
		mu 0 3 19 18 24
		f 3 10 26 -26
		mu 0 3 18 17 24
		f 3 11 27 -27
		mu 0 3 17 16 24
		f 3 12 28 -28
		mu 0 3 16 23 24
		f 3 13 21 -29
		mu 0 3 23 22 24;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder4";
	setAttr ".t" -type "double3" 2.8112098546659694 -10.951691760643053 -2.078404510453304 ;
	setAttr ".r" -type "double3" -3.1664253495677062 -0.39024705356867367 3.7953082144462442 ;
	setAttr ".s" -type "double3" 0.74568755907927065 0.54463104730040313 0.74568755907927065 ;
createNode transform -n "transform7" -p "pCylinder4";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape4" -p "transform7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.625 0.82133764028549194 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 25 ".uvst[0].uvsp[0:24]" -type "float2" 0.375 0.3125 0.40625
		 0.3125 0.4375 0.3125 0.46875 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625
		 0.3125 0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.53125
		 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.61048543 0.73326457
		 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.38951457 0.95423543 0.5 1 0.61048543
		 0.95423543 0.65625 0.84375 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt";
	setAttr ".pt[7]" -type "float3" -0.019756412 -0.40715495 -0.016316304 ;
	setAttr ".pt[14]" -type "float3" -0.019756412 -0.40715495 -0.016316304 ;
	setAttr -s 16 ".vt[0:15]"  3.71258473 -51.013961792 -8.41510201 -1.12429571 -51.013961792 -9.65117073
		 -5.29714298 -51.013961792 -7.92272139 -7.5268321 -51.013961792 -3.92392063 -1.29172993 -51.013961792 2.51636696
		 3.048551798 -51.013961792 0.42297316 5.44103432 -51.013961792 -4.24225426 1.9095571 -0.85032988 -2.64190865
		 -0.54535067 -0.43724537 -3.28004718 -2.68079925 0.2376295 -1.99677813 -3.2458725 0.77896231 0.45617619
		 -1.9095571 0.86964738 2.64190865 0.54535043 0.45656291 3.28004718 2.68079925 -0.218312 1.99677813
		 3.24587226 -0.75964481 -0.45617631 -1.471135e-007 0.0096587772 -4.9483166e-008;
	setAttr -s 29 ".ed[0:28]"  0 1 0 1 2 0 2 3 0 4 5 0 5 6 0 6 0 0 7 8 0
		 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 7 0 0 7 0 1 8 0 2 9 0 3 10 0 4 12 0
		 5 13 0 6 14 0 7 15 1 8 15 1 9 15 1 10 15 1 11 15 1 12 15 1 13 15 1 14 15 1;
	setAttr -s 14 -ch 48 ".fc[0:13]" -type "polyFaces" 
		f 4 0 15 -7 -15
		mu 0 4 0 1 9 8
		f 4 1 16 -8 -16
		mu 0 4 1 2 10 9
		f 4 2 17 -9 -17
		mu 0 4 2 3 11 10
		f 4 3 19 -12 -19
		mu 0 4 4 5 13 12
		f 4 4 20 -13 -20
		mu 0 4 5 6 14 13
		f 4 5 14 -14 -21
		mu 0 4 6 7 15 14
		f 3 6 22 -22
		mu 0 3 22 21 24
		f 3 7 23 -23
		mu 0 3 21 20 24
		f 3 8 24 -24
		mu 0 3 20 19 24
		f 3 9 25 -25
		mu 0 3 19 18 24
		f 3 10 26 -26
		mu 0 3 18 17 24
		f 3 11 27 -27
		mu 0 3 17 16 24
		f 3 12 28 -28
		mu 0 3 16 23 24
		f 3 13 21 -29
		mu 0 3 23 22 24;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder5";
	setAttr ".t" -type "double3" -2.3375387853598437 -10.088447815329777 0.1195713262695267 ;
	setAttr ".s" -type "double3" 1.2468814633806273 0.50136822784573398 1.2468814633806273 ;
createNode mesh -n "polySurfaceShape2" -p "pCylinder5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.421875 0.765625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 27 ".uvst[0].uvsp[0:26]" -type "float2" 0.375 0.3125 0.40625
		 0.3125 0.4375 0.3125 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375
		 0.3125 0.625 0.3125 0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875
		 0.68843985 0.5 0.68843985 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985
		 0.625 0.68843985 0.61048543 0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375
		 0.38951457 0.95423543 0.5 1 0.61048543 0.95423543 0.65625 0.84375 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt";
	setAttr ".pt[0]" -type "float3" 0.66403294 0 -0.49238026 ;
	setAttr ".pt[3]" -type "float3" -0.50123888 0 -0.17404643 ;
	setAttr ".pt[4]" -type "float3" -0.66867304 0 0.19089748 ;
	setAttr ".pt[5]" -type "float3" -0.1674342 0 0.36494392 ;
	setAttr ".pt[7]" -type "float3" 0.66403294 0 -0.49238026 ;
	setAttr ".pt[8]" -type "float3" -0.039658383 -0.3209545 -0.03554289 ;
	setAttr ".pt[9]" -type "float3" -0.051459372 -0.034835294 0.00042468496 ;
	setAttr ".pt[10]" -type "float3" -0.033116132 0.27168995 0.036143489 ;
	setAttr ".pt[11]" -type "float3" 0.0046260632 0.41906285 0.050689936 ;
	setAttr ".pt[12]" -type "float3" 0.039658383 0.3209545 0.03554289 ;
	setAttr ".pt[13]" -type "float3" 0.051459372 0.034835346 -0.00042468123 ;
	setAttr ".pt[14]" -type "float3" 0.033116132 -0.27168995 -0.036143489 ;
	setAttr ".pt[15]" -type "float3" -0.0046260655 -0.41906291 -0.050689936 ;
	setAttr ".pt[16]" -type "float3" -8.8923291e-010 1.6791629e-008 2.1361259e-009 ;
	setAttr -s 17 ".vt[0:16]"  4.17284727 -18.26131248 -4.17284727 -2.4671232e-007 -18.26131248 -5.90129709
		 -4.17284727 -18.26131248 -4.17284727 -5.90129709 -18.26131248 -1.2335616e-007 -4.17284727 -18.26131248 4.17284727
		 -2.4671232e-007 -18.26131248 5.90129709 4.17284727 -18.26131248 4.17284727 5.90129709 -18.26131248 -1.2335616e-007
		 2.3680377 0.0096587539 -2.3680377 -1.4000602e-007 0.0096587539 -3.34891129 -2.3680377 0.0096587539 -2.3680377
		 -3.34891129 0.0096587539 -7.0003011e-008 -2.3680377 0.0096587539 2.3680377 -1.4000602e-007 0.0096587539 3.34891129
		 2.3680377 0.0096587539 2.3680377 3.34891129 0.0096587539 -7.0003011e-008 -1.4000602e-007 0.0096587539 -7.0003011e-008;
	setAttr -s 32 ".ed[0:31]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 0 1 9 0 2 10 0
		 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0 8 16 1 9 16 1 10 16 1 11 16 1 12 16 1 13 16 1
		 14 16 1 15 16 1;
	setAttr -s 16 -ch 56 ".fc[0:15]" -type "polyFaces" 
		f 4 0 17 -9 -17
		mu 0 4 0 1 10 9
		f 4 1 18 -10 -18
		mu 0 4 1 2 11 10
		f 4 2 19 -11 -19
		mu 0 4 2 3 12 11
		f 4 3 20 -12 -20
		mu 0 4 3 4 13 12
		f 4 4 21 -13 -21
		mu 0 4 4 5 14 13
		f 4 5 22 -14 -22
		mu 0 4 5 6 15 14
		f 4 6 23 -15 -23
		mu 0 4 6 7 16 15
		f 4 7 16 -16 -24
		mu 0 4 7 8 17 16
		f 3 8 25 -25
		mu 0 3 24 23 26
		f 3 9 26 -26
		mu 0 3 23 22 26
		f 3 10 27 -27
		mu 0 3 22 21 26
		f 3 11 28 -28
		mu 0 3 21 20 26
		f 3 12 29 -29
		mu 0 3 20 19 26
		f 3 13 30 -30
		mu 0 3 19 18 26
		f 3 14 31 -31
		mu 0 3 18 25 26
		f 3 15 24 -32
		mu 0 3 25 24 26;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "transform6" -p "pCylinder5";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape5" -p "transform6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.421875 0.765625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[17:20]" -type "float3"  0.37628344 -0.047089227 0.21217947 
		0.14184366 -0.024448851 -0.33079532 -0.26045752 0.033147141 0.26486018 -0.40735012 
		0.041578326 -0.54885048;
createNode transform -n "pCylinder6";
	setAttr ".t" -type "double3" -0.67313403249566339 -17.968528476032155 1.004999863474777 ;
	setAttr ".r" -type "double3" 0 -51.896793151222326 0 ;
	setAttr ".s" -type "double3" 2.8481038490797492 1.5321226366880383 2.9438730576712797 ;
createNode mesh -n "polySurfaceShape1" -p "pCylinder6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.421875 0.84375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 27 ".uvst[0].uvsp[0:26]" -type "float2" 0.375 0.3125 0.40625
		 0.3125 0.4375 0.3125 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375
		 0.3125 0.625 0.3125 0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875
		 0.68843985 0.5 0.68843985 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985
		 0.625 0.68843985 0.61048543 0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375
		 0.38951457 0.95423543 0.5 1 0.61048543 0.95423543 0.65625 0.84375 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 17 ".pt[0:16]" -type "float3"  0.66404629 1.796893 -0.49239254 
		-6.8212103e-013 1.796893 2.8610229e-006 6.6757202e-006 1.796893 6.6757202e-006 -0.5012598 
		1.796893 -0.17404692 -0.66868019 1.796893 0.19089699 -0.16743468 1.796893 0.36494637 
		-6.6757202e-006 1.796893 -6.6757202e-006 0.66402054 1.796893 -0.49237812 -1.9073486e-006 
		-0.71236736 1.9073486e-006 5.968559e-013 -0.046915025 -1.0967255e-005 1.9073486e-006 
		0.67221367 1.9073486e-006 -1.0967255e-005 0.67221367 5.6843419e-014 1.9073486e-006 
		0.67221367 -1.9073486e-006 3.9790393e-013 0.67221367 1.0967255e-005 -1.9073486e-006 
		-0.046915025 -1.9073486e-006 1.0967255e-005 -0.71236736 3.2684966e-013 4.2632564e-013 
		1.7249697 1.9895197e-013;
	setAttr -s 17 ".vt[0:16]"  4.17284727 -18.26131248 -4.17284727 -2.4671232e-007 -18.26131248 -5.90129709
		 -4.17284727 -18.26131248 -4.17284727 -5.90129709 -18.26131248 -1.2335616e-007 -4.17284727 -18.26131248 4.17284727
		 -2.4671232e-007 -18.26131248 5.90129709 4.17284727 -18.26131248 4.17284727 5.90129709 -18.26131248 -1.2335616e-007
		 2.3680377 0.0096587539 -2.3680377 -1.4000602e-007 0.0096587539 -3.34891129 -2.3680377 0.0096587539 -2.3680377
		 -3.34891129 0.0096587539 -7.0003011e-008 -2.3680377 0.0096587539 2.3680377 -1.4000602e-007 0.0096587539 3.34891129
		 2.3680377 0.0096587539 2.3680377 3.34891129 0.0096587539 -7.0003011e-008 -1.4000602e-007 0.0096587539 -7.0003011e-008;
	setAttr -s 32 ".ed[0:31]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 0 1 9 0 2 10 0
		 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0 8 16 1 9 16 1 10 16 1 11 16 1 12 16 1 13 16 1
		 14 16 1 15 16 1;
	setAttr -s 16 -ch 56 ".fc[0:15]" -type "polyFaces" 
		f 4 0 17 -9 -17
		mu 0 4 0 1 10 9
		f 4 1 18 -10 -18
		mu 0 4 1 2 11 10
		f 4 2 19 -11 -19
		mu 0 4 2 3 12 11
		f 4 3 20 -12 -20
		mu 0 4 3 4 13 12
		f 4 4 21 -13 -21
		mu 0 4 4 5 14 13
		f 4 5 22 -14 -22
		mu 0 4 5 6 15 14
		f 4 6 23 -15 -23
		mu 0 4 6 7 16 15
		f 4 7 16 -16 -24
		mu 0 4 7 8 17 16
		f 3 8 25 -25
		mu 0 3 24 23 26
		f 3 9 26 -26
		mu 0 3 23 22 26
		f 3 10 27 -27
		mu 0 3 22 21 26
		f 3 11 28 -28
		mu 0 3 21 20 26
		f 3 12 29 -29
		mu 0 3 20 19 26
		f 3 13 30 -30
		mu 0 3 19 18 26
		f 3 14 31 -31
		mu 0 3 18 25 26
		f 3 15 24 -32
		mu 0 3 25 24 26;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "transform5" -p "pCylinder6";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape6" -p "transform5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.55524271726608276 0.89586770534515381 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 23 ".pt[0:22]" -type "float3"  -0.30031249 -8.0181847 0.21690647 
		-0.30027434 -8.0181847 0.21702473 1.1444092e-005 -8.0181847 1.1444092e-005 0.39982244 
		-8.0181847 -0.38262892 0.39993688 -8.0181847 -0.38248515 -6.4373016e-006 -8.0181847 
		0.00022888184 -0.00011825562 -8.0181847 -1.1444092e-005 -0.30029723 -8.0181847 0.21694367 
		-8.0108643e-005 0.078495249 8.0108643e-005 -2.2737368e-013 0.004161688 -3.0517578e-005 
		0.00012588501 -0.07616771 0.00012588501 0.00020599365 -0.07616771 1.4901161e-008 
		8.0108643e-005 -0.07616771 -3.4317374e-005 4.5474735e-012 -0.07616771 3.4332275e-005 
		-8.0108643e-005 0.004161688 -3.4332275e-005 3.4332275e-005 0.6625607 -1.0913936e-011 
		-2.3646862e-011 0.39030111 -2.9558578e-012 -0.17995834 -0.005662553 0.79815674 0.38863373 
		-0.27444488 0.54328156 -0.077415466 -0.65174335 0.171808 0.64447021 -0.2854979 -0.047046997 
		0.49115753 -0.28549784 -0.41847992 -0.14247894 -0.28549784 -0.85707092;
createNode transform -n "pCylinder7";
	setAttr ".t" -type "double3" -4.4838402594496047 -9.2671950294279526 -0.22923305132742655 ;
	setAttr ".r" -type "double3" 4.8455291614441167 -12.940355320374881 -14.227079776153195 ;
	setAttr ".s" -type "double3" 1.4351812484237907 4.4880900888025872 1.4351812484237907 ;
createNode transform -n "transform4" -p "pCylinder7";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape7" -p "transform4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.421875 0.82133764028549194 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt[8:10]" -type "float3"  0.035270214 -0.045698918 
		0.0039816312 0.035270214 -0.045698918 0.0039816312 0.035270214 -0.045698918 0.0039816312;
createNode transform -n "pCylinder9";
	setAttr ".t" -type "double3" -0.50344889447059493 -12.840125241524401 4.7624492243156373 ;
	setAttr ".r" -type "double3" -12.390788715116713 -4.3489399537674105 -0.083966375305995752 ;
	setAttr ".s" -type "double3" 1.9366744646507692 8.6919694700361756 1.9366744646507692 ;
createNode mesh -n "polySurfaceShape3" -p "pCylinder9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.578125 0.765625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 27 ".uvst[0].uvsp[0:26]" -type "float2" 0.375 0.3125 0.40625
		 0.3125 0.4375 0.3125 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375
		 0.3125 0.625 0.3125 0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875
		 0.68843985 0.5 0.68843985 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985
		 0.625 0.68843985 0.61048543 0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375
		 0.38951457 0.95423543 0.5 1 0.61048543 0.95423543 0.65625 0.84375 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 17 ".vt[0:16]"  1.11289549 -1.5019486 -1.11289549 -3.526636e-008 -1.5019486 -1.57387185
		 -1.11289549 -1.5019486 -1.11289549 -1.57387185 -1.5019486 -1.4494328e-008 -1.11289549 -1.5019486 1.11289549
		 -3.526636e-008 -1.5019486 1.57387197 1.11289561 -1.5019486 1.11289561 1.57387209 -1.5019486 -1.4494328e-008
		 0.70710671 1.058404326 -0.65672743 -2.7649781e-016 1.082596183 -0.92875284 -0.70710671 1.058404326 -0.65672743
		 -0.99999988 1 4.9863197e-010 -0.70710671 0.94159567 0.65672743 2.6485084e-016 0.91740382 0.9287529
		 0.70710677 0.94159567 0.65672749 1 1 4.9863158e-010 -5.8234971e-018 1 4.986318e-010;
	setAttr -s 32 ".ed[0:31]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 0 1 9 0 2 10 0
		 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0 8 16 1 9 16 1 10 16 1 11 16 1 12 16 1 13 16 1
		 14 16 1 15 16 1;
	setAttr -s 16 -ch 56 ".fc[0:15]" -type "polyFaces" 
		f 4 0 17 -9 -17
		mu 0 4 0 1 10 9
		f 4 1 18 -10 -18
		mu 0 4 1 2 11 10
		f 4 2 19 -11 -19
		mu 0 4 2 3 12 11
		f 4 3 20 -12 -20
		mu 0 4 3 4 13 12
		f 4 4 21 -13 -21
		mu 0 4 4 5 14 13
		f 4 5 22 -14 -22
		mu 0 4 5 6 15 14
		f 4 6 23 -15 -23
		mu 0 4 6 7 16 15
		f 4 7 16 -16 -24
		mu 0 4 7 8 17 16
		f 3 8 25 -25
		mu 0 3 24 23 26
		f 3 9 26 -26
		mu 0 3 23 22 26
		f 3 10 27 -27
		mu 0 3 22 21 26
		f 3 11 28 -28
		mu 0 3 21 20 26
		f 3 12 29 -29
		mu 0 3 20 19 26
		f 3 13 30 -30
		mu 0 3 19 18 26
		f 3 14 31 -31
		mu 0 3 18 25 26
		f 3 15 24 -32
		mu 0 3 25 24 26;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "transform3" -p "pCylinder9";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape9" -p "transform3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.765625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 13 ".pt";
	setAttr ".pt[9]" -type "float3" 0 -4.6566129e-010 -7.4505806e-009 ;
	setAttr ".pt[10]" -type "float3" 7.4505806e-009 -2.3283064e-010 0 ;
	setAttr ".pt[11]" -type "float3" 0 1.8626451e-009 -7.4505806e-009 ;
	setAttr ".pt[13]" -type "float3" -1.4901161e-008 9.3132257e-010 0 ;
	setAttr ".pt[15]" -type "float3" -4.5474735e-013 -5.8207661e-011 1.1641532e-010 ;
	setAttr ".pt[16]" -type "float3" -3.4106051e-013 -5.8207661e-011 -8.7311491e-011 ;
	setAttr ".pt[18]" -type "float3" -4.5474735e-013 5.8207661e-011 -1.1641532e-010 ;
	setAttr ".pt[19]" -type "float3" -2.9802322e-008 -1.8626451e-009 0 ;
	setAttr ".pt[20]" -type "float3" 1.4901161e-008 3.4924597e-010 -7.4505806e-009 ;
	setAttr ".pt[21]" -type "float3" -2.9802322e-008 -9.3132257e-010 -7.4505806e-009 ;
	setAttr ".pt[22]" -type "float3" 0 0 -1.4901161e-008 ;
	setAttr ".pt[23]" -type "float3" 0 -1.3969839e-009 7.4505806e-009 ;
	setAttr ".pt[24]" -type "float3" 0 3.4924597e-010 -7.4505806e-009 ;
createNode transform -n "pCylinder10";
	setAttr ".t" -type "double3" -0.71466405182464288 -11.029518566193389 2.8748527765306471 ;
	setAttr ".r" -type "double3" -15.871613494982174 -29.89208155530747 6.5728636882106732 ;
	setAttr ".s" -type "double3" 1.0896029080749301 1.4290169077708632 1.0896029080749301 ;
createNode transform -n "transform2" -p "pCylinder10";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape10" -p "transform2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.578125 0.84062498807907104 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 19 ".uvst[0].uvsp[0:18]" -type "float2" 0.5 0.3125 0.53125
		 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125 0.5 0.68843985 0.53125 0.68843985
		 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.61048543 0.73326457 0.5 0.6875
		 0.38951457 0.73326457 0.34375 0.84375 0.38951457 0.95423543 0.5 1 0.61048543 0.95423543
		 0.65625 0.84375 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  0.66525972 0.34747183 -2.345727 
		-1.1945213 0.20702486 -0.66942036 -0.32199103 0.083591908 -0.34368169 0.50402451 
		0.086852908 -0.74091774 0.97371757 0.19587965 -1.5963821 0.45695251 0.038947619 -0.43795174 
		0.016751632 0.10168759 -0.60503221 -0.43365228 0.10503884 -0.41856265 -0.62945026 
		0.046670914 0.013940037 -0.45691508 -0.038857698 0.4374072 0.012711733 -0.11494084 
		0.66940314 0.46311557 -0.11829208 0.48293364 0.71873045 0.38641164 0.18111666 0.059835441 
		0.44638073 0.13041313;
	setAttr -s 14 ".vt[0:13]"  4.43311024 -21.27413177 -5.54737091 -5.31853962 -21.82069969 3.32156825
		 -0.70883048 -22.30105782 5.083416462 3.63315177 -22.28837013 2.9937377 6.082497597 -21.86407471 -1.54725695
		 2.33210707 -0.31913978 -2.45582342 0.041474957 0.18693605 -3.28260803 -2.32367826 0.22498049 -2.29630828
		 -3.36223412 -0.15048112 -0.042616386 -2.48146486 -0.79632133 2.12621593 -0.041475751 -1.41241288 3.28260684
		 2.32367754 -1.45045829 2.29630685 3.36223412 -1.074993372 0.042616028 -0.074678965 -0.5577305 -0.16480376;
	setAttr -s 25 ".ed[0:24]"  1 2 0 2 3 0 3 4 0 4 0 0 5 6 0 6 7 0 7 8 0
		 8 9 0 9 10 0 10 11 0 11 12 0 12 5 0 0 5 0 1 9 0 2 10 0 3 11 0 4 12 0 5 13 1 6 13 1
		 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1 12 13 1;
	setAttr -s 12 -ch 40 ".fc[0:11]" -type "polyFaces" 
		f 4 0 14 -9 -14
		mu 0 4 0 1 6 5
		f 4 1 15 -10 -15
		mu 0 4 1 2 7 6
		f 4 2 16 -11 -16
		mu 0 4 2 3 8 7
		f 4 3 12 -12 -17
		mu 0 4 3 4 9 8
		f 3 4 18 -18
		mu 0 3 16 15 18
		f 3 5 19 -19
		mu 0 3 15 14 18
		f 3 6 20 -20
		mu 0 3 14 13 18
		f 3 7 21 -21
		mu 0 3 13 12 18
		f 3 8 22 -22
		mu 0 3 12 11 18
		f 3 9 23 -23
		mu 0 3 11 10 18
		f 3 10 24 -24
		mu 0 3 10 17 18
		f 3 11 17 -25
		mu 0 3 17 16 18;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder11";
	setAttr ".t" -type "double3" -0.68274667570772518 -35.616611624598704 1.6972553794633711 ;
	setAttr ".s" -type "double3" 1.7487159115062387 1.7487159115062387 1.7487159115062387 ;
createNode transform -n "transform1" -p "pCylinder11";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape11" -p "transform1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.83749997615814209 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[10]" -type "float3" 0 -0.73887247 0 ;
	setAttr ".pt[11]" -type "float3" 2.9802322e-008 -0.73887247 0 ;
	setAttr ".pt[16]" -type "float3" 2.9802322e-008 0 0 ;
	setAttr ".pt[24]" -type "float3" 0.38146022 -1.5383598 -0.4151895 ;
	setAttr ".pt[25]" -type "float3" -0.045800611 0 -0.85542929 ;
	setAttr ".pt[26]" -type "float3" 0.30781561 -0.44057637 0.085208505 ;
	setAttr ".pt[27]" -type "float3" -0.56459862 -0.98517865 -0.64053595 ;
	setAttr ".pt[28]" -type "float3" -0.77949184 -1.5015996 0.053876869 ;
createNode transform -n "pCylinder12";
createNode mesh -n "pCylinder12Shape" -p "pCylinder12";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pSolid9";
	setAttr ".t" -type "double3" 3.9399583386502073 -19.533940976190916 36.690645948587708 ;
createNode transform -n "polySurface2" -p "pSolid9";
	setAttr ".t" -type "double3" 6.4197803569764176 -4.3649146498562779 11.249677110991399 ;
	setAttr ".r" -type "double3" -51.055039601487898 63.055357823723256 -38.464653780191284 ;
	setAttr ".rp" -type "double3" 13.036605834960938 -14.176516771316528 29.279804229736328 ;
	setAttr ".rpt" -type "double3" -5.3991506376860343e-008 9.4139451789487794e-009 
		-3.8538477298288853e-008 ;
	setAttr ".sp" -type "double3" 13.036605834960938 -14.176516771316528 29.279804229736328 ;
createNode transform -n "transform37" -p "|pSolid9|polySurface2";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape5" -p "transform37";
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
	setAttr -s 20 ".pt[0:19]" -type "float3"  0 0.32653618 0 0 -0.72622979 
		0 0 0.77247179 0 0 -0.45062596 0 0 1.2527846 0 0 -0.92514175 0 0 0.20360182 0 0 -1.499809 
		0 0 0.72622979 0 0 -0.32653597 0 0 -0.7724719 0 0 0.45062596 0 0 -1.2527845 0 0 0.92514127 
		0 0 -0.20360182 0 0 1.4998088 0 0 1.0538727 0 0 -1.7023035 0 0 -1.0538728 0 0 1.7023033 
		0;
createNode transform -n "polySurface3" -p "pSolid9";
	setAttr ".t" -type "double3" -2.6204336621052846 -1.9820531422343102 -11.782353369453304 ;
	setAttr ".s" -type "double3" 1.0753176855692019 1.0753176855692019 1.0753176855692019 ;
	setAttr ".rp" -type "double3" 19.525191783905029 -18.514101505279541 36.079925537109368 ;
	setAttr ".sp" -type "double3" 19.525191783905029 -18.514101505279541 36.079925537109375 ;
	setAttr ".spt" -type "double3" 1.1102230246251565e-015 -1.5543122344752192e-015 
		-3.9968028886505635e-015 ;
createNode transform -n "transform36" -p "polySurface3";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape6" -p "transform36";
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
createNode transform -n "polySurface4" -p "pSolid9";
	setAttr ".t" -type "double3" 9.4352794014426067 -2.2139916662264412 -2.5423285983824044 ;
	setAttr ".rp" -type "double3" 19.525191783905029 -18.514101505279541 36.079925537109375 ;
	setAttr ".sp" -type "double3" 19.525191783905029 -18.514101505279541 36.079925537109375 ;
createNode transform -n "transform35" -p "polySurface4";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape7" -p "transform35";
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
	setAttr -s 20 ".pt[0:19]" -type "float3"  2.4434152 3.4106051e-013 
		1.0835059 1.2365397 3.4106051e-013 1.3980753 1.4530289 1.1013412e-013 -1.7020797 
		0.62444872 3.4106051e-013 -0.32351199 2.5772114 2.8421709e-013 -0.83249468 -0.047410168 
		3.4106051e-013 2.6499591 1.6498883 3.4106051e-013 1.8572094 -0.30287334 3.4106051e-013 
		2.3661964 -1.2365409 1.5276669e-013 -1.3980756 -2.4434152 2.344791e-013 -1.0835056 
		-1.4530289 3.4106051e-013 1.7020804 -0.62444907 6.8212103e-013 0.32351199 -2.5772119 
		3.4106051e-013 0.83249468 0.047411107 5.6843419e-014 -2.6499581 -1.6498883 1.030287e-013 
		-1.8572092 0.30287325 6.3948846e-014 -2.3661964 1.2932596 3.4106051e-013 0.41938904 
		-1.8663769 3.4106051e-013 1.2429414 -1.2932601 3.4106051e-013 -0.41938904 1.8663769 
		1.7763568e-013 -1.2429411;
createNode transform -n "polySurface5" -p "pSolid9";
	setAttr ".t" -type "double3" 10.826632394638274 -3.1909633932513266 15.145460703189002 ;
	setAttr ".r" -type "double3" -71.775311472764187 43.879351916356988 -48.602732155031504 ;
	setAttr ".rp" -type "double3" 21.437496185302734 -18.514009475708008 29.005124092102051 ;
	setAttr ".sp" -type "double3" 21.437496185302734 -18.514009475708008 29.005124092102051 ;
createNode transform -n "transform34" -p "polySurface5";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape8" -p "transform34";
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
	setAttr -s 20 ".pt[0:19]" -type "float3"  1.96365 2.2860034 -0.055975009 
		2.5764053 3.4221516 -1.4789023 -2.2094724 2.0017698 -2.9402716 -0.0027268252 3.2464862 
		-3.2614956 -0.99418497 1.4081606 -0.95915079 3.9436185 0.17855237 2.3539991 2.8086355 
		0.28134817 2.3128884 3.8000941 2.1196742 0.010543944 -2.5764058 -3.4221509 1.4789015 
		-1.9636518 -2.286001 0.055973165 2.2094722 -2.0017695 2.9402709 0.0027266382 -3.2464848 
		3.2614937 0.99418408 -1.4081591 0.95914936 -3.9436195 -0.17855138 -2.354001 -2.8086362 
		-0.28134763 -2.3128903 -3.8000941 -2.1196737 -0.010544697 0.37302977 -1.8354403 2.8737526 
		1.9772421 1.1390336 -0.85152036 -0.37303057 1.8354406 -2.8737526 -1.9772432 -1.1390322 
		0.85151947;
createNode transform -n "polySurface6" -p "pSolid9";
	setAttr ".t" -type "double3" 6.0655053296669053 0.40704980187091877 8.4994032632810672 ;
	setAttr ".rp" -type "double3" 5.523331880569458 -20.07298469543457 25.146690368652344 ;
	setAttr ".sp" -type "double3" 5.523331880569458 -20.07298469543457 25.146690368652344 ;
createNode transform -n "transform33" -p "polySurface6";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape9" -p "transform33";
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
createNode transform -n "transform17" -p "pSolid9";
	setAttr ".v" no;
createNode mesh -n "pSolid9Shape" -p "transform17";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:71]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.48107236623764038 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 228 ".uvst[0].uvsp[0:227]" -type "float2" 0.099106349 0.25
		 0.22160855 0.25 0.25946382 0.36803401 0.16035745 0.440983 0.061251096 0.36803401
		 0.037855253 0.440983 0.1982127 0.559017 0.099106349 0.63196599 0 0.559017 0.32071489
		 0.559017 0.35857016 0.67705101 0.25946379 0.75 0.16035745 0.67705101 0.35857016 0.440983
		 0.48107234 0.440983 0.51892757 0.559017 0.41982123 0.63196599 0.29731905 0.25 0.41982123
		 0.25 0.4576765 0.36803398 0.74053615 0.25 0.83964252 0.32294902 0.80178726 0.440983
		 0.67928505 0.440983 0.64142984 0.32294902 0.58017874 0.36803401 0.64142984 0.559017
		 0.74053615 0.63196599 0.70268089 0.75 0.58017874 0.75 0.54232347 0.63196599 0.83964252
		 0.559017 0.9387489 0.63196599 0.90089363 0.75 0.77839142 0.75 0.90089363 0.36803398
		 1 0.440983 0.96214473 0.559017 0.1982127 0.559017 0.099106349 0.63196599 0 0.559017
		 0.037855253 0.440983 0.16035745 0.440983 0.25946382 0.36803401 0.35857016 0.440983
		 0.32071489 0.559017 0.35857016 0.67705101 0.25946379 0.75 0.16035745 0.67705101 0.48107234
		 0.440983 0.51892757 0.559017 0.41982123 0.63196599 0.58017874 0.75 0.54232347 0.63196599
		 0.64142984 0.559017 0.74053615 0.63196599 0.70268089 0.75 0.90089363 0.75 0.77839142
		 0.75 0.83964252 0.559017 0.9387489 0.63196599 0.96214473 0.559017 0.80178726 0.440983
		 0.90089363 0.36803398 1 0.440983 0.061251096 0.36803401 0.099106349 0.25 0.22160855
		 0.25 0.29731905 0.25 0.41982123 0.25 0.4576765 0.36803398 0.58017874 0.36803401 0.67928505
		 0.440983 0.64142984 0.32294902 0.74053615 0.25 0.83964252 0.32294902 0.1982127 0.559017
		 0.099106349 0.63196599 0 0.559017 0.037855253 0.440983 0.16035745 0.440983 0.25946382
		 0.36803401 0.35857016 0.440983 0.32071489 0.559017 0.35857016 0.67705101 0.25946379
		 0.75 0.16035745 0.67705101 0.48107234 0.440983 0.51892757 0.559017 0.41982123 0.63196599
		 0.58017874 0.75 0.54232347 0.63196599 0.64142984 0.559017 0.74053615 0.63196599 0.70268089
		 0.75 0.90089363 0.75 0.77839142 0.75 0.83964252 0.559017 0.9387489 0.63196599 0.96214473
		 0.559017 0.80178726 0.440983 0.90089363 0.36803398 1 0.440983 0.061251096 0.36803401
		 0.099106349 0.25 0.22160855 0.25 0.29731905 0.25 0.41982123 0.25 0.4576765 0.36803398
		 0.58017874 0.36803401 0.67928505 0.440983 0.64142984 0.32294902 0.74053615 0.25 0.83964252
		 0.32294902 0.1982127 0.559017 0.099106349 0.63196599 0 0.559017 0.037855253 0.440983
		 0.16035745 0.440983 0.25946382 0.36803401 0.35857016 0.440983 0.32071489 0.559017
		 0.35857016 0.67705101 0.25946379 0.75 0.16035745 0.67705101 0.48107234 0.440983 0.51892757
		 0.559017 0.41982123 0.63196599 0.58017874 0.75 0.54232347 0.63196599 0.64142984 0.559017
		 0.74053615 0.63196599 0.70268089 0.75 0.90089363 0.75 0.77839142 0.75 0.83964252
		 0.559017 0.9387489 0.63196599 0.96214473 0.559017 0.80178726 0.440983 0.90089363
		 0.36803398 1 0.440983 0.061251096 0.36803401 0.099106349 0.25 0.22160855 0.25 0.29731905
		 0.25 0.41982123 0.25 0.4576765 0.36803398 0.58017874 0.36803401 0.67928505 0.440983
		 0.64142984 0.32294902 0.74053615 0.25 0.83964252 0.32294902 0.1982127 0.559017 0.099106349
		 0.63196599 0 0.559017 0.037855253 0.440983 0.16035745 0.440983 0.25946382 0.36803401
		 0.35857016 0.440983 0.32071489 0.559017 0.35857016 0.67705101 0.25946379 0.75 0.16035745
		 0.67705101 0.48107234 0.440983 0.51892757 0.559017 0.41982123 0.63196599 0.58017874
		 0.75 0.54232347 0.63196599 0.64142984 0.559017 0.74053615 0.63196599 0.70268089 0.75
		 0.90089363 0.75 0.77839142 0.75 0.83964252 0.559017 0.9387489 0.63196599 0.96214473
		 0.559017 0.80178726 0.440983 0.90089363 0.36803398 1 0.440983 0.061251096 0.36803401
		 0.099106349 0.25 0.22160855 0.25 0.29731905 0.25 0.41982123 0.25 0.4576765 0.36803398
		 0.58017874 0.36803401 0.67928505 0.440983 0.64142984 0.32294902 0.74053615 0.25 0.83964252
		 0.32294902 0.1982127 0.559017 0.099106349 0.63196599 0 0.559017 0.037855253 0.440983
		 0.16035745 0.440983 0.25946382 0.36803401 0.35857016 0.440983 0.32071489 0.559017
		 0.35857016 0.67705101 0.25946379 0.75 0.16035745 0.67705101 0.48107234 0.440983 0.51892757
		 0.559017 0.41982123 0.63196599 0.58017874 0.75 0.54232347 0.63196599 0.64142984 0.559017
		 0.74053615 0.63196599 0.70268089 0.75 0.90089363 0.75 0.77839142 0.75 0.83964252
		 0.559017 0.9387489 0.63196599 0.96214473 0.559017 0.80178726 0.440983 0.90089363
		 0.36803398 1 0.440983 0.061251096 0.36803401 0.099106349 0.25 0.22160855 0.25 0.29731905
		 0.25 0.41982123 0.25 0.4576765 0.36803398 0.58017874 0.36803401 0.67928505 0.440983
		 0.64142984 0.32294902 0.74053615 0.25 0.83964252 0.32294902;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 27 ".pt";
	setAttr ".pt[22]" -type "float3" 0 5.9604645e-008 0 ;
	setAttr ".pt[24]" -type "float3" 0 1.4901161e-008 0 ;
	setAttr ".pt[33]" -type "float3" 0 2.9802322e-008 0 ;
	setAttr ".pt[40]" -type "float3" 0 -1.1920929e-007 0 ;
	setAttr ".pt[45]" -type "float3" 0 -2.9802322e-008 0 ;
	setAttr ".pt[48]" -type "float3" 0 -5.9604645e-008 0 ;
	setAttr ".pt[50]" -type "float3" 0 -2.9802322e-008 0 ;
	setAttr ".pt[55]" -type "float3" 0 -1.4901161e-008 0 ;
	setAttr ".pt[56]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".pt[60]" -type "float3" 0 -1.1920929e-007 0 ;
	setAttr ".pt[65]" -type "float3" 0 -2.9802322e-008 0 ;
	setAttr ".pt[68]" -type "float3" 0 -5.9604645e-008 0 ;
	setAttr ".pt[70]" -type "float3" 0 -2.9802322e-008 0 ;
	setAttr ".pt[75]" -type "float3" 0 -1.4901161e-008 0 ;
	setAttr ".pt[76]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".pt[80]" -type "float3" 0 -5.9604645e-008 0 ;
	setAttr ".pt[82]" -type "float3" 0 -1.1920929e-007 0 ;
	setAttr ".pt[85]" -type "float3" 0 -5.9604645e-008 0 ;
	setAttr ".pt[88]" -type "float3" 0 1.4901161e-008 0 ;
	setAttr ".pt[89]" -type "float3" 0 5.9604645e-008 0 ;
	setAttr ".pt[91]" -type "float3" 0 2.9802322e-008 0 ;
	setAttr ".pt[96]" -type "float3" 0 -5.9604645e-008 0 ;
	setAttr ".pt[99]" -type "float3" 0 -5.9604645e-008 0 ;
	setAttr ".pt[105]" -type "float3" 0 -2.9802322e-008 0 ;
	setAttr ".pt[113]" -type "float3" 0 2.9802322e-008 0 ;
	setAttr ".pt[115]" -type "float3" 0 -1.4901161e-008 0 ;
	setAttr ".pt[116]" -type "float3" 0 -5.9604645e-008 0 ;
	setAttr -s 120 ".vt[0:119]"  17.56276321 -21.47327614 19.61520195 17.56276321 -15.88983727 19.61520195
		 13.045665741 -18.6815567 12.30638504 14.77104378 -14.16445923 15.098104477 14.77104378 -23.19865417 15.098104477
		 13.045665741 -18.6815567 26.92401886 14.77104378 -23.19865417 24.13229942 14.77104378 -14.16445923 24.13229942
		 2.94512939 -21.47327614 19.61520195 2.94512939 -15.88983727 19.61520195 7.46222639 -18.6815567 26.92401886
		 5.73684931 -23.19865417 24.13229942 5.73684931 -14.16445923 24.13229942 7.46222639 -18.6815567 12.30638504
		 5.73684931 -14.16445923 15.098104477 5.73684931 -23.19865417 15.098104477 10.2539463 -25.99037361 22.40692139
		 10.2539463 -11.37273979 22.40692139 10.2539463 -11.37273979 16.82348251 10.2539463 -25.99037361 16.82348251
		 21.19598389 -16.1168499 23.17511749 17.80161476 -9.86113358 21.13856888 9.81249237 -18.76667786 20.5538044
		 10.76622963 -11.4988184 19.51850891 16.2584343 -21.62077904 22.81371307 21.19739723 -8.67916584 32.56434631
		 23.29469299 -15.38635349 30.23663521 17.80248833 -5.26439285 26.94143105 8.27159691 -18.49189949 37.42103958
		 4.87722683 -12.23618317 35.38449097 16.2607193 -9.58635426 38.0058059692 15.30698204 -16.85421371 39.041099548
		 9.81477642 -6.73225403 35.74589539 4.87581444 -19.67386627 25.99526405 2.77851868 -12.96667957 28.32297325
		 8.27072334 -23.088640213 31.61817741 19.65421677 -20.43881035 34.23949051 10.76764202 -4.061134338 28.90773773
		 6.4189949 -7.91422224 24.32011795 15.30556965 -24.29189873 29.65187073 25.20204735 -17.37565041 38.59726334
		 22.39808273 -13.92547035 39.32810974 22.90105629 -14.93285751 32.12543869 20.9759922 -12.41574192 35.32830048
		 25.51290131 -17.99824905 34.14576721 19.41504097 -19.90779305 42.23664856 23.35842514 -21.072929382 40.39483643
		 18.82151604 -15.49042225 41.5773735 16.65230179 -23.1027317 32.83174133 13.84833717 -19.65255165 33.56258774
		 16.14932823 -22.095344543 40.034412384 18.074392319 -24.61246109 36.8315506 13.53748226 -19.029953003 38.014083862
		 19.63534355 -17.12040901 29.92320251 15.69195843 -15.95527363 31.76501465 20.22886848 -21.53778076 30.58247757
		 22.52985954 -23.98057175 37.054302216 15.18898582 -14.94788742 38.96768951 16.52052498 -13.04763031 35.10554886
		 23.8613987 -22.080314636 33.19216156 25.20204735 -17.37565041 38.59726334 22.39808273 -13.92547035 39.32810974
		 22.90105629 -14.93285751 32.12543869 20.9759922 -12.41574192 35.32830048 25.51290131 -17.99824905 34.14576721
		 19.41504097 -19.90779305 42.23664856 23.35842514 -21.072929382 40.39483643 18.82151604 -15.49042225 41.5773735
		 16.65230179 -23.1027317 32.83174133 13.84833717 -19.65255165 33.56258774 16.14932823 -22.095344543 40.034412384
		 18.074392319 -24.61246109 36.8315506 13.53748226 -19.029953003 38.014083862 19.63534355 -17.12040901 29.92320251
		 15.69195843 -15.95527363 31.76501465 20.22886848 -21.53778076 30.58247757 22.52985954 -23.98057175 37.054302216
		 15.18898582 -14.94788742 38.96768951 16.52052498 -13.04763031 35.10554886 23.8613987 -22.080314636 33.19216156
		 25.7005291 -18.90434074 25.89946556 24.8669014 -15.28943253 26.59427261 20.0039653778 -17.8738842 23.95476341
		 21.34623146 -14.65257549 25.39237976 22.69507027 -20.50161934 24.26815796 25.80927658 -18.071548462 31.94836426
		 26.28294945 -20.62378311 29.20847702 24.93411064 -14.77473927 30.33269882 18.0080909729 -21.73858643 31.41597366
		 17.17446327 -18.12367821 32.11077881 22.87102699 -19.15413475 34.055484772 21.52876091 -22.3754425 32.61786652
		 20.1799221 -16.52639961 33.74208832 17.06571579 -18.95647049 26.061882019 16.59204292 -16.40423584 28.80176926
		 17.94088173 -22.25328064 27.67754745 23.63744545 -23.28373528 29.62225151 21.45497894 -13.81978416 31.44128036
		 19.23754692 -13.74428368 28.38799477 21.42001343 -23.20823479 26.56896591 6.29003859 -16.27899361 26.096067429
		 4.54294062 -17.46826553 27.99937248 2.54662251 -17.75468445 23.86286354 2.22938251 -18.38029289 26.61917686
		 5.056245804 -16.45601082 23.53956413 8.41842079 -19.94719505 27.88277435 8.6852169 -17.81105614 26.02400589
		 5.85835314 -19.73533821 29.10361862 6.50372267 -22.67770386 22.29400826 4.7566247 -23.86697578 24.19731331
		 8.50004101 -22.39128494 26.4305172 8.81728077 -21.7656765 23.67420387 5.99041748 -23.68995857 26.7538166
		 2.62824273 -20.19877434 22.41060638 2.36144638 -22.33491325 24.26937485 5.18831015 -20.41063118 21.18976212
		 8.93172646 -18.93494034 23.422966 4.35776472 -22.048494339 28.40588379 2.11493731 -21.21102905 26.87041473
		 6.68889856 -18.097475052 21.88749695;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 4 0 4 2 0 2 3 0 3 1 0 1 0 0 7 5 0 5 6 0 6 0 0 1 7 0
		 6 16 0 16 19 0 19 4 0 5 10 0 10 11 0 11 16 0 11 8 0 8 15 0 15 19 0 15 13 0 13 2 0
		 13 14 0 14 18 0 18 3 0 18 17 0 17 7 0 17 12 0 12 10 0 12 9 0 9 8 0 14 9 0 20 24 0
		 24 22 0 22 23 0 23 21 0 21 20 0 27 25 0 25 26 0 26 20 0 21 27 0 26 36 0 36 39 0 39 24 0
		 25 30 0 30 31 0 31 36 0 31 28 0 28 35 0 35 39 0 35 33 0 33 22 0 33 34 0 34 38 0 38 23 0
		 38 37 0 37 27 0 37 32 0 32 30 0 32 29 0 29 28 0 34 29 0 40 44 0 44 42 0 42 43 0 43 41 0
		 41 40 0 47 45 0 45 46 0 46 40 0 41 47 0 46 56 0 56 59 0 59 44 0 45 50 0 50 51 0 51 56 0
		 51 48 0 48 55 0 55 59 0 55 53 0 53 42 0 53 54 0 54 58 0 58 43 0 58 57 0 57 47 0 57 52 0
		 52 50 0 52 49 0 49 48 0 54 49 0 60 64 0 64 62 0 62 63 0 63 61 0 61 60 0 67 65 0 65 66 0
		 66 60 0 61 67 0 66 76 0 76 79 0 79 64 0 65 70 0 70 71 0 71 76 0 71 68 0 68 75 0 75 79 0
		 75 73 0 73 62 0 73 74 0 74 78 0 78 63 0 78 77 0 77 67 0 77 72 0 72 70 0 72 69 0 69 68 0
		 74 69 0 80 84 0 84 82 0 82 83 0 83 81 0 81 80 0 87 85 0 85 86 0 86 80 0 81 87 0 86 96 0
		 96 99 0 99 84 0 85 90 0 90 91 0 91 96 0 91 88 0 88 95 0 95 99 0 95 93 0 93 82 0 93 94 0
		 94 98 0 98 83 0 98 97 0 97 87 0 97 92 0 92 90 0 92 89 0 89 88 0 94 89 0 100 104 0
		 104 102 0 102 103 0 103 101 0 101 100 0 107 105 0 105 106 0 106 100 0 101 107 0 106 116 0
		 116 119 0 119 104 0 105 110 0 110 111 0 111 116 0 111 108 0;
	setAttr ".ed[166:179]" 108 115 0 115 119 0 115 113 0 113 102 0 113 114 0 114 118 0
		 118 103 0 118 117 0 117 107 0 117 112 0 112 110 0 112 109 0 109 108 0 114 109 0;
	setAttr -s 72 -ch 360 ".fc[0:71]" -type "polyFaces" 
		f 5 0 1 2 3 4
		mu 0 5 6 7 8 5 3
		f 5 5 6 7 -5 8
		mu 0 5 2 13 9 6 3
		f 5 -8 9 10 11 -1
		mu 0 5 6 9 10 11 12
		f 5 12 13 14 -10 -7
		mu 0 5 13 14 15 16 9
		f 5 -15 15 16 17 -11
		mu 0 5 29 30 26 27 28
		f 5 -12 -18 18 19 -2
		mu 0 5 33 34 27 31 32
		f 5 -20 20 21 22 -3
		mu 0 5 37 31 22 35 36
		f 5 -4 -23 23 24 -9
		mu 0 5 3 4 0 1 2
		f 5 -25 25 26 -13 -6
		mu 0 5 2 17 18 19 13
		f 5 -16 -14 -27 27 28
		mu 0 5 26 15 14 25 23
		f 5 -28 -26 -24 -22 29
		mu 0 5 23 24 20 21 22
		f 5 -30 -21 -19 -17 -29
		mu 0 5 23 22 31 27 26
		f 5 30 31 32 33 34
		mu 0 5 38 39 40 41 42
		f 5 35 36 37 -35 38
		mu 0 5 43 44 45 38 42
		f 5 -38 39 40 41 -31
		mu 0 5 38 45 46 47 48
		f 5 42 43 44 -40 -37
		mu 0 5 44 49 50 51 45
		f 5 -45 45 46 47 -41
		mu 0 5 52 53 54 55 56
		f 5 -42 -48 48 49 -32
		mu 0 5 57 58 55 59 60
		f 5 -50 50 51 52 -33
		mu 0 5 61 59 62 63 64
		f 5 -34 -53 53 54 -39
		mu 0 5 42 65 66 67 43
		f 5 -55 55 56 -43 -36
		mu 0 5 43 68 69 70 44
		f 5 -46 -44 -57 57 58
		mu 0 5 54 50 49 71 72
		f 5 -58 -56 -54 -52 59
		mu 0 5 72 73 74 75 62
		f 5 -60 -51 -49 -47 -59
		mu 0 5 72 62 59 55 54
		f 5 60 61 62 63 64
		mu 0 5 76 77 78 79 80
		f 5 65 66 67 -65 68
		mu 0 5 81 82 83 76 80
		f 5 -68 69 70 71 -61
		mu 0 5 76 83 84 85 86
		f 5 72 73 74 -70 -67
		mu 0 5 82 87 88 89 83
		f 5 -75 75 76 77 -71
		mu 0 5 90 91 92 93 94
		f 5 -72 -78 78 79 -62
		mu 0 5 95 96 93 97 98
		f 5 -80 80 81 82 -63
		mu 0 5 99 97 100 101 102
		f 5 -64 -83 83 84 -69
		mu 0 5 80 103 104 105 81
		f 5 -85 85 86 -73 -66
		mu 0 5 81 106 107 108 82
		f 5 -76 -74 -87 87 88
		mu 0 5 92 88 87 109 110
		f 5 -88 -86 -84 -82 89
		mu 0 5 110 111 112 113 100
		f 5 -90 -81 -79 -77 -89
		mu 0 5 110 100 97 93 92
		f 5 90 91 92 93 94
		mu 0 5 114 115 116 117 118
		f 5 95 96 97 -95 98
		mu 0 5 119 120 121 114 118
		f 5 -98 99 100 101 -91
		mu 0 5 114 121 122 123 124
		f 5 102 103 104 -100 -97
		mu 0 5 120 125 126 127 121
		f 5 -105 105 106 107 -101
		mu 0 5 128 129 130 131 132
		f 5 -102 -108 108 109 -92
		mu 0 5 133 134 131 135 136
		f 5 -110 110 111 112 -93
		mu 0 5 137 135 138 139 140
		f 5 -94 -113 113 114 -99
		mu 0 5 118 141 142 143 119
		f 5 -115 115 116 -103 -96
		mu 0 5 119 144 145 146 120
		f 5 -106 -104 -117 117 118
		mu 0 5 130 126 125 147 148
		f 5 -118 -116 -114 -112 119
		mu 0 5 148 149 150 151 138
		f 5 -120 -111 -109 -107 -119
		mu 0 5 148 138 135 131 130
		f 5 120 121 122 123 124
		mu 0 5 152 153 154 155 156
		f 5 125 126 127 -125 128
		mu 0 5 157 158 159 152 156
		f 5 -128 129 130 131 -121
		mu 0 5 152 159 160 161 162
		f 5 132 133 134 -130 -127
		mu 0 5 158 163 164 165 159
		f 5 -135 135 136 137 -131
		mu 0 5 166 167 168 169 170
		f 5 -132 -138 138 139 -122
		mu 0 5 171 172 169 173 174
		f 5 -140 140 141 142 -123
		mu 0 5 175 173 176 177 178
		f 5 -124 -143 143 144 -129
		mu 0 5 156 179 180 181 157
		f 5 -145 145 146 -133 -126
		mu 0 5 157 182 183 184 158
		f 5 -136 -134 -147 147 148
		mu 0 5 168 164 163 185 186
		f 5 -148 -146 -144 -142 149
		mu 0 5 186 187 188 189 176
		f 5 -150 -141 -139 -137 -149
		mu 0 5 186 176 173 169 168
		f 5 150 151 152 153 154
		mu 0 5 190 191 192 193 194
		f 5 155 156 157 -155 158
		mu 0 5 195 196 197 190 194
		f 5 -158 159 160 161 -151
		mu 0 5 190 197 198 199 200
		f 5 162 163 164 -160 -157
		mu 0 5 196 201 202 203 197
		f 5 -165 165 166 167 -161
		mu 0 5 204 205 206 207 208
		f 5 -162 -168 168 169 -152
		mu 0 5 209 210 207 211 212
		f 5 -170 170 171 172 -153
		mu 0 5 213 211 214 215 216
		f 5 -154 -173 173 174 -159
		mu 0 5 194 217 218 219 195
		f 5 -175 175 176 -163 -156
		mu 0 5 195 220 221 222 196
		f 5 -166 -164 -177 177 178
		mu 0 5 206 202 201 223 224
		f 5 -178 -176 -174 -172 179
		mu 0 5 224 225 226 227 214
		f 5 -180 -171 -169 -167 -179
		mu 0 5 224 214 211 207 206;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface16" -p "pSolid9";
	setAttr ".r" -type "double3" 9.3650125180823149 6.6091237549857915 -12.1786945836449 ;
	setAttr ".rp" -type "double3" 13.036605834960938 -14.176516771316528 29.279804229736328 ;
	setAttr ".rpt" -type "double3" -5.3991506376860343e-008 9.4139451789487794e-009 
		-3.8538477298288853e-008 ;
	setAttr ".sp" -type "double3" 13.036605834960938 -14.176516771316528 29.279804229736328 ;
createNode transform -n "transform32" -p "polySurface16";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape16" -p "transform32";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.1982127 0.559017
		 0.099106349 0.63196599 0 0.559017 0.037855253 0.440983 0.16035745 0.440983 0.25946382
		 0.36803401 0.35857016 0.440983 0.32071489 0.559017 0.35857016 0.67705101 0.25946379
		 0.75 0.16035745 0.67705101 0.48107234 0.440983 0.51892757 0.559017 0.41982123 0.63196599
		 0.58017874 0.75 0.54232347 0.63196599 0.64142984 0.559017 0.74053615 0.63196599 0.70268089
		 0.75 0.90089363 0.75 0.77839142 0.75 0.83964252 0.559017 0.9387489 0.63196599 0.96214473
		 0.559017 0.80178726 0.440983 0.90089363 0.36803398 1 0.440983 0.061251096 0.36803401
		 0.099106349 0.25 0.22160855 0.25 0.29731905 0.25 0.41982123 0.25 0.4576765 0.36803398
		 0.58017874 0.36803401 0.67928505 0.440983 0.64142984 0.32294902 0.74053615 0.25 0.83964252
		 0.32294902;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  0 0.32653618 0 0 -0.72622979 
		0 0 0.77247179 0 0 -0.45062596 0 0 1.2527846 0 0 -0.92514175 0 0 0.20360182 0 0 -1.499809 
		0 0 0.72622979 0 0 -0.32653597 0 0 -0.7724719 0 0 0.45062596 0 0 -1.2527845 0 0 0.92514127 
		0 0 -0.20360182 0 0 1.4998088 0 0 1.0538727 0 0 -1.7023035 0 0 -1.0538728 0 0 1.7023033 
		0;
	setAttr -s 20 ".vt[0:19]"  21.19598389 -16.1168499 23.17511749 17.80161476 -9.86113358 21.13856888
		 9.81249237 -18.76667786 20.5538044 10.76622963 -11.4988184 19.51850891 16.2584343 -21.62077904 22.81371307
		 21.19739723 -8.67916584 32.56434631 23.29469299 -15.38635349 30.23663521 17.80248833 -5.26439285 26.94143105
		 8.27159691 -18.49189949 37.42103958 4.87722683 -12.23618317 35.38449097 16.2607193 -9.58635426 38.0058059692
		 15.30698204 -16.85421371 39.041099548 9.81477642 -6.73225403 35.74589539 4.87581444 -19.67386627 25.99526405
		 2.77851868 -12.96667957 28.32297325 8.27072334 -23.088640213 31.61817741 19.65421677 -20.43881035 34.23949051
		 10.76764202 -4.061134338 28.90773773 6.4189949 -7.91422224 24.32011795 15.30556965 -24.29189873 29.65187073;
	setAttr -s 30 ".ed[0:29]"  0 4 0 4 2 0 2 3 0 3 1 0 1 0 0 7 5 0 5 6 0
		 6 0 0 1 7 0 6 16 0 16 19 0 19 4 0 5 10 0 10 11 0 11 16 0 11 8 0 8 15 0 15 19 0 15 13 0
		 13 2 0 13 14 0 14 18 0 18 3 0 18 17 0 17 7 0 17 12 0 12 10 0 12 9 0 9 8 0 14 9 0;
	setAttr -s 12 -ch 60 ".fc[0:11]" -type "polyFaces" 
		f 5 0 1 2 3 4
		mu 0 5 0 1 2 3 4
		f 5 5 6 7 -5 8
		mu 0 5 5 6 7 0 4
		f 5 -8 9 10 11 -1
		mu 0 5 0 7 8 9 10
		f 5 12 13 14 -10 -7
		mu 0 5 6 11 12 13 7
		f 5 -15 15 16 17 -11
		mu 0 5 14 15 16 17 18
		f 5 -12 -18 18 19 -2
		mu 0 5 19 20 17 21 22
		f 5 -20 20 21 22 -3
		mu 0 5 23 21 24 25 26
		f 5 -4 -23 23 24 -9
		mu 0 5 4 27 28 29 5
		f 5 -25 25 26 -13 -6
		mu 0 5 5 30 31 32 6
		f 5 -16 -14 -27 27 28
		mu 0 5 16 12 11 33 34
		f 5 -28 -26 -24 -22 29
		mu 0 5 34 35 36 37 24
		f 5 -30 -21 -19 -17 -29
		mu 0 5 34 24 21 17 16;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface17" -p "pSolid9";
	setAttr ".t" -type "double3" 0.56695923434412521 -1.4210854715202004e-014 -0.94003010355940841 ;
	setAttr ".r" -type "double3" 28.425550554063587 -11.512441789186283 -10.552871956803214 ;
	setAttr ".s" -type "double3" 0.89039363334272803 0.89039363334272803 0.89039363334272803 ;
	setAttr ".rp" -type "double3" 21.437496185302734 -18.514009475708008 29.005124092102051 ;
	setAttr ".sp" -type "double3" 21.437496185302734 -18.514009475708008 29.005124092102051 ;
createNode transform -n "transform31" -p "polySurface17";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape17" -p "transform31";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.1982127 0.559017
		 0.099106349 0.63196599 0 0.559017 0.037855253 0.440983 0.16035745 0.440983 0.25946382
		 0.36803401 0.35857016 0.440983 0.32071489 0.559017 0.35857016 0.67705101 0.25946379
		 0.75 0.16035745 0.67705101 0.48107234 0.440983 0.51892757 0.559017 0.41982123 0.63196599
		 0.58017874 0.75 0.54232347 0.63196599 0.64142984 0.559017 0.74053615 0.63196599 0.70268089
		 0.75 0.90089363 0.75 0.77839142 0.75 0.83964252 0.559017 0.9387489 0.63196599 0.96214473
		 0.559017 0.80178726 0.440983 0.90089363 0.36803398 1 0.440983 0.061251096 0.36803401
		 0.099106349 0.25 0.22160855 0.25 0.29731905 0.25 0.41982123 0.25 0.4576765 0.36803398
		 0.58017874 0.36803401 0.67928505 0.440983 0.64142984 0.32294902 0.74053615 0.25 0.83964252
		 0.32294902;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  2.5842545 -0.36345154 -1.7996316 
		2.4108627 0.19947276 -0.58905292 -0.53465897 -1.2156252 -2.2398777 0.4832671 -0.32719883 
		-0.86114192 0.76382273 -1.2380315 -2.8198972 2.4426231 1.15299 1.3274833 2.603884 
		0.22585452 -0.61514711 2.3233285 1.1366854 1.3436092 -2.4108624 -0.19947353 0.58905238 
		-2.5842545 0.36345118 1.799629 0.53465897 1.2156246 2.2398794 -0.48326671 0.32719871 
		0.86114192 -0.76382262 1.23803 2.819896 -2.4426231 -1.1529901 -1.3274832 -2.6038849 
		-0.22585499 0.61514568 -2.3233285 -1.1366857 -1.34361 0.79558468 -0.28451243 -0.9033612 
		0.34163657 1.1892424 2.2659714 -0.7955842 0.28451204 0.90336084 -0.34163633 -1.1892436 
		-2.2659731;
	setAttr -s 20 ".vt[0:19]"  25.7005291 -18.90434074 25.89946556 24.8669014 -15.28943253 26.59427261
		 20.0039653778 -17.8738842 23.95476341 21.34623146 -14.65257549 25.39237976 22.69507027 -20.50161934 24.26815796
		 25.80927658 -18.071548462 31.94836426 26.28294945 -20.62378311 29.20847702 24.93411064 -14.77473927 30.33269882
		 18.0080909729 -21.73858643 31.41597366 17.17446327 -18.12367821 32.11077881 22.87102699 -19.15413475 34.055484772
		 21.52876091 -22.3754425 32.61786652 20.1799221 -16.52639961 33.74208832 17.06571579 -18.95647049 26.061882019
		 16.59204292 -16.40423584 28.80176926 17.94088173 -22.25328064 27.67754745 23.63744545 -23.28373528 29.62225151
		 21.45497894 -13.81978416 31.44128036 19.23754692 -13.74428368 28.38799477 21.42001343 -23.20823479 26.56896591;
	setAttr -s 30 ".ed[0:29]"  0 4 0 4 2 0 2 3 0 3 1 0 1 0 0 7 5 0 5 6 0
		 6 0 0 1 7 0 6 16 0 16 19 0 19 4 0 5 10 0 10 11 0 11 16 0 11 8 0 8 15 0 15 19 0 15 13 0
		 13 2 0 13 14 0 14 18 0 18 3 0 18 17 0 17 7 0 17 12 0 12 10 0 12 9 0 9 8 0 14 9 0;
	setAttr -s 12 -ch 60 ".fc[0:11]" -type "polyFaces" 
		f 5 0 1 2 3 4
		mu 0 5 0 1 2 3 4
		f 5 5 6 7 -5 8
		mu 0 5 5 6 7 0 4
		f 5 -8 9 10 11 -1
		mu 0 5 0 7 8 9 10
		f 5 12 13 14 -10 -7
		mu 0 5 6 11 12 13 7
		f 5 -15 15 16 17 -11
		mu 0 5 14 15 16 17 18
		f 5 -12 -18 18 19 -2
		mu 0 5 19 20 17 21 22
		f 5 -20 20 21 22 -3
		mu 0 5 23 21 24 25 26
		f 5 -4 -23 23 24 -9
		mu 0 5 4 27 28 29 5
		f 5 -25 25 26 -13 -6
		mu 0 5 5 30 31 32 6
		f 5 -16 -14 -27 27 28
		mu 0 5 16 12 11 33 34
		f 5 -28 -26 -24 -22 29
		mu 0 5 34 35 36 37 24
		f 5 -30 -21 -19 -17 -29
		mu 0 5 34 24 21 17 16;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface18" -p "pSolid9";
	setAttr ".t" -type "double3" -15.833882273736911 -0.52703745144758685 -1.6461050650364655 ;
	setAttr ".r" -type "double3" -71.775311472764187 43.879351916356988 -48.602732155031504 ;
	setAttr ".s" -type "double3" 0.77662772959369319 0.77662772959369319 0.77662772959369319 ;
	setAttr ".rp" -type "double3" 21.437496185302734 -18.514009475708008 29.005124092102051 ;
	setAttr ".sp" -type "double3" 21.437496185302734 -18.514009475708008 29.005124092102051 ;
createNode transform -n "transform30" -p "polySurface18";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape18" -p "transform30";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.1982127 0.559017
		 0.099106349 0.63196599 0 0.559017 0.037855253 0.440983 0.16035745 0.440983 0.25946382
		 0.36803401 0.35857016 0.440983 0.32071489 0.559017 0.35857016 0.67705101 0.25946379
		 0.75 0.16035745 0.67705101 0.48107234 0.440983 0.51892757 0.559017 0.41982123 0.63196599
		 0.58017874 0.75 0.54232347 0.63196599 0.64142984 0.559017 0.74053615 0.63196599 0.70268089
		 0.75 0.90089363 0.75 0.77839142 0.75 0.83964252 0.559017 0.9387489 0.63196599 0.96214473
		 0.559017 0.80178726 0.440983 0.90089363 0.36803398 1 0.440983 0.061251096 0.36803401
		 0.099106349 0.25 0.22160855 0.25 0.29731905 0.25 0.41982123 0.25 0.4576765 0.36803398
		 0.58017874 0.36803401 0.67928505 0.440983 0.64142984 0.32294902 0.74053615 0.25 0.83964252
		 0.32294902;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  1.96365 2.2860034 -0.055975009 
		2.5764053 3.4221516 -1.4789023 -2.2094724 2.0017698 -2.9402716 -0.0027268252 3.2464862 
		-3.2614956 -0.99418497 1.4081606 -0.95915079 3.9436185 0.17855237 2.3539991 2.8086355 
		0.28134817 2.3128884 3.8000941 2.1196742 0.010543944 -2.5764058 -3.4221509 1.4789015 
		-1.9636518 -2.286001 0.055973165 2.2094722 -2.0017695 2.9402709 0.0027266382 -3.2464848 
		3.2614937 0.99418408 -1.4081591 0.95914936 -3.9436195 -0.17855138 -2.354001 -2.8086362 
		-0.28134763 -2.3128903 -3.8000941 -2.1196737 -0.010544697 0.37302977 -1.8354403 2.8737526 
		1.9772421 1.1390336 -0.85152036 -0.37303057 1.8354406 -2.8737526 -1.9772432 -1.1390322 
		0.85151947;
	setAttr -s 20 ".vt[0:19]"  25.7005291 -18.90434074 25.89946556 24.8669014 -15.28943253 26.59427261
		 20.0039653778 -17.8738842 23.95476341 21.34623146 -14.65257549 25.39237976 22.69507027 -20.50161934 24.26815796
		 25.80927658 -18.071548462 31.94836426 26.28294945 -20.62378311 29.20847702 24.93411064 -14.77473927 30.33269882
		 18.0080909729 -21.73858643 31.41597366 17.17446327 -18.12367821 32.11077881 22.87102699 -19.15413475 34.055484772
		 21.52876091 -22.3754425 32.61786652 20.1799221 -16.52639961 33.74208832 17.06571579 -18.95647049 26.061882019
		 16.59204292 -16.40423584 28.80176926 17.94088173 -22.25328064 27.67754745 23.63744545 -23.28373528 29.62225151
		 21.45497894 -13.81978416 31.44128036 19.23754692 -13.74428368 28.38799477 21.42001343 -23.20823479 26.56896591;
	setAttr -s 30 ".ed[0:29]"  0 4 0 4 2 0 2 3 0 3 1 0 1 0 0 7 5 0 5 6 0
		 6 0 0 1 7 0 6 16 0 16 19 0 19 4 0 5 10 0 10 11 0 11 16 0 11 8 0 8 15 0 15 19 0 15 13 0
		 13 2 0 13 14 0 14 18 0 18 3 0 18 17 0 17 7 0 17 12 0 12 10 0 12 9 0 9 8 0 14 9 0;
	setAttr -s 12 -ch 60 ".fc[0:11]" -type "polyFaces" 
		f 5 0 1 2 3 4
		mu 0 5 0 1 2 3 4
		f 5 5 6 7 -5 8
		mu 0 5 5 6 7 0 4
		f 5 -8 9 10 11 -1
		mu 0 5 0 7 8 9 10
		f 5 12 13 14 -10 -7
		mu 0 5 6 11 12 13 7
		f 5 -15 15 16 17 -11
		mu 0 5 14 15 16 17 18
		f 5 -12 -18 18 19 -2
		mu 0 5 19 20 17 21 22
		f 5 -20 20 21 22 -3
		mu 0 5 23 21 24 25 26
		f 5 -4 -23 23 24 -9
		mu 0 5 4 27 28 29 5
		f 5 -25 25 26 -13 -6
		mu 0 5 5 30 31 32 6
		f 5 -16 -14 -27 27 28
		mu 0 5 16 12 11 33 34
		f 5 -28 -26 -24 -22 29
		mu 0 5 34 35 36 37 24
		f 5 -30 -21 -19 -17 -29
		mu 0 5 34 24 21 17 16;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface20" -p "pSolid9";
	setAttr ".t" -type "double3" 24.814555646196837 -7.033686830475407 67.540788916431396 ;
	setAttr ".r" -type "double3" -100.91520355685613 50.322891334181747 -8.000751011328445 ;
	setAttr ".rp" -type "double3" 13.036605834960938 -14.176516771316528 29.279804229736328 ;
	setAttr ".rpt" -type "double3" -5.3991506376860343e-008 9.4139451789487794e-009 
		-3.8538477298288853e-008 ;
	setAttr ".sp" -type "double3" 13.036605834960938 -14.176516771316528 29.279804229736328 ;
createNode transform -n "transform44" -p "|pSolid9|polySurface20";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape20" -p "transform44";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.1982127 0.559017
		 0.099106349 0.63196599 0 0.559017 0.037855253 0.440983 0.16035745 0.440983 0.25946382
		 0.36803401 0.35857016 0.440983 0.32071489 0.559017 0.35857016 0.67705101 0.25946379
		 0.75 0.16035745 0.67705101 0.48107234 0.440983 0.51892757 0.559017 0.41982123 0.63196599
		 0.58017874 0.75 0.54232347 0.63196599 0.64142984 0.559017 0.74053615 0.63196599 0.70268089
		 0.75 0.90089363 0.75 0.77839142 0.75 0.83964252 0.559017 0.9387489 0.63196599 0.96214473
		 0.559017 0.80178726 0.440983 0.90089363 0.36803398 1 0.440983 0.061251096 0.36803401
		 0.099106349 0.25 0.22160855 0.25 0.29731905 0.25 0.41982123 0.25 0.4576765 0.36803398
		 0.58017874 0.36803401 0.67928505 0.440983 0.64142984 0.32294902 0.74053615 0.25 0.83964252
		 0.32294902;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  0.44266689 0.13705057 1.151002 
		1.1307716 -1.2102618 2.9401798 1.5303319 0.11740617 3.9790981 1.8029859 -1.2224022 
		4.6880403 0.68960857 0.95759445 1.7930881 -0.92933244 -0.52733672 -2.4164069 -0.83054751 
		0.55912143 -2.1595511 0.28283 -1.6208757 0.73540127 -1.1307716 1.2102618 -2.9401798 
		-0.44266665 -0.13705049 -1.1510015 -1.5303322 -0.11740626 -3.9790993 -1.8029854 1.2224021 
		-4.6880393 -0.68960893 -0.95759422 -1.7930892 0.92933178 0.52733666 2.4164052 0.83054763 
		-0.55912143 2.1595511 -0.28282991 1.6208755 -0.73540121 -1.3704951 1.6405194 -3.5634973 
		0.43098676 -1.8867896 1.1206317 1.3704951 -1.6405195 3.5634973 -0.43098682 1.8867893 
		-1.1206319;
	setAttr -s 20 ".vt[0:19]"  21.19598389 -16.1168499 23.17511749 17.80161476 -9.86113358 21.13856888
		 9.81249237 -18.76667786 20.5538044 10.76622963 -11.4988184 19.51850891 16.2584343 -21.62077904 22.81371307
		 21.19739723 -8.67916584 32.56434631 23.29469299 -15.38635349 30.23663521 17.80248833 -5.26439285 26.94143105
		 8.27159691 -18.49189949 37.42103958 4.87722683 -12.23618317 35.38449097 16.2607193 -9.58635426 38.0058059692
		 15.30698204 -16.85421371 39.041099548 9.81477642 -6.73225403 35.74589539 4.87581444 -19.67386627 25.99526405
		 2.77851868 -12.96667957 28.32297325 8.27072334 -23.088640213 31.61817741 19.65421677 -20.43881035 34.23949051
		 10.76764202 -4.061134338 28.90773773 6.4189949 -7.91422224 24.32011795 15.30556965 -24.29189873 29.65187073;
	setAttr -s 30 ".ed[0:29]"  0 4 0 4 2 0 2 3 0 3 1 0 1 0 0 7 5 0 5 6 0
		 6 0 0 1 7 0 6 16 0 16 19 0 19 4 0 5 10 0 10 11 0 11 16 0 11 8 0 8 15 0 15 19 0 15 13 0
		 13 2 0 13 14 0 14 18 0 18 3 0 18 17 0 17 7 0 17 12 0 12 10 0 12 9 0 9 8 0 14 9 0;
	setAttr -s 12 -ch 60 ".fc[0:11]" -type "polyFaces" 
		f 5 0 1 2 3 4
		mu 0 5 0 1 2 3 4
		f 5 5 6 7 -5 8
		mu 0 5 5 6 7 0 4
		f 5 -8 9 10 11 -1
		mu 0 5 0 7 8 9 10
		f 5 12 13 14 -10 -7
		mu 0 5 6 11 12 13 7
		f 5 -15 15 16 17 -11
		mu 0 5 14 15 16 17 18
		f 5 -12 -18 18 19 -2
		mu 0 5 19 20 17 21 22
		f 5 -20 20 21 22 -3
		mu 0 5 23 21 24 25 26
		f 5 -4 -23 23 24 -9
		mu 0 5 4 27 28 29 5
		f 5 -25 25 26 -13 -6
		mu 0 5 5 30 31 32 6
		f 5 -16 -14 -27 27 28
		mu 0 5 16 12 11 33 34
		f 5 -28 -26 -24 -22 29
		mu 0 5 34 35 36 37 24
		f 5 -30 -21 -19 -17 -29
		mu 0 5 34 24 21 17 16;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface21" -p "pSolid9";
	setAttr ".t" -type "double3" 9.9025044312650046 -4.4520011689783736 43.782986964770245 ;
	setAttr ".s" -type "double3" 1.0753176855692019 1.0753176855692019 1.0753176855692019 ;
	setAttr ".rp" -type "double3" 19.525191783905029 -18.514101505279541 36.079925537109368 ;
	setAttr ".sp" -type "double3" 19.525191783905029 -18.514101505279541 36.079925537109375 ;
	setAttr ".spt" -type "double3" 1.1102230246251565e-015 -1.5543122344752192e-015 
		-3.9968028886505635e-015 ;
createNode transform -n "transform43" -p "polySurface21";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape21" -p "transform43";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.1982127 0.559017
		 0.099106349 0.63196599 0 0.559017 0.037855253 0.440983 0.16035745 0.440983 0.25946382
		 0.36803401 0.35857016 0.440983 0.32071489 0.559017 0.35857016 0.67705101 0.25946379
		 0.75 0.16035745 0.67705101 0.48107234 0.440983 0.51892757 0.559017 0.41982123 0.63196599
		 0.58017874 0.75 0.54232347 0.63196599 0.64142984 0.559017 0.74053615 0.63196599 0.70268089
		 0.75 0.90089363 0.75 0.77839142 0.75 0.83964252 0.559017 0.9387489 0.63196599 0.96214473
		 0.559017 0.80178726 0.440983 0.90089363 0.36803398 1 0.440983 0.061251096 0.36803401
		 0.099106349 0.25 0.22160855 0.25 0.29731905 0.25 0.41982123 0.25 0.4576765 0.36803398
		 0.58017874 0.36803401 0.67928505 0.440983 0.64142984 0.32294902 0.74053615 0.25 0.83964252
		 0.32294902;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  25.20204735 -17.37565041 38.59726334 22.39808273 -13.92547035 39.32810974
		 22.90105629 -14.93285751 32.12543869 20.9759922 -12.41574192 35.32830048 25.51290131 -17.99824905 34.14576721
		 19.41504097 -19.90779305 42.23664856 23.35842514 -21.072929382 40.39483643 18.82151604 -15.49042225 41.5773735
		 16.65230179 -23.1027317 32.83174133 13.84833717 -19.65255165 33.56258774 16.14932823 -22.095344543 40.034412384
		 18.074392319 -24.61246109 36.8315506 13.53748226 -19.029953003 38.014083862 19.63534355 -17.12040901 29.92320251
		 15.69195843 -15.95527363 31.76501465 20.22886848 -21.53778076 30.58247757 22.52985954 -23.98057175 37.054302216
		 15.18898582 -14.94788742 38.96768951 16.52052498 -13.04763031 35.10554886 23.8613987 -22.080314636 33.19216156;
	setAttr -s 30 ".ed[0:29]"  0 4 0 4 2 0 2 3 0 3 1 0 1 0 0 7 5 0 5 6 0
		 6 0 0 1 7 0 6 16 0 16 19 0 19 4 0 5 10 0 10 11 0 11 16 0 11 8 0 8 15 0 15 19 0 15 13 0
		 13 2 0 13 14 0 14 18 0 18 3 0 18 17 0 17 7 0 17 12 0 12 10 0 12 9 0 9 8 0 14 9 0;
	setAttr -s 12 -ch 60 ".fc[0:11]" -type "polyFaces" 
		f 5 0 1 2 3 4
		mu 0 5 0 1 2 3 4
		f 5 5 6 7 -5 8
		mu 0 5 5 6 7 0 4
		f 5 -8 9 10 11 -1
		mu 0 5 0 7 8 9 10
		f 5 12 13 14 -10 -7
		mu 0 5 6 11 12 13 7
		f 5 -15 15 16 17 -11
		mu 0 5 14 15 16 17 18
		f 5 -12 -18 18 19 -2
		mu 0 5 19 20 17 21 22
		f 5 -20 20 21 22 -3
		mu 0 5 23 21 24 25 26
		f 5 -4 -23 23 24 -9
		mu 0 5 4 27 28 29 5
		f 5 -25 25 26 -13 -6
		mu 0 5 5 30 31 32 6
		f 5 -16 -14 -27 27 28
		mu 0 5 16 12 11 33 34
		f 5 -28 -26 -24 -22 29
		mu 0 5 34 35 36 37 24
		f 5 -30 -21 -19 -17 -29
		mu 0 5 34 24 21 17 16;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface22" -p "pSolid9";
	setAttr ".t" -type "double3" 19.834107386811372 -4.2048816444163819 48.641337963854674 ;
	setAttr ".rp" -type "double3" 19.525191783905029 -18.514101505279541 36.079925537109375 ;
	setAttr ".sp" -type "double3" 19.525191783905029 -18.514101505279541 36.079925537109375 ;
createNode transform -n "transform42" -p "polySurface22";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape22" -p "transform42";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.1982127 0.559017
		 0.099106349 0.63196599 0 0.559017 0.037855253 0.440983 0.16035745 0.440983 0.25946382
		 0.36803401 0.35857016 0.440983 0.32071489 0.559017 0.35857016 0.67705101 0.25946379
		 0.75 0.16035745 0.67705101 0.48107234 0.440983 0.51892757 0.559017 0.41982123 0.63196599
		 0.58017874 0.75 0.54232347 0.63196599 0.64142984 0.559017 0.74053615 0.63196599 0.70268089
		 0.75 0.90089363 0.75 0.77839142 0.75 0.83964252 0.559017 0.9387489 0.63196599 0.96214473
		 0.559017 0.80178726 0.440983 0.90089363 0.36803398 1 0.440983 0.061251096 0.36803401
		 0.099106349 0.25 0.22160855 0.25 0.29731905 0.25 0.41982123 0.25 0.4576765 0.36803398
		 0.58017874 0.36803401 0.67928505 0.440983 0.64142984 0.32294902 0.74053615 0.25 0.83964252
		 0.32294902;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  2.4434152 3.4106051e-013 
		1.0835059 1.2365397 3.4106051e-013 1.3980753 1.4530289 1.1013412e-013 -1.7020797 
		0.62444872 3.4106051e-013 -0.32351199 2.5772114 2.8421709e-013 -0.83249468 -0.047410168 
		3.4106051e-013 2.6499591 1.6498883 3.4106051e-013 1.8572094 -0.30287334 3.4106051e-013 
		2.3661964 -1.2365409 1.5276669e-013 -1.3980756 -2.4434152 2.344791e-013 -1.0835056 
		-1.4530289 3.4106051e-013 1.7020804 -0.62444907 6.8212103e-013 0.32351199 -2.5772119 
		3.4106051e-013 0.83249468 0.047411107 5.6843419e-014 -2.6499581 -1.6498883 1.030287e-013 
		-1.8572092 0.30287325 6.3948846e-014 -2.3661964 1.2932596 3.4106051e-013 0.41938904 
		-1.8663769 3.4106051e-013 1.2429414 -1.2932601 3.4106051e-013 -0.41938904 1.8663769 
		1.7763568e-013 -1.2429411;
	setAttr -s 20 ".vt[0:19]"  25.20204735 -17.37565041 38.59726334 22.39808273 -13.92547035 39.32810974
		 22.90105629 -14.93285751 32.12543869 20.9759922 -12.41574192 35.32830048 25.51290131 -17.99824905 34.14576721
		 19.41504097 -19.90779305 42.23664856 23.35842514 -21.072929382 40.39483643 18.82151604 -15.49042225 41.5773735
		 16.65230179 -23.1027317 32.83174133 13.84833717 -19.65255165 33.56258774 16.14932823 -22.095344543 40.034412384
		 18.074392319 -24.61246109 36.8315506 13.53748226 -19.029953003 38.014083862 19.63534355 -17.12040901 29.92320251
		 15.69195843 -15.95527363 31.76501465 20.22886848 -21.53778076 30.58247757 22.52985954 -23.98057175 37.054302216
		 15.18898582 -14.94788742 38.96768951 16.52052498 -13.04763031 35.10554886 23.8613987 -22.080314636 33.19216156;
	setAttr -s 30 ".ed[0:29]"  0 4 0 4 2 0 2 3 0 3 1 0 1 0 0 7 5 0 5 6 0
		 6 0 0 1 7 0 6 16 0 16 19 0 19 4 0 5 10 0 10 11 0 11 16 0 11 8 0 8 15 0 15 19 0 15 13 0
		 13 2 0 13 14 0 14 18 0 18 3 0 18 17 0 17 7 0 17 12 0 12 10 0 12 9 0 9 8 0 14 9 0;
	setAttr -s 12 -ch 60 ".fc[0:11]" -type "polyFaces" 
		f 5 0 1 2 3 4
		mu 0 5 0 1 2 3 4
		f 5 5 6 7 -5 8
		mu 0 5 5 6 7 0 4
		f 5 -8 9 10 11 -1
		mu 0 5 0 7 8 9 10
		f 5 12 13 14 -10 -7
		mu 0 5 6 11 12 13 7
		f 5 -15 15 16 17 -11
		mu 0 5 14 15 16 17 18
		f 5 -12 -18 18 19 -2
		mu 0 5 19 20 17 21 22
		f 5 -20 20 21 22 -3
		mu 0 5 23 21 24 25 26
		f 5 -4 -23 23 24 -9
		mu 0 5 4 27 28 29 5
		f 5 -25 25 26 -13 -6
		mu 0 5 5 30 31 32 6
		f 5 -16 -14 -27 27 28
		mu 0 5 16 12 11 33 34
		f 5 -28 -26 -24 -22 29
		mu 0 5 34 35 36 37 24
		f 5 -30 -21 -19 -17 -29
		mu 0 5 34 24 21 17 16;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface23" -p "pSolid9";
	setAttr ".t" -type "double3" -6.4766883621957909 -1.0668354146015364 55.105657768692417 ;
	setAttr ".r" -type "double3" -71.775311472764187 43.879351916356988 -48.602732155031504 ;
	setAttr ".rp" -type "double3" 21.437496185302734 -18.514009475708008 29.005124092102051 ;
	setAttr ".sp" -type "double3" 21.437496185302734 -18.514009475708008 29.005124092102051 ;
createNode transform -n "transform41" -p "polySurface23";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape23" -p "transform41";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.1982127 0.559017
		 0.099106349 0.63196599 0 0.559017 0.037855253 0.440983 0.16035745 0.440983 0.25946382
		 0.36803401 0.35857016 0.440983 0.32071489 0.559017 0.35857016 0.67705101 0.25946379
		 0.75 0.16035745 0.67705101 0.48107234 0.440983 0.51892757 0.559017 0.41982123 0.63196599
		 0.58017874 0.75 0.54232347 0.63196599 0.64142984 0.559017 0.74053615 0.63196599 0.70268089
		 0.75 0.90089363 0.75 0.77839142 0.75 0.83964252 0.559017 0.9387489 0.63196599 0.96214473
		 0.559017 0.80178726 0.440983 0.90089363 0.36803398 1 0.440983 0.061251096 0.36803401
		 0.099106349 0.25 0.22160855 0.25 0.29731905 0.25 0.41982123 0.25 0.4576765 0.36803398
		 0.58017874 0.36803401 0.67928505 0.440983 0.64142984 0.32294902 0.74053615 0.25 0.83964252
		 0.32294902;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  1.96365 2.2860034 -0.055975009 
		2.5764053 3.4221516 -1.4789023 -2.2094724 2.0017698 -2.9402716 -0.0027268252 3.2464862 
		-3.2614956 -0.99418497 1.4081606 -0.95915079 3.9436185 0.17855237 2.3539991 2.8086355 
		0.28134817 2.3128884 3.8000941 2.1196742 0.010543944 -2.5764058 -3.4221509 1.4789015 
		-1.9636518 -2.286001 0.055973165 2.2094722 -2.0017695 2.9402709 0.0027266382 -3.2464848 
		3.2614937 0.99418408 -1.4081591 0.95914936 -3.9436195 -0.17855138 -2.354001 -2.8086362 
		-0.28134763 -2.3128903 -3.8000941 -2.1196737 -0.010544697 0.37302977 -1.8354403 2.8737526 
		1.9772421 1.1390336 -0.85152036 -0.37303057 1.8354406 -2.8737526 -1.9772432 -1.1390322 
		0.85151947;
	setAttr -s 20 ".vt[0:19]"  25.7005291 -18.90434074 25.89946556 24.8669014 -15.28943253 26.59427261
		 20.0039653778 -17.8738842 23.95476341 21.34623146 -14.65257549 25.39237976 22.69507027 -20.50161934 24.26815796
		 25.80927658 -18.071548462 31.94836426 26.28294945 -20.62378311 29.20847702 24.93411064 -14.77473927 30.33269882
		 18.0080909729 -21.73858643 31.41597366 17.17446327 -18.12367821 32.11077881 22.87102699 -19.15413475 34.055484772
		 21.52876091 -22.3754425 32.61786652 20.1799221 -16.52639961 33.74208832 17.06571579 -18.95647049 26.061882019
		 16.59204292 -16.40423584 28.80176926 17.94088173 -22.25328064 27.67754745 23.63744545 -23.28373528 29.62225151
		 21.45497894 -13.81978416 31.44128036 19.23754692 -13.74428368 28.38799477 21.42001343 -23.20823479 26.56896591;
	setAttr -s 30 ".ed[0:29]"  0 4 0 4 2 0 2 3 0 3 1 0 1 0 0 7 5 0 5 6 0
		 6 0 0 1 7 0 6 16 0 16 19 0 19 4 0 5 10 0 10 11 0 11 16 0 11 8 0 8 15 0 15 19 0 15 13 0
		 13 2 0 13 14 0 14 18 0 18 3 0 18 17 0 17 7 0 17 12 0 12 10 0 12 9 0 9 8 0 14 9 0;
	setAttr -s 12 -ch 60 ".fc[0:11]" -type "polyFaces" 
		f 5 0 1 2 3 4
		mu 0 5 0 1 2 3 4
		f 5 5 6 7 -5 8
		mu 0 5 5 6 7 0 4
		f 5 -8 9 10 11 -1
		mu 0 5 0 7 8 9 10
		f 5 12 13 14 -10 -7
		mu 0 5 6 11 12 13 7
		f 5 -15 15 16 17 -11
		mu 0 5 14 15 16 17 18
		f 5 -12 -18 18 19 -2
		mu 0 5 19 20 17 21 22
		f 5 -20 20 21 22 -3
		mu 0 5 23 21 24 25 26
		f 5 -4 -23 23 24 -9
		mu 0 5 4 27 28 29 5
		f 5 -25 25 26 -13 -6
		mu 0 5 5 30 31 32 6
		f 5 -16 -14 -27 27 28
		mu 0 5 16 12 11 33 34
		f 5 -28 -26 -24 -22 29
		mu 0 5 34 35 36 37 24
		f 5 -30 -21 -19 -17 -29
		mu 0 5 34 24 21 17 16;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface25" -p "pSolid9";
	setAttr ".t" -type "double3" 15.563026398921064 -3.6766728535285012 60.756856821113658 ;
	setAttr ".r" -type "double3" 9.3650125180823149 6.6091237549857915 -12.1786945836449 ;
	setAttr ".rp" -type "double3" 13.036605834960938 -14.176516771316528 29.279804229736328 ;
	setAttr ".rpt" -type "double3" -5.3991506376860343e-008 9.4139451789487794e-009 
		-3.8538477298288853e-008 ;
	setAttr ".sp" -type "double3" 13.036605834960938 -14.176516771316528 29.279804229736328 ;
createNode transform -n "transform40" -p "polySurface25";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape25" -p "transform40";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.1982127 0.559017
		 0.099106349 0.63196599 0 0.559017 0.037855253 0.440983 0.16035745 0.440983 0.25946382
		 0.36803401 0.35857016 0.440983 0.32071489 0.559017 0.35857016 0.67705101 0.25946379
		 0.75 0.16035745 0.67705101 0.48107234 0.440983 0.51892757 0.559017 0.41982123 0.63196599
		 0.58017874 0.75 0.54232347 0.63196599 0.64142984 0.559017 0.74053615 0.63196599 0.70268089
		 0.75 0.90089363 0.75 0.77839142 0.75 0.83964252 0.559017 0.9387489 0.63196599 0.96214473
		 0.559017 0.80178726 0.440983 0.90089363 0.36803398 1 0.440983 0.061251096 0.36803401
		 0.099106349 0.25 0.22160855 0.25 0.29731905 0.25 0.41982123 0.25 0.4576765 0.36803398
		 0.58017874 0.36803401 0.67928505 0.440983 0.64142984 0.32294902 0.74053615 0.25 0.83964252
		 0.32294902;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  0 0.32653618 0 0 -0.72622979 
		0 0 0.77247179 0 0 -0.45062596 0 0 1.2527846 0 0 -0.92514175 0 0 0.20360182 0 0 -1.499809 
		0 0 0.72622979 0 0 -0.32653597 0 0 -0.7724719 0 0 0.45062596 0 0 -1.2527845 0 0 0.92514127 
		0 0 -0.20360182 0 0 1.4998088 0 0 1.0538727 0 0 -1.7023035 0 0 -1.0538728 0 0 1.7023033 
		0;
	setAttr -s 20 ".vt[0:19]"  21.19598389 -16.1168499 23.17511749 17.80161476 -9.86113358 21.13856888
		 9.81249237 -18.76667786 20.5538044 10.76622963 -11.4988184 19.51850891 16.2584343 -21.62077904 22.81371307
		 21.19739723 -8.67916584 32.56434631 23.29469299 -15.38635349 30.23663521 17.80248833 -5.26439285 26.94143105
		 8.27159691 -18.49189949 37.42103958 4.87722683 -12.23618317 35.38449097 16.2607193 -9.58635426 38.0058059692
		 15.30698204 -16.85421371 39.041099548 9.81477642 -6.73225403 35.74589539 4.87581444 -19.67386627 25.99526405
		 2.77851868 -12.96667957 28.32297325 8.27072334 -23.088640213 31.61817741 19.65421677 -20.43881035 34.23949051
		 10.76764202 -4.061134338 28.90773773 6.4189949 -7.91422224 24.32011795 15.30556965 -24.29189873 29.65187073;
	setAttr -s 30 ".ed[0:29]"  0 4 0 4 2 0 2 3 0 3 1 0 1 0 0 7 5 0 5 6 0
		 6 0 0 1 7 0 6 16 0 16 19 0 19 4 0 5 10 0 10 11 0 11 16 0 11 8 0 8 15 0 15 19 0 15 13 0
		 13 2 0 13 14 0 14 18 0 18 3 0 18 17 0 17 7 0 17 12 0 12 10 0 12 9 0 9 8 0 14 9 0;
	setAttr -s 12 -ch 60 ".fc[0:11]" -type "polyFaces" 
		f 5 0 1 2 3 4
		mu 0 5 0 1 2 3 4
		f 5 5 6 7 -5 8
		mu 0 5 5 6 7 0 4
		f 5 -8 9 10 11 -1
		mu 0 5 0 7 8 9 10
		f 5 12 13 14 -10 -7
		mu 0 5 6 11 12 13 7
		f 5 -15 15 16 17 -11
		mu 0 5 14 15 16 17 18
		f 5 -12 -18 18 19 -2
		mu 0 5 19 20 17 21 22
		f 5 -20 20 21 22 -3
		mu 0 5 23 21 24 25 26
		f 5 -4 -23 23 24 -9
		mu 0 5 4 27 28 29 5
		f 5 -25 25 26 -13 -6
		mu 0 5 5 30 31 32 6
		f 5 -16 -14 -27 27 28
		mu 0 5 16 12 11 33 34
		f 5 -28 -26 -24 -22 29
		mu 0 5 34 35 36 37 24
		f 5 -30 -21 -19 -17 -29
		mu 0 5 34 24 21 17 16;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface26" -p "pSolid9";
	setAttr ".t" -type "double3" 20.509103886977751 -2.1698384750004891 62.406824757519047 ;
	setAttr ".s" -type "double3" 0.89039363334272803 0.89039363334272803 0.89039363334272803 ;
	setAttr ".rp" -type "double3" 21.437496185302734 -18.514009475708008 29.005124092102051 ;
	setAttr ".sp" -type "double3" 21.437496185302734 -18.514009475708008 29.005124092102051 ;
createNode transform -n "transform39" -p "polySurface26";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape26" -p "transform39";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.1982127 0.559017
		 0.099106349 0.63196599 0 0.559017 0.037855253 0.440983 0.16035745 0.440983 0.25946382
		 0.36803401 0.35857016 0.440983 0.32071489 0.559017 0.35857016 0.67705101 0.25946379
		 0.75 0.16035745 0.67705101 0.48107234 0.440983 0.51892757 0.559017 0.41982123 0.63196599
		 0.58017874 0.75 0.54232347 0.63196599 0.64142984 0.559017 0.74053615 0.63196599 0.70268089
		 0.75 0.90089363 0.75 0.77839142 0.75 0.83964252 0.559017 0.9387489 0.63196599 0.96214473
		 0.559017 0.80178726 0.440983 0.90089363 0.36803398 1 0.440983 0.061251096 0.36803401
		 0.099106349 0.25 0.22160855 0.25 0.29731905 0.25 0.41982123 0.25 0.4576765 0.36803398
		 0.58017874 0.36803401 0.67928505 0.440983 0.64142984 0.32294902 0.74053615 0.25 0.83964252
		 0.32294902;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  25.7005291 -18.90434074 25.89946556 24.8669014 -15.28943253 26.59427261
		 20.0039653778 -17.8738842 23.95476341 21.34623146 -14.65257549 25.39237976 22.69507027 -20.50161934 24.26815796
		 25.80927658 -18.071548462 31.94836426 26.28294945 -20.62378311 29.20847702 24.93411064 -14.77473927 30.33269882
		 18.0080909729 -21.73858643 31.41597366 17.17446327 -18.12367821 32.11077881 22.87102699 -19.15413475 34.055484772
		 21.52876091 -22.3754425 32.61786652 20.1799221 -16.52639961 33.74208832 17.06571579 -18.95647049 26.061882019
		 16.59204292 -16.40423584 28.80176926 17.94088173 -22.25328064 27.67754745 23.63744545 -23.28373528 29.62225151
		 21.45497894 -13.81978416 31.44128036 19.23754692 -13.74428368 28.38799477 21.42001343 -23.20823479 26.56896591;
	setAttr -s 30 ".ed[0:29]"  0 4 0 4 2 0 2 3 0 3 1 0 1 0 0 7 5 0 5 6 0
		 6 0 0 1 7 0 6 16 0 16 19 0 19 4 0 5 10 0 10 11 0 11 16 0 11 8 0 8 15 0 15 19 0 15 13 0
		 13 2 0 13 14 0 14 18 0 18 3 0 18 17 0 17 7 0 17 12 0 12 10 0 12 9 0 9 8 0 14 9 0;
	setAttr -s 12 -ch 60 ".fc[0:11]" -type "polyFaces" 
		f 5 0 1 2 3 4
		mu 0 5 0 1 2 3 4
		f 5 5 6 7 -5 8
		mu 0 5 5 6 7 0 4
		f 5 -8 9 10 11 -1
		mu 0 5 0 7 8 9 10
		f 5 12 13 14 -10 -7
		mu 0 5 6 11 12 13 7
		f 5 -15 15 16 17 -11
		mu 0 5 14 15 16 17 18
		f 5 -12 -18 18 19 -2
		mu 0 5 19 20 17 21 22
		f 5 -20 20 21 22 -3
		mu 0 5 23 21 24 25 26
		f 5 -4 -23 23 24 -9
		mu 0 5 4 27 28 29 5
		f 5 -25 25 26 -13 -6
		mu 0 5 5 30 31 32 6
		f 5 -16 -14 -27 27 28
		mu 0 5 16 12 11 33 34
		f 5 -28 -26 -24 -22 29
		mu 0 5 34 35 36 37 24
		f 5 -30 -21 -19 -17 -29
		mu 0 5 34 24 21 17 16;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface27" -p "pSolid9";
	setAttr ".t" -type "double3" -1.1841359650918726 -2.4632506653026418 47.600214875568682 ;
	setAttr ".r" -type "double3" -71.775311472764187 43.879351916356988 -48.602732155031504 ;
	setAttr ".s" -type "double3" 0.77662772959369319 0.77662772959369319 0.77662772959369319 ;
	setAttr ".rp" -type "double3" 21.437496185302734 -18.514009475708008 29.005124092102051 ;
	setAttr ".sp" -type "double3" 21.437496185302734 -18.514009475708008 29.005124092102051 ;
createNode transform -n "transform38" -p "polySurface27";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape27" -p "transform38";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.1982127 0.559017
		 0.099106349 0.63196599 0 0.559017 0.037855253 0.440983 0.16035745 0.440983 0.25946382
		 0.36803401 0.35857016 0.440983 0.32071489 0.559017 0.35857016 0.67705101 0.25946379
		 0.75 0.16035745 0.67705101 0.48107234 0.440983 0.51892757 0.559017 0.41982123 0.63196599
		 0.58017874 0.75 0.54232347 0.63196599 0.64142984 0.559017 0.74053615 0.63196599 0.70268089
		 0.75 0.90089363 0.75 0.77839142 0.75 0.83964252 0.559017 0.9387489 0.63196599 0.96214473
		 0.559017 0.80178726 0.440983 0.90089363 0.36803398 1 0.440983 0.061251096 0.36803401
		 0.099106349 0.25 0.22160855 0.25 0.29731905 0.25 0.41982123 0.25 0.4576765 0.36803398
		 0.58017874 0.36803401 0.67928505 0.440983 0.64142984 0.32294902 0.74053615 0.25 0.83964252
		 0.32294902;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  1.96365 2.2860034 -0.055975009 
		2.5764053 3.4221516 -1.4789023 -2.2094724 2.0017698 -2.9402716 -0.0027268252 3.2464862 
		-3.2614956 -0.99418497 1.4081606 -0.95915079 3.9436185 0.17855237 2.3539991 2.8086355 
		0.28134817 2.3128884 3.8000941 2.1196742 0.010543944 -2.5764058 -3.4221509 1.4789015 
		-1.9636518 -2.286001 0.055973165 2.2094722 -2.0017695 2.9402709 0.0027266382 -3.2464848 
		3.2614937 0.99418408 -1.4081591 0.95914936 -3.9436195 -0.17855138 -2.354001 -2.8086362 
		-0.28134763 -2.3128903 -3.8000941 -2.1196737 -0.010544697 0.37302977 -1.8354403 2.8737526 
		1.9772421 1.1390336 -0.85152036 -0.37303057 1.8354406 -2.8737526 -1.9772432 -1.1390322 
		0.85151947;
	setAttr -s 20 ".vt[0:19]"  25.7005291 -18.90434074 25.89946556 24.8669014 -15.28943253 26.59427261
		 20.0039653778 -17.8738842 23.95476341 21.34623146 -14.65257549 25.39237976 22.69507027 -20.50161934 24.26815796
		 25.80927658 -18.071548462 31.94836426 26.28294945 -20.62378311 29.20847702 24.93411064 -14.77473927 30.33269882
		 18.0080909729 -21.73858643 31.41597366 17.17446327 -18.12367821 32.11077881 22.87102699 -19.15413475 34.055484772
		 21.52876091 -22.3754425 32.61786652 20.1799221 -16.52639961 33.74208832 17.06571579 -18.95647049 26.061882019
		 16.59204292 -16.40423584 28.80176926 17.94088173 -22.25328064 27.67754745 23.63744545 -23.28373528 29.62225151
		 21.45497894 -13.81978416 31.44128036 19.23754692 -13.74428368 28.38799477 21.42001343 -23.20823479 26.56896591;
	setAttr -s 30 ".ed[0:29]"  0 4 0 4 2 0 2 3 0 3 1 0 1 0 0 7 5 0 5 6 0
		 6 0 0 1 7 0 6 16 0 16 19 0 19 4 0 5 10 0 10 11 0 11 16 0 11 8 0 8 15 0 15 19 0 15 13 0
		 13 2 0 13 14 0 14 18 0 18 3 0 18 17 0 17 7 0 17 12 0 12 10 0 12 9 0 9 8 0 14 9 0;
	setAttr -s 12 -ch 60 ".fc[0:11]" -type "polyFaces" 
		f 5 0 1 2 3 4
		mu 0 5 0 1 2 3 4
		f 5 5 6 7 -5 8
		mu 0 5 5 6 7 0 4
		f 5 -8 9 10 11 -1
		mu 0 5 0 7 8 9 10
		f 5 12 13 14 -10 -7
		mu 0 5 6 11 12 13 7
		f 5 -15 15 16 17 -11
		mu 0 5 14 15 16 17 18
		f 5 -12 -18 18 19 -2
		mu 0 5 19 20 17 21 22
		f 5 -20 20 21 22 -3
		mu 0 5 23 21 24 25 26
		f 5 -4 -23 23 24 -9
		mu 0 5 4 27 28 29 5
		f 5 -25 25 26 -13 -6
		mu 0 5 5 30 31 32 6
		f 5 -16 -14 -27 27 28
		mu 0 5 16 12 11 33 34
		f 5 -28 -26 -24 -22 29
		mu 0 5 34 35 36 37 24
		f 5 -30 -21 -19 -17 -29
		mu 0 5 34 24 21 17 16;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface28" -p "pSolid9";
	setAttr ".t" -type "double3" -48.884045669511096 -17.998112757504096 -20.024948632638804 ;
	setAttr ".rp" -type "double3" 19.525191783905029 -18.514101505279541 36.079925537109375 ;
	setAttr ".sp" -type "double3" 19.525191783905029 -18.514101505279541 36.079925537109375 ;
createNode transform -n "transform26" -p "|pSolid9|polySurface28";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape28" -p "transform26";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.1982127 0.559017
		 0.099106349 0.63196599 0 0.559017 0.037855253 0.440983 0.16035745 0.440983 0.25946382
		 0.36803401 0.35857016 0.440983 0.32071489 0.559017 0.35857016 0.67705101 0.25946379
		 0.75 0.16035745 0.67705101 0.48107234 0.440983 0.51892757 0.559017 0.41982123 0.63196599
		 0.58017874 0.75 0.54232347 0.63196599 0.64142984 0.559017 0.74053615 0.63196599 0.70268089
		 0.75 0.90089363 0.75 0.77839142 0.75 0.83964252 0.559017 0.9387489 0.63196599 0.96214473
		 0.559017 0.80178726 0.440983 0.90089363 0.36803398 1 0.440983 0.061251096 0.36803401
		 0.099106349 0.25 0.22160855 0.25 0.29731905 0.25 0.41982123 0.25 0.4576765 0.36803398
		 0.58017874 0.36803401 0.67928505 0.440983 0.64142984 0.32294902 0.74053615 0.25 0.83964252
		 0.32294902;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  2.4434152 3.4106051e-013 
		1.0835059 1.2365397 3.4106051e-013 1.3980753 1.4530289 1.1013412e-013 -1.7020797 
		0.62444872 3.4106051e-013 -0.32351199 2.5772114 2.8421709e-013 -0.83249468 -0.047410168 
		3.4106051e-013 2.6499591 1.6498883 3.4106051e-013 1.8572094 -0.30287334 3.4106051e-013 
		2.3661964 -1.2365409 1.5276669e-013 -1.3980756 -2.4434152 2.344791e-013 -1.0835056 
		-1.4530289 3.4106051e-013 1.7020804 -0.62444907 6.8212103e-013 0.32351199 -2.5772119 
		3.4106051e-013 0.83249468 0.047411107 5.6843419e-014 -2.6499581 -1.6498883 1.030287e-013 
		-1.8572092 0.30287325 6.3948846e-014 -2.3661964 1.2932596 3.4106051e-013 0.41938904 
		-1.8663769 3.4106051e-013 1.2429414 -1.2932601 3.4106051e-013 -0.41938904 1.8663769 
		1.7763568e-013 -1.2429411;
	setAttr -s 20 ".vt[0:19]"  25.20204735 -17.37565041 38.59726334 22.39808273 -13.92547035 39.32810974
		 22.90105629 -14.93285751 32.12543869 20.9759922 -12.41574192 35.32830048 25.51290131 -17.99824905 34.14576721
		 19.41504097 -19.90779305 42.23664856 23.35842514 -21.072929382 40.39483643 18.82151604 -15.49042225 41.5773735
		 16.65230179 -23.1027317 32.83174133 13.84833717 -19.65255165 33.56258774 16.14932823 -22.095344543 40.034412384
		 18.074392319 -24.61246109 36.8315506 13.53748226 -19.029953003 38.014083862 19.63534355 -17.12040901 29.92320251
		 15.69195843 -15.95527363 31.76501465 20.22886848 -21.53778076 30.58247757 22.52985954 -23.98057175 37.054302216
		 15.18898582 -14.94788742 38.96768951 16.52052498 -13.04763031 35.10554886 23.8613987 -22.080314636 33.19216156;
	setAttr -s 30 ".ed[0:29]"  0 4 0 4 2 0 2 3 0 3 1 0 1 0 0 7 5 0 5 6 0
		 6 0 0 1 7 0 6 16 0 16 19 0 19 4 0 5 10 0 10 11 0 11 16 0 11 8 0 8 15 0 15 19 0 15 13 0
		 13 2 0 13 14 0 14 18 0 18 3 0 18 17 0 17 7 0 17 12 0 12 10 0 12 9 0 9 8 0 14 9 0;
	setAttr -s 12 -ch 60 ".fc[0:11]" -type "polyFaces" 
		f 5 0 1 2 3 4
		mu 0 5 0 1 2 3 4
		f 5 5 6 7 -5 8
		mu 0 5 5 6 7 0 4
		f 5 -8 9 10 11 -1
		mu 0 5 0 7 8 9 10
		f 5 12 13 14 -10 -7
		mu 0 5 6 11 12 13 7
		f 5 -15 15 16 17 -11
		mu 0 5 14 15 16 17 18
		f 5 -12 -18 18 19 -2
		mu 0 5 19 20 17 21 22
		f 5 -20 20 21 22 -3
		mu 0 5 23 21 24 25 26
		f 5 -4 -23 23 24 -9
		mu 0 5 4 27 28 29 5
		f 5 -25 25 26 -13 -6
		mu 0 5 5 30 31 32 6
		f 5 -16 -14 -27 27 28
		mu 0 5 16 12 11 33 34
		f 5 -28 -26 -24 -22 29
		mu 0 5 34 35 36 37 24
		f 5 -30 -21 -19 -17 -29
		mu 0 5 34 24 21 17 16;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface29" -p "pSolid9";
	setAttr ".t" -type "double3" -51.899544713977285 -20.149035741133932 -6.232942923265 ;
	setAttr ".r" -type "double3" -51.055039601487898 63.055357823723256 -38.464653780191284 ;
	setAttr ".s" -type "double3" 0.86274102551653098 0.86274102551653098 0.86274102551653098 ;
	setAttr ".rp" -type "double3" 13.036605834960938 -14.176516771316528 29.279804229736328 ;
	setAttr ".rpt" -type "double3" -5.3991506376860343e-008 9.4139451789487794e-009 
		-3.8538477298288853e-008 ;
	setAttr ".sp" -type "double3" 13.036605834960938 -14.176516771316528 29.279804229736328 ;
createNode transform -n "transform25" -p "polySurface29";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape29" -p "transform25";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.1982127 0.559017
		 0.099106349 0.63196599 0 0.559017 0.037855253 0.440983 0.16035745 0.440983 0.25946382
		 0.36803401 0.35857016 0.440983 0.32071489 0.559017 0.35857016 0.67705101 0.25946379
		 0.75 0.16035745 0.67705101 0.48107234 0.440983 0.51892757 0.559017 0.41982123 0.63196599
		 0.58017874 0.75 0.54232347 0.63196599 0.64142984 0.559017 0.74053615 0.63196599 0.70268089
		 0.75 0.90089363 0.75 0.77839142 0.75 0.83964252 0.559017 0.9387489 0.63196599 0.96214473
		 0.559017 0.80178726 0.440983 0.90089363 0.36803398 1 0.440983 0.061251096 0.36803401
		 0.099106349 0.25 0.22160855 0.25 0.29731905 0.25 0.41982123 0.25 0.4576765 0.36803398
		 0.58017874 0.36803401 0.67928505 0.440983 0.64142984 0.32294902 0.74053615 0.25 0.83964252
		 0.32294902;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  0 0.32653618 0 0 -0.72622979 
		0 0 0.77247179 0 0 -0.45062596 0 0 1.2527846 0 0 -0.92514175 0 0 0.20360182 0 0 -1.499809 
		0 0 0.72622979 0 0 -0.32653597 0 0 -0.7724719 0 0 0.45062596 0 0 -1.2527845 0 0 0.92514127 
		0 0 -0.20360182 0 0 1.4998088 0 0 1.0538727 0 0 -1.7023035 0 0 -1.0538728 0 0 1.7023033 
		0;
	setAttr -s 20 ".vt[0:19]"  21.19598389 -16.1168499 23.17511749 17.80161476 -9.86113358 21.13856888
		 9.81249237 -18.76667786 20.5538044 10.76622963 -11.4988184 19.51850891 16.2584343 -21.62077904 22.81371307
		 21.19739723 -8.67916584 32.56434631 23.29469299 -15.38635349 30.23663521 17.80248833 -5.26439285 26.94143105
		 8.27159691 -18.49189949 37.42103958 4.87722683 -12.23618317 35.38449097 16.2607193 -9.58635426 38.0058059692
		 15.30698204 -16.85421371 39.041099548 9.81477642 -6.73225403 35.74589539 4.87581444 -19.67386627 25.99526405
		 2.77851868 -12.96667957 28.32297325 8.27072334 -23.088640213 31.61817741 19.65421677 -20.43881035 34.23949051
		 10.76764202 -4.061134338 28.90773773 6.4189949 -7.91422224 24.32011795 15.30556965 -24.29189873 29.65187073;
	setAttr -s 30 ".ed[0:29]"  0 4 0 4 2 0 2 3 0 3 1 0 1 0 0 7 5 0 5 6 0
		 6 0 0 1 7 0 6 16 0 16 19 0 19 4 0 5 10 0 10 11 0 11 16 0 11 8 0 8 15 0 15 19 0 15 13 0
		 13 2 0 13 14 0 14 18 0 18 3 0 18 17 0 17 7 0 17 12 0 12 10 0 12 9 0 9 8 0 14 9 0;
	setAttr -s 12 -ch 60 ".fc[0:11]" -type "polyFaces" 
		f 5 0 1 2 3 4
		mu 0 5 0 1 2 3 4
		f 5 5 6 7 -5 8
		mu 0 5 5 6 7 0 4
		f 5 -8 9 10 11 -1
		mu 0 5 0 7 8 9 10
		f 5 12 13 14 -10 -7
		mu 0 5 6 11 12 13 7
		f 5 -15 15 16 17 -11
		mu 0 5 14 15 16 17 18
		f 5 -12 -18 18 19 -2
		mu 0 5 19 20 17 21 22
		f 5 -20 20 21 22 -3
		mu 0 5 23 21 24 25 26
		f 5 -4 -23 23 24 -9
		mu 0 5 4 27 28 29 5
		f 5 -25 25 26 -13 -6
		mu 0 5 5 30 31 32 6
		f 5 -16 -14 -27 27 28
		mu 0 5 16 12 11 33 34
		f 5 -28 -26 -24 -22 29
		mu 0 5 34 35 36 37 24
		f 5 -30 -21 -19 -17 -29
		mu 0 5 34 24 21 17 16;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface30" -p "pSolid9";
	setAttr ".t" -type "double3" -53.097652842247122 -9.6838844448782275 -18.386252105402349 ;
	setAttr ".s" -type "double3" 0.75510659776326794 0.75510659776326794 0.75510659776326794 ;
	setAttr ".rp" -type "double3" 19.525191783905029 -18.514101505279541 36.079925537109375 ;
	setAttr ".sp" -type "double3" 19.525191783905029 -18.514101505279541 36.079925537109375 ;
createNode transform -n "transform24" -p "polySurface30";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape30" -p "transform24";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.1982127 0.559017
		 0.099106349 0.63196599 0 0.559017 0.037855253 0.440983 0.16035745 0.440983 0.25946382
		 0.36803401 0.35857016 0.440983 0.32071489 0.559017 0.35857016 0.67705101 0.25946379
		 0.75 0.16035745 0.67705101 0.48107234 0.440983 0.51892757 0.559017 0.41982123 0.63196599
		 0.58017874 0.75 0.54232347 0.63196599 0.64142984 0.559017 0.74053615 0.63196599 0.70268089
		 0.75 0.90089363 0.75 0.77839142 0.75 0.83964252 0.559017 0.9387489 0.63196599 0.96214473
		 0.559017 0.80178726 0.440983 0.90089363 0.36803398 1 0.440983 0.061251096 0.36803401
		 0.099106349 0.25 0.22160855 0.25 0.29731905 0.25 0.41982123 0.25 0.4576765 0.36803398
		 0.58017874 0.36803401 0.67928505 0.440983 0.64142984 0.32294902 0.74053615 0.25 0.83964252
		 0.32294902;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  2.4434152 0.21538946 0.42391458 
		1.2365397 0.86814809 0.54698765 1.4530289 0.67755443 -0.66592681 0.62444872 1.1537818 
		-0.12657195 2.5772114 0.097596727 -0.32570738 -0.047410168 -0.26368022 1.0367779 
		1.6498883 -0.48411822 0.72662008 -0.30287334 0.57206595 0.92575848 -1.2365409 -0.86814702 
		-0.54698813 -2.4434152 -0.21538925 -0.4239141 -1.4530289 -0.67755497 0.66592818 -0.62444907 
		-1.1537815 0.12657195 -2.5772119 -0.097596526 0.32570738 0.047411107 0.26368016 -1.0367775 
		-1.6498883 0.48411834 -0.7266193 0.30287325 -0.57206649 -0.92575848 1.2932596 -1.0342309 
		0.16408324 -1.8663769 0.67471117 0.48629159 -1.2932601 1.0342307 -0.16408324 1.8663769 
		-0.67471141 -0.48629135;
	setAttr -s 20 ".vt[0:19]"  25.20204735 -17.37565041 38.59726334 22.39808273 -13.92547035 39.32810974
		 22.90105629 -14.93285751 32.12543869 20.9759922 -12.41574192 35.32830048 25.51290131 -17.99824905 34.14576721
		 19.41504097 -19.90779305 42.23664856 23.35842514 -21.072929382 40.39483643 18.82151604 -15.49042225 41.5773735
		 16.65230179 -23.1027317 32.83174133 13.84833717 -19.65255165 33.56258774 16.14932823 -22.095344543 40.034412384
		 18.074392319 -24.61246109 36.8315506 13.53748226 -19.029953003 38.014083862 19.63534355 -17.12040901 29.92320251
		 15.69195843 -15.95527363 31.76501465 20.22886848 -21.53778076 30.58247757 22.52985954 -23.98057175 37.054302216
		 15.18898582 -14.94788742 38.96768951 16.52052498 -13.04763031 35.10554886 23.8613987 -22.080314636 33.19216156;
	setAttr -s 30 ".ed[0:29]"  0 4 0 4 2 0 2 3 0 3 1 0 1 0 0 7 5 0 5 6 0
		 6 0 0 1 7 0 6 16 0 16 19 0 19 4 0 5 10 0 10 11 0 11 16 0 11 8 0 8 15 0 15 19 0 15 13 0
		 13 2 0 13 14 0 14 18 0 18 3 0 18 17 0 17 7 0 17 12 0 12 10 0 12 9 0 9 8 0 14 9 0;
	setAttr -s 12 -ch 60 ".fc[0:11]" -type "polyFaces" 
		f 5 0 1 2 3 4
		mu 0 5 0 1 2 3 4
		f 5 5 6 7 -5 8
		mu 0 5 5 6 7 0 4
		f 5 -8 9 10 11 -1
		mu 0 5 0 7 8 9 10
		f 5 12 13 14 -10 -7
		mu 0 5 6 11 12 13 7
		f 5 -15 15 16 17 -11
		mu 0 5 14 15 16 17 18
		f 5 -12 -18 18 19 -2
		mu 0 5 19 20 17 21 22
		f 5 -20 20 21 22 -3
		mu 0 5 23 21 24 25 26
		f 5 -4 -23 23 24 -9
		mu 0 5 4 27 28 29 5
		f 5 -25 25 26 -13 -6
		mu 0 5 5 30 31 32 6
		f 5 -16 -14 -27 27 28
		mu 0 5 16 12 11 33 34
		f 5 -28 -26 -24 -22 29
		mu 0 5 34 35 36 37 24
		f 5 -30 -21 -19 -17 -29
		mu 0 5 34 24 21 17 16;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface31" -p "pSolid9";
	setAttr ".t" -type "double3" -12.480021994626046 -23.922129404465188 17.555281966441683 ;
	setAttr ".s" -type "double3" 0.60488994368804194 0.60488994368804194 0.60488994368804194 ;
	setAttr ".rp" -type "double3" 19.525191783905029 -18.514101505279541 36.079925537109375 ;
	setAttr ".sp" -type "double3" 19.525191783905029 -18.514101505279541 36.079925537109375 ;
createNode transform -n "transform29" -p "|pSolid9|polySurface31";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape31" -p "transform29";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.1982127 0.559017
		 0.099106349 0.63196599 0 0.559017 0.037855253 0.440983 0.16035745 0.440983 0.25946382
		 0.36803401 0.35857016 0.440983 0.32071489 0.559017 0.35857016 0.67705101 0.25946379
		 0.75 0.16035745 0.67705101 0.48107234 0.440983 0.51892757 0.559017 0.41982123 0.63196599
		 0.58017874 0.75 0.54232347 0.63196599 0.64142984 0.559017 0.74053615 0.63196599 0.70268089
		 0.75 0.90089363 0.75 0.77839142 0.75 0.83964252 0.559017 0.9387489 0.63196599 0.96214473
		 0.559017 0.80178726 0.440983 0.90089363 0.36803398 1 0.440983 0.061251096 0.36803401
		 0.099106349 0.25 0.22160855 0.25 0.29731905 0.25 0.41982123 0.25 0.4576765 0.36803398
		 0.58017874 0.36803401 0.67928505 0.440983 0.64142984 0.32294902 0.74053615 0.25 0.83964252
		 0.32294902;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  11.377847 0.60305417 5.0451875 
		5.7580862 2.430665 6.5102067 6.7661357 1.8970371 -7.9259062 2.9077513 3.2303901 -1.506543 
		12.000887 0.27325451 -3.876545 -0.22077423 -0.73825866 12.339561 7.6828594 -1.3554487 
		8.6481276 -1.4103686 1.6016872 11.018305 -5.7580452 -2.4306648 -6.5102072 -11.377795 
		-0.60305369 -5.0451832 -6.7660875 -1.8970367 7.925746 -2.9077928 -3.2303903 1.506543 
		-12.000861 -0.27325404 3.8765459 0.22072431 0.73825926 -12.339559 -7.6828189 1.3554485 
		-8.6481276 1.4103299 -1.6016872 -11.018302 6.0221176 -2.8956692 1.952943 -8.6908598 
		1.8890758 5.7876635 -6.0221591 2.8956697 -1.952943 8.6908979 -1.8890753 -5.787663;
	setAttr -s 20 ".vt[0:19]"  25.20204735 -17.37565041 38.59726334 22.39808273 -13.92547035 39.32810974
		 22.90105629 -14.93285751 32.12543869 20.9759922 -12.41574192 35.32830048 25.51290131 -17.99824905 34.14576721
		 19.41504097 -19.90779305 42.23664856 23.35842514 -21.072929382 40.39483643 18.82151604 -15.49042225 41.5773735
		 16.65230179 -23.1027317 32.83174133 13.84833717 -19.65255165 33.56258774 16.14932823 -22.095344543 40.034412384
		 18.074392319 -24.61246109 36.8315506 13.53748226 -19.029953003 38.014083862 19.63534355 -17.12040901 29.92320251
		 15.69195843 -15.95527363 31.76501465 20.22886848 -21.53778076 30.58247757 22.52985954 -23.98057175 37.054302216
		 15.18898582 -14.94788742 38.96768951 16.52052498 -13.04763031 35.10554886 23.8613987 -22.080314636 33.19216156;
	setAttr -s 30 ".ed[0:29]"  0 4 0 4 2 0 2 3 0 3 1 0 1 0 0 7 5 0 5 6 0
		 6 0 0 1 7 0 6 16 0 16 19 0 19 4 0 5 10 0 10 11 0 11 16 0 11 8 0 8 15 0 15 19 0 15 13 0
		 13 2 0 13 14 0 14 18 0 18 3 0 18 17 0 17 7 0 17 12 0 12 10 0 12 9 0 9 8 0 14 9 0;
	setAttr -s 12 -ch 60 ".fc[0:11]" -type "polyFaces" 
		f 5 0 1 2 3 4
		mu 0 5 0 1 2 3 4
		f 5 5 6 7 -5 8
		mu 0 5 5 6 7 0 4
		f 5 -8 9 10 11 -1
		mu 0 5 0 7 8 9 10
		f 5 12 13 14 -10 -7
		mu 0 5 6 11 12 13 7
		f 5 -15 15 16 17 -11
		mu 0 5 14 15 16 17 18
		f 5 -12 -18 18 19 -2
		mu 0 5 19 20 17 21 22
		f 5 -20 20 21 22 -3
		mu 0 5 23 21 24 25 26
		f 5 -4 -23 23 24 -9
		mu 0 5 4 27 28 29 5
		f 5 -25 25 26 -13 -6
		mu 0 5 5 30 31 32 6
		f 5 -16 -14 -27 27 28
		mu 0 5 16 12 11 33 34
		f 5 -28 -26 -24 -22 29
		mu 0 5 34 35 36 37 24
		f 5 -30 -21 -19 -17 -29
		mu 0 5 34 24 21 17 16;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface32" -p "pSolid9";
	setAttr ".t" -type "double3" -15.755894550290355 -31.187332633246658 34.298061841828449 ;
	setAttr ".r" -type "double3" -51.055039601487898 63.055357823723256 -38.464653780191284 ;
	setAttr ".s" -type "double3" 0.86274102551653098 0.86274102551653098 0.86274102551653098 ;
	setAttr ".rp" -type "double3" 13.036605834960938 -14.176516771316528 29.279804229736328 ;
	setAttr ".rpt" -type "double3" -5.3991506376860343e-008 9.4139451789487794e-009 
		-3.8538477298288853e-008 ;
	setAttr ".sp" -type "double3" 13.036605834960938 -14.176516771316528 29.279804229736328 ;
createNode transform -n "transform28" -p "polySurface32";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape32" -p "transform28";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4999999888241291 0.69098299741744995 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.1982127 0.559017
		 0.099106349 0.63196599 0 0.559017 0.037855253 0.440983 0.16035745 0.440983 0.25946382
		 0.36803401 0.35857016 0.440983 0.32071489 0.559017 0.35857016 0.67705101 0.25946379
		 0.75 0.16035745 0.67705101 0.48107234 0.440983 0.51892757 0.559017 0.41982123 0.63196599
		 0.58017874 0.75 0.54232347 0.63196599 0.64142984 0.559017 0.74053615 0.63196599 0.70268089
		 0.75 0.90089363 0.75 0.77839142 0.75 0.83964252 0.559017 0.9387489 0.63196599 0.96214473
		 0.559017 0.80178726 0.440983 0.90089363 0.36803398 1 0.440983 0.061251096 0.36803401
		 0.099106349 0.25 0.22160855 0.25 0.29731905 0.25 0.41982123 0.25 0.4576765 0.36803398
		 0.58017874 0.36803401 0.67928505 0.440983 0.64142984 0.32294902 0.74053615 0.25 0.83964252
		 0.32294902;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  1.4210855e-014 3.9826198 
		5.9604634e-008 4.6567195e-010 2.4369407 4.6565063e-010 7.450582e-008 4.3652382 2.9802312e-008 
		1.0658141e-014 2.6197789 -1.0658141e-014 5.9604659e-008 5.3494973 1.1920928e-007 
		-1.4901154e-008 1.3854063 2.9802315e-008 2.9802333e-008 3.2150455 -1.0658141e-014 
		-2.9802315e-008 0.86178917 1.4901154e-008 -1.3969732e-009 3.6235194 -1.396991e-009 
		5.9604652e-008 1.7802107 -7.1054274e-015 2.9802329e-008 1.4799047 -2.9802329e-008 
		9.3133323e-010 3.4017451 -9.3132968e-010 -2.9802315e-008 0.6127733 -5.9604652e-008 
		9.7699626e-015 3.7921402 1.4901151e-008 7.1054274e-015 1.8689919 1.4901154e-008 4.4703498e-008 
		5.0735679 -2.9802333e-008 2.9802337e-008 4.6657166 -1.4210855e-014 7.1054274e-015 
		0.16325366 2.9802315e-008 -5.9604638e-008 1.1394677 7.4505806e-008 5.9604659e-008 
		5.7990165 -1.0658141e-014;
	setAttr -s 20 ".vt[0:19]"  21.19598389 -16.1168499 23.17511749 17.80161476 -9.86113358 21.13856888
		 9.81249237 -18.76667786 20.5538044 10.76622963 -11.4988184 19.51850891 16.2584343 -21.62077904 22.81371307
		 21.19739723 -8.67916584 32.56434631 23.29469299 -15.38635349 30.23663521 17.80248833 -5.26439285 26.94143105
		 8.27159691 -18.49189949 37.42103958 4.87722683 -12.23618317 35.38449097 16.2607193 -9.58635426 38.0058059692
		 15.30698204 -16.85421371 39.041099548 9.81477642 -6.73225403 35.74589539 4.87581444 -19.67386627 25.99526405
		 2.77851868 -12.96667957 28.32297325 8.27072334 -23.088640213 31.61817741 19.65421677 -20.43881035 34.23949051
		 10.76764202 -4.061134338 28.90773773 6.4189949 -7.91422224 24.32011795 15.30556965 -24.29189873 29.65187073;
	setAttr -s 30 ".ed[0:29]"  0 4 0 4 2 0 2 3 0 3 1 0 1 0 0 7 5 0 5 6 0
		 6 0 0 1 7 0 6 16 0 16 19 0 19 4 0 5 10 0 10 11 0 11 16 0 11 8 0 8 15 0 15 19 0 15 13 0
		 13 2 0 13 14 0 14 18 0 18 3 0 18 17 0 17 7 0 17 12 0 12 10 0 12 9 0 9 8 0 14 9 0;
	setAttr -s 12 -ch 60 ".fc[0:11]" -type "polyFaces" 
		f 5 0 1 2 3 4
		mu 0 5 0 1 2 3 4
		f 5 5 6 7 -5 8
		mu 0 5 5 6 7 0 4
		f 5 -8 9 10 11 -1
		mu 0 5 0 7 8 9 10
		f 5 12 13 14 -10 -7
		mu 0 5 6 11 12 13 7
		f 5 -15 15 16 17 -11
		mu 0 5 14 15 16 17 18
		f 5 -12 -18 18 19 -2
		mu 0 5 19 20 17 21 22
		f 5 -20 20 21 22 -3
		mu 0 5 23 21 24 25 26
		f 5 -4 -23 23 24 -9
		mu 0 5 4 27 28 29 5
		f 5 -25 25 26 -13 -6
		mu 0 5 5 30 31 32 6
		f 5 -16 -14 -27 27 28
		mu 0 5 16 12 11 33 34
		f 5 -28 -26 -24 -22 29
		mu 0 5 34 35 36 37 24
		f 5 -30 -21 -19 -17 -29
		mu 0 5 34 24 21 17 16;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface33" -p "pSolid9";
	setAttr ".t" -type "double3" -15.748350010119061 -19.089126255398522 26.576819420957058 ;
	setAttr ".s" -type "double3" 0.75510659776326794 0.75510659776326794 0.75510659776326794 ;
	setAttr ".rp" -type "double3" 19.525191783905029 -18.514101505279541 36.079925537109375 ;
	setAttr ".sp" -type "double3" 19.525191783905029 -18.514101505279541 36.079925537109375 ;
createNode transform -n "transform27" -p "polySurface33";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape33" -p "transform27";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.1982127 0.559017
		 0.099106349 0.63196599 0 0.559017 0.037855253 0.440983 0.16035745 0.440983 0.25946382
		 0.36803401 0.35857016 0.440983 0.32071489 0.559017 0.35857016 0.67705101 0.25946379
		 0.75 0.16035745 0.67705101 0.48107234 0.440983 0.51892757 0.559017 0.41982123 0.63196599
		 0.58017874 0.75 0.54232347 0.63196599 0.64142984 0.559017 0.74053615 0.63196599 0.70268089
		 0.75 0.90089363 0.75 0.77839142 0.75 0.83964252 0.559017 0.9387489 0.63196599 0.96214473
		 0.559017 0.80178726 0.440983 0.90089363 0.36803398 1 0.440983 0.061251096 0.36803401
		 0.099106349 0.25 0.22160855 0.25 0.29731905 0.25 0.41982123 0.25 0.4576765 0.36803398
		 0.58017874 0.36803401 0.67928505 0.440983 0.64142984 0.32294902 0.74053615 0.25 0.83964252
		 0.32294902;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  2.4434152 0.21538946 0.42391458 
		1.2365397 0.86814809 0.54698765 1.4530289 0.67755443 -0.66592681 0.62444872 1.1537818 
		-0.12657195 2.5772114 0.097596727 -0.32570738 -0.047410168 -0.26368022 1.0367779 
		1.6498883 -0.48411822 0.72662008 -0.30287334 0.57206595 0.92575848 -1.2365409 -0.86814702 
		-0.54698813 -2.4434152 -0.21538925 -0.4239141 -1.4530289 -0.67755497 0.66592818 -0.62444907 
		-1.1537815 0.12657195 -2.5772119 -0.097596526 0.32570738 0.047411107 0.26368016 -1.0367775 
		-1.6498883 0.48411834 -0.7266193 0.30287325 -0.57206649 -0.92575848 1.2932596 -1.0342309 
		0.16408324 -1.8663769 0.67471117 0.48629159 -1.2932601 1.0342307 -0.16408324 1.8663769 
		-0.67471141 -0.48629135;
	setAttr -s 20 ".vt[0:19]"  25.20204735 -17.37565041 38.59726334 22.39808273 -13.92547035 39.32810974
		 22.90105629 -14.93285751 32.12543869 20.9759922 -12.41574192 35.32830048 25.51290131 -17.99824905 34.14576721
		 19.41504097 -19.90779305 42.23664856 23.35842514 -21.072929382 40.39483643 18.82151604 -15.49042225 41.5773735
		 16.65230179 -23.1027317 32.83174133 13.84833717 -19.65255165 33.56258774 16.14932823 -22.095344543 40.034412384
		 18.074392319 -24.61246109 36.8315506 13.53748226 -19.029953003 38.014083862 19.63534355 -17.12040901 29.92320251
		 15.69195843 -15.95527363 31.76501465 20.22886848 -21.53778076 30.58247757 22.52985954 -23.98057175 37.054302216
		 15.18898582 -14.94788742 38.96768951 16.52052498 -13.04763031 35.10554886 23.8613987 -22.080314636 33.19216156;
	setAttr -s 30 ".ed[0:29]"  0 4 0 4 2 0 2 3 0 3 1 0 1 0 0 7 5 0 5 6 0
		 6 0 0 1 7 0 6 16 0 16 19 0 19 4 0 5 10 0 10 11 0 11 16 0 11 8 0 8 15 0 15 19 0 15 13 0
		 13 2 0 13 14 0 14 18 0 18 3 0 18 17 0 17 7 0 17 12 0 12 10 0 12 9 0 9 8 0 14 9 0;
	setAttr -s 12 -ch 60 ".fc[0:11]" -type "polyFaces" 
		f 5 0 1 2 3 4
		mu 0 5 0 1 2 3 4
		f 5 5 6 7 -5 8
		mu 0 5 5 6 7 0 4
		f 5 -8 9 10 11 -1
		mu 0 5 0 7 8 9 10
		f 5 12 13 14 -10 -7
		mu 0 5 6 11 12 13 7
		f 5 -15 15 16 17 -11
		mu 0 5 14 15 16 17 18
		f 5 -12 -18 18 19 -2
		mu 0 5 19 20 17 21 22
		f 5 -20 20 21 22 -3
		mu 0 5 23 21 24 25 26
		f 5 -4 -23 23 24 -9
		mu 0 5 4 27 28 29 5
		f 5 -25 25 26 -13 -6
		mu 0 5 5 30 31 32 6
		f 5 -16 -14 -27 27 28
		mu 0 5 16 12 11 33 34
		f 5 -28 -26 -24 -22 29
		mu 0 5 34 35 36 37 24
		f 5 -30 -21 -19 -17 -29
		mu 0 5 34 24 21 17 16;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface34" -p "pSolid9";
	setAttr ".t" -type "double3" -91.872409845387011 -15.572327151935273 -42.06703898986904 ;
	setAttr ".r" -type "double3" -7.8943480387577321 9.6509483110249192 -194.37405191679642 ;
	setAttr ".rp" -type "double3" 13.036605834960938 -14.176516771316528 29.279804229736328 ;
	setAttr ".rpt" -type "double3" -5.3991506376860343e-008 9.4139451789487794e-009 
		-3.8538477298288853e-008 ;
	setAttr ".sp" -type "double3" 13.036605834960938 -14.176516771316528 29.279804229736328 ;
createNode transform -n "transform23" -p "|pSolid9|polySurface34";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape34" -p "transform23";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.1982127 0.559017
		 0.099106349 0.63196599 0 0.559017 0.037855253 0.440983 0.16035745 0.440983 0.25946382
		 0.36803401 0.35857016 0.440983 0.32071489 0.559017 0.35857016 0.67705101 0.25946379
		 0.75 0.16035745 0.67705101 0.48107234 0.440983 0.51892757 0.559017 0.41982123 0.63196599
		 0.58017874 0.75 0.54232347 0.63196599 0.64142984 0.559017 0.74053615 0.63196599 0.70268089
		 0.75 0.90089363 0.75 0.77839142 0.75 0.83964252 0.559017 0.9387489 0.63196599 0.96214473
		 0.559017 0.80178726 0.440983 0.90089363 0.36803398 1 0.440983 0.061251096 0.36803401
		 0.099106349 0.25 0.22160855 0.25 0.29731905 0.25 0.41982123 0.25 0.4576765 0.36803398
		 0.58017874 0.36803401 0.67928505 0.440983 0.64142984 0.32294902 0.74053615 0.25 0.83964252
		 0.32294902;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  0 0.32653618 0 0 -0.72622979 
		0 0 0.77247179 0 0 -0.45062596 0 0 1.2527846 0 0 -0.92514175 0 0 0.20360182 0 0 -1.499809 
		0 0 0.72622979 0 0 -0.32653597 0 0 -0.7724719 0 0 0.45062596 0 0 -1.2527845 0 0 0.92514127 
		0 0 -0.20360182 0 0 1.4998088 0 0 1.0538727 0 0 -1.7023035 0 0 -1.0538728 0 0 1.7023033 
		0;
	setAttr -s 20 ".vt[0:19]"  21.19598389 -16.1168499 23.17511749 17.80161476 -9.86113358 21.13856888
		 9.81249237 -18.76667786 20.5538044 10.76622963 -11.4988184 19.51850891 16.2584343 -21.62077904 22.81371307
		 21.19739723 -8.67916584 32.56434631 23.29469299 -15.38635349 30.23663521 17.80248833 -5.26439285 26.94143105
		 8.27159691 -18.49189949 37.42103958 4.87722683 -12.23618317 35.38449097 16.2607193 -9.58635426 38.0058059692
		 15.30698204 -16.85421371 39.041099548 9.81477642 -6.73225403 35.74589539 4.87581444 -19.67386627 25.99526405
		 2.77851868 -12.96667957 28.32297325 8.27072334 -23.088640213 31.61817741 19.65421677 -20.43881035 34.23949051
		 10.76764202 -4.061134338 28.90773773 6.4189949 -7.91422224 24.32011795 15.30556965 -24.29189873 29.65187073;
	setAttr -s 30 ".ed[0:29]"  0 4 0 4 2 0 2 3 0 3 1 0 1 0 0 7 5 0 5 6 0
		 6 0 0 1 7 0 6 16 0 16 19 0 19 4 0 5 10 0 10 11 0 11 16 0 11 8 0 8 15 0 15 19 0 15 13 0
		 13 2 0 13 14 0 14 18 0 18 3 0 18 17 0 17 7 0 17 12 0 12 10 0 12 9 0 9 8 0 14 9 0;
	setAttr -s 12 -ch 60 ".fc[0:11]" -type "polyFaces" 
		f 5 0 1 2 3 4
		mu 0 5 0 1 2 3 4
		f 5 5 6 7 -5 8
		mu 0 5 5 6 7 0 4
		f 5 -8 9 10 11 -1
		mu 0 5 0 7 8 9 10
		f 5 12 13 14 -10 -7
		mu 0 5 6 11 12 13 7
		f 5 -15 15 16 17 -11
		mu 0 5 14 15 16 17 18
		f 5 -12 -18 18 19 -2
		mu 0 5 19 20 17 21 22
		f 5 -20 20 21 22 -3
		mu 0 5 23 21 24 25 26
		f 5 -4 -23 23 24 -9
		mu 0 5 4 27 28 29 5
		f 5 -25 25 26 -13 -6
		mu 0 5 5 30 31 32 6
		f 5 -16 -14 -27 27 28
		mu 0 5 16 12 11 33 34
		f 5 -28 -26 -24 -22 29
		mu 0 5 34 35 36 37 24
		f 5 -30 -21 -19 -17 -29
		mu 0 5 34 24 21 17 16;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface35" -p "pSolid9";
	setAttr ".t" -type "double3" -85.894754877971124 -14.47914116437514 -37.975247501718179 ;
	setAttr ".r" -type "double3" 20.374548847985437 -59.534501422496191 -197.05630818539353 ;
	setAttr ".s" -type "double3" 1.0753176855692019 1.0753176855692019 1.0753176855692019 ;
	setAttr ".rp" -type "double3" 19.525191783905029 -18.514101505279541 36.079925537109368 ;
	setAttr ".sp" -type "double3" 19.525191783905029 -18.514101505279541 36.079925537109375 ;
	setAttr ".spt" -type "double3" 1.1102230246251565e-015 -1.5543122344752192e-015 
		-3.9968028886505635e-015 ;
createNode transform -n "transform22" -p "polySurface35";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape35" -p "transform22";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.1982127 0.559017
		 0.099106349 0.63196599 0 0.559017 0.037855253 0.440983 0.16035745 0.440983 0.25946382
		 0.36803401 0.35857016 0.440983 0.32071489 0.559017 0.35857016 0.67705101 0.25946379
		 0.75 0.16035745 0.67705101 0.48107234 0.440983 0.51892757 0.559017 0.41982123 0.63196599
		 0.58017874 0.75 0.54232347 0.63196599 0.64142984 0.559017 0.74053615 0.63196599 0.70268089
		 0.75 0.90089363 0.75 0.77839142 0.75 0.83964252 0.559017 0.9387489 0.63196599 0.96214473
		 0.559017 0.80178726 0.440983 0.90089363 0.36803398 1 0.440983 0.061251096 0.36803401
		 0.099106349 0.25 0.22160855 0.25 0.29731905 0.25 0.41982123 0.25 0.4576765 0.36803398
		 0.58017874 0.36803401 0.67928505 0.440983 0.64142984 0.32294902 0.74053615 0.25 0.83964252
		 0.32294902;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  25.20204735 -17.37565041 38.59726334 22.39808273 -13.92547035 39.32810974
		 22.90105629 -14.93285751 32.12543869 20.9759922 -12.41574192 35.32830048 25.51290131 -17.99824905 34.14576721
		 19.41504097 -19.90779305 42.23664856 23.35842514 -21.072929382 40.39483643 18.82151604 -15.49042225 41.5773735
		 16.65230179 -23.1027317 32.83174133 13.84833717 -19.65255165 33.56258774 16.14932823 -22.095344543 40.034412384
		 18.074392319 -24.61246109 36.8315506 13.53748226 -19.029953003 38.014083862 19.63534355 -17.12040901 29.92320251
		 15.69195843 -15.95527363 31.76501465 20.22886848 -21.53778076 30.58247757 22.52985954 -23.98057175 37.054302216
		 15.18898582 -14.94788742 38.96768951 16.52052498 -13.04763031 35.10554886 23.8613987 -22.080314636 33.19216156;
	setAttr -s 30 ".ed[0:29]"  0 4 0 4 2 0 2 3 0 3 1 0 1 0 0 7 5 0 5 6 0
		 6 0 0 1 7 0 6 16 0 16 19 0 19 4 0 5 10 0 10 11 0 11 16 0 11 8 0 8 15 0 15 19 0 15 13 0
		 13 2 0 13 14 0 14 18 0 18 3 0 18 17 0 17 7 0 17 12 0 12 10 0 12 9 0 9 8 0 14 9 0;
	setAttr -s 12 -ch 60 ".fc[0:11]" -type "polyFaces" 
		f 5 0 1 2 3 4
		mu 0 5 0 1 2 3 4
		f 5 5 6 7 -5 8
		mu 0 5 5 6 7 0 4
		f 5 -8 9 10 11 -1
		mu 0 5 0 7 8 9 10
		f 5 12 13 14 -10 -7
		mu 0 5 6 11 12 13 7
		f 5 -15 15 16 17 -11
		mu 0 5 14 15 16 17 18
		f 5 -12 -18 18 19 -2
		mu 0 5 19 20 17 21 22
		f 5 -20 20 21 22 -3
		mu 0 5 23 21 24 25 26
		f 5 -4 -23 23 24 -9
		mu 0 5 4 27 28 29 5
		f 5 -25 25 26 -13 -6
		mu 0 5 5 30 31 32 6
		f 5 -16 -14 -27 27 28
		mu 0 5 16 12 11 33 34
		f 5 -28 -26 -24 -22 29
		mu 0 5 34 35 36 37 24
		f 5 -30 -21 -19 -17 -29
		mu 0 5 34 24 21 17 16;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface36" -p "pSolid9";
	setAttr ".t" -type "double3" -73.934471364092374 -9.0361560335912259 -21.187642704113813 ;
	setAttr ".r" -type "double3" 20.374548847985437 -59.534501422496191 -197.05630818539353 ;
	setAttr ".rp" -type "double3" 5.523331880569458 -20.07298469543457 25.146690368652344 ;
	setAttr ".sp" -type "double3" 5.523331880569458 -20.07298469543457 25.146690368652344 ;
createNode transform -n "transform21" -p "polySurface36";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape36" -p "transform21";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.1982127 0.559017
		 0.099106349 0.63196599 0 0.559017 0.037855253 0.440983 0.16035745 0.440983 0.25946382
		 0.36803401 0.35857016 0.440983 0.32071489 0.559017 0.35857016 0.67705101 0.25946379
		 0.75 0.16035745 0.67705101 0.48107234 0.440983 0.51892757 0.559017 0.41982123 0.63196599
		 0.58017874 0.75 0.54232347 0.63196599 0.64142984 0.559017 0.74053615 0.63196599 0.70268089
		 0.75 0.90089363 0.75 0.77839142 0.75 0.83964252 0.559017 0.9387489 0.63196599 0.96214473
		 0.559017 0.80178726 0.440983 0.90089363 0.36803398 1 0.440983 0.061251096 0.36803401
		 0.099106349 0.25 0.22160855 0.25 0.29731905 0.25 0.41982123 0.25 0.4576765 0.36803398
		 0.58017874 0.36803401 0.67928505 0.440983 0.64142984 0.32294902 0.74053615 0.25 0.83964252
		 0.32294902;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  6.29003859 -16.27899361 26.096067429 4.54294062 -17.46826553 27.99937248
		 2.54662251 -17.75468445 23.86286354 2.22938251 -18.38029289 26.61917686 5.056245804 -16.45601082 23.53956413
		 8.41842079 -19.94719505 27.88277435 8.6852169 -17.81105614 26.02400589 5.85835314 -19.73533821 29.10361862
		 6.50372267 -22.67770386 22.29400826 4.7566247 -23.86697578 24.19731331 8.50004101 -22.39128494 26.4305172
		 8.81728077 -21.7656765 23.67420387 5.99041748 -23.68995857 26.7538166 2.62824273 -20.19877434 22.41060638
		 2.36144638 -22.33491325 24.26937485 5.18831015 -20.41063118 21.18976212 8.93172646 -18.93494034 23.422966
		 4.35776472 -22.048494339 28.40588379 2.11493731 -21.21102905 26.87041473 6.68889856 -18.097475052 21.88749695;
	setAttr -s 30 ".ed[0:29]"  0 4 0 4 2 0 2 3 0 3 1 0 1 0 0 7 5 0 5 6 0
		 6 0 0 1 7 0 6 16 0 16 19 0 19 4 0 5 10 0 10 11 0 11 16 0 11 8 0 8 15 0 15 19 0 15 13 0
		 13 2 0 13 14 0 14 18 0 18 3 0 18 17 0 17 7 0 17 12 0 12 10 0 12 9 0 9 8 0 14 9 0;
	setAttr -s 12 -ch 60 ".fc[0:11]" -type "polyFaces" 
		f 5 0 1 2 3 4
		mu 0 5 0 1 2 3 4
		f 5 5 6 7 -5 8
		mu 0 5 5 6 7 0 4
		f 5 -8 9 10 11 -1
		mu 0 5 0 7 8 9 10
		f 5 12 13 14 -10 -7
		mu 0 5 6 11 12 13 7
		f 5 -15 15 16 17 -11
		mu 0 5 14 15 16 17 18
		f 5 -12 -18 18 19 -2
		mu 0 5 19 20 17 21 22
		f 5 -20 20 21 22 -3
		mu 0 5 23 21 24 25 26
		f 5 -4 -23 23 24 -9
		mu 0 5 4 27 28 29 5
		f 5 -25 25 26 -13 -6
		mu 0 5 5 30 31 32 6
		f 5 -16 -14 -27 27 28
		mu 0 5 16 12 11 33 34
		f 5 -28 -26 -24 -22 29
		mu 0 5 34 35 36 37 24
		f 5 -30 -21 -19 -17 -29
		mu 0 5 34 24 21 17 16;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface37" -p "pSolid9";
	setAttr ".t" -type "double3" -87.994119004459861 -16.142146261797478 -31.188228454996526 ;
	setAttr ".r" -type "double3" 41.47004877922673 -48.17977994665079 -210.61969852939052 ;
	setAttr ".rp" -type "double3" 13.036605834960938 -14.176516771316528 29.279804229736328 ;
	setAttr ".rpt" -type "double3" -5.3991506376860343e-008 9.4139451789487794e-009 
		-3.8538477298288853e-008 ;
	setAttr ".sp" -type "double3" 13.036605834960938 -14.176516771316528 29.279804229736328 ;
createNode transform -n "transform20" -p "polySurface37";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape37" -p "transform20";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.1982127 0.559017
		 0.099106349 0.63196599 0 0.559017 0.037855253 0.440983 0.16035745 0.440983 0.25946382
		 0.36803401 0.35857016 0.440983 0.32071489 0.559017 0.35857016 0.67705101 0.25946379
		 0.75 0.16035745 0.67705101 0.48107234 0.440983 0.51892757 0.559017 0.41982123 0.63196599
		 0.58017874 0.75 0.54232347 0.63196599 0.64142984 0.559017 0.74053615 0.63196599 0.70268089
		 0.75 0.90089363 0.75 0.77839142 0.75 0.83964252 0.559017 0.9387489 0.63196599 0.96214473
		 0.559017 0.80178726 0.440983 0.90089363 0.36803398 1 0.440983 0.061251096 0.36803401
		 0.099106349 0.25 0.22160855 0.25 0.29731905 0.25 0.41982123 0.25 0.4576765 0.36803398
		 0.58017874 0.36803401 0.67928505 0.440983 0.64142984 0.32294902 0.74053615 0.25 0.83964252
		 0.32294902;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  0 0.32653618 0 0 -0.72622979 
		0 0 0.77247179 0 0 -0.45062596 0 0 1.2527846 0 0 -0.92514175 0 0 0.20360182 0 0 -1.499809 
		0 0 0.72622979 0 0 -0.32653597 0 0 -0.7724719 0 0 0.45062596 0 0 -1.2527845 0 0 0.92514127 
		0 0 -0.20360182 0 0 1.4998088 0 0 1.0538727 0 0 -1.7023035 0 0 -1.0538728 0 0 1.7023033 
		0;
	setAttr -s 20 ".vt[0:19]"  21.19598389 -16.1168499 23.17511749 17.80161476 -9.86113358 21.13856888
		 9.81249237 -18.76667786 20.5538044 10.76622963 -11.4988184 19.51850891 16.2584343 -21.62077904 22.81371307
		 21.19739723 -8.67916584 32.56434631 23.29469299 -15.38635349 30.23663521 17.80248833 -5.26439285 26.94143105
		 8.27159691 -18.49189949 37.42103958 4.87722683 -12.23618317 35.38449097 16.2607193 -9.58635426 38.0058059692
		 15.30698204 -16.85421371 39.041099548 9.81477642 -6.73225403 35.74589539 4.87581444 -19.67386627 25.99526405
		 2.77851868 -12.96667957 28.32297325 8.27072334 -23.088640213 31.61817741 19.65421677 -20.43881035 34.23949051
		 10.76764202 -4.061134338 28.90773773 6.4189949 -7.91422224 24.32011795 15.30556965 -24.29189873 29.65187073;
	setAttr -s 30 ".ed[0:29]"  0 4 0 4 2 0 2 3 0 3 1 0 1 0 0 7 5 0 5 6 0
		 6 0 0 1 7 0 6 16 0 16 19 0 19 4 0 5 10 0 10 11 0 11 16 0 11 8 0 8 15 0 15 19 0 15 13 0
		 13 2 0 13 14 0 14 18 0 18 3 0 18 17 0 17 7 0 17 12 0 12 10 0 12 9 0 9 8 0 14 9 0;
	setAttr -s 12 -ch 60 ".fc[0:11]" -type "polyFaces" 
		f 5 0 1 2 3 4
		mu 0 5 0 1 2 3 4
		f 5 5 6 7 -5 8
		mu 0 5 5 6 7 0 4
		f 5 -8 9 10 11 -1
		mu 0 5 0 7 8 9 10
		f 5 12 13 14 -10 -7
		mu 0 5 6 11 12 13 7
		f 5 -15 15 16 17 -11
		mu 0 5 14 15 16 17 18
		f 5 -12 -18 18 19 -2
		mu 0 5 19 20 17 21 22
		f 5 -20 20 21 22 -3
		mu 0 5 23 21 24 25 26
		f 5 -4 -23 23 24 -9
		mu 0 5 4 27 28 29 5
		f 5 -25 25 26 -13 -6
		mu 0 5 5 30 31 32 6
		f 5 -16 -14 -27 27 28
		mu 0 5 16 12 11 33 34
		f 5 -28 -26 -24 -22 29
		mu 0 5 34 35 36 37 24
		f 5 -30 -21 -19 -17 -29
		mu 0 5 34 24 21 17 16;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface38" -p "pSolid9";
	setAttr ".t" -type "double3" -82.707361981521714 -12.497088022140844 -27.132924235824284 ;
	setAttr ".r" -type "double3" 75.98136565573094 -63.315217333629271 -229.01702419146648 ;
	setAttr ".s" -type "double3" 0.89039363334272803 0.89039363334272803 0.89039363334272803 ;
	setAttr ".rp" -type "double3" 21.437496185302734 -18.514009475708008 29.005124092102051 ;
	setAttr ".sp" -type "double3" 21.437496185302734 -18.514009475708008 29.005124092102051 ;
createNode transform -n "transform19" -p "polySurface38";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape38" -p "transform19";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.1982127 0.559017
		 0.099106349 0.63196599 0 0.559017 0.037855253 0.440983 0.16035745 0.440983 0.25946382
		 0.36803401 0.35857016 0.440983 0.32071489 0.559017 0.35857016 0.67705101 0.25946379
		 0.75 0.16035745 0.67705101 0.48107234 0.440983 0.51892757 0.559017 0.41982123 0.63196599
		 0.58017874 0.75 0.54232347 0.63196599 0.64142984 0.559017 0.74053615 0.63196599 0.70268089
		 0.75 0.90089363 0.75 0.77839142 0.75 0.83964252 0.559017 0.9387489 0.63196599 0.96214473
		 0.559017 0.80178726 0.440983 0.90089363 0.36803398 1 0.440983 0.061251096 0.36803401
		 0.099106349 0.25 0.22160855 0.25 0.29731905 0.25 0.41982123 0.25 0.4576765 0.36803398
		 0.58017874 0.36803401 0.67928505 0.440983 0.64142984 0.32294902 0.74053615 0.25 0.83964252
		 0.32294902;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  2.5842545 -0.36345154 -1.7996316 
		2.4108627 0.19947276 -0.58905292 -0.53465897 -1.2156252 -2.2398777 0.4832671 -0.32719883 
		-0.86114192 0.76382273 -1.2380315 -2.8198972 2.4426231 1.15299 1.3274833 2.603884 
		0.22585452 -0.61514711 2.3233285 1.1366854 1.3436092 -2.4108624 -0.19947353 0.58905238 
		-2.5842545 0.36345118 1.799629 0.53465897 1.2156246 2.2398794 -0.48326671 0.32719871 
		0.86114192 -0.76382262 1.23803 2.819896 -2.4426231 -1.1529901 -1.3274832 -2.6038849 
		-0.22585499 0.61514568 -2.3233285 -1.1366857 -1.34361 0.79558468 -0.28451243 -0.9033612 
		0.34163657 1.1892424 2.2659714 -0.7955842 0.28451204 0.90336084 -0.34163633 -1.1892436 
		-2.2659731;
	setAttr -s 20 ".vt[0:19]"  25.7005291 -18.90434074 25.89946556 24.8669014 -15.28943253 26.59427261
		 20.0039653778 -17.8738842 23.95476341 21.34623146 -14.65257549 25.39237976 22.69507027 -20.50161934 24.26815796
		 25.80927658 -18.071548462 31.94836426 26.28294945 -20.62378311 29.20847702 24.93411064 -14.77473927 30.33269882
		 18.0080909729 -21.73858643 31.41597366 17.17446327 -18.12367821 32.11077881 22.87102699 -19.15413475 34.055484772
		 21.52876091 -22.3754425 32.61786652 20.1799221 -16.52639961 33.74208832 17.06571579 -18.95647049 26.061882019
		 16.59204292 -16.40423584 28.80176926 17.94088173 -22.25328064 27.67754745 23.63744545 -23.28373528 29.62225151
		 21.45497894 -13.81978416 31.44128036 19.23754692 -13.74428368 28.38799477 21.42001343 -23.20823479 26.56896591;
	setAttr -s 30 ".ed[0:29]"  0 4 0 4 2 0 2 3 0 3 1 0 1 0 0 7 5 0 5 6 0
		 6 0 0 1 7 0 6 16 0 16 19 0 19 4 0 5 10 0 10 11 0 11 16 0 11 8 0 8 15 0 15 19 0 15 13 0
		 13 2 0 13 14 0 14 18 0 18 3 0 18 17 0 17 7 0 17 12 0 12 10 0 12 9 0 9 8 0 14 9 0;
	setAttr -s 12 -ch 60 ".fc[0:11]" -type "polyFaces" 
		f 5 0 1 2 3 4
		mu 0 5 0 1 2 3 4
		f 5 5 6 7 -5 8
		mu 0 5 5 6 7 0 4
		f 5 -8 9 10 11 -1
		mu 0 5 0 7 8 9 10
		f 5 12 13 14 -10 -7
		mu 0 5 6 11 12 13 7
		f 5 -15 15 16 17 -11
		mu 0 5 14 15 16 17 18
		f 5 -12 -18 18 19 -2
		mu 0 5 19 20 17 21 22
		f 5 -20 20 21 22 -3
		mu 0 5 23 21 24 25 26
		f 5 -4 -23 23 24 -9
		mu 0 5 4 27 28 29 5
		f 5 -25 25 26 -13 -6
		mu 0 5 5 30 31 32 6
		f 5 -16 -14 -27 27 28
		mu 0 5 16 12 11 33 34
		f 5 -28 -26 -24 -22 29
		mu 0 5 34 35 36 37 24
		f 5 -30 -21 -19 -17 -29
		mu 0 5 34 24 21 17 16;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface39" -p "pSolid9";
	setAttr ".t" -type "double3" -110.17098406592203 -10.251791782093857 -35.239179415066182 ;
	setAttr ".r" -type "double3" -30.223495072966003 -10.757134254937849 -220.71955401360105 ;
	setAttr ".s" -type "double3" 0.77662772959369319 0.77662772959369319 0.77662772959369319 ;
	setAttr ".rp" -type "double3" 21.437496185302734 -18.514009475708008 29.005124092102051 ;
	setAttr ".sp" -type "double3" 21.437496185302734 -18.514009475708008 29.005124092102051 ;
createNode transform -n "transform18" -p "polySurface39";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape39" -p "transform18";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.1982127 0.559017
		 0.099106349 0.63196599 0 0.559017 0.037855253 0.440983 0.16035745 0.440983 0.25946382
		 0.36803401 0.35857016 0.440983 0.32071489 0.559017 0.35857016 0.67705101 0.25946379
		 0.75 0.16035745 0.67705101 0.48107234 0.440983 0.51892757 0.559017 0.41982123 0.63196599
		 0.58017874 0.75 0.54232347 0.63196599 0.64142984 0.559017 0.74053615 0.63196599 0.70268089
		 0.75 0.90089363 0.75 0.77839142 0.75 0.83964252 0.559017 0.9387489 0.63196599 0.96214473
		 0.559017 0.80178726 0.440983 0.90089363 0.36803398 1 0.440983 0.061251096 0.36803401
		 0.099106349 0.25 0.22160855 0.25 0.29731905 0.25 0.41982123 0.25 0.4576765 0.36803398
		 0.58017874 0.36803401 0.67928505 0.440983 0.64142984 0.32294902 0.74053615 0.25 0.83964252
		 0.32294902;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  1.96365 2.2860034 -0.055975009 
		2.5764053 3.4221516 -1.4789023 -2.2094724 2.0017698 -2.9402716 -0.0027268252 3.2464862 
		-3.2614956 -0.99418497 1.4081606 -0.95915079 3.9436185 0.17855237 2.3539991 2.8086355 
		0.28134817 2.3128884 3.8000941 2.1196742 0.010543944 -2.5764058 -3.4221509 1.4789015 
		-1.9636518 -2.286001 0.055973165 2.2094722 -2.0017695 2.9402709 0.0027266382 -3.2464848 
		3.2614937 0.99418408 -1.4081591 0.95914936 -3.9436195 -0.17855138 -2.354001 -2.8086362 
		-0.28134763 -2.3128903 -3.8000941 -2.1196737 -0.010544697 0.37302977 -1.8354403 2.8737526 
		1.9772421 1.1390336 -0.85152036 -0.37303057 1.8354406 -2.8737526 -1.9772432 -1.1390322 
		0.85151947;
	setAttr -s 20 ".vt[0:19]"  25.7005291 -18.90434074 25.89946556 24.8669014 -15.28943253 26.59427261
		 20.0039653778 -17.8738842 23.95476341 21.34623146 -14.65257549 25.39237976 22.69507027 -20.50161934 24.26815796
		 25.80927658 -18.071548462 31.94836426 26.28294945 -20.62378311 29.20847702 24.93411064 -14.77473927 30.33269882
		 18.0080909729 -21.73858643 31.41597366 17.17446327 -18.12367821 32.11077881 22.87102699 -19.15413475 34.055484772
		 21.52876091 -22.3754425 32.61786652 20.1799221 -16.52639961 33.74208832 17.06571579 -18.95647049 26.061882019
		 16.59204292 -16.40423584 28.80176926 17.94088173 -22.25328064 27.67754745 23.63744545 -23.28373528 29.62225151
		 21.45497894 -13.81978416 31.44128036 19.23754692 -13.74428368 28.38799477 21.42001343 -23.20823479 26.56896591;
	setAttr -s 30 ".ed[0:29]"  0 4 0 4 2 0 2 3 0 3 1 0 1 0 0 7 5 0 5 6 0
		 6 0 0 1 7 0 6 16 0 16 19 0 19 4 0 5 10 0 10 11 0 11 16 0 11 8 0 8 15 0 15 19 0 15 13 0
		 13 2 0 13 14 0 14 18 0 18 3 0 18 17 0 17 7 0 17 12 0 12 10 0 12 9 0 9 8 0 14 9 0;
	setAttr -s 12 -ch 60 ".fc[0:11]" -type "polyFaces" 
		f 5 0 1 2 3 4
		mu 0 5 0 1 2 3 4
		f 5 5 6 7 -5 8
		mu 0 5 5 6 7 0 4
		f 5 -8 9 10 11 -1
		mu 0 5 0 7 8 9 10
		f 5 12 13 14 -10 -7
		mu 0 5 6 11 12 13 7
		f 5 -15 15 16 17 -11
		mu 0 5 14 15 16 17 18
		f 5 -12 -18 18 19 -2
		mu 0 5 19 20 17 21 22
		f 5 -20 20 21 22 -3
		mu 0 5 23 21 24 25 26
		f 5 -4 -23 23 24 -9
		mu 0 5 4 27 28 29 5
		f 5 -25 25 26 -13 -6
		mu 0 5 5 30 31 32 6
		f 5 -16 -14 -27 27 28
		mu 0 5 16 12 11 33 34
		f 5 -28 -26 -24 -22 29
		mu 0 5 34 35 36 37 24
		f 5 -30 -21 -19 -17 -29
		mu 0 5 34 24 21 17 16;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface15";
	setAttr ".t" -type "double3" -15.094837784767154 -0.068245382483979711 -27.067999839782704 ;
	setAttr ".r" -type "double3" 0 65.588678619938705 0 ;
	setAttr ".rp" -type "double3" 15.094837784767151 -15.727123737335205 27.067999839782715 ;
	setAttr ".rpt" -type "double3" 3.5527136788005009e-015 0 -1.0658141036401503e-014 ;
	setAttr ".sp" -type "double3" 15.094837784767151 -15.727123737335205 27.067999839782715 ;
createNode mesh -n "polySurface15Shape" -p "polySurface15";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.54931890964508057 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 366 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.1982127 0.559017 0.099106349
		 0.63196599 0 0.559017 0.037855253 0.440983 0.16035745 0.44098297 0.33118314 0.52637672
		 0.32071489 0.559017 0.20323262 0.40942398 0.26519385 0.52228826 0.27470297 0.54343551
		 0.25946379 0.75 0.16035745 0.67705101 0.83964252 0.559017 0.9387489 0.63196599 0.90089363
		 0.75 0.77839142 0.75 0.74053615 0.63196599 0.96214473 0.559017 1 0.44098297 0.061251096
		 0.36803401 0.19072354 0.36803401 0.90089363 0.75 0.77839142 0.75 0.857786 0.69156021
		 0.86279094 0.72078848 0.90413946 0.73987925 0.4198212 0.63196599 0.35857016 0.67705101
		 0.19821273 0.559017 0.09363547 0.61490762 0.12223396 0.51283544 0.099106349 0.63196599
		 0.090608574 0.62571108 0.67928505 0.44098297 0.80178726 0.440983 0.64142984 0.559017
		 0.70268089 0.75 0.56434596 0.63198745 0.099106349 0.25 0.17105663 0.30296028 0.25946379
		 0.75 0.16035745 0.67705101 0.23532547 0.67473584 0.74053615 0.63196605 0.36865771
		 0.51610154 0.09813118 0.49351639 0.16035746 0.44098303 0.58017874 0.75 0.54537272
		 0.559017 0.59300375 0.53730971 0.5918287 0.51367038 0.58778298 0.46128201 0.5828203
		 0.42646343 0.55096245 0.41270208 0.5606156 0.3824338 0.58017874 0.36803401 0.64142984
		 0.32294902 0.66979402 0.30207103 0.68486094 0.29913747 0.78176403 0.28034651 0.83964252
		 0.32294902 0.56371808 0.61621815 0.90089363 0.36803398 0.060236581 0.46314281 0.1706481
		 0.25 0.1587086 0.26286766 0.16038653 0.26765516 0.26101595 0.68311834 0.2352964 0.67472637
		 0.70268089 0.75 0.64142984 0.559017 0.82072282 0.62436843 0.4543179 0.52856165 0.28169605
		 0.5302965 0.24431023 0.51663184 0.24031743 0.51892662 0.23683767 0.5219155 0.23040025
		 0.5287469 0.22369196 0.559017 0.20352452 0.60102195 0.54406857 0.63567269 0.77851075
		 0.60401422 0.68860245 0.50659525 0.67928505 0.44098303 0.83964252 0.559017 0.79916549
		 0.63196599 0.9387489 0.63196599 0.84833997 0.69851315 0.90089363 0.75 0.88638586
		 0.75 0.17209449 0.68569028 0.16035745 0.67705101 0.18226805 0.60873294 0.18552627
		 0.61131811 0.20110936 0.62369186 0.87197804 0.48560241 0.88065273 0.46590734 0.87762582
		 0.49083281 0.41458106 0.26633903 0.41982123 0.25 0.42729369 0.27329937 0.38476115
		 0.25 0.40485674 0.26101488 0.91975242 0.42683625 0.90845871 0.43115687 0.90089363
		 0.36803398 0.98822898 0.43315375 0.65802824 0.50726259 0.039677214 0.44666395 0.99921238
		 0.44343895 1 0.440983 0.037067592 0.44343895 0.037855253 0.440983 0.74053615 0.63196599
		 0.72627604 0.58750254 0.77605206 0.60576177 0.30441624 0.69727916 0.77610844 0.60578239
		 0.54557836 0.62957013 0.64824492 0.70993137 0.65093011 0.69005805 0.65111423 0.68315357
		 0.64137137 0.67708462 0.55916381 0.6270076 0.78895348 0.58344418 0.81343418 0.61107248
		 0.84619951 0.6238957 0.4549894 0.50632787 0.47086489 0.53740007 0.21459141 0.57107282
		 0.25946382 0.36803401 0.16035745 0.440983 0.061251096 0.36803401 0.067471743 0.34863782
		 0.14183527 0.33225915 0.19683 0.31204847 0.23043284 0.29951698 0.23310143 0.28583521
		 0.25946382 0.36803401 0.9837141 0.42899549 1 0.44098297 0.98492682 0.440983 0.98682761
		 0.4506788 0.99145502 0.46762651 0.029310284 0.46762651 0.099106357 0.63196605 0.055462003
		 0.54297239 0.20309672 0.59332496 0.54354292 0.63576818 0.63497359 0.47359923 0.099106349
		 0.63196599 0 0.559017 0.15646905 0.58974314 0.87074882 0.48490915 0.88912404 0.45420712
		 0.80178726 0.440983 0.89560407 0.44525725 0.64142984 0.559017 0.64218694 0.55665636
		 0.30885834 0.69223583 0.30883816 0.69213629 0.77839142 0.75 0.93054181 0.625925 0.52295089
		 0.559017 0.52465719 0.54204845 0.52448392 0.54169214 0.58017874 0.36803401 0.63696218
		 0.75 0.63873184 0.74371505 0.80570269 0.52120119 0.80063701 0.58772767 0.81032014
		 0.6053918 0.40976056 0.40330338 0.37809098 0.38011637 0.4576765 0.36803398 0.42184499
		 0.440983 0.48107234 0.44098297 0.45964706 0.50778782 0.43248412 0.50730532 0.45541269
		 0.49231434 0.50274312 0.50855333 0.53820771 0.49890092 0.51573509 0.56136692 0.036021665
		 0.55934465 0.20687191 0.58601671 0.061251093 0.36803401 0.31157526 0.53051931 0.32071489
		 0.559017 0.037855253 0.440983 0.32988226 0.53043282 0.35857013 0.44098303 0.33613589
		 0.52557445 0.28582618 0.28583521 0.33868289 0.27059957 0.33575967 0.27783298 0.33110994
		 0.30538797 0.33410081 0.30877477 0.96214473 0.559017 0.95200026 0.559017 0.96296376
		 0.5564633 0.63437599 0.47272661 0.80178726 0.440983 0.96214473 0.559017 0.11963113
		 0.47309294 0.83964252 0.32294902 0.74053615 0.25 0.099106349 0.25 0.22160855 0.25
		 0.58017874 0.75 0.54232347 0.63196599 0.56585741 0.61464339 0.6235866 0.59291232
		 0.62816298 0.56878233 0.70268089 0.75 0.63382477 0.54630303 0.63283592 0.54773271
		 0.3088637 0.69226241 0.9387489 0.63196599 0.67928505 0.440983 0.50468427 0.514606
		 0.48107237 0.44098303 0.51622117 0.5243752 0.51322317 0.51847428 0.51035297 0.5134961
		 0.3126314 0.71086502 0.80585599 0.52065575 0.25946382 0.36803401 0.27704382 0.38097405
		 0.16212805 0.44098297 0.16035746 0.44098303 0.3224864 0.33940518 0.29731905 0.25
		 0.36456031 0.37020984 0.41982123 0.25 0.58017874 0.36803401 0.012380586 0.55740964
		 0.1982127 0.559017 0.35857019 0.44098297 0.36081427 0.53509682 0.38082492 0.51037413
		 0.3345139 0.30924255 0 0.559017 0.00081900466 0.5564633 0.83964252 0.32294902 0.64142984
		 0.32294902 0.74053615 0.25 1 0.440983 0.82481962 0.51279867 0.037855253 0.44098297
		 0.35857016 0.67705101;
	setAttr ".uvst[0].uvsp[250:365]" 0.25946379 0.75 0.43000364 0.44098297 0.46795928
		 0.5191347 0.48340023 0.55092788 0.51721972 0.55369186 0.51892757 0.559017 0.41982123
		 0.63196599 0.54801714 0.559017 0.52446115 0.55494398 0.62503111 0.559017 0.90089363
		 0.75 0.64142984 0.32294902 0.80594015 0.52043158 0.4503153 0.48653755 0.46445587
		 0.49383771 0.29731905 0.25 0.41982123 0.25 0.4576765 0.36803398 0.16110474 0.44153303
		 0.22160856 0.25 0.38727903 0.36803398 0.40904456 0.39199513 0.41636109 0.39844495
		 0.16035745 0.67705101 0.44491637 0.48452151 0.4226706 0.47621489 0.40529466 0.49039909
		 0.33641362 0.31139371 0.061251096 0.36803401 0.099106349 0.25 0.90089363 0.36803398
		 0.16063149 0.44183746 0.44805783 0.48584878 0.44563508 0.48483968 0.44770509 0.48571035
		 0.1982127 0.559017 0.099106349 0.63196599 0.16035745 0.440983 0.25946382 0.36803401
		 0.35857019 0.67705101 0.16035745 0.67705101 0 0.559017 0.061251096 0.36803401 0.32071489
		 0.559017 0.25946379 0.75 0.9387489 0.63196599 0.90089363 0.75 0.88516378 0.7009539
		 0.89949024 0.67854011 0.92635155 0.62889713 0.92698675 0.6271953 0.9271248 0.62682527
		 0.92812473 0.62414593 0.037855253 0.440983 0.079867378 0.30998778 0.11503276 0.29615277
		 0.11615875 0.29570961 0.11941111 0.29442978 0.11996736 0.29421091 0.12356718 0.29279506
		 0.14551014 0.28415635 0.35857016 0.440983 0.41982123 0.63196599 0.58017874 0.75 0.54232347
		 0.63196599 0.64142984 0.559017 0.71018052 0.60962224 0.69560623 0.65975934 0.69482088
		 0.68002427 0.69457948 0.68625391 0.71779931 0.70286018 0.70268089 0.75 0.77839142
		 0.75 0.7923547 0.70646203 0.8638413 0.71531552 0.93726069 0.54070061 0.96214473 0.559017
		 0.94901258 0.559017 0.93458521 0.53474051 0.940162 0.49150348 0.94665283 0.440983
		 1 0.440983 0.95126194 0.40510845 0.20874549 0.25 0.22160855 0.25 0.20793551 0.25958011
		 0.4576765 0.36803398 0.51892757 0.559017 0.67928505 0.44098303 0.6826489 0.559017
		 0.67978555 0.57332468 0.71011537 0.57874632 0.71015871 0.57875407 0.71032107 0.57878304
		 0.70959938 0.58004951 0.70390332 0.59004593 0.76327294 0.70286018 0.74375665 0.2600418
		 0.74053615 0.25 0.75094259 0.25765982 0.29731905 0.25 0.48107234 0.440983 0.69048524
		 0.44922709 0.69804013 0.48210835 0.58017874 0.36803401 0.73666537 0.26206917 0.41982123
		 0.25 0.32598755 0.25 0.34435913 0.2697002 0.35064289 0.25 0.68358779 0.440983 0.64142984
		 0.32294902 0.69739628 0.2817539 0.68467587 0.42417407 0.71734291 0.26707184 0.71774375
		 0.2669647;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 170 ".pt";
	setAttr ".pt[0:165]" -type "float3"  0.33737797 -0.70650625 -2.2923586 0.023934882 
		-0.61169755 -2.3793361 0.0057066903 -0.51116478 -2.0093255 0.034922972 -0.60706121 
		-2.3448675 0.35088682 -0.70739448 -2.2759845 0.64546692 -0.72413635 -1.9086107 0.60004616 
		-0.72376299 -1.9739721 0.51214534 -0.71798825 -2.080519 0.52655548 -0.71893549 -2.0630496 
		0.52655548 -0.71893549 -2.0630496 0.0093772449 -0.53453118 -2.0961578 0.004106462 
		-0.36780784 -1.4458076 0.0040602945 -0.36369598 -1.4296441 0.40252799 -0.70104653 
		-2.1749439 0.57461923 -0.72209263 -2.0047917 1.1810189 -0.74199688 -1.1910723 0.55389047 
		-0.70637071 -1.9732332 0.2142202 -0.63240182 -2.1810651 0.84966266 -0.74016368 -1.6714088 
		0.0036060438 -0.32302123 -1.2697563 0.0040196069 -0.36005071 -1.4153147 0.0038991421 
		-0.34926605 -1.3729216 0.11221144 -0.50207698 -1.8167357 0.025929652 -0.5090639 -1.9712753 
		0.23240724 -0.6369524 -2.1722667 1.1177046 -0.75777161 -1.3465098 0.90940422 -0.54182273 
		-0.80058599 0.49768615 -0.68118405 -1.9565159 0.094818249 -0.47899702 -1.7512245 
		0.027757261 -0.42303842 -1.6290162 0.038492575 -0.42988774 -1.6402569 0.067082986 
		-0.43619984 -1.6231023 0.10824607 -0.43613917 -1.5622945 0.20499514 -0.47626349 -1.5783157 
		0.2144717 -0.46243107 -1.5097688 0.17273669 -0.44908461 -1.5184972 0.21487692 -0.49875098 
		-1.6525395 0.21289888 -0.51407236 -1.7159266 0.15120018 -0.56785387 -2.019006 0.1403515 
		-0.57855457 -2.0772088 0.15140648 -0.58631301 -2.091567 1.2960536 -0.76948738 -1.1303284 
		1.1177046 -0.75777161 -1.3465098 1.3149756 -0.44885167 0.16316667 0.52536345 -0.61208564 
		-1.6430373 0.3444038 -0.61914134 -1.9371611 1.4443661 -0.76197898 -0.88245183 1.16105 
		-0.76062036 -1.2939682 1.1287457 -0.7584976 -1.3331193 1.0994346 -0.75657165 -1.3686522 
		1.0417187 -0.75278044 -1.4386131 1.0398386 -0.75265706 -1.440886 0.91166353 -0.74423754 
		-1.5962534 0.16244137 -0.51596838 -1.7976578 0.12519823 -0.47231266 -1.6801378 0.018098613 
		-0.36908874 -1.4302728 0.041489147 -0.35173559 -1.3273578 0.1081439 -0.42700839 -1.5264019 
		0.20708433 -0.46040681 -1.5126514 0.20711565 -0.46323681 -1.5237758 0.21697563 -0.47532383 
		-1.556976 0.21746294 -0.48376301 -1.5895723 0.19213413 -0.43082508 -1.4178799 0.13870007 
		-0.57609767 -2.0699406 1.1931986 -0.76273227 -1.2549968 1.5665079 -0.76586747 -0.71806961 
		1.9685115 -0.53548729 0.78284961 1.5754964 -0.73282313 -0.57440144 1.5681987 -0.71057826 
		-0.4973245 1.5657889 -0.70138144 -0.46458399 1.6220812 -0.69182575 -0.3440398 1.9253104 
		-0.54906601 0.66567665 0.52005249 -0.5222609 -1.2962898 0.50506461 -0.58355606 -1.5602942 
		0.41331077 -0.61875582 -1.8342501 0.38640505 -0.61948258 -1.8767071 0.29154217 -0.59406406 
		-1.91596 0.98405552 -0.74899316 -1.5085021 1.0385685 -0.63899434 -0.99409282 1.2666293 
		-0.7317028 -1.0244616 1.1003315 -0.75663114 -1.3675598 1.654371 -0.74070585 -0.48944464 
		1.7719836 -0.71885794 -0.23015514 1.8056468 -0.71489346 -0.16496737 1.6776634 -0.69651115 
		-0.28071958 1.0204175 -0.75138116 -1.4644345 0.90593863 -0.74386132 -1.6031939 0.1638549 
		-0.51629204 -1.7968569 0.17333582 -0.28428143 -0.86708736 1.5665079 -0.76586747 -0.71806961 
		1.6052915 -0.76448095 -0.65551323 1.6052915 -0.76448095 -0.65551323 1.2482812 -0.76635015 
		-1.1882325 1.9012394 -0.5292232 0.70858121 1.9012394 -0.5292232 0.70858121 1.1036379 
		-0.33013856 0.32079995 1.5972332 -0.75724393 -0.63881862 1.5835569 -0.75494033 -0.64984345 
		0.3114177 -0.43046921 -1.240954 0.45983654 -0.52734053 -1.4049417 0.49645257 -0.57065398 
		-1.522036 0.46415716 -0.61678404 -1.7516446 0.93236637 -0.74559641 -1.5711579 1.6582383 
		-0.70926553 -0.35966921 1.8640691 -0.65516359 0.15676874 1.8978872 -0.69544941 0.04750903 
		1.8917481 -0.69635195 0.034917016 1.8710999 -0.69406271 0.01356465 1.8729262 -0.69187009 
		0.024910443 0.90082169 -0.74352443 -1.6093937 0.052569993 -0.3732262 -1.3958826 0.21668962 
		-0.41449669 -1.3172956 0.71516287 -0.44565746 -0.7068122 1.6695218 -0.75055766 -0.50605661 
		1.8954647 -0.7207936 -0.056097001 1.8298008 -0.73810887 -0.22106743 1.6393601 -0.76547343 
		-0.60933113 1.617437 -0.76441646 -0.63739228 1.6067804 -0.76457942 -0.65371048 1.6052915 
		-0.76448095 -0.65551323 0.59142584 -0.24297985 -0.088858128 1.94309 -0.5131672 0.83353895 
		1.94019 -0.45545256 1.0571014 1.8822155 -0.51974612 0.71800059 1.8958919 -0.51660055 
		0.75054169 1.9108789 -0.5137189 0.78396672 0.30959204 -0.42950425 -1.239831 0.50145704 
		-0.50285095 -1.2470336 0.30958411 -0.42872286 -1.2367595 0.34116209 -0.45319617 -1.2868986 
		0.33538097 -0.52756071 -1.5889457 1.2651795 -0.73471713 -1.0385094 1.9567271 -0.66731048 
		0.24516553 1.9809319 -0.67042041 0.26852089 1.8729262 -0.69187009 0.024910443 0.13355133 
		-0.36452127 -1.2423608 0.12286074 -0.35129622 -1.2058901 2.0511496 -0.66670328 0.38648245 
		1.9513905 -0.70382679 0.093168639 1.9006538 -0.71538496 -0.027117874 1.9052627 -0.71878767 
		-0.033767283 1.888441 -0.72372264 -0.077982843 0.30958411 -0.42872286 -1.2367595 
		2.0510507 -0.55909806 0.81109297 2.0374384 -0.5507946 0.823843 2.0000319 -0.66571546 
		0.31517774 2.0429246 -0.66813159 0.36875415 2.0535104 -0.56160116 0.80484653 2.0472004 
		-0.59368938 0.66889018 2.0363765 -0.62939847 0.51201499 1.8729049 -0.69003278 0.032133684 
		2.0510638 -0.56016594 0.80689371 2.0535104 -0.56160116 0.80484653 2.0510638 -0.56016594 
		0.80689371 2.2726548 -0.4783318 1.4559884 2.1279342 -0.61444712 0.70575476 2.2722609 
		-0.44301319 1.5948234 2.1235802 -0.42637265 1.4417213 2.1749423 -0.58679354 0.8840605 
		1.9003265 -0.68604416 0.088217013 2.1254148 -0.59092653 0.79488045 2.2724571 -0.46073666 
		1.5251545 2.0220003 -0.67530274 0.30965099 2.2722406 -0.44111305 1.6022915 2.021651 
		-0.64374661 0.43369359 1.6171967 -0.74291563 -0.55287552;
	setAttr ".pt[166:169]" 1.89828 -0.50282317 0.80843639 2.1527445 -0.53347474 
		1.0618684 1.569019 -0.69959736 -0.45277888 1.9018172 -0.5812121 0.50421929;
	setAttr -s 170 ".vt";
	setAttr ".vt[0:165]"  17.56276321 -21.23478699 19.61520195 14.77104378 -21.97965813 15.098104477
		 13.045665741 -20.029561996 12.30638504 14.77104378 -14.16445923 15.098104477 17.56276321 -15.88983727 19.61520195
		 14.29391956 -21.44039154 24.9043026 14.77104378 -21.97965813 24.13229942 16.35501671 -15.14340782 21.5693779
		 15.76787663 -20.423172 22.51939011 15.7057333 -21.19281578 22.6199398 10.2539463 -23.18488312 16.82348251
		 7.46222639 -20.029561996 12.30638504 5.73684931 -21.97965813 15.098104477 14.77104378 -14.16445923 20.99923515
		 16.2584343 -21.29846573 22.81371307 15.30556965 -22.45162582 29.65187073 12.58589268 -21.27063179 25.14732742
		 10.2539463 -23.18488312 22.40692139 21.19598389 -18.92234039 23.17511749 2.94512939 -15.88983727 19.61520195
		 5.73684931 -14.16445923 15.098104477 2.94512939 -21.23478699 19.61520195 5.73767138 -21.97987747 23.12855148
		 10.2539463 -11.37273979 16.82348251 12.28070831 -12.62534714 20.10285187 17.62691116 -21.060775757 27.099458694
		 8.27072334 -21.93216324 31.61817741 17.80161476 -11.41438103 21.13856888 5.13418674 -21.8188591 23.15717125
		 4.20737123 -20.74098206 21.65755272 4.40692568 -19.8823452 21.98043823 4.88202143 -17.94794846 22.74915886
		 5.24959898 -16.65040779 23.34391212 6.076191425 -16.67162514 24.68136787 6.077430725 -15.32220364 24.6833725
		 5.73684931 -14.16445923 24.13229942 7.029640675 -13.36546993 23.6384964 7.46382761 -13.097127914 23.16049767
		 10.2539463 -11.37273979 20.08423233 10.74638462 -11.67708397 19.54005051 10.92959976 -11.79031658 19.61652756
		 17.76244926 -21.15646362 28.70966339 17.62675858 -21.060668945 27.097637177 8.27159691 -18.49189949 37.42103958
		 8.46057892 -21.12096024 27.13265419 8.68165016 -21.47649002 24.85262489 21.95809364 -14.4198761 28.022855759
		 20.99971771 -14.50331879 25.88463974 20.98469734 -14.78578186 25.65164948 20.99461174 -15.10401249 25.44737625
		 21.043245316 -15.78760147 25.067871094 21.63249397 -18.18688965 24.6438427 19.76064682 -19.7195816 24.12925529
		 5.87870216 -22.017505646 24.052762985 4.7566247 -22.26818085 24.19731331 2.62824273 -20.6845665 22.41060638
		 2.54662251 -17.75468445 23.86286354 5.056245804 -16.45601082 23.53956413 5.77036428 -16.35355377 25.019266129
		 5.82325792 -16.40854836 24.96087074 6.36213589 -14.66623306 24.37113762 6.579916 -14.16445923 24.13229942
		 6.4189949 -9.99680233 24.32011795 10.76622963 -11.4988184 19.51850891 17.94088173 -21.57152557 27.67754745
		 17.99141884 -21.31811333 31.4298687 15.075921059 -16.90799904 38.98789215 15.30604935 -20.55149269 32.83919907
		 14.2525301 -20.37240219 33.30839539 13.91309261 -20.29092407 33.49945068 13.96633148 -19.96460724 34.038303375
		 14.47010517 -17.22535515 38.55259705 6.31247091 -20.50071716 28.88705826 7.64461231 -21.09091568 27.52297401
		 8.63175011 -20.87763214 25.70993996 8.65104198 -21.10915756 25.37849236 7.92746401 -21.62251472 24.64357948
		 21.038509369 -19.11291695 24.30521774 17.80248833 -8.067417145 26.94143105 24.8669014 -15.28943253 26.59427261
		 21.34623146 -14.65257549 25.39237976 22.47516823 -14.29425144 29.7449379 22.78679276 -14.21605301 30.80033493
		 22.51124573 -14.10970879 31.10471344 24.93411064 -14.77473927 30.33269882 22.69507027 -20.81530762 24.26815796
		 20.033004761 -19.57209015 23.98586655 5.8823576 -22.018482208 24.076721191 2.77851868 -12.96667957 28.32297325
		 18.0080909729 -21.34932518 31.41597366 18.25078011 -21.20931625 31.60813332 18.25405312 -21.20744514 31.60543442
		 21.42001343 -21.98379326 26.56896591 14.80249405 -16.17232132 38.74452209 14.8087616 -16.15407944 38.74217987
		 9.81477642 -9.13619137 35.74589539 17.63848877 -21.55924416 32.11299133 17.27263641 -21.40117264 32.22690201
		 4.57755947 -17.49602509 27.99833107 6.21195555 -21.038162231 28.20828629 7.2959938 -21.078079224 27.68973541
		 8.50004101 -21.63110352 26.4305172 20.3632431 -19.42128372 24.090751648 26.28294945 -20.86804771 29.20847702
		 21.19739723 -10.55377102 32.56434631 21.56286812 -15.046323776 32.14877701 21.78235817 -15.091514587 32.069507599
		 22.55097389 -15.40697098 31.88936043 22.60836601 -15.52445316 31.9341259 20.0039653778 -19.68087769 23.95476341
		 2.36144638 -21.60676765 24.26937485 4.054580688 -17.52461243 26.90672112 10.76764202 -7.19130468 28.90773773
		 23.63744545 -22.016387939 29.62225151 21.52876091 -21.62426567 32.61786652 20.69273567 -21.55897713 32.33246231
		 19.13338852 -21.46957016 31.2714119 18.47938538 -21.38612938 31.57686424 18.27939034 -21.22753906 31.60222244
		 18.24990654 -21.20981598 31.60885239 4.87722683 -12.23618317 35.38449097 15.66583157 -14.73216438 38.65156555
		 16.2607193 -11.21430969 38.0058059692 15.10426331 -15.29551506 38.62611389 15.21543217 -15.00085544586 38.588974
		 15.32880116 -14.74835587 38.56215286 4.56224442 -17.46986389 27.99016762 5.85835314 -20.48449326 29.10361862
		 4.54294062 -17.46826553 27.99937248 4.35776472 -21.48311615 28.40588379 5.99041748 -22.19176102 26.7538166
		 25.7005291 -20.12574005 25.89946556 25.80927658 -19.76621246 31.94836426 20.63670349 -14.27231407 33.17298889
		 22.61629295 -15.54067802 31.94030952 2.11493731 -21.12157059 26.87041473 2.22938251 -18.38029289 26.61917686
		 24.095924377 -20.038743973 33.17707062 22.89799309 -21.0087146759 32.44694519 22.41065788 -21.40331268 32.14992142
		 21.58931732 -21.56152344 32.682724 21.3785038 -21.56092453 32.6003685 4.55558872 -17.45965576 27.9855938
		 17.72086334 -13.41086864 36.39020157 17.18637848 -13.75451851 36.97834778 23.60375404 -18.29481125 32.73329544
		 24.0034942627 -19.63724327 33.061378479 17.92866707 -13.27721214 36.16142273 18.78490257 -12.72648907 35.21875763
		 19.55384254 -13.36837482 34.36927414 22.6527462 -15.61529827 31.96874237 17.80849838 -13.35449219 36.29369736
		 17.90124512 -13.29484653 36.19160461 17.82204437 -13.34578133 36.27878571 25.20204735 -19.46578217 38.59726334
		 25.51290131 -19.73456764 34.14576721 22.39808273 -13.92547035 39.32810974 18.82151604 -15.49042225 41.5773735
		 22.52985954 -22.3172226 37.054302216 22.90105629 -14.93285751 32.12543869 20.9759922 -12.41574192 35.32830048
		 23.35842514 -21.061950684 40.39483643 23.8613987 -21.49685478 33.19216156 19.41504097 -20.5589447 42.23664856
		 18.074392319 -22.59001732 36.8315506 16.65230179 -21.93824577 32.83174133;
	setAttr ".vt[166:169]" 15.18898582 -14.94788742 38.96768951 16.14932823 -21.50334167 40.034412384
		 13.84833717 -20.44875336 33.56258774 13.53748226 -20.17996979 38.014083862;
	setAttr -s 281 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 0 0 5 6 0 6 0 0 4 7 0 7 8 0
		 8 9 0 9 5 0 10 1 0 11 2 0 10 12 0 12 11 0 3 13 1 14 15 0 15 16 1 16 5 0 9 14 0 17 6 0
		 13 7 0 8 14 1 17 10 0 19 20 0 20 11 0 12 21 0 21 19 0 3 23 0 23 24 1 24 13 0 25 15 1
		 15 26 0 27 18 0 18 14 0 21 28 0 28 29 0 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0
		 35 19 0 35 36 0 36 37 0 37 38 0 38 23 0 23 20 0 22 28 1 38 39 0 39 40 0 40 24 0 25 41 0
		 42 25 0 43 26 0 27 46 1 46 47 0 47 48 0 48 49 0 49 50 0 50 51 0 51 18 0 53 22 1 29 55 0
		 30 56 1 56 31 1 56 57 0 57 32 0 57 58 0 58 59 0 59 33 0 59 34 1 60 35 1 34 60 0 35 61 1
		 61 36 0 62 37 1 22 54 0 63 39 0 63 40 1 64 41 1 41 65 0 42 64 0 52 42 0 66 43 0 15 67 1
		 67 68 0 68 69 0 69 70 0 70 71 0 71 66 0 73 44 0 74 16 0 44 74 0 75 45 0 45 76 0 77 18 0
		 51 77 0 27 78 0 79 80 0 80 47 0 46 81 0 81 82 0 82 83 0 83 84 0 84 79 0 80 48 1 80 49 1
		 80 50 0 86 52 0 87 53 1 17 87 0 53 54 1 55 56 0 60 61 0 88 62 0 62 63 0 63 27 0 64 89 0
		 89 65 0 90 15 1 65 91 0 91 90 0 92 64 0 66 93 1 93 94 0 94 95 1 15 96 0 96 97 0 97 67 0
		 98 72 0 99 26 0 72 99 0 100 73 0 26 100 1 101 44 0 101 75 1 75 74 0 101 45 0 76 87 0
		 102 18 1 77 102 0 78 81 1 104 82 0 83 105 0 105 106 0 106 107 0 107 108 0 108 84 1
		 109 52 0 86 109 0 102 86 0 110 55 0 54 110 0 111 58 0 112 62 0 113 114 0 114 115 0
		 115 116 1 116 117 0 117 89 0 92 113 0 89 118 1 118 91 0 119 15 1;
	setAttr ".ed[166:280]" 90 119 0 120 43 0 95 120 0 121 122 0 122 95 0 94 123 0
		 123 124 0 124 125 0 125 121 0 119 96 0 126 98 0 127 72 0 98 128 1 128 127 0 99 100 0
		 130 73 1 130 101 0 130 76 1 112 78 0 78 104 0 131 79 0 103 131 0 84 132 0 132 103 0
		 131 85 0 104 133 1 133 105 0 134 84 1 108 134 0 85 109 0 130 54 0 135 110 0 130 129 0
		 129 135 0 136 56 0 111 88 0 88 120 0 132 137 0 137 138 0 138 139 0 139 140 0 140 114 0
		 113 103 0 114 141 1 141 115 0 117 118 0 85 92 0 95 112 0 143 122 1 121 144 0 144 143 0
		 122 104 0 142 126 0 126 128 1 129 127 0 84 145 1 145 146 0 146 137 0 122 147 1 147 148 0
		 148 149 0 149 133 0 150 84 1 134 150 0 136 135 0 111 142 0 140 141 0 151 122 1 143 151 0
		 142 128 0 128 136 0 150 145 0 122 152 1 152 147 0 153 122 1 151 153 0 153 152 0 154 155 0
		 156 154 0 156 157 0 155 159 0 156 160 0 161 154 0 161 158 0 158 162 0 162 155 0 155 146 1
		 107 159 0 159 160 0 160 148 0 144 157 1 157 163 0 163 161 0 158 164 0 164 165 0 165 116 0
		 139 162 0 162 138 1 106 159 1 149 160 1 125 166 0 166 157 0 167 163 0 168 165 0 165 97 1
		 124 166 1 167 164 0 168 68 1 169 168 0 123 166 1 169 167 0 166 93 0 71 169 0 168 69 0
		 70 168 1;
	setAttr -s 113 -ch 562 ".fc[0:112]" -type "polyFaces" 
		f 5 0 1 2 3 4
		mu 0 5 0 1 2 3 4
		f 7 5 6 -5 7 8 9 10
		mu 0 7 5 6 0 4 7 8 9
		f 5 12 -2 -12 13 14
		mu 0 5 12 13 14 15 16
		f 5 -3 -13 -26 -49 -29
		mu 0 5 18 17 12 34 62
		f 4 -4 15 21 -8
		mu 0 4 4 19 20 7
		f 5 16 17 18 -11 19
		mu 0 5 21 22 23 24 25
		f 9 20 -6 -19 -94 -139 95 96 140 -113
		mu 0 9 26 6 5 44 179 127 72 128 182
		f 5 -7 -21 23 11 -1
		mu 0 5 0 6 27 10 11
		f 3 -20 -10 22
		mu 0 3 31 32 29
		f 5 24 25 -15 26 27
		mu 0 5 33 34 12 16 35
		f 4 -16 28 29 30
		mu 0 4 20 19 38 39
		f 7 92 94 93 -18 32 135 134
		mu 0 7 125 71 126 23 22 43 171
		f 9 33 34 -23 -9 -22 -31 -53 -81 118
		mu 0 9 46 28 31 29 30 45 63 108 112
		f 10 35 36 37 38 39 40 41 42 43 -28
		mu 0 10 35 48 49 50 51 52 53 54 55 33
		f 7 -44 44 45 46 47 48 -25
		mu 0 7 33 56 57 58 59 60 34
		f 8 63 49 -36 -27 -14 -24 112 111
		mu 0 8 80 37 61 35 16 36 47 148
		f 5 -48 50 51 52 -30
		mu 0 5 38 64 65 66 39
		f 6 -32 53 82 122 123 121
		mu 0 6 40 42 67 116 160 159
		f 9 55 -33 86 87 88 89 90 91 85
		mu 0 9 70 43 69 119 120 121 122 123 118
		f 8 -34 56 57 58 59 60 61 62
		mu 0 8 28 46 73 74 75 76 77 78
		f 8 110 84 54 31 -17 -35 -142 152
		mu 0 8 147 79 68 42 40 41 28 184
		f 6 -65 -37 -50 78 154 153
		mu 0 6 84 81 82 107 83 201
		f 4 -38 64 114 -66
		mu 0 4 85 81 84 86
		f 3 65 66 -39
		mu 0 3 85 86 87
		f 4 -67 67 68 -40
		mu 0 4 87 86 88 89
		f 5 -69 69 70 71 -41
		mu 0 5 90 91 92 93 94
		f 3 72 -42 -72
		mu 0 3 95 96 97
		f 3 73 -43 74
		mu 0 3 98 99 100
		f 3 -45 75 76
		mu 0 3 101 99 102
		f 5 79 -51 -47 -78 117
		mu 0 5 110 109 106 103 105
		f 3 -80 80 -52
		mu 0 3 111 112 108
		f 4 81 -54 -55 83
		mu 0 4 113 114 115 117
		f 3 97 -63 98
		mu 0 3 129 28 78
		f 4 -57 99 143 -103
		mu 0 4 73 46 130 186
		f 8 100 101 -58 102 103 104 105 106
		mu 0 8 131 132 133 134 135 136 137 138
		f 3 -102 107 -59
		mu 0 3 139 140 141
		f 3 -108 108 -60
		mu 0 3 141 140 142
		f 3 -109 109 -61
		mu 0 3 142 140 143
		f 3 113 -79 -64
		mu 0 3 149 83 107
		f 7 -232 155 -70 -68 -201 -237 -236
		mu 0 7 281 203 152 150 151 248 229
		f 3 -76 -74 115
		mu 0 3 102 99 98
		f 10 116 77 -46 -77 -116 -75 -73 -71 -156 201
		mu 0 10 155 105 103 104 156 154 96 95 153 247
		f 4 -82 119 120 -83
		mu 0 4 114 113 157 158
		f 6 124 -84 -85 -151 -196 212
		mu 0 6 161 113 117 162 217 260
		f 6 -86 125 126 127 168 167
		mu 0 6 70 163 164 165 166 218
		f 4 -87 128 129 130
		mu 0 4 119 69 167 168
		f 4 136 -93 -182 182
		mu 0 4 174 172 173 233
		f 4 -137 137 138 -95
		mu 0 4 175 176 177 178
		f 3 -138 139 -96
		mu 0 3 177 176 180
		f 4 -97 -140 -183 183
		mu 0 4 181 180 176 234
		f 3 141 -98 142
		mu 0 3 184 28 129
		f 5 -107 188 189 187 186
		mu 0 5 131 138 237 187 236
		f 4 144 -104 -144 185
		mu 0 4 190 189 186 130
		f 5 -105 -145 191 192 -146
		mu 0 5 191 189 190 239 238
		f 6 -106 145 146 147 148 149
		mu 0 6 138 192 193 194 195 196
		f 3 150 -111 151
		mu 0 3 197 198 199
		f 5 200 -115 -154 -198 -231
		mu 0 5 246 202 84 201 280
		f 5 156 -117 202 -169 213
		mu 0 5 205 204 155 218 261
		f 5 -118 -157 184 -100 -119
		mu 0 5 185 206 207 130 46
		f 8 157 158 159 160 161 -120 -125 162
		mu 0 8 208 209 210 211 212 157 113 213
		f 4 -123 -121 163 164
		mu 0 4 214 158 157 215
		f 3 165 -122 166
		mu 0 3 216 40 159
		f 7 169 170 -128 171 172 173 174
		mu 0 7 219 220 166 165 221 222 223
		f 3 -129 -166 175
		mu 0 3 224 40 216
		f 4 177 -132 178 179
		mu 0 4 226 227 228 229
		f 7 -134 -178 -221 -199 181 -135 -181
		mu 0 7 230 227 226 231 233 173 232
		f 3 -136 -133 180
		mu 0 3 171 43 170
		f 5 -141 -184 196 -114 -112
		mu 0 5 200 181 234 83 149
		f 3 193 -150 194
		mu 0 3 240 138 196
		f 10 195 -152 -153 -143 -99 -62 -110 -101 -187 190
		mu 0 10 145 241 242 235 183 146 144 188 131 236
		f 5 197 -155 -197 198 199
		mu 0 5 243 201 83 244 245
		f 5 -163 -213 -191 -188 -209
		mu 0 5 249 250 273 236 187
		f 8 203 204 205 206 207 -158 208 -190
		mu 0 8 237 251 252 253 254 255 256 187
		f 3 -159 209 210
		mu 0 3 257 255 258
		f 3 -162 211 -164
		mu 0 3 157 259 215
		f 4 214 -170 215 216
		mu 0 4 263 220 219 264
		f 5 -185 -214 -171 217 -186
		mu 0 5 130 265 266 267 190
		f 3 219 -179 -177
		mu 0 3 268 229 228
		f 5 -189 221 222 223 -204
		mu 0 5 237 138 270 271 272
		f 6 -218 224 225 226 227 -192
		mu 0 6 190 220 274 275 276 239
		f 3 228 -194 229
		mu 0 3 277 138 240
		f 5 230 -200 220 -180 236
		mu 0 5 278 279 269 226 229
		f 10 -202 231 218 176 131 133 132 -56 -168 -203
		mu 0 10 155 247 262 225 169 124 170 43 70 218
		f 3 -210 -208 232
		mu 0 3 258 255 254
		f 3 233 -215 234
		mu 0 3 282 220 263
		f 3 235 -220 -219
		mu 0 3 281 229 268
		f 3 -222 -229 237
		mu 0 3 270 138 277
		f 3 -225 238 239
		mu 0 3 274 220 283
		f 3 240 -234 241
		mu 0 3 284 220 282
		f 3 -239 -241 242
		mu 0 3 283 220 284
		f 5 244 243 246 254 -248
		mu 0 5 287 285 286 291 303
		f 5 248 -245 245 257 258
		mu 0 5 293 285 287 288 311
		f 5 -244 -249 249 250 251
		mu 0 5 290 285 293 289 294
		f 10 -246 247 255 -226 -240 -243 -242 -235 -217 256
		mu 0 10 288 287 292 304 305 306 307 308 309 310
		f 8 -247 252 -223 -238 -230 -195 -149 253
		mu 0 8 295 296 297 298 299 300 301 302
		f 5 -260 -250 -259 -269 272
		mu 0 5 337 312 293 311 351
		f 9 259 260 261 -160 -211 -233 -207 262 -251
		mu 0 9 313 314 315 316 317 318 319 320 321
		f 5 -252 263 -205 -224 -253
		mu 0 5 296 322 323 324 297
		f 3 264 -254 -148
		mu 0 3 325 326 327
		f 6 -265 -147 -193 -228 265 -255
		mu 0 6 326 325 328 329 330 331
		f 3 -256 -266 -227
		mu 0 3 332 331 330
		f 5 266 267 -257 -216 -175
		mu 0 5 333 334 288 310 335
		f 8 268 -258 -268 277 -126 -92 278 276
		mu 0 8 336 311 288 350 357 358 359 356
		f 5 274 269 -261 -273 -277
		mu 0 5 354 338 315 337 351
		f 9 -262 270 -130 -176 -167 -124 -165 -212 -161
		mu 0 9 316 315 339 340 341 342 343 344 345
		f 3 -264 -263 -206
		mu 0 3 323 322 346
		f 3 271 -267 -174
		mu 0 3 347 348 349
		f 5 273 -88 -131 -271 -270
		mu 0 5 338 352 353 339 315
		f 3 275 -272 -173
		mu 0 3 355 348 347
		f 3 -274 279 -89
		mu 0 3 352 338 360
		f 4 -279 -91 280 -275
		mu 0 4 361 362 363 338
		f 4 -278 -276 -172 -127
		mu 0 4 364 348 355 365
		f 3 -281 -90 -280
		mu 0 3 338 363 360;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface19";
	setAttr ".t" -type "double3" -15.909200133408859 0.1822365799404686 -26.002365109996539 ;
	setAttr ".r" -type "double3" -156.71117508395392 -241.73897233687003 -158.91070872941606 ;
	setAttr ".rp" -type "double3" 13.49914938211441 -15.704317331314087 29.369814872741699 ;
	setAttr ".rpt" -type "double3" 2.4100507512944525 -0.27328836844556226 -3.3674497627451601 ;
	setAttr ".sp" -type "double3" 13.49914938211441 -15.704317331314087 29.369814872741699 ;
createNode mesh -n "polySurface19Shape" -p "polySurface19";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 366 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.1982127 0.559017 0.099106349
		 0.63196599 0 0.559017 0.037855253 0.440983 0.16035745 0.44098297 0.33118314 0.52637672
		 0.32071489 0.559017 0.20323262 0.40942398 0.26519385 0.52228826 0.27470297 0.54343551
		 0.25946379 0.75 0.16035745 0.67705101 0.83964252 0.559017 0.9387489 0.63196599 0.90089363
		 0.75 0.77839142 0.75 0.74053615 0.63196599 0.96214473 0.559017 1 0.44098297 0.061251096
		 0.36803401 0.19072354 0.36803401 0.90089363 0.75 0.77839142 0.75 0.857786 0.69156021
		 0.86279094 0.72078848 0.90413946 0.73987925 0.4198212 0.63196599 0.35857016 0.67705101
		 0.19821273 0.559017 0.09363547 0.61490762 0.12223396 0.51283544 0.099106349 0.63196599
		 0.090608574 0.62571108 0.67928505 0.44098297 0.80178726 0.440983 0.64142984 0.559017
		 0.70268089 0.75 0.56434596 0.63198745 0.099106349 0.25 0.17105663 0.30296028 0.25946379
		 0.75 0.16035745 0.67705101 0.23532547 0.67473584 0.74053615 0.63196605 0.36865771
		 0.51610154 0.09813118 0.49351639 0.16035746 0.44098303 0.58017874 0.75 0.54537272
		 0.559017 0.59300375 0.53730971 0.5918287 0.51367038 0.58778298 0.46128201 0.5828203
		 0.42646343 0.55096245 0.41270208 0.5606156 0.3824338 0.58017874 0.36803401 0.64142984
		 0.32294902 0.66979402 0.30207103 0.68486094 0.29913747 0.78176403 0.28034651 0.83964252
		 0.32294902 0.56371808 0.61621815 0.90089363 0.36803398 0.060236581 0.46314281 0.1706481
		 0.25 0.1587086 0.26286766 0.16038653 0.26765516 0.26101595 0.68311834 0.2352964 0.67472637
		 0.70268089 0.75 0.64142984 0.559017 0.82072282 0.62436843 0.4543179 0.52856165 0.28169605
		 0.5302965 0.24431023 0.51663184 0.24031743 0.51892662 0.23683767 0.5219155 0.23040025
		 0.5287469 0.22369196 0.559017 0.20352452 0.60102195 0.54406857 0.63567269 0.77851075
		 0.60401422 0.68860245 0.50659525 0.67928505 0.44098303 0.83964252 0.559017 0.79916549
		 0.63196599 0.9387489 0.63196599 0.84833997 0.69851315 0.90089363 0.75 0.88638586
		 0.75 0.17209449 0.68569028 0.16035745 0.67705101 0.18226805 0.60873294 0.18552627
		 0.61131811 0.20110936 0.62369186 0.87197804 0.48560241 0.88065273 0.46590734 0.87762582
		 0.49083281 0.41458106 0.26633903 0.41982123 0.25 0.42729369 0.27329937 0.38476115
		 0.25 0.40485674 0.26101488 0.91975242 0.42683625 0.90845871 0.43115687 0.90089363
		 0.36803398 0.98822898 0.43315375 0.65802824 0.50726259 0.039677214 0.44666395 0.99921238
		 0.44343895 1 0.440983 0.037067592 0.44343895 0.037855253 0.440983 0.74053615 0.63196599
		 0.72627604 0.58750254 0.77605206 0.60576177 0.30441624 0.69727916 0.77610844 0.60578239
		 0.54557836 0.62957013 0.64824492 0.70993137 0.65093011 0.69005805 0.65111423 0.68315357
		 0.64137137 0.67708462 0.55916381 0.6270076 0.78895348 0.58344418 0.81343418 0.61107248
		 0.84619951 0.6238957 0.4549894 0.50632787 0.47086489 0.53740007 0.21459141 0.57107282
		 0.25946382 0.36803401 0.16035745 0.440983 0.061251096 0.36803401 0.067471743 0.34863782
		 0.14183527 0.33225915 0.19683 0.31204847 0.23043284 0.29951698 0.23310143 0.28583521
		 0.25946382 0.36803401 0.9837141 0.42899549 1 0.44098297 0.98492682 0.440983 0.98682761
		 0.4506788 0.99145502 0.46762651 0.029310284 0.46762651 0.099106357 0.63196605 0.055462003
		 0.54297239 0.20309672 0.59332496 0.54354292 0.63576818 0.63497359 0.47359923 0.099106349
		 0.63196599 0 0.559017 0.15646905 0.58974314 0.87074882 0.48490915 0.88912404 0.45420712
		 0.80178726 0.440983 0.89560407 0.44525725 0.64142984 0.559017 0.64218694 0.55665636
		 0.30885834 0.69223583 0.30883816 0.69213629 0.77839142 0.75 0.93054181 0.625925 0.52295089
		 0.559017 0.52465719 0.54204845 0.52448392 0.54169214 0.58017874 0.36803401 0.63696218
		 0.75 0.63873184 0.74371505 0.80570269 0.52120119 0.80063701 0.58772767 0.81032014
		 0.6053918 0.40976056 0.40330338 0.37809098 0.38011637 0.4576765 0.36803398 0.42184499
		 0.440983 0.48107234 0.44098297 0.45964706 0.50778782 0.43248412 0.50730532 0.45541269
		 0.49231434 0.50274312 0.50855333 0.53820771 0.49890092 0.51573509 0.56136692 0.036021665
		 0.55934465 0.20687191 0.58601671 0.061251093 0.36803401 0.31157526 0.53051931 0.32071489
		 0.559017 0.037855253 0.440983 0.32988226 0.53043282 0.35857013 0.44098303 0.33613589
		 0.52557445 0.28582618 0.28583521 0.33868289 0.27059957 0.33575967 0.27783298 0.33110994
		 0.30538797 0.33410081 0.30877477 0.96214473 0.559017 0.95200026 0.559017 0.96296376
		 0.5564633 0.63437599 0.47272661 0.80178726 0.440983 0.96214473 0.559017 0.11963113
		 0.47309294 0.83964252 0.32294902 0.74053615 0.25 0.099106349 0.25 0.22160855 0.25
		 0.58017874 0.75 0.54232347 0.63196599 0.56585741 0.61464339 0.6235866 0.59291232
		 0.62816298 0.56878233 0.70268089 0.75 0.63382477 0.54630303 0.63283592 0.54773271
		 0.3088637 0.69226241 0.9387489 0.63196599 0.67928505 0.440983 0.50468427 0.514606
		 0.48107237 0.44098303 0.51622117 0.5243752 0.51322317 0.51847428 0.51035297 0.5134961
		 0.3126314 0.71086502 0.80585599 0.52065575 0.25946382 0.36803401 0.27704382 0.38097405
		 0.16212805 0.44098297 0.16035746 0.44098303 0.3224864 0.33940518 0.29731905 0.25
		 0.36456031 0.37020984 0.41982123 0.25 0.58017874 0.36803401 0.012380586 0.55740964
		 0.1982127 0.559017 0.35857019 0.44098297 0.36081427 0.53509682 0.38082492 0.51037413
		 0.3345139 0.30924255 0 0.559017 0.00081900466 0.5564633 0.83964252 0.32294902 0.64142984
		 0.32294902 0.74053615 0.25 1 0.440983 0.82481962 0.51279867 0.037855253 0.44098297
		 0.35857016 0.67705101;
	setAttr ".uvst[0].uvsp[250:365]" 0.25946379 0.75 0.43000364 0.44098297 0.46795928
		 0.5191347 0.48340023 0.55092788 0.51721972 0.55369186 0.51892757 0.559017 0.41982123
		 0.63196599 0.54801714 0.559017 0.52446115 0.55494398 0.62503111 0.559017 0.90089363
		 0.75 0.64142984 0.32294902 0.80594015 0.52043158 0.4503153 0.48653755 0.46445587
		 0.49383771 0.29731905 0.25 0.41982123 0.25 0.4576765 0.36803398 0.16110474 0.44153303
		 0.22160856 0.25 0.38727903 0.36803398 0.40904456 0.39199513 0.41636109 0.39844495
		 0.16035745 0.67705101 0.44491637 0.48452151 0.4226706 0.47621489 0.40529466 0.49039909
		 0.33641362 0.31139371 0.061251096 0.36803401 0.099106349 0.25 0.90089363 0.36803398
		 0.16063149 0.44183746 0.44805783 0.48584878 0.44563508 0.48483968 0.44770509 0.48571035
		 0.1982127 0.559017 0.099106349 0.63196599 0.16035745 0.440983 0.25946382 0.36803401
		 0.35857019 0.67705101 0.16035745 0.67705101 0 0.559017 0.061251096 0.36803401 0.32071489
		 0.559017 0.25946379 0.75 0.9387489 0.63196599 0.90089363 0.75 0.88516378 0.7009539
		 0.89949024 0.67854011 0.92635155 0.62889713 0.92698675 0.6271953 0.9271248 0.62682527
		 0.92812473 0.62414593 0.037855253 0.440983 0.079867378 0.30998778 0.11503276 0.29615277
		 0.11615875 0.29570961 0.11941111 0.29442978 0.11996736 0.29421091 0.12356718 0.29279506
		 0.14551014 0.28415635 0.35857016 0.440983 0.41982123 0.63196599 0.58017874 0.75 0.54232347
		 0.63196599 0.64142984 0.559017 0.71018052 0.60962224 0.69560623 0.65975934 0.69482088
		 0.68002427 0.69457948 0.68625391 0.71779931 0.70286018 0.70268089 0.75 0.77839142
		 0.75 0.7923547 0.70646203 0.8638413 0.71531552 0.93726069 0.54070061 0.96214473 0.559017
		 0.94901258 0.559017 0.93458521 0.53474051 0.940162 0.49150348 0.94665283 0.440983
		 1 0.440983 0.95126194 0.40510845 0.20874549 0.25 0.22160855 0.25 0.20793551 0.25958011
		 0.4576765 0.36803398 0.51892757 0.559017 0.67928505 0.44098303 0.6826489 0.559017
		 0.67978555 0.57332468 0.71011537 0.57874632 0.71015871 0.57875407 0.71032107 0.57878304
		 0.70959938 0.58004951 0.70390332 0.59004593 0.76327294 0.70286018 0.74375665 0.2600418
		 0.74053615 0.25 0.75094259 0.25765982 0.29731905 0.25 0.48107234 0.440983 0.69048524
		 0.44922709 0.69804013 0.48210835 0.58017874 0.36803401 0.73666537 0.26206917 0.41982123
		 0.25 0.32598755 0.25 0.34435913 0.2697002 0.35064289 0.25 0.68358779 0.440983 0.64142984
		 0.32294902 0.69739628 0.2817539 0.68467587 0.42417407 0.71734291 0.26707184 0.71774375
		 0.2669647;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 170 ".pt";
	setAttr ".pt[0:165]" -type "float3"  -0.81441957 -0.66669279 0.086950153 
		-0.68753767 -0.56050229 -0.79434067 -0.52136207 -0.45748264 -0.76685905 -0.47316697 
		-0.553379 -1.1387645 -0.62402534 -0.66047841 -0.2048004 -0.84264624 -0.69841272 1.0540009 
		-0.86589485 -0.69668335 0.9520359 -0.57640278 -0.67484224 0.1920495 -0.84395647 -0.68462759 
		0.71144462 -0.8612833 -0.68625867 0.73757696 -1.0345294 -0.48915145 0.10055677 -0.64807731 
		-0.31975368 0.011982473 -0.93072677 -0.32275718 0.53876203 -0.53125989 -0.6552071 
		-0.18721479 -0.84977883 -0.69049871 0.86118406 -0.53401434 -0.73205596 2.1379151 
		-0.99114168 -0.68174553 1.0936754 -1.2820477 -0.60210216 0.81700301 -0.57105106 -0.71154189 
		1.1746284 -1.1306863 -0.29745412 1.014279 -0.70126796 -0.32025421 0.10843217 -1.3234088 
		-0.32422471 1.278643 -1.4694283 -0.48017138 1.3085245 -0.59505874 -0.46131408 -0.57457608 
		-0.65040642 -0.59058785 -0.27992523 -0.56283337 -0.74036729 1.9487245 -0.82878149 
		-0.5377416 2.5473666 -0.32125103 -0.63833064 -0.20177378 -1.4893402 -0.45826831 1.373759 
		-1.4501405 -0.39992708 1.302707 -1.4436512 -0.40708226 1.2982714 -1.3927778 -0.41358188 
		1.2719257 -1.3115776 -0.41302782 1.2581618 -1.2858143 -0.45473281 1.3712931 -1.2007282 
		-0.44012585 1.2983317 -1.1346993 -0.42543343 1.0889717 -1.0183909 -0.47072122 0.83179945 
		-0.9785921 -0.48377272 0.69820714 -0.6905998 -0.52480787 -0.21962601 -0.67912292 
		-0.53347445 -0.31179038 -0.67736799 -0.54103613 -0.30747467 -0.40853781 -0.75690407 
		2.1901038 -0.56283337 -0.74036729 1.9487245 -0.43933636 -0.44885167 3.5243299 -1.1698383 
		-0.59712541 1.6697029 -1.3072641 -0.5977419 1.3200742 0.09783297 -0.74680167 1.7631984 
		-0.16291058 -0.73714346 1.3444018 -0.20803005 -0.73430914 1.332886 -0.25162634 -0.73182797 
		1.3271295 -0.33701232 -0.72713286 1.3141019 -0.42756799 -0.72857076 1.4749585 -0.61918443 
		-0.71773022 1.451633 -1.4654481 -0.49642625 1.4059724 -1.5095088 -0.45523334 1.5258807 
		-1.4770116 -0.3512187 1.5117137 -1.430692 -0.33657044 1.5589743 -1.3096008 -0.40465462 
		1.2867849 -1.2790848 -0.44017532 1.4224359 -1.2813048 -0.4427886 1.416567 -1.1423219 
		-0.45123768 1.1517373 -1.0967196 -0.45830297 1.0386574 -0.79694116 -0.40648413 0.58261424 
		-0.66529095 -0.53104907 -0.33432153 -0.50229204 -0.74784529 2.0579796 -0.16522899 
		-0.76015407 2.6246011 0.21419984 -0.53548729 4.1440129 -0.1626893 -0.72874206 2.7735515 
		-0.17272146 -0.7071889 2.8528683 -0.17625506 -0.69827646 2.8865292 -0.12289463 -0.68946314 
		3.0094748 0.17099863 -0.54906601 4.0268397 -1.199374 -0.51343209 2.0362947 -1.1977031 
		-0.57051134 1.7586439 -1.2583457 -0.59961599 1.45149 -1.2801075 -0.59968942 1.4020088 
		-1.3543339 -0.57298172 1.3288049 -0.51633984 -0.72395194 1.474689 0.21177542 -0.61727858 
		0.68410015 0.038319744 -0.71663368 1.3942119 -0.20820689 -0.73200595 1.2462389 0.27986297 
		-0.73125547 2.1849878 0.37111086 -0.71243495 2.4816725 0.40202108 -0.70893288 2.5501292 
		0.3078787 -0.69101429 2.3675292 -0.45944524 -0.7308073 1.4600554 -0.60898954 -0.71703082 
		1.4155909 -1.4642564 -0.49680609 1.4069543 -1.1653724 -0.27601179 1.733639 -0.16522899 
		-0.76015407 2.6246011 -0.12821074 -0.75921416 2.6886022 -0.12821074 -0.75921416 2.6886022 
		-0.37108752 -0.75203526 1.9764192 0.14692789 -0.5292232 4.0697446 0.14692789 -0.5292232 
		4.0697446 -0.20496573 -0.32947862 2.8308718 -0.13970973 -0.75284791 2.7081161 -0.15338583 
		-0.75054431 2.6970911 -1.3297192 -0.4202292 1.9477477 -1.255911 -0.51758039 1.9246294 
		-1.2095338 -0.55842328 1.799539 -1.2257924 -0.60049474 1.5567925 -0.57990646 -0.71934742 
		1.4400209 0.14374971 -0.70533317 2.5590446 0.60434949 -0.65139341 2.5866592 0.40204081 
		-0.69124371 2.9316916 0.39508682 -0.69213533 2.9207082 0.3649472 -0.69004858 2.9166632 
		0.35983098 -0.68800128 2.9406803 -0.6154533 -0.71669394 1.4119734 -1.5319965 -0.36031464 
		1.6960094 -1.3860055 -0.4026776 1.8045942 -0.050084911 -0.43034461 0.82571685 0.030675391 
		-0.74569821 2.6549397 0.15269177 -0.71914047 3.2901206 0.08519578 -0.73565257 3.132144 
		-0.094142042 -0.76020664 2.7347844 -0.11673014 -0.75931817 2.7072685 -0.12672181 
		-0.75931263 2.6904047 -0.12821074 -0.75921416 2.6886022 -0.81677371 -0.24265213 2.6105931 
		0.18877822 -0.5131672 4.1947017 0.2618151 -0.45545256 4.2727728 0.127904 -0.51974612 
		4.079164 0.1415804 -0.51660055 4.1117043 0.15656739 -0.5137189 4.1451297 -1.3302338 
		-0.41926426 1.9463587 -1.2217351 -0.49497491 2.0886366 -1.330406 -0.41852427 1.949564 
		-1.3863575 -0.44641557 2.0523179 -1.3701233 -0.51520818 1.7322346 -0.08600758 -0.72248662 
		1.6032907 0.37961385 -0.66631138 3.2711542 0.54241735 -0.66742545 3.0376151 0.35818672 
		-0.68800128 2.9438314 -1.5433372 -0.35738009 2.0014074 -1.4916484 -0.34246707 1.9256781 
		0.39993137 -0.66615039 3.5525193 0.23679788 -0.70241874 3.3843334 0.17231154 -0.71352935 
		3.2923288 0.1641905 -0.71721637 3.3088377 0.14527735 -0.72195953 3.2694595 -1.3302419 
		-0.41848284 1.94943 0.3629536 -0.55900353 4.045805 0.3194744 -0.5507946 4.1153655 
		0.37283835 -0.66430742 3.4388919 0.39428431 -0.66741109 3.5305762 0.37820831 -0.56144255 
		4.015317 0.44762483 -0.59296888 3.7367058 0.50198627 -0.62792599 3.4582012 0.35399947 
		-0.68626261 2.9586084 0.36983848 -0.56007141 4.0284371 0.37751392 -0.56144255 4.0166478 
		0.36983848 -0.56007141 4.0284371 0.78669 -0.4783318 4.3030133 0.58186859 -0.61444712 
		3.6679299 0.6348846 -0.44301319 4.7319436 0.36926875 -0.42637265 4.8028836 0.54382682 
		-0.58679354 4.0091872 0.43391567 -0.6825875 2.9127574 0.62795836 -0.59059888 3.665343 
		0.62865317 -0.46073666 4.674592 0.3452301 -0.67489642 3.5240083 0.51792896 -0.44111305 
		4.9634538 0.26733929 -0.64374661 3.7948565 -0.12441812 -0.73970205 2.7978861;
	setAttr ".pt[166:169]" 0.1439684 -0.50282317 4.1695991 0.39843306 -0.53347474 
		4.4230313 -0.173674 -0.696657 2.8988669 0.14750558 -0.5812121 3.8653827;
	setAttr -s 170 ".vt";
	setAttr ".vt[0:165]"  17.56276321 -21.23478699 19.61520195 14.77104378 -21.97965813 15.098104477
		 13.045665741 -20.029561996 12.30638504 14.77104378 -14.16445923 15.098104477 17.56276321 -15.88983727 19.61520195
		 14.29391956 -21.44039154 24.9043026 14.77104378 -21.97965813 24.13229942 16.35501671 -15.14340782 21.5693779
		 15.76787663 -20.423172 22.51939011 15.7057333 -21.19281578 22.6199398 10.2539463 -23.18488312 16.82348251
		 7.46222639 -20.029561996 12.30638504 5.73684931 -21.97965813 15.098104477 14.77104378 -14.16445923 20.99923515
		 16.2584343 -21.29846573 22.81371307 15.30556965 -22.45162582 29.65187073 12.58589268 -21.27063179 25.14732742
		 10.2539463 -23.18488312 22.40692139 21.19598389 -18.92234039 23.17511749 2.94512939 -15.88983727 19.61520195
		 5.73684931 -14.16445923 15.098104477 2.94512939 -21.23478699 19.61520195 5.73767138 -21.97987747 23.12855148
		 10.2539463 -11.37273979 16.82348251 12.28070831 -12.62534714 20.10285187 17.62691116 -21.060775757 27.099458694
		 8.27072334 -21.93216324 31.61817741 17.80161476 -11.41438103 21.13856888 5.13418674 -21.8188591 23.15717125
		 4.20737123 -20.74098206 21.65755272 4.40692568 -19.8823452 21.98043823 4.88202143 -17.94794846 22.74915886
		 5.24959898 -16.65040779 23.34391212 6.076191425 -16.67162514 24.68136787 6.077430725 -15.32220364 24.6833725
		 5.73684931 -14.16445923 24.13229942 7.029640675 -13.36546993 23.6384964 7.46382761 -13.097127914 23.16049767
		 10.2539463 -11.37273979 20.08423233 10.74638462 -11.67708397 19.54005051 10.92959976 -11.79031658 19.61652756
		 17.76244926 -21.15646362 28.70966339 17.62675858 -21.060668945 27.097637177 8.27159691 -18.49189949 37.42103958
		 8.46057892 -21.12096024 27.13265419 8.68165016 -21.47649002 24.85262489 21.95809364 -14.4198761 28.022855759
		 20.99971771 -14.50331879 25.88463974 20.98469734 -14.78578186 25.65164948 20.99461174 -15.10401249 25.44737625
		 21.043245316 -15.78760147 25.067871094 21.63249397 -18.18688965 24.6438427 19.76064682 -19.7195816 24.12925529
		 5.87870216 -22.017505646 24.052762985 4.7566247 -22.26818085 24.19731331 2.62824273 -20.6845665 22.41060638
		 2.54662251 -17.75468445 23.86286354 5.056245804 -16.45601082 23.53956413 5.77036428 -16.35355377 25.019266129
		 5.82325792 -16.40854836 24.96087074 6.36213589 -14.66623306 24.37113762 6.579916 -14.16445923 24.13229942
		 6.4189949 -9.99680233 24.32011795 10.76622963 -11.4988184 19.51850891 17.94088173 -21.57152557 27.67754745
		 17.99141884 -21.31811333 31.4298687 15.075921059 -16.90799904 38.98789215 15.30604935 -20.55149269 32.83919907
		 14.2525301 -20.37240219 33.30839539 13.91309261 -20.29092407 33.49945068 13.96633148 -19.96460724 34.038303375
		 14.47010517 -17.22535515 38.55259705 6.31247091 -20.50071716 28.88705826 7.64461231 -21.09091568 27.52297401
		 8.63175011 -20.87763214 25.70993996 8.65104198 -21.10915756 25.37849236 7.92746401 -21.62251472 24.64357948
		 21.038509369 -19.11291695 24.30521774 17.80248833 -8.067417145 26.94143105 24.8669014 -15.28943253 26.59427261
		 21.34623146 -14.65257549 25.39237976 22.47516823 -14.29425144 29.7449379 22.78679276 -14.21605301 30.80033493
		 22.51124573 -14.10970879 31.10471344 24.93411064 -14.77473927 30.33269882 22.69507027 -20.81530762 24.26815796
		 20.033004761 -19.57209015 23.98586655 5.8823576 -22.018482208 24.076721191 2.77851868 -12.96667957 28.32297325
		 18.0080909729 -21.34932518 31.41597366 18.25078011 -21.20931625 31.60813332 18.25405312 -21.20744514 31.60543442
		 21.42001343 -21.98379326 26.56896591 14.80249405 -16.17232132 38.74452209 14.8087616 -16.15407944 38.74217987
		 9.81477642 -9.13619137 35.74589539 17.63848877 -21.55924416 32.11299133 17.27263641 -21.40117264 32.22690201
		 4.57755947 -17.49602509 27.99833107 6.21195555 -21.038162231 28.20828629 7.2959938 -21.078079224 27.68973541
		 8.50004101 -21.63110352 26.4305172 20.3632431 -19.42128372 24.090751648 26.28294945 -20.86804771 29.20847702
		 21.19739723 -10.55377102 32.56434631 21.56286812 -15.046323776 32.14877701 21.78235817 -15.091514587 32.069507599
		 22.55097389 -15.40697098 31.88936043 22.60836601 -15.52445316 31.9341259 20.0039653778 -19.68087769 23.95476341
		 2.36144638 -21.60676765 24.26937485 4.054580688 -17.52461243 26.90672112 10.76764202 -7.19130468 28.90773773
		 23.63744545 -22.016387939 29.62225151 21.52876091 -21.62426567 32.61786652 20.69273567 -21.55897713 32.33246231
		 19.13338852 -21.46957016 31.2714119 18.47938538 -21.38612938 31.57686424 18.27939034 -21.22753906 31.60222244
		 18.24990654 -21.20981598 31.60885239 4.87722683 -12.23618317 35.38449097 15.66583157 -14.73216438 38.65156555
		 16.2607193 -11.21430969 38.0058059692 15.10426331 -15.29551506 38.62611389 15.21543217 -15.00085544586 38.588974
		 15.32880116 -14.74835587 38.56215286 4.56224442 -17.46986389 27.99016762 5.85835314 -20.48449326 29.10361862
		 4.54294062 -17.46826553 27.99937248 4.35776472 -21.48311615 28.40588379 5.99041748 -22.19176102 26.7538166
		 25.7005291 -20.12574005 25.89946556 25.80927658 -19.76621246 31.94836426 20.63670349 -14.27231407 33.17298889
		 22.61629295 -15.54067802 31.94030952 2.11493731 -21.12157059 26.87041473 2.22938251 -18.38029289 26.61917686
		 24.095924377 -20.038743973 33.17707062 22.89799309 -21.0087146759 32.44694519 22.41065788 -21.40331268 32.14992142
		 21.58931732 -21.56152344 32.682724 21.3785038 -21.56092453 32.6003685 4.55558872 -17.45965576 27.9855938
		 17.72086334 -13.41086864 36.39020157 17.18637848 -13.75451851 36.97834778 23.60375404 -18.29481125 32.73329544
		 24.0034942627 -19.63724327 33.061378479 17.92866707 -13.27721214 36.16142273 18.78490257 -12.72648907 35.21875763
		 19.55384254 -13.36837482 34.36927414 22.6527462 -15.61529827 31.96874237 17.80849838 -13.35449219 36.29369736
		 17.90124512 -13.29484653 36.19160461 17.82204437 -13.34578133 36.27878571 25.20204735 -19.46578217 38.59726334
		 25.51290131 -19.73456764 34.14576721 22.39808273 -13.92547035 39.32810974 18.82151604 -15.49042225 41.5773735
		 22.52985954 -22.3172226 37.054302216 22.90105629 -14.93285751 32.12543869 20.9759922 -12.41574192 35.32830048
		 23.35842514 -21.061950684 40.39483643 23.8613987 -21.49685478 33.19216156 19.41504097 -20.5589447 42.23664856
		 18.074392319 -22.59001732 36.8315506 16.65230179 -21.93824577 32.83174133;
	setAttr ".vt[166:169]" 15.18898582 -14.94788742 38.96768951 16.14932823 -21.50334167 40.034412384
		 13.84833717 -20.44875336 33.56258774 13.53748226 -20.17996979 38.014083862;
	setAttr -s 281 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 0 0 5 6 0 6 0 0 4 7 0 7 8 0
		 8 9 0 9 5 0 10 1 0 11 2 0 10 12 0 12 11 0 3 13 1 14 15 0 15 16 1 16 5 0 9 14 0 17 6 0
		 13 7 0 8 14 1 17 10 0 19 20 0 20 11 0 12 21 0 21 19 0 3 23 0 23 24 1 24 13 0 25 15 1
		 15 26 0 27 18 0 18 14 0 21 28 0 28 29 0 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0
		 35 19 0 35 36 0 36 37 0 37 38 0 38 23 0 23 20 0 22 28 1 38 39 0 39 40 0 40 24 0 25 41 0
		 42 25 0 43 26 0 27 46 1 46 47 0 47 48 0 48 49 0 49 50 0 50 51 0 51 18 0 53 22 1 29 55 0
		 30 56 1 56 31 1 56 57 0 57 32 0 57 58 0 58 59 0 59 33 0 59 34 1 60 35 1 34 60 0 35 61 1
		 61 36 0 62 37 1 22 54 0 63 39 0 63 40 1 64 41 1 41 65 0 42 64 0 52 42 0 66 43 0 15 67 1
		 67 68 0 68 69 0 69 70 0 70 71 0 71 66 0 73 44 0 74 16 0 44 74 0 75 45 0 45 76 0 77 18 0
		 51 77 0 27 78 0 79 80 0 80 47 0 46 81 0 81 82 0 82 83 0 83 84 0 84 79 0 80 48 1 80 49 1
		 80 50 0 86 52 0 87 53 1 17 87 0 53 54 1 55 56 0 60 61 0 88 62 0 62 63 0 63 27 0 64 89 0
		 89 65 0 90 15 1 65 91 0 91 90 0 92 64 0 66 93 1 93 94 0 94 95 1 15 96 0 96 97 0 97 67 0
		 98 72 0 99 26 0 72 99 0 100 73 0 26 100 1 101 44 0 101 75 1 75 74 0 101 45 0 76 87 0
		 102 18 1 77 102 0 78 81 1 104 82 0 83 105 0 105 106 0 106 107 0 107 108 0 108 84 1
		 109 52 0 86 109 0 102 86 0 110 55 0 54 110 0 111 58 0 112 62 0 113 114 0 114 115 0
		 115 116 1 116 117 0 117 89 0 92 113 0 89 118 1 118 91 0 119 15 1;
	setAttr ".ed[166:280]" 90 119 0 120 43 0 95 120 0 121 122 0 122 95 0 94 123 0
		 123 124 0 124 125 0 125 121 0 119 96 0 126 98 0 127 72 0 98 128 1 128 127 0 99 100 0
		 130 73 1 130 101 0 130 76 1 112 78 0 78 104 0 131 79 0 103 131 0 84 132 0 132 103 0
		 131 85 0 104 133 1 133 105 0 134 84 1 108 134 0 85 109 0 130 54 0 135 110 0 130 129 0
		 129 135 0 136 56 0 111 88 0 88 120 0 132 137 0 137 138 0 138 139 0 139 140 0 140 114 0
		 113 103 0 114 141 1 141 115 0 117 118 0 85 92 0 95 112 0 143 122 1 121 144 0 144 143 0
		 122 104 0 142 126 0 126 128 1 129 127 0 84 145 1 145 146 0 146 137 0 122 147 1 147 148 0
		 148 149 0 149 133 0 150 84 1 134 150 0 136 135 0 111 142 0 140 141 0 151 122 1 143 151 0
		 142 128 0 128 136 0 150 145 0 122 152 1 152 147 0 153 122 1 151 153 0 153 152 0 154 155 0
		 156 154 0 156 157 0 155 159 0 156 160 0 161 154 0 161 158 0 158 162 0 162 155 0 155 146 1
		 107 159 0 159 160 0 160 148 0 144 157 1 157 163 0 163 161 0 158 164 0 164 165 0 165 116 0
		 139 162 0 162 138 1 106 159 1 149 160 1 125 166 0 166 157 0 167 163 0 168 165 0 165 97 1
		 124 166 1 167 164 0 168 68 1 169 168 0 123 166 1 169 167 0 166 93 0 71 169 0 168 69 0
		 70 168 1;
	setAttr -s 113 -ch 562 ".fc[0:112]" -type "polyFaces" 
		f 5 0 1 2 3 4
		mu 0 5 0 1 2 3 4
		f 7 5 6 -5 7 8 9 10
		mu 0 7 5 6 0 4 7 8 9
		f 5 12 -2 -12 13 14
		mu 0 5 12 13 14 15 16
		f 5 -3 -13 -26 -49 -29
		mu 0 5 18 17 12 34 62
		f 4 -4 15 21 -8
		mu 0 4 4 19 20 7
		f 5 16 17 18 -11 19
		mu 0 5 21 22 23 24 25
		f 9 20 -6 -19 -94 -139 95 96 140 -113
		mu 0 9 26 6 5 44 179 127 72 128 182
		f 5 -7 -21 23 11 -1
		mu 0 5 0 6 27 10 11
		f 3 -20 -10 22
		mu 0 3 31 32 29
		f 5 24 25 -15 26 27
		mu 0 5 33 34 12 16 35
		f 4 -16 28 29 30
		mu 0 4 20 19 38 39
		f 7 92 94 93 -18 32 135 134
		mu 0 7 125 71 126 23 22 43 171
		f 9 33 34 -23 -9 -22 -31 -53 -81 118
		mu 0 9 46 28 31 29 30 45 63 108 112
		f 10 35 36 37 38 39 40 41 42 43 -28
		mu 0 10 35 48 49 50 51 52 53 54 55 33
		f 7 -44 44 45 46 47 48 -25
		mu 0 7 33 56 57 58 59 60 34
		f 8 63 49 -36 -27 -14 -24 112 111
		mu 0 8 80 37 61 35 16 36 47 148
		f 5 -48 50 51 52 -30
		mu 0 5 38 64 65 66 39
		f 6 -32 53 82 122 123 121
		mu 0 6 40 42 67 116 160 159
		f 9 55 -33 86 87 88 89 90 91 85
		mu 0 9 70 43 69 119 120 121 122 123 118
		f 8 -34 56 57 58 59 60 61 62
		mu 0 8 28 46 73 74 75 76 77 78
		f 8 110 84 54 31 -17 -35 -142 152
		mu 0 8 147 79 68 42 40 41 28 184
		f 6 -65 -37 -50 78 154 153
		mu 0 6 84 81 82 107 83 201
		f 4 -38 64 114 -66
		mu 0 4 85 81 84 86
		f 3 65 66 -39
		mu 0 3 85 86 87
		f 4 -67 67 68 -40
		mu 0 4 87 86 88 89
		f 5 -69 69 70 71 -41
		mu 0 5 90 91 92 93 94
		f 3 72 -42 -72
		mu 0 3 95 96 97
		f 3 73 -43 74
		mu 0 3 98 99 100
		f 3 -45 75 76
		mu 0 3 101 99 102
		f 5 79 -51 -47 -78 117
		mu 0 5 110 109 106 103 105
		f 3 -80 80 -52
		mu 0 3 111 112 108
		f 4 81 -54 -55 83
		mu 0 4 113 114 115 117
		f 3 97 -63 98
		mu 0 3 129 28 78
		f 4 -57 99 143 -103
		mu 0 4 73 46 130 186
		f 8 100 101 -58 102 103 104 105 106
		mu 0 8 131 132 133 134 135 136 137 138
		f 3 -102 107 -59
		mu 0 3 139 140 141
		f 3 -108 108 -60
		mu 0 3 141 140 142
		f 3 -109 109 -61
		mu 0 3 142 140 143
		f 3 113 -79 -64
		mu 0 3 149 83 107
		f 7 -232 155 -70 -68 -201 -237 -236
		mu 0 7 281 203 152 150 151 248 229
		f 3 -76 -74 115
		mu 0 3 102 99 98
		f 10 116 77 -46 -77 -116 -75 -73 -71 -156 201
		mu 0 10 155 105 103 104 156 154 96 95 153 247
		f 4 -82 119 120 -83
		mu 0 4 114 113 157 158
		f 6 124 -84 -85 -151 -196 212
		mu 0 6 161 113 117 162 217 260
		f 6 -86 125 126 127 168 167
		mu 0 6 70 163 164 165 166 218
		f 4 -87 128 129 130
		mu 0 4 119 69 167 168
		f 4 136 -93 -182 182
		mu 0 4 174 172 173 233
		f 4 -137 137 138 -95
		mu 0 4 175 176 177 178
		f 3 -138 139 -96
		mu 0 3 177 176 180
		f 4 -97 -140 -183 183
		mu 0 4 181 180 176 234
		f 3 141 -98 142
		mu 0 3 184 28 129
		f 5 -107 188 189 187 186
		mu 0 5 131 138 237 187 236
		f 4 144 -104 -144 185
		mu 0 4 190 189 186 130
		f 5 -105 -145 191 192 -146
		mu 0 5 191 189 190 239 238
		f 6 -106 145 146 147 148 149
		mu 0 6 138 192 193 194 195 196
		f 3 150 -111 151
		mu 0 3 197 198 199
		f 5 200 -115 -154 -198 -231
		mu 0 5 246 202 84 201 280
		f 5 156 -117 202 -169 213
		mu 0 5 205 204 155 218 261
		f 5 -118 -157 184 -100 -119
		mu 0 5 185 206 207 130 46
		f 8 157 158 159 160 161 -120 -125 162
		mu 0 8 208 209 210 211 212 157 113 213
		f 4 -123 -121 163 164
		mu 0 4 214 158 157 215
		f 3 165 -122 166
		mu 0 3 216 40 159
		f 7 169 170 -128 171 172 173 174
		mu 0 7 219 220 166 165 221 222 223
		f 3 -129 -166 175
		mu 0 3 224 40 216
		f 4 177 -132 178 179
		mu 0 4 226 227 228 229
		f 7 -134 -178 -221 -199 181 -135 -181
		mu 0 7 230 227 226 231 233 173 232
		f 3 -136 -133 180
		mu 0 3 171 43 170
		f 5 -141 -184 196 -114 -112
		mu 0 5 200 181 234 83 149
		f 3 193 -150 194
		mu 0 3 240 138 196
		f 10 195 -152 -153 -143 -99 -62 -110 -101 -187 190
		mu 0 10 145 241 242 235 183 146 144 188 131 236
		f 5 197 -155 -197 198 199
		mu 0 5 243 201 83 244 245
		f 5 -163 -213 -191 -188 -209
		mu 0 5 249 250 273 236 187
		f 8 203 204 205 206 207 -158 208 -190
		mu 0 8 237 251 252 253 254 255 256 187
		f 3 -159 209 210
		mu 0 3 257 255 258
		f 3 -162 211 -164
		mu 0 3 157 259 215
		f 4 214 -170 215 216
		mu 0 4 263 220 219 264
		f 5 -185 -214 -171 217 -186
		mu 0 5 130 265 266 267 190
		f 3 219 -179 -177
		mu 0 3 268 229 228
		f 5 -189 221 222 223 -204
		mu 0 5 237 138 270 271 272
		f 6 -218 224 225 226 227 -192
		mu 0 6 190 220 274 275 276 239
		f 3 228 -194 229
		mu 0 3 277 138 240
		f 5 230 -200 220 -180 236
		mu 0 5 278 279 269 226 229
		f 10 -202 231 218 176 131 133 132 -56 -168 -203
		mu 0 10 155 247 262 225 169 124 170 43 70 218
		f 3 -210 -208 232
		mu 0 3 258 255 254
		f 3 233 -215 234
		mu 0 3 282 220 263
		f 3 235 -220 -219
		mu 0 3 281 229 268
		f 3 -222 -229 237
		mu 0 3 270 138 277
		f 3 -225 238 239
		mu 0 3 274 220 283
		f 3 240 -234 241
		mu 0 3 284 220 282
		f 3 -239 -241 242
		mu 0 3 283 220 284
		f 5 244 243 246 254 -248
		mu 0 5 287 285 286 291 303
		f 5 248 -245 245 257 258
		mu 0 5 293 285 287 288 311
		f 5 -244 -249 249 250 251
		mu 0 5 290 285 293 289 294
		f 10 -246 247 255 -226 -240 -243 -242 -235 -217 256
		mu 0 10 288 287 292 304 305 306 307 308 309 310
		f 8 -247 252 -223 -238 -230 -195 -149 253
		mu 0 8 295 296 297 298 299 300 301 302
		f 5 -260 -250 -259 -269 272
		mu 0 5 337 312 293 311 351
		f 9 259 260 261 -160 -211 -233 -207 262 -251
		mu 0 9 313 314 315 316 317 318 319 320 321
		f 5 -252 263 -205 -224 -253
		mu 0 5 296 322 323 324 297
		f 3 264 -254 -148
		mu 0 3 325 326 327
		f 6 -265 -147 -193 -228 265 -255
		mu 0 6 326 325 328 329 330 331
		f 3 -256 -266 -227
		mu 0 3 332 331 330
		f 5 266 267 -257 -216 -175
		mu 0 5 333 334 288 310 335
		f 8 268 -258 -268 277 -126 -92 278 276
		mu 0 8 336 311 288 350 357 358 359 356
		f 5 274 269 -261 -273 -277
		mu 0 5 354 338 315 337 351
		f 9 -262 270 -130 -176 -167 -124 -165 -212 -161
		mu 0 9 316 315 339 340 341 342 343 344 345
		f 3 -264 -263 -206
		mu 0 3 323 322 346
		f 3 271 -267 -174
		mu 0 3 347 348 349
		f 5 273 -88 -131 -271 -270
		mu 0 5 338 352 353 339 315
		f 3 275 -272 -173
		mu 0 3 355 348 347
		f 3 -274 279 -89
		mu 0 3 352 338 360
		f 4 -279 -91 280 -275
		mu 0 4 361 362 363 338
		f 4 -278 -276 -172 -127
		mu 0 4 364 348 355 365
		f 3 -281 -90 -280
		mu 0 3 338 363 360;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "nurbsCube1";
	setAttr ".t" -type "double3" 0 -0.52169092810632522 0 ;
createNode transform -n "topnurbsCube1" -p "nurbsCube1";
createNode nurbsSurface -n "topnurbsCubeShape1" -p "topnurbsCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
createNode transform -n "bottomnurbsCube1" -p "nurbsCube1";
createNode nurbsSurface -n "bottomnurbsCubeShape1" -p "bottomnurbsCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
createNode transform -n "leftnurbsCube1" -p "nurbsCube1";
createNode nurbsSurface -n "leftnurbsCubeShape1" -p "leftnurbsCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
createNode transform -n "rightnurbsCube1" -p "nurbsCube1";
createNode nurbsSurface -n "rightnurbsCubeShape1" -p "rightnurbsCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
createNode transform -n "frontnurbsCube1" -p "nurbsCube1";
createNode nurbsSurface -n "frontnurbsCubeShape1" -p "frontnurbsCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
createNode transform -n "backnurbsCube1" -p "nurbsCube1";
createNode nurbsSurface -n "backnurbsCubeShape1" -p "backnurbsCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
createNode transform -n "pSolid19";
	setAttr ".t" -type "double3" -64.512659072875991 26.260025052849272 -32.695127010345473 ;
	setAttr ".r" -type "double3" 0 47.698567640909047 0 ;
	setAttr ".rp" -type "double3" 64.512659072875977 -42.055394172668457 32.695127010345459 ;
	setAttr ".rpt" -type "double3" 1.4210854715202004e-014 0 1.4210854715202004e-014 ;
	setAttr ".sp" -type "double3" 64.512659072875977 -42.055394172668457 32.695127010345459 ;
createNode mesh -n "pSolid19Shape" -p "pSolid19";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4999999888241291 0.30901698768138885 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 526 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.14309436 0.49480987 0.16035746
		 0.44098303 0.17712581 0.49326739 0.068471216 0.60941648 0 0.559017 0.11958729 0.49587533
		 0.11485991 0.49608958 0.085466832 0.56789643 0.20555276 0.47424984 0.18814275 0.48589706
		 0.89136165 0.66684616 0.9387489 0.63196599 0.91259515 0.71351409 0.88153374 0.6906507
		 0.89653057 0.67961216 0.037855253 0.440983 0.25527909 0.440983 0.87723887 0.63196599
		 0.96214473 0.559017 0.85383475 0.559017 0.84815496 0.55546361 0.84247524 0.559017
		 0.83964252 0.559017 0.80178732 0.44098303 0.90089363 0.36803398 1 0.440983 0.061251096
		 0.36803401 0.25946382 0.36803401 0.30938989 0.40478295 0.85112429 0.56746835 0.86464334
		 0.60085756 0.83778095 0.56038719 0.84193426 0.56070387 0.80754966 0.559017 0.80394197
		 0.55885351 0.74428111 0.5216198 0.71611643 0.50404251 0.74053615 0.25 0.83964252
		 0.32294902 0.099106349 0.25 0.29731905 0.25 0.33941689 0.38126248 0.31826007 0.38287547
		 0.81913924 0.5595423 0.67928505 0.440983 0.70849383 0.49928534 0.67646843 0.51637399
		 0.65069544 0.53012639 0.64142984 0.32294902 0.22160855 0.25 0.41982123 0.25 0.37868351
		 0.3782689 0.36135441 0.37959003 0.58145678 0.51299125 0.61361176 0.54991424 0.61768126
		 0.53722537 0.59413874 0.52147543 0.4576765 0.36803398 0.4512921 0.37273335 0.48305321
		 0.44715947 0.48107234 0.440983 0.55604625 0.49599159 0.58017874 0.36803401 0.47318077
		 0.440983 0.47744659 0.4436518 0.28404668 0.29138374 0.29731905 0.25 0.31879425 0.31696033
		 0.20013337 0.3169603 0.22160855 0.25 0.23488094 0.29138374 0.22747974 0.29683155
		 0.4576765 0.36803398 0.39806181 0.41191444 0.36212665 0.38546371 0.34675789 0.33754352
		 0.14220595 0.35959888 0.13425635 0.35959888 0.099106349 0.25 0.41982123 0.25 0.48107234
		 0.44098297 0.41982123 0.63196599 0.38297734 0.51708543 0.38359141 0.51517069 0.40738454
		 0.440983 0.70842254 0.45147038 0.68412822 0.46709052 0.70248884 0.51407343 0.64142984
		 0.559017 0.67928505 0.440983 0.71178597 0.440983 0.73282337 0.27404886 0.72964036
		 0.28397366 0.72310889 0.2791661 0.71615672 0.27404886 0.72011322 0.27404886 0.06395638
		 0.35959885 0.12678783 0.35959888 0.74053615 0.25 0.83964252 0.32294902 0.67928505
		 0.44098303 0.64142984 0.32294902 0.58017874 0.36803401 0.51892757 0.559017 0.36020657
		 0.58808553 0.74053615 0.63196599 0.7029627 0.51528603 0.72053432 0.56025016 0.76136458
		 0.56174761 0.76221043 0.56438488 0.58017874 0.36803401 0.70557886 0.42162901 0.75955039
		 0.26399577 0.83964252 0.32294902 0.7709744 0.3734934 0.78458792 0.3244189 0.75326753
		 0.27404886 0.75692058 0.27109843 0.93751037 0.48220637 0.90089363 0.36803398 0.99291748
		 0.4357698 0.95578206 0.46689293 0.80178726 0.440983 0.64142984 0.559017 0.54232347
		 0.63196599 0.58017874 0.75 0.3357994 0.60605097 0.35857016 0.67705101 0.28237209
		 0.62096405 0.27965099 0.61341977 0.2769931 0.60605085 0.7756058 0.6061523 0.70268089
		 0.75 0.45844385 0.5115394 0.41982123 0.63196599 0.40169311 0.57544196 0.42968222
		 0.57544196 0.45029488 0.51117092 0.45159638 0.5071128 0.51892757 0.559017 0.74053615
		 0.25 0.73066974 0.28076372 0.7207644 0.28876373 0.67926109 0.32228369 0.67797744
		 0.32575038 0.67629045 0.33030677 0.69553548 0.39031351 0.64142984 0.32294902 0.70223516
		 0.41120329 0.099106349 0.25 0.19810565 0.25 0.19611239 0.25731221 0.20674904 0.29633248
		 0.16035746 0.44098303 0.80178726 0.440983 0.75225246 0.440983 0.76427621 0.39763942
		 0.83964252 0.559017 0.90471172 0.50969493 0.92052996 0.559017 0.74053615 0.63196599
		 0.70268089 0.75 0.25946379 0.75 0.2513949 0.72484088 0.29641008 0.69170672 0.29987457
		 0.68090445 0.30181247 0.67486191 0.51892757 0.559017 0.46545422 0.51607132 0.5155381
		 0.54844838 0.81518269 0.63528359 0.77839142 0.75 0.79032123 0.61698377 0.58017874
		 0.75 0.34302932 0.57544196 0.35440564 0.5754419 0.54232347 0.63196599 0.48107234
		 0.44098297 0.41982123 0.25 0.4576765 0.36803398 0.29731905 0.25 0.75530261 0.26086912
		 0.74320936 0.27063623 0.061251096 0.36803401 0.2166591 0.33268729 0.22777073 0.37344995
		 0.23183751 0.38836882 0.90089363 0.36803398 0.83964252 0.559017 0.74053615 0.63196599
		 0.70774996 0.52973759 0.77103573 0.48904768 0.79919875 0.68512195 0.90508187 0.60718477
		 0.84424812 0.65196264 0.23833919 0.73445088 0.24535276 0.72928834 0.54232347 0.63196599
		 0.55212796 0.62474924 0.61227524 0.62474924 0.62034851 0.62474924 0.58017874 0.75
		 0.53104663 0.559017 0.52110118 0.55223954 0.9387489 0.63196599 0.82116383 0.63968611
		 0.85016656 0.63968611 0.89970183 0.60322475 0.35857016 0.67705101 0.25946379 0.75
		 0.23494785 0.58605659 0.32923824 0.5855931 0.35857016 0.67705101 0.1982127 0.559017
		 0.29313275 0.559017 0.41982123 0.63196599 0.39969486 0.58957231 0.41343477 0.58957225
		 0.43095741 0.57667446 0.44143671 0.54399955 0.46406931 0.4734304 0.4593578 0.45873985
		 0.42578018 0.39151183 0.41239411 0.39151186 0.34270403 0.39151186 0.20335621 0.25
		 0.22160855 0.25 0.13652602 0.36667576 0.12419942 0.32824105 0.13621686 0.31939539
		 0.17054102 0.2941305 0.2078916 0.26663795 0.037855253 0.44098297 0.96214473 0.559017
		 1 0.440983 0.2489329 0.40305865 0.22217648 0.48648602 0.65111893 0.56614882 0.66088498
		 0.55986971 0.77839142 0.75 0.78981113 0.69203186 0.79251671 0.70270705 0.79297674
		 0.70452231 0.8045029 0.75 0.80039763 0.73380196 0.62971973 0.62474924 0.63569933
		 0.60837454 0.64650798 0.57877553 0.64717811 0.57694042 0.70268089 0.75;
	setAttr ".uvst[0].uvsp[250:499]" 0.96214473 0.559017 0.91387999 0.559017 0.9104566
		 0.548343 0.89306861 0.49412647 0.92003983 0.4941265 0.93068659 0.46092945 0.90089363
		 0.75 0.21690877 0.50291097 0.25845706 0.5823195 0.20824596 0.5903011 0.25946379 0.75
		 0.3622264 0.58957231 0.37250623 0.58957231 0.77839142 0.75 0.74690139 0.65181297
		 0.7640062 0.66440338 0.79785335 0.68931711 0.73417097 0.65181297 0.70268089 0.75
		 0.64142984 0.559017 0.72387183 0.61969995 0.67291987 0.46082997 0.70774645 0.56942028
		 0.58017874 0.36803401 0.66262072 0.42871693 0.66525328 0.43692535 0.66566992 0.43822443
		 0.45908707 0.45789561 0.44164634 0.440983 0.44835922 0.4459241 0.64142984 0.32294902
		 0.74053615 0.25 0.69882965 0.38004231 0.68216527 0.39230841 0.67821974 0.40461087
		 0.67560834 0.41275319 0.67291987 0.42113605 0.80801874 0.29967174 0.80195886 0.30413222
		 0.78558689 0.31618309 0.3295528 0.39151186 0.14382741 0.36610121 0.066854887 0.3721588
		 0.08341901 0.30941892 0.096972838 0.31939542 0.11659486 0.33383855 0.099106349 0.63196599
		 0 0.559017 0.77839142 0.75 0.9387489 0.63196599 0.94909966 0.40351689 1 0.440983
		 0.099106349 0.63196605 0 0.559017 0.067398615 0.53310019 0.16035745 0.67705101 0.19492896
		 0.59241802 0.64015949 0.70585012 0.66665953 0.71170115 0.70268089 0.75 0.2993747
		 0.58107758 0.29349515 0.57674986 0.69675839 0.71834683 0.16035745 0.67705101 0.33657089
		 0.60845649 0.31691542 0.59398878 0.84803611 0.69873679 0.81065071 0.69873685 0.58017874
		 0.75 0.51892757 0.559017 0.45280212 0.4491944 0.45737624 0.45256126 0.29731905 0.25
		 0.41982123 0.25 0.4576765 0.36803398 0.13819554 0.25 0.22160855 0.25 0.20880871 0.28991038
		 0.20811227 0.28959763 0.19594695 0.28413475 0.14126833 0.259581 0.32268813 0.39773819
		 0.30853802 0.37096119 0.32468504 0.39151183 0.50480974 0.51499724 0.58017874 0.36803401
		 0.51980805 0.51192951 0.15608773 0.38580194 0.66292405 0.48265707 0.061251096 0.36803401
		 0.080693282 0.30741256 0.90089363 0.75 0.037855253 0.44098297 0.054060549 0.49151167
		 0.094667807 0.542642 0.062395543 0.53134954 0.18961465 0.58582598 0.58017874 0.75
		 0.88012588 0.74999994 0.88139927 0.69873679 0.89258242 0.69873673 0.88955933 0.71117783
		 0.6006639 0.69712973 0.59476906 0.70450687 0.71176958 0.72166121 0.22368021 0.57776284
		 0.35857016 0.67705101 0.25946379 0.75 0.21319938 0.60574597 0.54232347 0.63196599
		 0.48107234 0.440983 0.35857016 0.440983 0.25946382 0.36803401 0.23871274 0.3833082
		 0.23779921 0.37713987 0.22602558 0.29764166 0.58017874 0.36803401 0.57268465 0.39140078
		 0.57223862 0.39103511 0.56121105 0.3819955 0.58047664 0.39778811 0.64918333 0.4188261
		 0.61549866 0.4264968 0.27588743 0.3801229 0.48107234 0.44098297 0.46060103 0.50481337
		 0.15883881 0.39022264 0.67928505 0.44098303 0.04478192 0.440983 0.043712117 0.44205034
		 0.048961114 0.46713844 0.059911553 0.51947707 0.83964252 0.559017 0.80499953 0.66703504
		 0.77130675 0.62210935 0.7651251 0.61386681 0.11945502 0.55131531 0.17570272 0.57558584
		 0.14876987 0.55640066 0.78662592 0.67840397 0.79791361 0.68912923 0.77839142 0.75
		 0.76930273 0.72166121 0.77897137 0.71845418 0.25946379 0.75 0.16035745 0.67705101
		 0.35857019 0.67705101 0.57459694 0.72713459 0.57637429 0.72752708 0.17715891 0.68941802
		 0.17958522 0.68903232 0.18215835 0.68862331 0.19145736 0.66379559 0.43073452 0.59793806
		 0.41982123 0.63196599 0.35857016 0.440983 0.43302494 0.44098297 0.41401422 0.4773404
		 0.39429319 0.51505619 0.40081286 0.52988446 0.4105452 0.55201966 0.2307013 0.559017
		 0.32071489 0.559017 0.41982123 0.63196599 0.26160237 0.51550615 0.29139051 0.47356242
		 0.29731905 0.25 0.38845354 0.31708118 0.38545758 0.32053328 0.41880536 0.39664578
		 0.41982123 0.25 0.42706621 0.27259016 0.66778719 0.40513235 0.64142984 0.32294902
		 0.70387095 0.38842893 0.25946382 0.36803401 0.41458827 0.39974988 0.41982123 0.25
		 0.4576765 0.36803398 0.45068097 0.50252813 0.17058487 0.39193335 0.74053615 0.25
		 0.64142984 0.32294902 0.6653614 0.4843975 0.044514306 0.44588453 0.69338953 0.52077115
		 0.80178732 0.44098303 0.72061884 0.55610836 0.75186133 0.5966537 0.9387489 0.63196599
		 0.83562565 0.70787168 0.14502625 0.56026292 0.15822923 0.54664147 0.16035745 0.67705101
		 0.17343998 0.63625926 0.17939954 0.64194053 0.19967839 0.66127259 0.19102441 0.68694353
		 0.80123085 0.69228107 0.90089357 0.75 0.1982127 0.559017 0.572712 0.72671849 0.43936941
		 0.61757725 0.32071489 0.559017 0.25946382 0.36803401 0.74053615 0.25 0.26288348 0.37869662
		 0.24729995 0.37698746 0.42781234 0.440983 0.43656102 0.44707465 0.34101883 0.3862575
		 0.43501452 0.49891925 0.16318356 0.39720404 0.17771736 0.38685417 0.29731905 0.25
		 0.83964252 0.32294902 0.66964489 0.48995644 0.96214473 0.559017 0.90089363 0.36803398
		 0.90089363 0.75 0.86722064 0.75 0.1875995 0.69710302 0 0.559017 0.13335685 0.60675532
		 0.099106349 0.63196599 0.84968722 0.66993845 0.099106349 0.63196599 0.037855253 0.44098297
		 0.099106349 0.25 0.22160855 0.25 0.71779418 0.3936902 0.24706176 0.37686345 0.80178732
		 0.44098303 0.90089363 0.36803398 0.86270952 0.48709342 0.85744208 0.48541036 0.81812078
		 0.47284627 0.8129949 0.47592878 0.78536373 0.49219206 0.79205716 0.50070524 0.21510595
		 0.36022896 0.7789135 0.48398814 0.3311637 0.38445008 0.099106349 0.25 0.22160856
		 0.25 0.18959719 0.34981248 0.17333534 0.34492248 0.14648367 0.39772412 1 0.440983
		 0.1302529 0.50899398;
	setAttr ".uvst[0].uvsp[500:525]" 0.88339758 0.65439498 0 0.559017 0.16035745
		 0.440983 0.83964252 0.32294902 0.73447949 0.39999506 0.73455811 0.40029827 1 0.44098297
		 0.74510121 0.44098303 0.26537427 0.37238446 0.061251096 0.36803401 0.25677514 0.37001309
		 0.90386862 0.559017 0.90343767 0.54790854 0.96214473 0.559017 0.89160252 0.5972631
		 0.9387489 0.63196599 0.88596505 0.63651812 0.037855253 0.44098297 0.12809353 0.440983
		 0.89787263 0.49832892 0.061251096 0.36803401 0.25946382 0.36803401 0.13425538 0.4217701
		 0.90165794 0.50201976 0.90005296 0.5004549 0.26042101 0.3710185;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 238 ".pt";
	setAttr ".pt[0:165]" -type "float3"  0 -9.2692194 0 0 -9.0125408 0 0 -8.4998646 
		0 0 -7.3851614 0 0 -9.1923704 0 0 -9.6501284 0 0 -9.7103586 0 0 -8.3111773 0 0 -8.744873 
		0 0 -8.4734249 0 0 -8.0150852 0 0 -7.4418898 0 0 -7.879972 0 0 -10.028055 0 0 -9.0600224 
		0 0 -8.1576605 0 0 -8.0325422 0 0 -8.0443325 0 0 -7.8685765 0 0 -7.8236156 0 0 -9.0909386 
		0 0 -9.7883062 0 0 -9.1910372 0 0 -9.3101482 0 0 -8.191247 0 0 -7.8050084 0 0 -7.8292904 
		0 0 -7.8176951 0 0 -8.1230631 0 0 -8.295269 0 0 -9.419591 0 0 -9.5148363 0 0 -9.547143 
		0 0 -7.8459063 0 0 -8.3612204 0 0 -8.3019953 0 0 -7.7908735 0 0 -7.2370286 0 0 -9.3464575 
		0 0 -9.1288376 0 0 -9.34797 0 0 -7.7722096 0 0 -6.7706513 0 0 -7.1571307 0 0 -7.5947843 
		0 0 -8.542429 0 0 -8.5797424 0 0 -8.4193964 0 0 -7.9909368 0 0 -8.5125895 0 0 -7.4977031 
		0 0 -5.0804367 0 0 -5.8130817 0 0 -7.7019281 0 0 -6.1444254 0 0 -6.0385351 0 0 -1.1799805 
		0 0 -4.2413187 0 0 -4.282299 0 0 -1.4342756 0 0 -6.5881729 0 0 -7.5791888 0 0 -6.2950573 
		0 0 -3.5752604 0 0 -2.4217517 0 0 -2.5355804 0 0 0.23092127 0 0 -3.0216696 0 0 -2.9223959 
		0 0 -7.6997862 0 0 -5.6489501 0 0 -5.5205774 0 0 -5.1546984 0 0 -4.6070976 0 0 -2.4245274 
		0 0 -2.6881907 0 0 -2.8557787 0 0 -1.3655691 0 0 2.574208 0 0 0.020763708 0 0 -1.4975476 
		0 0 0.27935401 0 0 -9.5346937 0 0 -6.6815629 0 0 -4.1884804 0 0 -4.5564814 0 0 -3.7063756 
		0 0 -3.7764018 0 0 -2.2745166 0 0 -0.97816366 0 0 -1.3359591 0 0 -1.4367514 0 0 -1.5733839 
		0 0 -1.6524159 0 0 -1.3808463 0 0 -1.6702042 0 0 2.5941477 0 0 -1.6990126 0 0 -3.3704023 
		0 0 -5.5095038 0 0 -2.8590834 0 0 -1.1350764 0 0 -3.0724633 0 0 -2.1573117 0 0 -1.3106984 
		0 0 -1.3237693 0 0 -4.3736439 0 0 -2.454947 0 0 -4.7310824 0 0 -0.21630585 0 0 -3.0098042 
		0 0 1.2780534 0 0 1.2738003 0 0 0.87174606 0 0 -0.17949042 0 0 -2.3963349 0 0 -2.8350918 
		0 0 -3.370677 0 0 -3.6725199 0 0 -4.6632276 0 0 -7.4517708 0 0 -2.9824693 0 0 -5.2142048 
		0 0 -1.9460466 0 0 -1.8264046 0 0 -1.8044837 0 0 -1.4858538 0 0 0.26659429 0 0 0.2214777 
		0 0 -0.022337701 0 0 -0.41649178 0 0 1.2910974 0 0 1.2820549 0 0 2.5061734 0 0 0.22486505 
		0 0 -2.9882174 0 0 -3.0287223 0 0 -2.8602002 0 0 -3.2327118 0 0 -3.5898259 0 0 -3.1330898 
		0 0 -4.7059588 0 0 -4.7042952 0 0 -7.4554787 0 0 -8.0616636 0 0 -1.2609429 0 0 -8.1996832 
		0 0 -4.4436183 0 0 -0.50874597 0 0 0.25858039 0 0 0.43297091 0 0 0.30425858 0 0 0.8317129 
		0 0 2.5061734 0 0 1.0962481 0 0 -1.1850637 0 0 -3.5684645 0 0 -3.5755723 0 0 -3.6511567 
		0 0 -4.4276867 0 0 -5.5864038 0 0 -6.7510376 0 0 -6.7105227 0 0 -6.3749771 0 0 -3.4412148 
		0 0 -4.6132822 0;
	setAttr ".pt[166:237]" 0 -0.66300482 0 0 1.7660692 0 0 1.3352718 0 0 0.56645972 
		0 0 0.58717597 0 0 0.78304499 0 0 -1.1850637 0 0 -3.0645161 0 0 -2.9329617 0 0 -2.9878049 
		0 0 -3.4827163 0 0 -3.7893643 0 0 -4.8774838 0 0 -7.0300393 0 0 -6.5778594 0 0 -7.8983679 
		0 0 -8.0607681 0 0 -7.2922568 0 0 -5.1652422 0 0 -3.571547 0 0 -2.5259876 0 0 -1.7475703 
		0 0 -1.9339234 0 0 -1.6420982 0 0 -0.60464728 0 0 1.3488026 0 0 1.363153 0 0 1.1893693 
		0 0 -0.16589858 0 0 -0.95891964 0 0 -0.2644529 0 0 0.45596385 0 0 1.0962481 0 0 -3.0279889 
		0 0 -5.2061677 0 0 -6.3605099 0 0 -6.4808774 0 0 -5.2205319 0 0 -7.9565439 0 0 -5.2896128 
		0 0 -1.7264746 0 0 -1.6719388 0 0 -1.2498863 0 0 -1.5586159 0 0 0.36933717 0 0 1.8345208 
		0 0 -2.1470323 0 0 -5.0772514 0 0 -5.2584705 0 0 -6.4634166 0 0 -5.5363622 0 0 -6.3512244 
		0 0 -6.5886817 0 0 -4.2856145 0 0 -2.4614866 0 0 -3.725745 0 0 -3.4486132 0 0 -5.2666149 
		0 0 -6.6519032 0 0 -5.4306488 0 0 -6.7308216 0 0 -4.433835 0 0 -4.3493667 0 0 -3.4830918 
		0 0 -2.6442158 0 0 -3.0221267 0 0 -3.3823428 0 0 -2.5366149 0 0 -4.7861915 0 0 -4.7148013 
		0 0 -4.7432466 0 0 -4.7431746 0;
	setAttr -s 238 ".vt";
	setAttr ".vt[0:165]"  68.43328094 -33.5046463 28.13996696 69.65216827 -30.3135643 30.11216354
		 69.65216827 -34.14492416 30.11216354 64.50124359 -39.47279739 21.77778816 62.65462494 -34.63828659 18.78989792
		 67.59134674 -33.062374115 26.77768135 67.42202759 -32.97343063 26.50371933 65.57134247 -37.091594696 23.50924683
		 68.43328094 -33.50464249 32.084358215 69.17978668 -33.89678192 30.87649345 61.37662506 -37.98412704 20.8577404
		 61.79037857 -39.47279739 21.77778816 62.19482803 -38.41392899 21.12337303 65.32744598 -27.64074135 23.1146183
		 66.3011322 -32.38462067 35.5342598 59.14106369 -36.80978775 20.13195801 55.0072402954 -34.63828659 18.78989792
		 54.60621643 -34.42762756 18.92009163 54.20519257 -34.63828659 18.78989792 54.0051803589 -34.63828659 18.78989792
		 51.3323555 -27.64074135 23.1146183 58.32990265 -23.31602097 25.78744125 65.32744598 -27.64074135 37.10971069
		 63.98097992 -31.16584396 39.28834152 57.1472435 -35.7624321 19.48465729 53.95497513 -34.7697258 18.8711319
		 52.87220001 -35.33850861 20.62310028 52.74298477 -35.40638351 20.83217239 50.21519852 -34.2401886 24.92222023
		 49.021881104 -33.68965149 26.85304832 58.32990265 -23.31602097 34.43688583 61.30228043 -31.097806931 39.24629211
		 62.57686996 -30.42826462 38.83249283 53.2872963 -35.1204567 19.95146179 47.0076370239 -30.3135643 30.11216354
		 48.69890976 -33.54064941 27.3756218 47.76179504 -35.3720665 28.89190865 47.0076370239 -36.84592819 30.11216354
		 51.3323555 -27.64074135 37.10971069 58.93667221 -32.34046555 40.014297485 59.98065948 -31.79205513 39.67536163
		 49.64598846 -37.22086716 34.38111115 48.092765808 -38.96661377 31.8679409 48.092765808 -38.036777496 31.8679409
		 49.10221481 -37.50651169 33.50126648 54.0051803589 -34.63828659 41.43442917 54.56237793 -34.63828659 41.43442917
		 53.8653183 -35.0044517517 41.20812607 50.73553848 -36.64852524 36.14403915 54.26118088 -34.79650497 41.33664703
		 46.2455101 -32.40877151 26.43850708 41.92078781 -40.86062241 33.43605042 47.12362289 -40.86062241 33.43605042
		 52.74298477 -35.40638351 20.27087784 46.2455101 -32.40877151 17.7890625 39.24796295 -35.63709259 29.11133003
		 46.2455101 -49.3124733 26.43850708 48.84692764 -44.22849655 30.647686 48.80356979 -44.14376068 30.71784019
		 46.45944214 -49.35993576 34.51071548 46.45944214 -38.89476395 34.51071548 52.74298477 -35.40638351 19.74355316
		 52.74298477 -35.40638351 15.30725002 34.92324448 -37.63230133 22.11378479 39.24796295 -46.084152222 29.11133003
		 50.45468903 -47.37056732 28.04627037 52.61575317 -52.59384918 24.54959869 52.53074265 -46.41278076 24.68715096
		 52.61575317 -46.60194778 24.54959869 52.61575317 -35.66085052 44.47183228 54.60621643 -34.42762756 12.45370293
		 50.12098694 -36.78372192 14.16690826 48.83089066 -37.46141052 13.60583019 39.24796295 -35.63709259 15.11623955
		 34.92324448 -44.088943481 22.11378479 51.62558365 -46.83037567 24.38350105 52.08348465 -46.61912155 24.53711128
		 53.96212006 -49.59790039 22.37112999 62.57686996 -57.82643509 28.35440445 54.60621643 -52.23273468 20.45524406
		 55.79029846 -49.59790039 22.37112999 52.61575317 -52.59384918 44.47183228 62.57686996 -30.42826462 40.66702652
		 65.080368042 -39.92970657 16.4544735 48.13283539 -37.8280983 9.98109245 46.51509094 -38.67790222 12.59865952
		 41.92078781 -40.86062241 10.79151821 47.63196564 -40.86062241 10.79151821 39.24796295 -46.084152222 15.11623955
		 46.2455101 -49.3124733 17.7890625 47.73704529 -48.62435532 18.358778 47.73704529 -48.62435532 22.28744888
		 48.13283539 -48.4417572 22.92785454 48.35422897 -48.33961487 23.2860775 48.13283539 -48.83226395 22.92785454
		 58.87900162 -49.59790039 22.37112999 62.57686996 -57.82643509 40.66702652 59.62207413 -49.59790039 22.37112999
		 56.42055893 -44.12734985 50.62814331 61.079597473 -37.8280983 9.98109245 50.60544586 -43.33018112 5.98032284
		 48.13283539 -48.83226395 9.98109245 45.99132156 -44.066947937 13.44613171 44.77637482 -46.44132996 15.41195583
		 47.73704529 -48.62435532 17.219347 47.73704529 -48.62435532 17.83145332 68.73317719 -44.12734985 18.39328766
		 61.98039627 -48.35907364 21.4703331 63.88211441 -44.12734985 18.39328766 75.0020751953 -51.29946518 35.92102051
		 65.080368042 -46.73065567 16.4544735 64.59976196 -54.78556442 42.87815857 63.21876907 -54.78556442 42.87815857
		 61.45758057 -53.86040878 43.55086899 60.40430832 -51.51665878 45.25510025 58.12952423 -46.45478439 48.93577957
		 58.60307312 -45.40103912 49.70199585 60.38324356 -44.12734985 50.62814331 61.47171783 -43.55557251 50.21238327
		 67.13848114 -40.57881927 48.047874451 72.42337036 -35.60063934 32.11543274 58.606987 -43.33018112 5.98032284
		 63.53804016 -43.36170959 18.95001221 44.52319717 -46.93611908 15.82160664 45.11504745 -47.24701691 16.079008102
		 45.21569061 -47.2998848 16.12277985 46.8390007 -48.15261078 16.82877731 54.60621643 -52.23273468 12.45370293
		 72.53798676 -52.59384918 24.54959869 74.075767517 -51.7860527 38.050563812 76.054168701 -50.74679565 33.50227737
		 68.36569214 -54.78556061 42.87815857 67.33247375 -54.78556061 42.87815857 68.60367584 -57.61425781 44.935009
		 58.12952423 -52.1121788 48.93577957 62.1302948 -43.20962143 55.40916061 58.80223846 -44.95785141 50.024253845
		 58.63028717 -45.34048462 49.7460289 59.70853424 -44.48177338 50.37042999 68.60367584 -39.8091507 52.93655014
		 59.26198196 -44.71635056 50.19985962 68.60367584 -39.8091507 47.48822021 68.20786285 -40.01707077 47.63940811
		 72.37487793 -35.57516861 32.84928894 72.88608551 -35.84370804 25.11283302 61.079597473 -48.83226395 9.98109245
		 72.53798676 -35.66085052 24.54959869 72.53798676 -43.82817841 24.54959869 76.57888794 -50.4711647 32.29597855
		 78.071601868 -52.1934967 32.7762146 72.10425568 -52.82168961 41.45015335 72.69520569 -52.51126099 41.22443008
		 70.34124756 -53.74779892 42.12356186 68.60367584 -57.61425781 52.93655014 62.1302948 -54.21378708 55.40916061
		 64.60290527 -48.71170425 59.40993118 70.79249573 -40.9589386 52.10049438 70.77534485 -40.94992828 52.055007935
		 70.47573853 -40.79254913 51.26039505 69.1291275 -40.085170746 47.68892288 68.71826935 -37.9268837 46.11955261
		 77.25105286 -32.57657242 28.90105438 74.037460327 -36.44852448 34.081565857 72.53798676 -40.14083862 24.54959869
		 73.75460052 -45.31326294 26.51812363 72.31477356 -43.55570984 24.1884346;
	setAttr ".vt[166:237]" 77.29602051 -50.094451904 32.24825287 75.40322876 -55.82926941 42.39754105
		 73.97962952 -54.79026794 42.88158035 73.0069198608 -53.064353943 41.62660217 77.41435242 -52.98600388 49.57117081
		 76.5150528 -53.45840454 47.95688629 72.60444641 -48.71170425 59.40993118 75.077056885 -43.20962143 55.40916061
		 75.91474915 -43.6496582 54.053752899 75.57645416 -43.47195435 53.9940834 71.21650696 -41.18167114 53.22505951
		 71.2268219 -39.56246185 52.85121155 71.90746307 -37.063896179 45.49203873 75.075546265 -33.66029739 33.85458755
		 74.41053009 -36.64449692 34.358078 74.28870392 -34.96052933 24.23640442 72.81511688 -35.90106201 24.99800682
		 72.67455292 -38.051589966 24.77056313 72.38129425 -42.53800964 24.29606819 75.74549866 -44.32149887 21.98492813
		 74.86048889 -46.6631813 28.30747986 76.25173187 -47.84488297 30.55856323 76.88439941 -47.3119545 31.58224297
		 78.099395752 -47.83042145 31.76885414 88.21864319 -50.11155701 32.85205078 73.91750336 -54.82290268 43.024406433
		 73.85161591 -54.85751343 43.17588425 74.64950562 -54.4383812 44.60813522 81.28665161 -51.16973495 56.087654114
		 75.13969421 -49.25711823 55.30781555 76.55185699 -50.93204117 53.022880554 78.016792297 -52.66954422 50.65257263
		 75.077056885 -54.21378708 55.40916061 81.37386322 -37.48052216 52.92704773 72.53798676 -35.66085052 44.47183228
		 76.75492859 -35.13913727 35.27765274 74.55490875 -36.72033691 35.53866959 82.45828247 -35.30823517 29.11276245
		 72.79363251 -36.22972488 24.9632473 77.66510773 -39.16555786 21.56520081 79.60820007 -47.72294235 25.25809097
		 76.0013427734 -48.055797577 30.15343094 77.43269348 -48.80666733 30.21162415 78.45645905 -47.98278809 31.82369614
		 91.82149506 -52.46062088 42.52024841 83.90113068 -55.99436188 48.41968536 87.59117889 -44.65421295 54.92728043
		 72.53798676 -36.60622406 44.47183228 73.29358673 -36.057765961 43.2492485 76.31838989 -35.10806274 35.013355255
		 79.94689941 -36.5592804 34.83108139 74.99970245 -36.95399094 34.79476547 74.12625885 -36.49517059 36.25555038
		 82.71418762 -39.38045502 24.5789566 81.88684082 -45.67957306 31.47950745 91.90869904 -38.77140808 39.35964584
		 84.042236328 -33.84474945 43.30572128 73.2831192 -36.052268982 43.22531128 75.54433441 -33.67965698 37.28357697
		 80.37448883 -36.74951935 34.77125931 71.87930298 -35.31484222 40.013454437 83.47379303 -39.78053665 31.042758942
		 83.46128845 -40.15414047 30.288311 84.019218445 -42.84970093 30.94225311 83.91508484 -44.66920853 26.86128616
		 84.2733078 -44.077262878 31.2400589 88.27254486 -41.65115738 30.89869308 94.10207367 -45.45202255 46.54216385
		 83.22891998 -38.019481659 34.37191391 83.52545929 -38.2371788 34.1593895 83.50102997 -38.080223083 34.19713974
		 83.39972687 -38.14487839 34.24949646;
	setAttr -s 399 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 0 2 0 0 3 4 0 0 5 0 5 6 0 6 7 0 7 3 0 1 8 1
		 8 9 0 9 2 0 10 4 1 3 11 0 11 12 0 12 10 0 4 13 0 13 1 0 1 14 1 14 8 0 15 4 1 10 15 0
		 4 16 0 16 17 0 17 18 0 18 19 0 19 20 0 20 21 0 21 13 0 22 1 0 22 23 0 23 14 0 15 24 0
		 24 16 0 25 19 0 18 25 0 19 26 1 26 27 0 27 28 0 28 29 0 29 20 1 30 21 0 22 30 0 30 31 1
		 31 32 0 32 23 0 25 33 0 33 26 0 34 20 0 29 35 0 35 36 0 36 37 0 37 34 0 38 30 0 38 39 1
		 39 40 0 40 31 0 41 34 1 37 42 0 42 43 0 43 44 0 44 41 0 34 38 0 38 45 0 45 46 0 46 39 0
		 47 45 0 41 48 0 48 47 0 45 49 1 49 46 0 47 49 0 35 50 0 50 36 1 28 50 1 51 52 0 52 42 0
		 27 53 0 53 54 1 54 50 0 50 55 0 55 51 0 56 57 1 57 58 0 58 52 0 58 59 1 59 60 0 60 43 0
		 33 61 1 61 53 0 62 54 0 61 62 0 63 55 0 64 51 0 64 56 0 56 65 0 65 57 0 66 59 0 65 67 0
		 67 68 0 68 66 1 69 60 0 60 44 1 17 70 0 70 71 1 71 62 0 72 54 1 71 72 0 54 73 0 73 63 0
		 63 74 0 74 64 0 56 75 1 75 76 0 76 67 0 77 66 0 68 77 0 66 78 0 76 79 1 79 80 1 80 77 0
		 59 81 0 82 40 1 48 60 1 69 82 0 24 83 1 70 84 0 84 85 0 85 72 0 85 87 0 87 86 0 86 73 0
		 88 74 0 89 56 0 89 90 1 90 91 0 91 92 0 92 93 0 93 75 0 94 79 0 93 94 0 95 78 1 80 95 0
		 78 96 0 79 97 0 97 95 0 96 81 0 98 69 0 81 98 0 82 32 0 99 70 0 83 99 0 12 83 0 100 84 0
		 101 102 1 102 87 0 103 86 1 102 103 0 86 88 0 88 89 0 89 104 0 104 105 0 105 90 0
		 94 91 0 105 79 1 94 92 1 97 107 0;
	setAttr ".ed[166:331]" 107 108 0 108 106 0 109 96 1 110 107 0 96 111 1 111 112 0
		 112 113 0 113 114 0 114 81 1 114 115 0 115 116 0 116 98 1 98 117 0 117 118 0 118 119 0
		 119 82 1 120 9 1 83 110 0 99 121 0 11 122 0 122 83 1 100 101 0 121 100 0 101 123 0
		 123 103 0 123 124 0 124 125 0 125 89 1 89 126 1 126 104 0 126 125 0 124 127 1 127 79 0
		 108 122 0 7 106 1 128 78 0 106 128 0 109 129 0 78 130 1 130 109 0 96 131 0 131 132 0
		 132 111 0 133 112 0 132 133 1 134 113 0 134 115 0 135 136 0 136 137 0 137 116 0 137 98 1
		 98 138 1 138 117 0 135 139 0 139 118 1 138 140 0 140 136 0 139 141 0 141 142 0 142 119 0
		 142 82 1 143 120 0 144 5 1 120 144 0 110 145 0 145 121 0 127 101 0 6 146 0 146 106 0
		 147 128 1 150 96 1 129 151 0 151 150 0 148 130 0 127 145 0 150 152 0 152 131 0 152 133 1
		 133 153 0 134 154 0 140 98 1 135 155 0 139 156 1 156 157 0 157 158 0 158 159 0 159 141 0
		 159 160 0 162 143 0 144 146 0 146 163 1 147 164 0 165 147 0 166 148 0 128 166 0 167 129 1
		 149 167 0 168 133 0 151 169 0 169 168 0 167 169 1 148 149 0 170 153 1 133 171 1 171 170 0
		 153 154 0 154 155 0 155 172 0 139 173 0 173 174 0 174 175 0 175 176 0 176 156 0 177 157 1
		 176 177 0 177 158 1 177 160 0 160 178 0 179 161 0 143 179 0 162 179 1 180 162 0 161 181 0
		 144 182 0 183 163 0 163 184 0 185 164 1 165 185 0 164 186 0 184 165 0 188 189 0 189 149 1
		 166 188 0 149 190 0 167 191 1 191 168 0 191 192 0 192 193 0 193 171 0 193 167 1 194 195 0
		 195 196 0 196 197 0 197 170 0 197 198 0 198 153 0 198 172 0 172 173 0 198 196 1 195 174 0
		 199 175 1 199 177 0 200 82 0 178 200 0 179 201 0 180 179 1 161 203 0 181 182 0 204 146 1
		 182 204 0 183 205 1 204 183 0 205 184 1 185 206 0 206 186 1 186 207 0;
	setAttr ".ed[332:398]" 187 188 0 207 187 0 208 209 0 209 189 0 187 208 1 190 210 0
		 167 192 0 167 211 0 211 194 0 212 199 0 194 212 0 213 200 1 178 213 0 200 214 0 215 201 0
		 201 216 0 180 217 0 202 217 0 82 218 1 218 202 0 216 203 1 203 219 0 181 205 0 205 185 0
		 206 208 0 208 207 0 209 220 0 210 211 0 222 199 0 213 214 0 214 223 0 224 222 0 222 225 1
		 225 216 0 215 224 0 217 215 0 226 218 0 224 202 1 203 227 1 227 228 0 228 229 0 229 219 1
		 219 205 0 230 206 0 219 230 0 220 231 0 232 221 0 190 232 0 221 233 0 233 210 0 233 212 0
		 222 223 1 223 226 0 222 221 0 226 224 0 225 234 0 235 227 0 232 228 0 230 220 1 231 229 0
		 230 231 0 236 203 0 234 236 0 236 235 0 237 234 0 237 236 1 237 235 0;
	setAttr -s 163 -ch 798 ".fc[0:162]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 8 -1 4 5 6 7 3 15 16
		mu 0 8 1 0 5 6 7 3 4 15
		f 4 -2 8 9 10
		mu 0 4 2 1 8 9
		f 5 11 -4 12 13 14
		mu 0 5 10 11 12 13 14
		f 3 -9 17 18
		mu 0 3 8 1 16
		f 3 19 -12 20
		mu 0 3 17 11 10
		f 8 21 22 23 24 25 26 27 -16
		mu 0 8 18 19 20 21 22 23 24 25
		f 5 28 -17 -28 -41 -42
		mu 0 5 27 1 26 39 49
		f 4 -18 -29 29 30
		mu 0 4 16 1 27 28
		f 4 -22 -20 31 32
		mu 0 4 29 11 17 30
		f 3 33 -25 34
		mu 0 3 31 22 32
		f 6 -26 35 36 37 38 39
		mu 0 6 23 22 33 34 35 36
		f 5 52 40 -27 -48 61
		mu 0 5 48 37 38 23 44
		f 5 41 42 43 44 -30
		mu 0 5 27 40 41 42 28
		f 4 -34 45 46 -36
		mu 0 4 22 31 43 33
		f 6 47 -40 48 49 50 51
		mu 0 6 44 23 36 45 46 47
		f 5 -53 53 54 55 -43
		mu 0 5 40 50 51 52 41
		f 6 56 -52 57 58 59 60
		mu 0 6 53 44 47 54 55 56
		f 4 -54 62 63 64
		mu 0 4 51 50 57 58
		f 6 -57 66 67 65 -63 -62
		mu 0 6 44 53 61 59 60 62
		f 3 -64 68 69
		mu 0 3 63 60 64
		f 3 -69 -66 70
		mu 0 3 64 60 59
		f 3 71 72 -50
		mu 0 3 65 66 67
		f 4 73 -72 -49 -39
		mu 0 4 68 69 70 71
		f 7 74 75 -58 -51 -73 79 80
		mu 0 7 72 73 74 75 67 66 79
		f 5 76 77 78 -74 -38
		mu 0 5 76 77 78 69 68
		f 6 81 82 83 -75 -93 93
		mu 0 6 81 82 83 84 80 103
		f 6 -76 -84 84 85 86 -59
		mu 0 6 85 86 87 88 89 90
		f 5 87 88 -77 -37 -47
		mu 0 5 91 92 93 94 95
		f 4 89 -78 -89 90
		mu 0 4 96 78 77 97
		f 5 -79 107 108 91 -80
		mu 0 5 98 99 122 100 101
		f 3 -82 94 95
		mu 0 3 82 81 104
		f 7 96 -85 -83 -96 97 98 99
		mu 0 7 105 88 87 106 107 108 109
		f 5 100 -86 120 147 146
		mu 0 5 110 89 88 139 177
		f 3 -87 101 -60
		mu 0 3 90 89 111
		f 8 102 103 104 -91 -88 -46 -35 -24
		mu 0 8 112 113 114 115 92 91 116 117
		f 4 105 -90 -105 106
		mu 0 4 118 119 120 121
		f 5 -92 109 110 92 -81
		mu 0 5 102 100 123 103 80
		f 5 132 -94 -111 -132 158
		mu 0 5 161 125 124 123 160
		f 5 -95 111 112 113 -98
		mu 0 5 126 127 128 129 130
		f 3 114 -100 115
		mu 0 3 131 105 109
		f 5 -97 116 142 145 -121
		mu 0 5 88 105 132 173 176
		f 6 117 118 119 -116 -99 -114
		mu 0 6 133 134 135 136 137 138
		f 9 121 -55 -65 -70 -71 -68 122 -101 123
		mu 0 9 140 141 142 143 144 145 146 89 147
		f 4 -102 -123 -67 -61
		mu 0 4 111 89 146 148
		f 6 -103 -23 -33 124 150 149
		mu 0 6 149 150 151 152 153 183
		f 5 -104 125 126 127 -107
		mu 0 5 114 113 154 155 156
		f 6 -106 -128 128 129 130 -108
		mu 0 6 119 118 158 159 157 122
		f 5 -109 -131 157 131 -110
		mu 0 5 100 122 157 160 123
		f 7 -133 133 134 135 136 137 -112
		mu 0 7 127 162 163 164 165 166 128
		f 5 138 -118 -113 -138 139
		mu 0 5 167 134 133 168 169
		f 5 140 -117 -115 -120 141
		mu 0 5 170 171 105 131 172
		f 4 -119 143 144 -142
		mu 0 4 135 134 174 175
		f 6 -124 -147 178 179 180 181
		mu 0 6 180 178 179 222 223 224
		f 4 -122 148 -44 -56
		mu 0 4 141 140 181 182
		f 5 -125 -32 -21 -15 151
		mu 0 5 153 152 184 185 186
		f 6 153 154 -129 -127 -153 187
		mu 0 6 189 190 191 155 154 188
		f 4 155 -130 -155 156
		mu 0 4 192 157 193 194
		f 4 -134 159 160 161
		mu 0 4 163 162 195 196
		f 5 162 -135 -162 163 -139
		mu 0 5 197 198 199 200 201
		f 3 -163 164 -136
		mu 0 3 202 167 203
		f 3 -165 -140 -137
		mu 0 3 203 167 169
		f 7 -141 -145 165 166 167 202 201
		mu 0 7 171 170 205 206 207 204 256
		f 4 168 -143 204 205
		mu 0 4 210 208 209 259
		f 6 169 -166 -144 -199 240 -231
		mu 0 6 213 214 211 212 260 313
		f 6 170 171 172 173 174 -146
		mu 0 6 215 216 217 218 219 139
		f 5 -175 175 176 177 -148
		mu 0 5 139 219 220 221 177
		f 13 287 254 227 182 -10 -19 -31 -45 -149 350 351 349 -349
		mu 0 13 376 337 291 227 228 229 230 231 225 226 463 430 462
		f 5 -151 183 230 231 -185
		mu 0 5 232 153 213 296 297
		f 5 -150 184 188 152 -126
		mu 0 5 187 234 233 188 154
		f 4 185 186 -152 -14
		mu 0 4 235 236 153 186
		f 4 -154 189 190 -157
		mu 0 4 190 189 237 238
		f 7 -159 -158 -156 -191 191 192 193
		mu 0 7 239 160 157 192 240 241 242
		f 3 -160 194 195
		mu 0 3 243 239 244
		f 7 -164 -161 -196 196 -193 197 198
		mu 0 7 201 200 245 246 247 248 249
		f 6 -168 199 -186 -13 -8 200
		mu 0 6 250 251 252 253 254 255
		f 5 -170 -184 -187 -200 -167
		mu 0 5 214 213 153 236 257
		f 5 -169 203 237 238 236
		mu 0 5 208 210 258 311 310
		f 4 -171 206 207 208
		mu 0 4 216 215 261 262
		f 4 209 -172 -209 210
		mu 0 4 263 264 265 266
		f 6 211 -173 -210 244 271 -246
		mu 0 6 269 270 267 268 318 359
		f 4 -212 212 -176 -174
		mu 0 4 270 269 271 272
		f 8 213 214 215 -177 -213 245 272 -248
		mu 0 8 273 274 275 276 271 269 319 360
		f 3 216 -178 -216
		mu 0 3 277 177 221
		f 3 -179 217 218
		mu 0 3 278 177 279
		f 7 219 220 -180 -219 221 222 -214
		mu 0 7 280 281 282 283 284 285 286
		f 5 223 224 225 -181 -221
		mu 0 5 281 287 288 289 282
		f 3 226 -182 -226
		mu 0 3 290 180 224
		f 6 228 -5 -3 -11 -183 229
		mu 0 6 292 293 294 295 228 227
		f 5 232 -188 -189 -232 -241
		mu 0 5 298 189 188 299 341
		f 4 -190 -233 -198 -192
		mu 0 4 237 189 249 248
		f 3 -195 -194 -197
		mu 0 3 244 239 242
		f 4 233 234 -201 -7
		mu 0 4 300 301 250 255
		f 5 -202 260 259 239 -205
		mu 0 5 209 305 346 306 259
		f 6 262 261 -204 -206 -240 267
		mu 0 6 309 347 307 308 312 354
		f 4 -207 -237 241 242
		mu 0 4 314 208 310 315
		f 4 243 -211 -208 -243
		mu 0 4 316 263 266 317
		f 4 246 -217 -215 -223
		mu 0 4 320 177 277 321
		f 3 -218 -247 -222
		mu 0 3 279 177 320
		f 5 -220 247 273 313 -275
		mu 0 5 322 323 324 361 362
		f 6 -224 248 249 250 251 252
		mu 0 6 325 326 327 328 329 330
		f 7 -227 -225 -253 253 283 319 318
		mu 0 7 180 290 333 331 332 373 425
		f 7 -230 -228 285 284 288 323 -290
		mu 0 7 338 336 334 374 335 377 433
		f 4 -229 255 -234 -6
		mu 0 4 293 292 339 340
		f 7 -235 256 291 295 258 235 -203
		mu 0 7 303 342 343 381 345 304 302
		f 8 -236 257 294 331 333 332 -299 -261
		mu 0 8 302 304 344 386 441 388 442 387
		f 6 263 -244 -242 -239 264 265
		mu 0 6 348 263 316 349 350 351
		f 4 -238 -262 266 -265
		mu 0 4 352 307 347 353
		f 4 268 -245 269 270
		mu 0 4 355 356 357 358
		f 6 -249 274 275 276 277 278
		mu 0 6 327 326 362 363 364 365
		f 4 279 -250 -279 280
		mu 0 4 366 367 368 369
		f 3 -280 281 -251
		mu 0 3 367 366 370
		f 4 -282 282 -254 -252
		mu 0 4 370 366 371 372
		f 3 286 -286 -255
		mu 0 3 375 374 334
		f 4 -256 289 325 324
		mu 0 4 342 378 379 434
		f 4 290 -257 -325 327
		mu 0 4 380 343 342 434
		f 4 292 -258 -259 293
		mu 0 4 382 383 384 385
		f 5 296 297 -268 -260 298
		mu 0 5 389 390 391 392 393
		f 5 -263 299 337 359 -340
		mu 0 5 396 394 395 450 453
		f 4 -267 300 301 -266
		mu 0 4 353 347 397 398
		f 6 -270 -264 -302 302 303 304
		mu 0 6 358 357 399 400 401 402
		f 9 306 307 308 309 -271 -305 305 339 340
		mu 0 9 405 406 407 408 409 410 403 404 453
		f 4 310 311 -269 -310
		mu 0 4 411 412 356 355
		f 5 -274 -273 -272 -312 312
		mu 0 5 361 360 319 413 412
		f 6 314 -308 315 -276 -314 -313
		mu 0 6 412 414 415 363 362 361
		f 6 316 -277 -316 -307 342 341
		mu 0 6 416 417 418 419 405 454
		f 4 -317 317 -281 -278
		mu 0 4 417 416 420 421
		f 5 -285 320 347 352 -323
		mu 0 5 427 428 426 460 464
		f 3 321 -287 -288
		mu 0 3 429 374 375
		f 5 -289 322 353 374 -355
		mu 0 5 377 432 431 465 436
		f 4 -291 326 328 -292
		mu 0 4 437 435 436 438
		f 4 -294 -296 -329 355
		mu 0 4 382 385 438 436
		f 4 -293 329 330 -295
		mu 0 4 383 382 439 440
		f 5 334 335 -297 -333 336
		mu 0 5 443 444 445 446 447
		f 9 -300 -298 -336 358 377 391 -373 -390 -380
		mu 0 9 449 391 390 448 475 500 516 514 515
		f 3 -301 338 -303
		mu 0 3 397 347 451
		f 3 -339 -306 -304
		mu 0 3 452 404 403
		f 3 -315 -311 -309
		mu 0 3 414 412 411
		f 3 343 -320 344
		mu 0 3 456 425 373
		f 5 -322 348 367 346 -321
		mu 0 5 374 429 461 459 458
		f 5 -326 -324 354 -327 -328
		mu 0 5 466 433 377 436 435
		f 5 -330 -356 -375 376 375
		mu 0 5 467 382 436 468 498
		f 4 -331 356 357 -332
		mu 0 4 440 439 469 470
		f 3 -358 -337 -334
		mu 0 3 471 443 447
		f 5 -359 -335 -357 -376 390
		mu 0 5 499 473 474 472 517
		f 5 -338 379 378 380 381
		mu 0 5 450 476 501 477 502
		f 5 360 -342 -383 -381 -386
		mu 0 5 478 479 454 502 520
		f 3 -346 -344 361
		mu 0 3 457 425 456
		f 6 363 364 365 -348 -347 366
		mu 0 6 482 483 484 485 486 487
		f 4 -368 -350 -370 -367
		mu 0 4 487 489 488 482
		f 6 368 -351 -319 345 362 384
		mu 0 6 490 463 226 425 457 481
		f 4 369 -352 -369 386
		mu 0 4 482 488 491 507
		f 5 -353 -366 387 394 393
		mu 0 5 464 460 492 508 521
		f 5 -354 370 371 372 373
		mu 0 5 493 494 495 496 497
		f 5 -360 -382 382 -343 -341
		mu 0 5 453 450 502 454 405
		f 8 -361 383 -363 -362 -345 -284 -283 -318
		mu 0 8 455 503 505 504 480 424 422 423
		f 4 -384 -364 -387 -385
		mu 0 4 505 503 482 507
		f 4 -377 -374 -392 -393
		mu 0 4 509 493 497 522
		f 4 388 -371 -394 395
		mu 0 4 510 495 494 521
		f 3 -391 392 -378
		mu 0 3 499 517 518
		f 9 396 -388 -365 385 -379 389 -372 -389 -399
		mu 0 9 524 519 484 483 506 513 511 512 523
		f 3 397 -395 -397
		mu 0 3 525 521 508
		f 3 -396 -398 398
		mu 0 3 510 521 525;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface34";
	setAttr ".t" -type "double3" 70.962509155273438 29.830975560966948 -29.896922111511223 ;
	setAttr ".r" -type "double3" 0 34.858831331021378 0 ;
	setAttr ".rp" -type "double3" -70.962509155273438 -45.626344680786133 29.89692211151123 ;
	setAttr ".rpt" -type "double3" -3.5527136788005009e-015 0 -7.1054273576010019e-015 ;
	setAttr ".sp" -type "double3" -70.962509155273438 -45.626344680786133 29.89692211151123 ;
createNode mesh -n "polySurface34Shape" -p "|polySurface34";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.83964252471923828 0.55901700258255005 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 197 ".pt";
	setAttr ".pt[0:165]" -type "float3"  0 2.5190229 0 0 2.098551 0 0 3.989429 
		0 0 5.3352199 0 0 1.8626878 0 0 4.0938888 0 0 6.4192567 0 0 2.4585664 0 0 2.7799723 
		0 0 4.1996102 0 0 3.9308679 0 0 3.4987822 0 0 3.2820468 0 0 3.0895216 0 0 1.9732645 
		0 0 2.7612588 0 0 5.4129753 0 0 5.0869536 0 0 6.1303768 0 0 5.3790317 0 0 5.3472371 
		0 0 3.8186188 0 0 3.5048878 0 0 2.931761 0 0 2.9842653 0 0 2.9896653 0 0 3.0165102 
		0 0 2.9456477 0 0 2.8530695 0 0 2.8172123 0 0 2.9407678 0 0 3.2437215 0 0 3.3238516 
		0 0 2.8855774 0 0 4.6683831 0 0 3.9381711 0 0 3.9391468 0 0 6.1546173 0 0 6.2379942 
		0 0 3.946444 0 0 3.9381711 0 0 4.0425234 0 0 4.0425234 0 0 3.9635849 0 0 2.9174011 
		0 0 2.834419 0 0 2.9189026 0 0 3.4285598 0 0 3.2820468 0 0 3.2749949 0 0 3.4744775 
		0 0 5.301929 0 0 5.3564086 0 0 6.1087146 0 0 3.946444 0 0 3.4987822 0 0 3.7800598 
		0 0 5.6850328 0 0 5.9348178 0 0 5.2033453 0 0 5.310915 0 0 5.2751541 0 0 5.223618 
		0 0 5.2586427 0 0 5.0132632 0 0 4.5265436 0 0 6.4192567 0 0 6.1507235 0 0 6.142334 
		0 0 5.0203347 0 0 5.5291896 0 0 5.0289922 0 0 5.223618 0 0 5.2416873 0 0 4.8428802 
		0 0 4.9619336 0 0 4.9773932 0 0 4.0790734 0 0 4.0790734 0 0 4.0790734 0 0 4.2613444 
		0 0 5.3352199 0 0 6.1546173 0 0 6.2314525 0 0 6.4192567 0 0 5.6164312 0 0 5.5898776 
		0 0 4.2218685 0 0 4.2218685 0 0 4.5906968 0 0 5.6066208 0 0 5.6164312 0 0 5.6454511 
		0 0 3.3711748 0 0 3.8302135 0 0 3.9308679 0 0 3.590565 0 0 3.5243187 0 0 1.9732645 
		0 0 3.989429 0 0 5.4754901 0 0 5.5424304 0 0 5.8018785 0 0 5.9600897 0 0 5.2033453 
		0 0 4.39291 0 0 4.2206001 0 0 3.4042208 0 0 4.0318809 0 0 5.1060357 0 0 5.3966675 
		0 0 4.5654106 0 0 2.8692605 0 0 2.4585664 0 0 3.434829 0 0 3.04896 0 0 2.7422163 
		0 0 3.3467069 0 0 3.0724797 0 0 2.5190229 0 0 5.3966675 0 0 6.4192567 0 0 2.8334527 
		0 0 4.1378074 0 0 4.1773548 0 0 4.1996102 0 0 5.2033453 0 0 5.9348178 0 0 4.1495681 
		0 0 6.4192567 0 0 3.0840559 0 0 2.9694057 0 0 3.3029151 0 0 3.7587602 0 0 3.629015 
		0 0 3.7007554 0 0 5.9348178 0 0 5.4129753 0 0 5.4529223 0 0 4.901804 0 0 1.9732645 
		0 0 2.8644228 0 0 3.0336466 0 0 3.0419936 0 0 2.6735826 0 0 3.3957055 0 0 3.3117588 
		0 0 3.060725 0 0 2.9694057 0 0 3.7007554 0 0 3.7693357 0 0 3.4519522 0 0 3.6007812 
		0 0 3.6898537 0 0 3.5736272 0 0 5.2033453 0 0 2.3209326 0 0 3.9381711 0 0 3.8099267 
		0 0 3.3957055 0 0 5.0869536 0 0 2.9694057 0 0 4.8275843 0 0 3.633225 0 0 3.4744775 
		0 0 3.9701631 0;
	setAttr ".pt[166:196]" 0 3.9381711 0 0 3.8738697 0 0 3.5836263 0 0 3.5685806 
		0 0 3.5836263 0 0 2.5364888 0 0 1.3808129 0 0 2.1139278 0 0 3.8302135 0 0 4.1495681 
		0 0 4.4565425 0 0 4.4565425 0 0 4.4366627 0 0 1.9994423 0 0 2.6753888 0 0 3.8913291 
		0 0 2.3605089 0 0 3.9238391 0 0 2.4227819 0 0 1.1010333 0 0 1.9994423 0 0 3.9570122 
		0 0 4.1378074 0 0 0.49907824 0 0 1.0261014 0 0 0.34394133 0 0 1.7994341 0 0 2.5642004 
		0 0 0.6866284 0 0 3.2859266 0 0 1.0657948 0;
createNode transform -n "polySurface28";
	setAttr ".t" -type "double3" 30.266369819641113 36.404782323662275 -55.512367248535163 ;
	setAttr ".r" -type "double3" 0 -29.975927325639717 0 ;
	setAttr ".rp" -type "double3" -30.266369819641113 -52.200151443481445 55.512367248535156 ;
	setAttr ".rpt" -type "double3" 0 0 1.0658141036401503e-014 ;
	setAttr ".sp" -type "double3" -30.266369819641113 -52.200151443481445 55.512367248535156 ;
createNode mesh -n "polySurface28Shape" -p "|polySurface28";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface31";
	setAttr ".t" -type "double3" -6.9644126892089799 44.437510518852704 -93.0621337890625 ;
	setAttr ".r" -type "double3" 0 -34.017305949171202 0 ;
	setAttr ".rp" -type "double3" 6.9644126892089844 -60.232879638671875 93.0621337890625 ;
	setAttr ".rpt" -type "double3" -7.1054273576010019e-015 0 -3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" 6.9644126892089844 -60.232879638671875 93.0621337890625 ;
createNode mesh -n "polySurface31Shape" -p "|polySurface31";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface2";
	setAttr ".t" -type "double3" -23.890811920166016 20.041510610405425 -72.399696350097656 ;
	setAttr ".r" -type "double3" 0 32.613868194909834 0 ;
	setAttr ".rp" -type "double3" 23.890811920166016 -35.836879730224609 72.399696350097656 ;
	setAttr ".sp" -type "double3" 23.890811920166016 -35.836879730224609 72.399696350097656 ;
createNode mesh -n "polySurface2Shape" -p "|polySurface2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface20";
	setAttr ".t" -type "double3" -30.829618453979485 23.114821462456206 -124.07275009155271 ;
	setAttr ".r" -type "double3" 0 28.768012108998374 0 ;
	setAttr ".rp" -type "double3" 30.829618453979492 -38.910190582275391 124.07275009155273 ;
	setAttr ".rpt" -type "double3" 0 0 -2.1316282072803006e-014 ;
	setAttr ".sp" -type "double3" 30.829618453979492 -38.910190582275391 124.07275009155273 ;
createNode mesh -n "polySurface20Shape" -p "|polySurface20";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyCylinder -n "polyCylinder1";
	setAttr ".sa" 8;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk[0:17]" -type "float3"  3.46574068 -17.26131248 -3.46574068
		 -2.4671232e-007 -17.26131248 -4.90129709 -3.46574068 -17.26131248 -3.46574068 -4.90129709
		 -17.26131248 -1.2335616e-007 -3.46574068 -17.26131248 3.46574068 -2.4671232e-007
		 -17.26131248 4.90129709 3.46574068 -17.26131248 3.46574068 4.90129709 -17.26131248
		 -1.2335616e-007 1.66093087 -0.99034125 -1.66093087 -1.4000602e-007 -0.99034125 -2.34891129
		 -1.66093087 -0.99034125 -1.66093087 -2.34891129 -0.99034125 -7.0003011e-008 -1.66093087
		 -0.99034125 1.66093087 -1.4000602e-007 -0.99034125 2.34891129 1.66093087 -0.99034125
		 1.66093087 2.34891129 -0.99034125 -7.0003011e-008 -1.6931527e-007 -17.26131248 -8.4657636e-008
		 -1.4000602e-007 -0.99034125 -7.0003011e-008;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 1 "f[8:15]";
createNode polyCylinder -n "polyCylinder2";
	setAttr ".sa" 8;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 1 "f[8:15]";
createNode polyCylinder -n "polyCylinder3";
	setAttr ".sa" 8;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n"
		+ "            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n"
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n"
		+ "                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n"
		+ "            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n"
		+ "            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n"
		+ "                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[8]" -type "float3" -0.029747229 0.045217082 0 ;
	setAttr ".tk[9]" -type "float3" 1.0005886e-009 -3.8354795e-009 0 ;
	setAttr ".tk[10]" -type "float3" 0.029747173 -0.045217086 0 ;
	setAttr ".tk[11]" -type "float3" 0.042068843 -0.063946612 0 ;
	setAttr ".tk[12]" -type "float3" 0.029747173 -0.045217086 0 ;
	setAttr ".tk[13]" -type "float3" 1.0005886e-009 -3.8354795e-009 0 ;
	setAttr ".tk[14]" -type "float3" -0.029747229 0.045217082 0 ;
	setAttr ".tk[15]" -type "float3" -0.042068902 0.063946612 0 ;
	setAttr ".tk[17]" -type "float3" 1.0005886e-009 -3.8354795e-009 0 ;
createNode deleteComponent -n "deleteComponent3";
	setAttr ".dc" -type "componentList" 1 "f[8:15]";
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 1 "f[9:12]";
	setAttr ".ix" -type "matrix" 1.6696209472519958 0 2.1291010986696093 0 0 1.4555066011784454 0 0
		 -2.1291010986696093 0 1.6696209472519958 0 -0.84179743017612796 -17.968528476032155 0.63944998874846726 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -3.6375039 -16.598446 -2.9256356 ;
	setAttr ".rs" 35847;
	setAttr ".lt" -type "double3" -4.4131365228849972e-015 -1.1102230246251565e-016 
		3.6112316188731777 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -9.8373144492204734 -18.028673419119677 -8.3560670302958791 ;
	setAttr ".cbx" -type "double3" 6.2883730331599086 -15.168217371050355 6.2308621232545889 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 1 "f[11:12]";
	setAttr ".ix" -type "matrix" 1.2468814633806273 0 0 0 0 0.50136822784573398 0 0 0 0 1.2468814633806273 0
		 -2.3375387853598437 -10.088447815329777 0.1195713262695267 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -4.3904204 -9.9785528 2.2071543 ;
	setAttr ".rs" 59886;
	setAttr ".lt" -type "double3" -9.3562751133941663e-016 -8.3266726846886741e-017 
		1.605828235044763 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -6.5074660714805983 -10.083605214612977 0.11957124164756526 ;
	setAttr ".cbx" -type "double3" -2.2733752247512857 -9.8735004231236729 4.2947372753836399 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 1 "f[13:14]";
	setAttr ".ix" -type "matrix" 1.9310961739340882 -0.0028300035979889819 0.14685891231758974 0
		 0.15387312864499936 8.4892892001654729 -1.8597379396774709 0 -0.14282893163682411 0.41577808948791622 1.8861167669631711 0
		 -0.50344889447059493 -12.066888710813604 4.7624492243156373 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.54329127 -3.7365284 3.9288125 ;
	setAttr ".rs" 43206;
	setAttr ".lt" -type "double3" 1.463672932855431e-017 5.5511151231257827e-016 1.256626306668768 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.4949378832337753 -3.8926272874406216 2.9027112855786443 ;
	setAttr ".cbx" -type "double3" 1.5815204080372736 -3.5775995104408107 4.8080549549970177 ;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 17 ".tk[0:16]" -type "float3"  1.99864531 -5.20703316 -4.2880764
		 0.63074619 -5.2192955 -4.84774685 -0.73815495 -5.2113142 -4.28544235 -1.30624056
		 -5.1877737 -2.93078804 -0.7406593 -5.16244698 -1.57683158 0.62723845 -5.15018463
		 -1.017113686 1.99616146 -5.15815926 -1.57919288 2.56421304 -5.18170834 -2.93412733
		 0.6711902 -0.018263165 0.37968624 0.25416875 -0.054166596 0.078772776 -0.27587125
		 -0.046170354 0.1407764 -0.60844606 0.0010455488 0.52951324 -0.548733 0.059816822
		 1.017066956 -0.13169686 0.095723718 1.31809402 0.398375 0.087724417 1.25598824 0.73093396
		 0.04050862 0.86725461 0.061238151 0.020776972 0.69838119;
createNode deleteComponent -n "deleteComponent4";
	setAttr ".dc" -type "componentList" 1 "f[3:5]";
createNode animCurveTU -n "pCylinder2_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.0403308062447245;
createNode animCurveTU -n "pCylinder2_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 4.6062330076153426;
createNode animCurveTU -n "pCylinder2_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.0403308062447245;
createNode animCurveTU -n "pCylinder2_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "pCylinder2_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.90626597056123637;
createNode animCurveTL -n "pCylinder2_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -12.511782129462562;
createNode animCurveTL -n "pCylinder2_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -3.6253649355048241;
createNode animCurveTA -n "pCylinder2_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 6.404156987097898;
createNode animCurveTA -n "pCylinder2_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -121.97402974055844;
createNode animCurveTA -n "pCylinder2_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.2297710100393422;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[17:20]" -type "float3"  0.033669896 0.015673757 -0.26937288
		 -0.060442831 0.012453912 -0.23316748 0.033669896 0.0046805721 -0.14576009 -0.099425614
		 0.0046805721 -0.14576009;
createNode deleteComponent -n "deleteComponent5";
	setAttr ".dc" -type "componentList" 1 "f[0:2]";
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  2.08523488 -2.20659018 0.14037739
		 1.32460737 -2.20659018 -0.17468472 0.56397933 -2.20659018 0.14037739 0.24891733 -2.20659018
		 0.90100533 0.56397933 -2.20659018 1.66163468 1.32460737 -2.20659018 1.97669721 2.085235119
		 -2.20659018 1.66163468 2.4002974 -2.20659018 0.90100533;
createNode deleteComponent -n "deleteComponent6";
	setAttr ".dc" -type "componentList" 2 "f[0]" "f[7]";
createNode deleteComponent -n "deleteComponent7";
	setAttr ".dc" -type "componentList" 1 "f[5]";
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[13:18]";
	setAttr ".ix" -type "matrix" 1.9310961739340882 -0.0028300035979889819 0.14685891231758974 0
		 0.15387312864499936 8.4892892001654729 -1.8597379396774709 0 -0.14282893163682411 0.41577808948791622 1.8861167669631711 0
		 -0.50344889447059493 -12.840125241524401 4.7624492243156373 1;
	setAttr ".wt" 0.77203905582427979;
	setAttr ".dr" no;
	setAttr ".re" 15;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[15]" -type "float3" 0.084944256 0.00033602351 -0.0062826993 ;
	setAttr ".tk[17]" -type "float3" 0.084944256 0.00033602351 -0.0062826993 ;
createNode polyCylinder -n "polyCylinder4";
	setAttr ".sa" 8;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk[0:17]" -type "float3"  5.30964708 0 -5.30964708 0
		 0 -7.50897503 -5.30964708 0 -5.30964708 -7.50897503 0 0 -5.30964708 0 5.30964708
		 0 0 7.50897503 5.30964708 0 5.30964708 7.50897503 0 0 5.30964708 0 -5.30964708 0
		 0 -7.50897503 -5.30964708 0 -5.30964708 -7.50897503 0 0 -5.30964708 0 5.30964708
		 0 0 7.50897503 5.30964708 0 5.30964708 7.50897503 0 0 0 0 0 0 0 0;
createNode deleteComponent -n "deleteComponent8";
	setAttr ".dc" -type "componentList" 1 "f[8:15]";
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 2 "f[8]" "f[12:15]";
	setAttr ".ix" -type "matrix" 1.7487159115062387 0 0 0 0 1.7487159115062387 0 0 0 0 1.7487159115062387 0
		 -0.68274667570772518 -35.616611624598704 1.6972553794633711 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.496347 -33.867897 1.6972554 ;
	setAttr ".rs" 44191;
	setAttr ".lt" -type "double3" 0 -3.3146656467662271e-016 6.5072073028365836 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -11.204339560264287 -33.867895713092466 -13.182524644343673 ;
	setAttr ".cbx" -type "double3" 14.197033348099318 -33.867895713092466 16.577035403270415 ;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  1.97989011 -11.14390469 -1.97989011
		 1.1772359e-016 -11.14390469 -2.7999866 -1.97989011 -11.14390469 -1.97989011 -2.7999866
		 -11.14390469 0 -1.97989011 -11.14390469 1.97989011 1.1772359e-016 -11.14390469 2.7999866
		 1.97989011 -11.14390469 1.97989011 2.7999866 -11.14390469 0;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 1 "f[12:14]";
	setAttr ".ix" -type "matrix" 1.7487159115062387 0 0 0 0 1.7487159115062387 0 0 0 0 1.7487159115062387 0
		 -0.68274667570772518 -35.616611624598704 1.6972553794633711 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.496347 -27.360691 8.3926411 ;
	setAttr ".rs" 37970;
	setAttr ".lt" -type "double3" 4.4408920985006262e-016 1.3063594072849746e-015 5.8833197398605535 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -9.9333904080603546 -27.360690821255353 1.6972552856621672 ;
	setAttr ".cbx" -type "double3" 12.926084195895385 -27.360690821255353 15.088026258609052 ;
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk[17:23]" -type "float3"  -0.47739488 0 0.60209244 0.12469743
		 0 0.85148722 0.12469743 0 5.9645964e-009 0.72678989 0 -0.60209239 0.12469743 0 -0.85148722
		 -0.47739488 0 -0.60209239 -0.72678989 0 5.9645964e-009;
createNode polyUnite -n "polyUnite1";
	setAttr -s 10 ".ip";
	setAttr -s 10 ".im";
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:15]";
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:12]";
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:19]";
createNode groupId -n "groupId10";
	setAttr ".ihi" 0;
createNode groupId -n "groupId11";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:21]";
createNode groupId -n "groupId12";
	setAttr ".ihi" 0;
createNode groupId -n "groupId13";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:12]";
createNode groupId -n "groupId14";
	setAttr ".ihi" 0;
createNode groupId -n "groupId15";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:21]";
createNode groupId -n "groupId16";
	setAttr ".ihi" 0;
createNode groupId -n "groupId17";
	setAttr ".ihi" 0;
createNode groupId -n "groupId18";
	setAttr ".ihi" 0;
createNode groupId -n "groupId19";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:27]";
createNode groupId -n "groupId20";
	setAttr ".ihi" 0;
createNode groupId -n "groupId21";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:173]";
createNode polySoftEdge -n "polySoftEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 0;
createNode groupId -n "groupId35";
	setAttr ".ihi" 0;
createNode polySeparate -n "polySeparate1";
	setAttr ".ic" 6;
	setAttr -s 5 ".out";
createNode groupId -n "groupId37";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId38";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId39";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts15";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId40";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId41";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts17";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId57";
	setAttr ".ihi" 0;
createNode groupId -n "groupId58";
	setAttr ".ihi" 0;
createNode groupId -n "groupId60";
	setAttr ".ihi" 0;
createNode groupId -n "groupId61";
	setAttr ".ihi" 0;
createNode makeNurbCube -n "makeNurbCube1";
	setAttr ".ax" -type "double3" 0 1 0 ;
createNode groupId -n "groupId82";
	setAttr ".ihi" 0;
createNode groupId -n "groupId83";
	setAttr ".ihi" 0;
createNode groupId -n "groupId84";
	setAttr ".ihi" 0;
createNode groupId -n "groupId85";
	setAttr ".ihi" 0;
createNode groupId -n "groupId86";
	setAttr ".ihi" 0;
createNode groupId -n "groupId88";
	setAttr ".ihi" 0;
createNode groupId -n "groupId89";
	setAttr ".ihi" 0;
createNode groupId -n "groupId90";
	setAttr ".ihi" 0;
createNode lambert -n "cloud";
	setAttr ".c" -type "float3" 1 1 1 ;
	setAttr ".it" -type "float3" 0.63158619 0.63158619 0.63158619 ;
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr -s 8 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode groupId -n "groupId91";
	setAttr ".ihi" 0;
createNode groupId -n "groupId92";
	setAttr ".ihi" 0;
createNode groupId -n "groupId93";
	setAttr ".ihi" 0;
createNode groupId -n "groupId59";
	setAttr ".ihi" 0;
createNode groupId -n "groupId94";
	setAttr ".ihi" 0;
createNode groupId -n "groupId95";
	setAttr ".ihi" 0;
createNode groupId -n "groupId96";
	setAttr ".ihi" 0;
createNode groupId -n "groupId97";
	setAttr ".ihi" 0;
createNode groupId -n "groupId98";
	setAttr ".ihi" 0;
createNode groupId -n "groupId99";
	setAttr ".ihi" 0;
createNode groupId -n "groupId100";
	setAttr ".ihi" 0;
createNode groupId -n "groupId101";
	setAttr ".ihi" 0;
createNode groupId -n "groupId102";
	setAttr ".ihi" 0;
createNode polyCBoolOp -n "polyCBoolOp1";
	setAttr -s 6 ".ip";
	setAttr -s 6 ".im";
	setAttr ".mg" -type "Int32Array" 6 97 98 99 100 101 -102 ;
createNode groupId -n "groupId103";
	setAttr ".ihi" 0;
createNode polyCBoolOp -n "polyCBoolOp2";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
	setAttr ".mg" -type "Int32Array" 3 91 92 -93 ;
createNode groupId -n "groupId104";
	setAttr ".ihi" 0;
createNode polyCBoolOp -n "polyCBoolOp3";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
	setAttr ".mg" -type "Int32Array" 3 94 95 -96 ;
createNode groupId -n "groupId105";
	setAttr ".ihi" 0;
createNode polyCBoolOp -n "polyCBoolOp4";
	setAttr -s 8 ".ip";
	setAttr -s 8 ".im";
	setAttr ".mg" -type "Int32Array" 8 36 37 38 39 40 57
		 58 -59 ;
createNode groupId -n "groupId106";
	setAttr ".ihi" 0;
createNode polyCBoolOp -n "polyCBoolOp5";
	setAttr -s 7 ".ip";
	setAttr -s 7 ".im";
	setAttr ".mg" -type "Int32Array" 7 83 84 85 86 88 89
		 -90 ;
createNode groupId -n "groupId107";
	setAttr ".ihi" 0;
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
	setAttr -s 55 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 49 ".gn";
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
connectAttr "groupParts1.og" "pCylinderShape1.i";
connectAttr "groupId1.id" "pCylinderShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape1.iog.og[0].gco";
connectAttr "groupId2.id" "pCylinderShape1.ciog.cog[0].cgid";
connectAttr "pCylinder2_translateX.o" "pCylinder2.tx";
connectAttr "pCylinder2_translateY.o" "pCylinder2.ty";
connectAttr "pCylinder2_translateZ.o" "pCylinder2.tz";
connectAttr "pCylinder2_scaleX.o" "pCylinder2.sx";
connectAttr "pCylinder2_scaleY.o" "pCylinder2.sy";
connectAttr "pCylinder2_scaleZ.o" "pCylinder2.sz";
connectAttr "pCylinder2_visibility.o" "pCylinder2.v";
connectAttr "pCylinder2_rotateX.o" "pCylinder2.rx";
connectAttr "pCylinder2_rotateY.o" "pCylinder2.ry";
connectAttr "pCylinder2_rotateZ.o" "pCylinder2.rz";
connectAttr "groupParts2.og" "pCylinderShape2.i";
connectAttr "groupId3.id" "pCylinderShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape2.iog.og[0].gco";
connectAttr "groupId4.id" "pCylinderShape2.ciog.cog[0].cgid";
connectAttr "groupId5.id" "pCylinderShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape3.iog.og[0].gco";
connectAttr "groupId6.id" "pCylinderShape3.ciog.cog[0].cgid";
connectAttr "groupId7.id" "pCylinderShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape4.iog.og[0].gco";
connectAttr "groupId8.id" "pCylinderShape4.ciog.cog[0].cgid";
connectAttr "groupId9.id" "pCylinderShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape5.iog.og[0].gco";
connectAttr "groupParts3.og" "pCylinderShape5.i";
connectAttr "groupId10.id" "pCylinderShape5.ciog.cog[0].cgid";
connectAttr "groupId11.id" "pCylinderShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape6.iog.og[0].gco";
connectAttr "groupParts4.og" "pCylinderShape6.i";
connectAttr "groupId12.id" "pCylinderShape6.ciog.cog[0].cgid";
connectAttr "groupParts5.og" "pCylinderShape7.i";
connectAttr "groupId13.id" "pCylinderShape7.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape7.iog.og[0].gco";
connectAttr "groupId14.id" "pCylinderShape7.ciog.cog[0].cgid";
connectAttr "groupId15.id" "pCylinderShape9.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape9.iog.og[0].gco";
connectAttr "groupParts6.og" "pCylinderShape9.i";
connectAttr "groupId16.id" "pCylinderShape9.ciog.cog[0].cgid";
connectAttr "groupId17.id" "pCylinderShape10.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape10.iog.og[0].gco";
connectAttr "groupId18.id" "pCylinderShape10.ciog.cog[0].cgid";
connectAttr "groupId19.id" "pCylinderShape11.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape11.iog.og[0].gco";
connectAttr "groupParts7.og" "pCylinderShape11.i";
connectAttr "groupId20.id" "pCylinderShape11.ciog.cog[0].cgid";
connectAttr "polySoftEdge1.out" "pCylinder12Shape.i";
connectAttr "groupId21.id" "pCylinder12Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinder12Shape.iog.og[0].gco";
connectAttr "groupParts13.og" "polySurfaceShape5.i";
connectAttr "groupId37.id" "polySurfaceShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape5.iog.og[0].gco";
connectAttr "groupParts14.og" "polySurfaceShape6.i";
connectAttr "groupId38.id" "polySurfaceShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape6.iog.og[0].gco";
connectAttr "groupParts15.og" "polySurfaceShape7.i";
connectAttr "groupId39.id" "polySurfaceShape7.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape7.iog.og[0].gco";
connectAttr "groupParts16.og" "polySurfaceShape8.i";
connectAttr "groupId40.id" "polySurfaceShape8.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape8.iog.og[0].gco";
connectAttr "groupParts17.og" "polySurfaceShape9.i";
connectAttr "groupId41.id" "polySurfaceShape9.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape9.iog.og[0].gco";
connectAttr "groupId35.id" "pSolid9Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pSolid9Shape.iog.og[0].gco";
connectAttr "groupId58.id" "polySurfaceShape16.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape16.iog.og[0].gco";
connectAttr "groupId59.id" "polySurfaceShape17.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape17.iog.og[0].gco";
connectAttr "groupId60.id" "polySurfaceShape18.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape18.iog.og[0].gco";
connectAttr "groupId83.id" "polySurfaceShape20.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape20.iog.og[0].gco";
connectAttr "groupId84.id" "polySurfaceShape21.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape21.iog.og[0].gco";
connectAttr "groupId85.id" "polySurfaceShape22.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape22.iog.og[0].gco";
connectAttr "groupId86.id" "polySurfaceShape23.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape23.iog.og[0].gco";
connectAttr "groupId88.id" "polySurfaceShape25.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape25.iog.og[0].gco";
connectAttr "groupId89.id" "polySurfaceShape26.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape26.iog.og[0].gco";
connectAttr "groupId90.id" "polySurfaceShape27.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape27.iog.og[0].gco";
connectAttr "groupId91.id" "polySurfaceShape28.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape28.iog.og[0].gco";
connectAttr "groupId92.id" "polySurfaceShape29.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape29.iog.og[0].gco";
connectAttr "groupId93.id" "polySurfaceShape30.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape30.iog.og[0].gco";
connectAttr "groupId94.id" "polySurfaceShape31.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape31.iog.og[0].gco";
connectAttr "groupId95.id" "polySurfaceShape32.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape32.iog.og[0].gco";
connectAttr "groupId96.id" "polySurfaceShape33.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape33.iog.og[0].gco";
connectAttr "groupId97.id" "polySurfaceShape34.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape34.iog.og[0].gco";
connectAttr "groupId98.id" "polySurfaceShape35.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape35.iog.og[0].gco";
connectAttr "groupId99.id" "polySurfaceShape36.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape36.iog.og[0].gco";
connectAttr "groupId100.id" "polySurfaceShape37.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape37.iog.og[0].gco";
connectAttr "groupId101.id" "polySurfaceShape38.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape38.iog.og[0].gco";
connectAttr "groupId102.id" "polySurfaceShape39.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape39.iog.og[0].gco";
connectAttr "makeNurbCube1.os" "topnurbsCubeShape1.cr";
connectAttr "makeNurbCube1.os1" "bottomnurbsCubeShape1.cr";
connectAttr "makeNurbCube1.os2" "leftnurbsCubeShape1.cr";
connectAttr "makeNurbCube1.os3" "rightnurbsCubeShape1.cr";
connectAttr "makeNurbCube1.os4" "frontnurbsCubeShape1.cr";
connectAttr "makeNurbCube1.os5" "backnurbsCubeShape1.cr";
connectAttr "polyCBoolOp1.out" "polySurface34Shape.i";
connectAttr "polyCBoolOp2.out" "polySurface28Shape.i";
connectAttr "polyCBoolOp3.out" "polySurface31Shape.i";
connectAttr "polyCBoolOp4.out" "polySurface2Shape.i";
connectAttr "polyCBoolOp5.out" "polySurface20Shape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCylinder1.out" "polyTweak1.ip";
connectAttr "polyTweak1.out" "deleteComponent1.ig";
connectAttr "polyCylinder2.out" "deleteComponent2.ig";
connectAttr "polyCylinder3.out" "polyTweak2.ip";
connectAttr "polyTweak2.out" "deleteComponent3.ig";
connectAttr "polySurfaceShape1.o" "polyExtrudeFace1.ip";
connectAttr "pCylinderShape6.wm" "polyExtrudeFace1.mp";
connectAttr "polySurfaceShape2.o" "polyExtrudeFace2.ip";
connectAttr "pCylinderShape5.wm" "polyExtrudeFace2.mp";
connectAttr "polySurfaceShape3.o" "polyExtrudeFace3.ip";
connectAttr "pCylinderShape9.wm" "polyExtrudeFace3.mp";
connectAttr "deleteComponent2.og" "polyTweak3.ip";
connectAttr "polyTweak3.out" "deleteComponent4.ig";
connectAttr "polyExtrudeFace3.out" "polyTweak4.ip";
connectAttr "polyTweak4.out" "deleteComponent5.ig";
connectAttr "deleteComponent3.og" "polyTweak5.ip";
connectAttr "polyTweak5.out" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "deleteComponent7.ig";
connectAttr "polyTweak6.out" "polySplitRing1.ip";
connectAttr "pCylinderShape9.wm" "polySplitRing1.mp";
connectAttr "deleteComponent5.og" "polyTweak6.ip";
connectAttr "polyCylinder4.out" "polyTweak7.ip";
connectAttr "polyTweak7.out" "deleteComponent8.ig";
connectAttr "polyTweak8.out" "polyExtrudeFace4.ip";
connectAttr "pCylinderShape11.wm" "polyExtrudeFace4.mp";
connectAttr "deleteComponent8.og" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polyExtrudeFace5.ip";
connectAttr "pCylinderShape11.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak9.ip";
connectAttr "pCylinderShape1.o" "polyUnite1.ip[0]";
connectAttr "pCylinderShape2.o" "polyUnite1.ip[1]";
connectAttr "pCylinderShape3.o" "polyUnite1.ip[2]";
connectAttr "pCylinderShape4.o" "polyUnite1.ip[3]";
connectAttr "pCylinderShape5.o" "polyUnite1.ip[4]";
connectAttr "pCylinderShape6.o" "polyUnite1.ip[5]";
connectAttr "pCylinderShape7.o" "polyUnite1.ip[6]";
connectAttr "pCylinderShape9.o" "polyUnite1.ip[7]";
connectAttr "pCylinderShape10.o" "polyUnite1.ip[8]";
connectAttr "pCylinderShape11.o" "polyUnite1.ip[9]";
connectAttr "pCylinderShape1.wm" "polyUnite1.im[0]";
connectAttr "pCylinderShape2.wm" "polyUnite1.im[1]";
connectAttr "pCylinderShape3.wm" "polyUnite1.im[2]";
connectAttr "pCylinderShape4.wm" "polyUnite1.im[3]";
connectAttr "pCylinderShape5.wm" "polyUnite1.im[4]";
connectAttr "pCylinderShape6.wm" "polyUnite1.im[5]";
connectAttr "pCylinderShape7.wm" "polyUnite1.im[6]";
connectAttr "pCylinderShape9.wm" "polyUnite1.im[7]";
connectAttr "pCylinderShape10.wm" "polyUnite1.im[8]";
connectAttr "pCylinderShape11.wm" "polyUnite1.im[9]";
connectAttr "deleteComponent1.og" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "deleteComponent4.og" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polyExtrudeFace2.out" "groupParts3.ig";
connectAttr "groupId9.id" "groupParts3.gi";
connectAttr "polyExtrudeFace1.out" "groupParts4.ig";
connectAttr "groupId11.id" "groupParts4.gi";
connectAttr "deleteComponent7.og" "groupParts5.ig";
connectAttr "groupId13.id" "groupParts5.gi";
connectAttr "polySplitRing1.out" "groupParts6.ig";
connectAttr "groupId15.id" "groupParts6.gi";
connectAttr "polyExtrudeFace5.out" "groupParts7.ig";
connectAttr "groupId19.id" "groupParts7.gi";
connectAttr "polyUnite1.out" "groupParts8.ig";
connectAttr "groupId21.id" "groupParts8.gi";
connectAttr "groupParts8.og" "polySoftEdge1.ip";
connectAttr "pCylinder12Shape.wm" "polySoftEdge1.mp";
connectAttr "pSolid9Shape.o" "polySeparate1.ip";
connectAttr "polySeparate1.out[1]" "groupParts13.ig";
connectAttr "groupId37.id" "groupParts13.gi";
connectAttr "polySeparate1.out[2]" "groupParts14.ig";
connectAttr "groupId38.id" "groupParts14.gi";
connectAttr "polySeparate1.out[3]" "groupParts15.ig";
connectAttr "groupId39.id" "groupParts15.gi";
connectAttr "polySeparate1.out[4]" "groupParts16.ig";
connectAttr "groupId40.id" "groupParts16.gi";
connectAttr "polySeparate1.out[5]" "groupParts17.ig";
connectAttr "groupId41.id" "groupParts17.gi";
connectAttr "cloud.oc" "lambert2SG.ss";
connectAttr "pSolid19Shape.iog" "lambert2SG.dsm" -na;
connectAttr "polySurface15Shape.iog" "lambert2SG.dsm" -na;
connectAttr "polySurface19Shape.iog" "lambert2SG.dsm" -na;
connectAttr "polySurface34Shape.iog" "lambert2SG.dsm" -na;
connectAttr "polySurface28Shape.iog" "lambert2SG.dsm" -na;
connectAttr "polySurface31Shape.iog" "lambert2SG.dsm" -na;
connectAttr "polySurface2Shape.iog" "lambert2SG.dsm" -na;
connectAttr "polySurface20Shape.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "cloud.msg" "materialInfo1.m";
connectAttr "polySurfaceShape34.o" "polyCBoolOp1.ip[0]";
connectAttr "polySurfaceShape35.o" "polyCBoolOp1.ip[1]";
connectAttr "polySurfaceShape36.o" "polyCBoolOp1.ip[2]";
connectAttr "polySurfaceShape37.o" "polyCBoolOp1.ip[3]";
connectAttr "polySurfaceShape38.o" "polyCBoolOp1.ip[4]";
connectAttr "polySurfaceShape39.o" "polyCBoolOp1.ip[5]";
connectAttr "polySurfaceShape34.wm" "polyCBoolOp1.im[0]";
connectAttr "polySurfaceShape35.wm" "polyCBoolOp1.im[1]";
connectAttr "polySurfaceShape36.wm" "polyCBoolOp1.im[2]";
connectAttr "polySurfaceShape37.wm" "polyCBoolOp1.im[3]";
connectAttr "polySurfaceShape38.wm" "polyCBoolOp1.im[4]";
connectAttr "polySurfaceShape39.wm" "polyCBoolOp1.im[5]";
connectAttr "polySurfaceShape28.o" "polyCBoolOp2.ip[0]";
connectAttr "polySurfaceShape29.o" "polyCBoolOp2.ip[1]";
connectAttr "polySurfaceShape30.o" "polyCBoolOp2.ip[2]";
connectAttr "polySurfaceShape28.wm" "polyCBoolOp2.im[0]";
connectAttr "polySurfaceShape29.wm" "polyCBoolOp2.im[1]";
connectAttr "polySurfaceShape30.wm" "polyCBoolOp2.im[2]";
connectAttr "polySurfaceShape31.o" "polyCBoolOp3.ip[0]";
connectAttr "polySurfaceShape32.o" "polyCBoolOp3.ip[1]";
connectAttr "polySurfaceShape33.o" "polyCBoolOp3.ip[2]";
connectAttr "polySurfaceShape31.wm" "polyCBoolOp3.im[0]";
connectAttr "polySurfaceShape32.wm" "polyCBoolOp3.im[1]";
connectAttr "polySurfaceShape33.wm" "polyCBoolOp3.im[2]";
connectAttr "polySurfaceShape5.o" "polyCBoolOp4.ip[0]";
connectAttr "polySurfaceShape6.o" "polyCBoolOp4.ip[1]";
connectAttr "polySurfaceShape7.o" "polyCBoolOp4.ip[2]";
connectAttr "polySurfaceShape8.o" "polyCBoolOp4.ip[3]";
connectAttr "polySurfaceShape9.o" "polyCBoolOp4.ip[4]";
connectAttr "polySurfaceShape16.o" "polyCBoolOp4.ip[5]";
connectAttr "polySurfaceShape17.o" "polyCBoolOp4.ip[6]";
connectAttr "polySurfaceShape18.o" "polyCBoolOp4.ip[7]";
connectAttr "polySurfaceShape5.wm" "polyCBoolOp4.im[0]";
connectAttr "polySurfaceShape6.wm" "polyCBoolOp4.im[1]";
connectAttr "polySurfaceShape7.wm" "polyCBoolOp4.im[2]";
connectAttr "polySurfaceShape8.wm" "polyCBoolOp4.im[3]";
connectAttr "polySurfaceShape9.wm" "polyCBoolOp4.im[4]";
connectAttr "polySurfaceShape16.wm" "polyCBoolOp4.im[5]";
connectAttr "polySurfaceShape17.wm" "polyCBoolOp4.im[6]";
connectAttr "polySurfaceShape18.wm" "polyCBoolOp4.im[7]";
connectAttr "polySurfaceShape20.o" "polyCBoolOp5.ip[0]";
connectAttr "polySurfaceShape21.o" "polyCBoolOp5.ip[1]";
connectAttr "polySurfaceShape22.o" "polyCBoolOp5.ip[2]";
connectAttr "polySurfaceShape23.o" "polyCBoolOp5.ip[3]";
connectAttr "polySurfaceShape25.o" "polyCBoolOp5.ip[4]";
connectAttr "polySurfaceShape26.o" "polyCBoolOp5.ip[5]";
connectAttr "polySurfaceShape27.o" "polyCBoolOp5.ip[6]";
connectAttr "polySurfaceShape20.wm" "polyCBoolOp5.im[0]";
connectAttr "polySurfaceShape21.wm" "polyCBoolOp5.im[1]";
connectAttr "polySurfaceShape22.wm" "polyCBoolOp5.im[2]";
connectAttr "polySurfaceShape23.wm" "polyCBoolOp5.im[3]";
connectAttr "polySurfaceShape25.wm" "polyCBoolOp5.im[4]";
connectAttr "polySurfaceShape26.wm" "polyCBoolOp5.im[5]";
connectAttr "polySurfaceShape27.wm" "polyCBoolOp5.im[6]";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "cloud.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCylinderShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape3.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape4.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape5.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape6.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape6.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape7.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape7.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape9.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape9.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape10.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape10.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape11.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape11.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinder12Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pSolid9Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape6.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape7.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape8.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape9.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape16.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape17.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape18.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "topnurbsCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "bottomnurbsCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "leftnurbsCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "rightnurbsCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "frontnurbsCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "backnurbsCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape20.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape21.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape22.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape23.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape25.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape26.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape27.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape28.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape29.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape30.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape31.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape32.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape33.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape34.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape35.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape36.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape37.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape38.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape39.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId13.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId15.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId16.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId17.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId18.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId19.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId20.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId21.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId35.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId37.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId38.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId39.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId40.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId41.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId58.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId59.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId60.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId83.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId84.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId85.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId86.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId88.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId89.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId90.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId91.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId92.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId93.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId94.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId95.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId96.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId97.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId98.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId99.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId100.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId101.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId102.msg" ":initialShadingGroup.gn" -na;
// End of sky_level.ma
