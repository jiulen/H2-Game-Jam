//Maya ASCII 2024 scene
//Name: gachamachine.ma
//Last modified: Fri, Oct 13, 2023 03:56:12 PM
//Codeset: 1252
requires maya "2024";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202302170737-4500172811";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22621)";
fileInfo "UUID" "6011BF55-4CF4-0B29-F371-E0ABAE4A16A2";
createNode transform -s -n "persp";
	rename -uid "E9378047-4DC4-8E58-4DD2-0FAF80661090";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 107.33680038331106 104.28183894495056 184.6787453681502 ;
	setAttr ".r" -type "double3" 695.06164647222022 11550.199999998453 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "5DBE16B9-4863-36CB-75BD-E8B6C303804C";
	setAttr -k off ".v" no;
	setAttr ".fl" 500;
	setAttr ".coi" 237.29275607630291;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "60B1C9ED-4224-8553-40D7-56B29B82AF19";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.011345539122725845 1000.1 1.2581113377708231 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "F891E2BE-49A4-B469-4290-D09D592A1166";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 2.3254951457832282;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "CA5BFD22-4EB0-9106-FBBC-32AB2562A41E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.707956063541487 7.5804707373713942 1000.101519367553 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "F77DD017-4532-104F-3142-82BE1EF7A5B0";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 997.14092294135196;
	setAttr ".ow" 16.54925304549684;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 0.12182397471260065 0.4481547474861145 2.9605964262010991 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "46293208-4D34-A30D-DB7B-ECAAB367515A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 2.1804357264453715 1.1536664649163852 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "4A8C8CFF-4437-7E6B-FBF2-08A29AA2BC66";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 4.4892205414133883;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "coin";
	rename -uid "D01F8C67-4D0B-D9AD-AA0C-348C44C35E9B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -52.341866783210605 0 0 ;
createNode mesh -n "coinShape" -p "coin";
	rename -uid "3AB9CF39-444B-CB95-7B2D-429BA6B7BC67";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50695391198430273 0.52918679834769189 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "gacha";
	rename -uid "A85551D1-47EF-A0AA-5F9E-6EB2BA4068F5";
	setAttr ".rp" -type "double3" 0 5.767998218536377 -0.1725823953861334 ;
	setAttr ".sp" -type "double3" 0 5.767998218536377 -0.1725823953861334 ;
createNode transform -n "back" -p "gacha";
	rename -uid "32785F80-4B42-39B5-9E72-C8BF6A6F85DE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.44459036828510512 5.0475335600942524 -1000.1 ;
	setAttr ".r" -type "double3" 0 180 0 ;
createNode camera -n "backShape" -p "back";
	rename -uid "410A205F-4D3E-D80F-C91B-9DBF3338DFBE";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 7.5582452270732201;
	setAttr ".imn" -type "string" "back1";
	setAttr ".den" -type "string" "back1_depth";
	setAttr ".man" -type "string" "back1_mask";
	setAttr ".hc" -type "string" "viewSet -b %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "cabinet" -p "gacha";
	rename -uid "ED03EF6D-445F-B921-3A1C-04A748533AC3";
	setAttr ".rp" -type "double3" 0 2.3114420966742952 0 ;
	setAttr ".sp" -type "double3" 0 2.3114420966742952 0 ;
createNode mesh -n "cabinetShape" -p "cabinet";
	rename -uid "5B735459-4270-FC87-B107-0AB3E1BA43EC";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "water_overlay" -p "gacha";
	rename -uid "6CCF2551-4CE4-873C-F3CC-DFB1240C259A";
	setAttr ".rp" -type "double3" 0 6.1451695092093459 1.7870659227090908 ;
	setAttr ".sp" -type "double3" 0 6.1451695092093459 1.7870659227090904 ;
createNode mesh -n "water_overlayShape" -p "water_overlay";
	rename -uid "6C0CBD97-45BF-3EC7-8FC3-C8850C852D3E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "fish" -p "gacha";
	rename -uid "E9338F13-426D-DE73-9D38-AF97F2EEA9AB";
	setAttr ".rp" -type "double3" 0 6.3186442838849288 0.69240235260169447 ;
	setAttr ".sp" -type "double3" 0 6.3186442838849288 0.69240235260169447 ;
createNode mesh -n "fishShape" -p "fish";
	rename -uid "7446C90F-411E-92A7-53CC-E4AAB190E05C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "ad_top" -p "gacha";
	rename -uid "ED4E801B-4918-7BC4-AD33-0A8B2AA6AB84";
	setAttr ".rp" -type "double3" -1.1524286175743028 7.32647556124396 2.7817376135289988 ;
	setAttr ".sp" -type "double3" -1.1524286175743028 7.32647556124396 2.7817376135289988 ;
createNode mesh -n "ad_topShape" -p "ad_top";
	rename -uid "626F8CBF-4248-D745-801C-039499B76956";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.75 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "logo_bottom" -p "gacha";
	rename -uid "1983C7A3-485E-B18C-CC77-AEA3AF811DAC";
	setAttr ".rp" -type "double3" 0 4.8595536062930407 2.0175526921453213 ;
	setAttr ".sp" -type "double3" 0 4.8595536062930407 2.0175526921453213 ;
createNode mesh -n "logo_bottomShape" -p "logo_bottom";
	rename -uid "10421BB9-476A-4EC9-5804-B6A973093333";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "waterbase" -p "gacha";
	rename -uid "75D7BF58-44A5-CBD5-5BD4-26BB634638B8";
	setAttr ".rp" -type "double3" 0 0.38920134872999212 0 ;
	setAttr ".sp" -type "double3" 0 0.38920134872999212 0 ;
createNode mesh -n "waterbaseShape" -p "waterbase";
	rename -uid "AF907C1C-4B4B-E6F7-4EA4-3B8EF5D44B2D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  0 0 -0.48894662 0 0 -0.48894662 
		0 0 -0.48894662 0 0 -0.48894662 0 0 -0.16298217 0 0 -0.16298217 0 0 -0.16298217 0 
		0 -0.16298217 0 0 0.1629822 0 0 0.1629822 0 0 0.1629822 0 0 0.1629822 0 0 0.48894662 
		0 0 0.48894662 0 0 0.48894662 0 0 0.48894662;
createNode transform -n "buttons" -p "gacha";
	rename -uid "21F22C91-4EFF-B3E4-1E79-5C9747F137A0";
	setAttr ".rp" -type "double3" -0.072396278381347656 2.2645140783427706 2.6819292306900024 ;
	setAttr ".sp" -type "double3" -0.072396278381347656 2.2645140783427706 2.6819292306900024 ;
createNode transform -n "dispenserknob" -p "buttons";
	rename -uid "024F3606-4497-559E-C1E1-35B0A92F8717";
	setAttr ".rp" -type "double3" 1.4492412805557253 2.1698683695434084 2.757055957265548 ;
	setAttr ".sp" -type "double3" 1.4492412805557253 2.1698683695434084 2.757055957265548 ;
createNode mesh -n "dispenserknobShape" -p "dispenserknob";
	rename -uid "90B48C2C-4747-44FF-4BF1-1795F3AEE0E2";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "squareknob" -p "buttons";
	rename -uid "2FD043CB-4FED-99BF-8FAE-B4B201452686";
	setAttr ".rp" -type "double3" 0.075244709849357605 1.7138879345296374 2.6090494394302368 ;
	setAttr ".sp" -type "double3" 0.075244709849357605 1.7138879345296374 2.6090494394302368 ;
createNode mesh -n "squareknobShape" -p "squareknob";
	rename -uid "C8F184EC-4392-3DF2-9B68-56BB4039A4B1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.50791138596832752 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "spinnerknob" -p "buttons";
	rename -uid "0132C902-4271-ADA9-9022-019ACA6775FA";
	setAttr ".rp" -type "double3" -1.4000201225280762 2.2645140783427706 2.6819292306900024 ;
	setAttr ".sp" -type "double3" -1.4000201225280762 2.2645140783427706 2.6819292306900024 ;
createNode mesh -n "spinnerknobShape" -p "spinnerknob";
	rename -uid "33669B2C-422C-4DF9-C32C-529DA3590E31";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.38749255239963531 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "coinknob" -p "buttons";
	rename -uid "BB6E2D49-4CF2-1D89-CF39-1590A916B8AF";
	setAttr ".rp" -type "double3" 0.07524476945400238 2.6584846125482073 2.6819301843643188 ;
	setAttr ".sp" -type "double3" 0.07524476945400238 2.6584846125482073 2.6819301843643188 ;
createNode mesh -n "coinknobShape" -p "coinknob";
	rename -uid "9A62FEEA-47CC-E2C6-F199-4C86EC05136A";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.84375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "leaf1" -p "gacha";
	rename -uid "01CEA033-4219-E658-CD37-70888EA50B8E";
	setAttr ".rp" -type "double3" 2.7140655186948228 7.9139749560698736 2.3819842743271957 ;
	setAttr ".sp" -type "double3" 2.7140655186948224 7.9139749560698736 2.3819842743271957 ;
createNode mesh -n "leafShape1" -p "leaf1";
	rename -uid "BB3AF1AA-4D0E-BE32-2A3D-5E8F2B76A5E3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000001490116119 0.50000001490116119 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "leaf2" -p "gacha";
	rename -uid "E7EF78F2-4415-426C-0466-98B954F9A3AC";
	setAttr ".rp" -type "double3" 2.2639677665532187 8.0816006557869695 2.5385439726222803 ;
	setAttr ".sp" -type "double3" 2.2639677665532192 8.0816006557869695 2.5385439726222803 ;
createNode mesh -n "leafShape2" -p "leaf2";
	rename -uid "D8FAB056-4633-BFCF-B506-F186AA5F781E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[15]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 5 "e[1]" "e[4]" "e[7]" "e[10]" "e[13]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 5 "e[2]" "e[5]" "e[8]" "e[11]" "e[14]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 5 "e[0:2]" "e[4:5]" "e[7:8]" "e[10:11]" "e[13:15]";
	setAttr ".pv" -type "double2" 0.50000001490116119 0.50000001490116119 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.48372623 0.42284742
		 0.51627374 0.42284742 0.53962529 0.44284576 0.46037474 0.44284576 0.54873836 0.47464645
		 0.45126167 0.47464645 0.54621118 0.51857728 0.45378885 0.51857728 0.53135985 0.55715424
		 0.46864015 0.55715424 0.51287919 0.57715261 0.48712081 0.57715261;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  2.0427229 7.7562799 2.4440491 
		1.9562745 7.6712971 2.4653327 2.1491008 7.916285 2.5145555 1.9386065 7.7093582 2.5663781 
		2.2438369 8.097559 2.6449935 1.9849334 7.8430424 2.708735 2.3345604 8.3085089 2.835072 
		2.0890818 8.0671892 2.8955078 2.3806763 8.4607658 3.0102448 2.2140889 8.2970018 3.0512586 
		2.3759453 8.5115461 3.1081052 2.3075294 8.4442883 3.1249495;
	setAttr -s 12 ".vt[0:11]"  -0.16695026 0 0.75998169 0.16695026 0 0.75998169
		 -0.40651026 0 0.55394226 0.40651026 0 0.55394226 -0.5 0 0.22630575 0.5 0 0.22630575
		 -0.47407407 0 -0.2263058 0.47407407 0 -0.2263058 -0.3217167 0 -0.62375683 0.3217167 0 -0.62375683
		 -0.13212597 0 -0.82979631 0.13212597 0 -0.82979631;
	setAttr -s 16 ".ed[0:15]"  0 1 0 0 2 0 1 3 0 2 3 1 2 4 0 3 5 0 4 5 1
		 4 6 0 5 7 0 6 7 1 6 8 0 7 9 0 8 9 1 8 10 0 9 11 0 10 11 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 2 3
		f 4 3 5 -7 -5
		mu 0 4 3 2 4 5
		f 4 6 8 -10 -8
		mu 0 4 5 4 6 7
		f 4 9 11 -13 -11
		mu 0 4 7 6 8 9
		f 4 12 14 -16 -14
		mu 0 4 9 8 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "leaf3" -p "gacha";
	rename -uid "B0DC93CD-463D-0170-1DB9-A9B40D1450AC";
	setAttr ".rp" -type "double3" 2.7140655186948281 8.1874320186566987 1.9105733035501078 ;
	setAttr ".sp" -type "double3" 2.7140655186948281 8.1874320186566987 1.9105733035501078 ;
createNode mesh -n "leafShape3" -p "leaf3";
	rename -uid "8B42064B-49C8-453F-E9CB-3388ADD94A5F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[15]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 5 "e[1]" "e[4]" "e[7]" "e[10]" "e[13]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 5 "e[2]" "e[5]" "e[8]" "e[11]" "e[14]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 5 "e[0:2]" "e[4:5]" "e[7:8]" "e[10:11]" "e[13:15]";
	setAttr ".pv" -type "double2" 0.50000001490116119 0.50000001490116119 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.48372623 0.42284742
		 0.51627374 0.42284742 0.53962529 0.44284576 0.46037474 0.44284576 0.54873836 0.47464645
		 0.45126167 0.47464645 0.54621118 0.51857728 0.45378885 0.51857728 0.53135985 0.55715424
		 0.46864015 0.55715424 0.51287919 0.57715261 0.48712081 0.57715261;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  3.4835796 7.6487646 1.3654308 
		3.2207787 7.7341547 1.1276052 3.5560708 7.7003493 1.7479224 2.9161716 7.908267 1.1688354 
		3.4451015 7.8558893 2.1514063 2.6580374 8.1116247 1.43914 3.1697493 8.1104174 2.59834 
		2.4234953 8.3528919 1.9230057 2.8259573 8.3670673 2.8985014 2.3195343 8.5316153 2.4402056 
		2.5606785 8.5284014 2.9753237 2.3526962 8.5959797 2.7871058;
	setAttr -s 12 ".vt[0:11]"  -0.16695026 0 0.75998169 0.16695026 0 0.75998169
		 -0.40651026 0 0.55394226 0.40651026 0 0.55394226 -0.5 0 0.22630575 0.5 0 0.22630575
		 -0.47407407 0 -0.2263058 0.47407407 0 -0.2263058 -0.3217167 0 -0.62375683 0.3217167 0 -0.62375683
		 -0.13212597 0 -0.82979631 0.13212597 0 -0.82979631;
	setAttr -s 16 ".ed[0:15]"  0 1 0 0 2 0 1 3 0 2 3 1 2 4 0 3 5 0 4 5 1
		 4 6 0 5 7 0 6 7 1 6 8 0 7 9 0 8 9 1 8 10 0 9 11 0 10 11 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 2 3
		f 4 3 5 -7 -5
		mu 0 4 3 2 4 5
		f 4 6 8 -10 -8
		mu 0 4 5 4 6 7
		f 4 9 11 -13 -11
		mu 0 4 7 6 8 9
		f 4 12 14 -16 -14
		mu 0 4 9 8 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "leaf4" -p "gacha";
	rename -uid "0B01D757-4E01-5404-C7D5-D6AD4F6963B6";
	setAttr ".rp" -type "double3" 2.3412710862510129 6.8946571155175747 2.3819842743271735 ;
	setAttr ".sp" -type "double3" 2.3412710862510129 6.8946571155175747 2.3819842743271735 ;
createNode mesh -n "leafShape4" -p "leaf4";
	rename -uid "FA6E98E5-48F1-6B80-2BA8-A89175A3A5B0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[15]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 5 "e[1]" "e[4]" "e[7]" "e[10]" "e[13]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 5 "e[2]" "e[5]" "e[8]" "e[11]" "e[14]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 5 "e[0:2]" "e[4:5]" "e[7:8]" "e[10:11]" "e[13:15]";
	setAttr ".pv" -type "double2" 0.50000001490116119 0.50000001490116119 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.48372623 0.42284742
		 0.51627374 0.42284742 0.53962529 0.44284576 0.46037474 0.44284576 0.54873836 0.47464645
		 0.45126167 0.47464645 0.54621118 0.51857728 0.45378885 0.51857728 0.53135985 0.55715424
		 0.46864015 0.55715424 0.51287919 0.57715261 0.48712081 0.57715261;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  2.0222397 6.3314056 2.1150558 
		1.9504625 6.2353659 2.1383991 2.1328869 6.542798 2.2263689 1.9581162 6.3089476 2.2832067 
		2.2470427 6.7962666 2.42347 2.0320783 6.5086355 2.4933798 2.371407 7.1018147 2.7065964 
		2.1675892 6.8290973 2.7728806 2.4527578 7.3328505 2.9642768 2.3144426 7.1477785 3.0092592 
		2.4711533 7.4208064 3.1055911 2.4143486 7.3447986 3.1240654;
	setAttr -s 12 ".vt[0:11]"  -0.16695026 0 0.75998169 0.16695026 0 0.75998169
		 -0.40651026 0 0.55394226 0.40651026 0 0.55394226 -0.5 0 0.22630575 0.5 0 0.22630575
		 -0.47407407 0 -0.2263058 0.47407407 0 -0.2263058 -0.3217167 0 -0.62375683 0.3217167 0 -0.62375683
		 -0.13212597 0 -0.82979631 0.13212597 0 -0.82979631;
	setAttr -s 16 ".ed[0:15]"  0 1 0 0 2 0 1 3 0 2 3 1 2 4 0 3 5 0 4 5 1
		 4 6 0 5 7 0 6 7 1 6 8 0 7 9 0 8 9 1 8 10 0 9 11 0 10 11 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 2 3
		f 4 3 5 -7 -5
		mu 0 4 3 2 4 5
		f 4 6 8 -10 -8
		mu 0 4 5 4 6 7
		f 4 9 11 -13 -11
		mu 0 4 7 6 8 9
		f 4 12 14 -16 -14
		mu 0 4 9 8 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "leaf5" -p "gacha";
	rename -uid "4782E934-4712-ED4D-1EC4-2D9A3D7EA154";
	setAttr ".rp" -type "double3" 2.7847819020459972 6.4940516786545617 2.4452674935675316 ;
	setAttr ".sp" -type "double3" 2.7847819020459972 6.4940516786545617 2.4452674935675316 ;
createNode mesh -n "leafShape5" -p "leaf5";
	rename -uid "32BF7AAF-4122-88B9-91C9-A7A7ECE69238";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[15]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 5 "e[1]" "e[4]" "e[7]" "e[10]" "e[13]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 5 "e[2]" "e[5]" "e[8]" "e[11]" "e[14]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 5 "e[0:2]" "e[4:5]" "e[7:8]" "e[10:11]" "e[13:15]";
	setAttr ".pv" -type "double2" 0.50000001490116119 0.50000001490116119 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.48372623 0.42284742
		 0.51627374 0.42284742 0.53962529 0.44284576 0.46037474 0.44284576 0.54873836 0.47464645
		 0.45126167 0.47464645 0.54621118 0.51857728 0.45378885 0.51857728 0.53135985 0.55715424
		 0.46864015 0.55715424 0.51287919 0.57715261 0.48712081 0.57715261;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  3.0267615 6.1482592 1.8882089 
		2.7947433 6.1630149 1.8120863 3.168622 6.2103462 2.1300216 2.6036763 6.2462749 1.9446689 
		3.1944623 6.3217773 2.4490104 2.4995897 6.3659697 2.2210302 3.1224008 6.4825668 2.8543215 
		2.4635587 6.5244675 2.6381621 2.9690719 6.629488 3.1806922 2.5219679 6.6579227 3.0340021 
		2.8127272 6.7105403 3.324667 2.629106 6.7222176 3.2644229;
	setAttr -s 12 ".vt[0:11]"  -0.16695026 0 0.75998169 0.16695026 0 0.75998169
		 -0.40651026 0 0.55394226 0.40651026 0 0.55394226 -0.5 0 0.22630575 0.5 0 0.22630575
		 -0.47407407 0 -0.2263058 0.47407407 0 -0.2263058 -0.3217167 0 -0.62375683 0.3217167 0 -0.62375683
		 -0.13212597 0 -0.82979631 0.13212597 0 -0.82979631;
	setAttr -s 16 ".ed[0:15]"  0 1 0 0 2 0 1 3 0 2 3 1 2 4 0 3 5 0 4 5 1
		 4 6 0 5 7 0 6 7 1 6 8 0 7 9 0 8 9 1 8 10 0 9 11 0 10 11 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 2 3
		f 4 3 5 -7 -5
		mu 0 4 3 2 4 5
		f 4 6 8 -10 -8
		mu 0 4 5 4 6 7
		f 4 9 11 -13 -11
		mu 0 4 7 6 8 9
		f 4 12 14 -16 -14
		mu 0 4 9 8 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "leaf6" -p "gacha";
	rename -uid "F04E0554-4801-F737-8E0D-1BBF224EE77E";
	setAttr ".rp" -type "double3" -3.6156141908601693 0.7587637320051126 3.8426406967934543 ;
	setAttr ".sp" -type "double3" -3.6156141908601693 0.7587637320051126 3.8426406967934543 ;
createNode mesh -n "leafShape6" -p "leaf6";
	rename -uid "77F483B7-4835-824B-78F5-01A5F26D5B8B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[15]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 5 "e[1]" "e[4]" "e[7]" "e[10]" "e[13]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 5 "e[2]" "e[5]" "e[8]" "e[11]" "e[14]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 5 "e[0:2]" "e[4:5]" "e[7:8]" "e[10:11]" "e[13:15]";
	setAttr ".pv" -type "double2" 0.50000001490116119 0.50000001490116119 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.48372623 0.42284742
		 0.51627374 0.42284742 0.53962529 0.44284576 0.46037474 0.44284576 0.54873836 0.47464645
		 0.45126167 0.47464645 0.54621118 0.51857728 0.45378885 0.51857728 0.53135985 0.55715424
		 0.46864015 0.55715424 0.51287919 0.57715261 0.48712081 0.57715261;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -4.3774767 1.1946514 2.7124193 
		-4.695653 1.1279306 2.9950197 -3.9972491 1.1518615 2.6858494 -4.7719855 0.98940021 
		3.3739531 -3.6665399 1.0263786 2.8868792 -4.6194525 0.82655382 3.7332349 -3.35746 
		0.82204294 3.2958429 -4.2609615 0.63257915 4.0983133 -3.2095373 0.61671376 3.7646446 
		-3.8226728 0.48814076 4.3092203 -3.2382545 0.4881683 4.101285 -3.4900637 0.43536502 
		4.3249369;
	setAttr -s 12 ".vt[0:11]"  -0.16695026 0 0.75998169 0.16695026 0 0.75998169
		 -0.40651026 0 0.55394226 0.40651026 0 0.55394226 -0.5 0 0.22630575 0.5 0 0.22630575
		 -0.47407407 0 -0.2263058 0.47407407 0 -0.2263058 -0.3217167 0 -0.62375683 0.3217167 0 -0.62375683
		 -0.13212597 0 -0.82979631 0.13212597 0 -0.82979631;
	setAttr -s 16 ".ed[0:15]"  0 1 0 0 2 0 1 3 0 2 3 1 2 4 0 3 5 0 4 5 1
		 4 6 0 5 7 0 6 7 1 6 8 0 7 9 0 8 9 1 8 10 0 9 11 0 10 11 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 2 3
		f 4 3 5 -7 -5
		mu 0 4 3 2 4 5
		f 4 6 8 -10 -8
		mu 0 4 5 4 6 7
		f 4 9 11 -13 -11
		mu 0 4 7 6 8 9
		f 4 12 14 -16 -14
		mu 0 4 9 8 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "leaf7" -p "gacha";
	rename -uid "6EEB95D8-4B30-F0C5-DB7D-FAAA58A2E441";
	setAttr ".rp" -type "double3" -3.1901756804935797 0.75876373200506952 4.5491033368524816 ;
	setAttr ".sp" -type "double3" -3.1901756804935797 0.75876373200506975 4.5491033368524816 ;
createNode mesh -n "leafShape7" -p "leaf7";
	rename -uid "F8D74ED4-4FB6-AD7E-CB13-ED955C7B8B7B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[15]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 5 "e[1]" "e[4]" "e[7]" "e[10]" "e[13]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 5 "e[2]" "e[5]" "e[8]" "e[11]" "e[14]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 5 "e[0:2]" "e[4:5]" "e[7:8]" "e[10:11]" "e[13:15]";
	setAttr ".pv" -type "double2" 0.50000001490116119 0.50000001490116119 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.48372623 0.42284742
		 0.51627374 0.42284742 0.53962529 0.44284576 0.46037474 0.44284576 0.54873836 0.47464645
		 0.45126167 0.47464645 0.54621118 0.51857728 0.45378885 0.51857728 0.53135985 0.55715424
		 0.46864015 0.55715424 0.51287919 0.57715261 0.48712081 0.57715261;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -3.7110193 0.82787764 4.0300927 
		-3.8666925 0.71037185 4.1523118 -3.5288341 0.88269454 4.0172935 -3.9078848 0.5965752 
		4.3148842 -3.3731492 0.86870009 4.1021538 -3.8393764 0.51677907 4.4681854 -3.2303767 
		0.79479516 4.2761459 -3.6724288 0.46112061 4.6232004 -3.1654255 0.68428975 4.4763713 
		-3.4654112 0.45785248 4.7118878 -3.1833243 0.58807892 4.6206508 -3.306525 0.4950836 
		4.7173753;
	setAttr -s 12 ".vt[0:11]"  -0.16695026 0 0.75998169 0.16695026 0 0.75998169
		 -0.40651026 0 0.55394226 0.40651026 0 0.55394226 -0.5 0 0.22630575 0.5 0 0.22630575
		 -0.47407407 0 -0.2263058 0.47407407 0 -0.2263058 -0.3217167 0 -0.62375683 0.3217167 0 -0.62375683
		 -0.13212597 0 -0.82979631 0.13212597 0 -0.82979631;
	setAttr -s 16 ".ed[0:15]"  0 1 0 0 2 0 1 3 0 2 3 1 2 4 0 3 5 0 4 5 1
		 4 6 0 5 7 0 6 7 1 6 8 0 7 9 0 8 9 1 8 10 0 9 11 0 10 11 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 2 3
		f 4 3 5 -7 -5
		mu 0 4 3 2 4 5
		f 4 6 8 -10 -8
		mu 0 4 5 4 6 7
		f 4 9 11 -13 -11
		mu 0 4 7 6 8 9
		f 4 12 14 -16 -14
		mu 0 4 9 8 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "leaf8" -p "gacha";
	rename -uid "E9986C99-44BE-8255-19CF-DF8034476379";
	setAttr ".rp" -type "double3" -1.9990418378014856 9.5901589421251145 0.83456615210646712 ;
	setAttr ".sp" -type "double3" -1.9990418378014856 9.5901589421251145 0.8345661521064669 ;
createNode mesh -n "leafShape8" -p "leaf8";
	rename -uid "A3AF5AE1-43B1-04C3-F33A-9C960AA31958";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[15]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 5 "e[1]" "e[4]" "e[7]" "e[10]" "e[13]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 5 "e[2]" "e[5]" "e[8]" "e[11]" "e[14]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 5 "e[0:2]" "e[4:5]" "e[7:8]" "e[10:11]" "e[13:15]";
	setAttr ".pv" -type "double2" 0.50000001490116119 0.50000001490116119 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.48372623 0.42284742
		 0.51627374 0.42284742 0.53962529 0.44284576 0.46037474 0.44284576 0.54873836 0.47464645
		 0.45126167 0.47464645 0.54621118 0.51857728 0.45378885 0.51857728 0.53135985 0.55715424
		 0.46864015 0.55715424 0.51287919 0.57715261 0.48712081 0.57715261;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -2.7397823 9.8873539 0.19331038 
		-2.9822431 9.8136711 0.47165287 -2.3910894 9.9217968 0.13737035 -2.981462 9.7423859 
		0.81511176 -2.045341 9.9131355 0.28803658 -2.7714877 9.6924639 1.1216464 -1.6803178 
		9.8669491 0.62544847 -2.3688121 9.6577187 1.4158338 -1.4538819 9.7977934 1.0297675 
		-1.9211093 9.6558065 1.5661401 -1.4168147 9.7375355 1.3315711 -1.6087011 9.6792221 
		1.5518546;
	setAttr -s 12 ".vt[0:11]"  -0.16695026 0 0.75998169 0.16695026 0 0.75998169
		 -0.40651026 0 0.55394226 0.40651026 0 0.55394226 -0.5 0 0.22630575 0.5 0 0.22630575
		 -0.47407407 0 -0.2263058 0.47407407 0 -0.2263058 -0.3217167 0 -0.62375683 0.3217167 0 -0.62375683
		 -0.13212597 0 -0.82979631 0.13212597 0 -0.82979631;
	setAttr -s 16 ".ed[0:15]"  0 1 0 0 2 0 1 3 0 2 3 1 2 4 0 3 5 0 4 5 1
		 4 6 0 5 7 0 6 7 1 6 8 0 7 9 0 8 9 1 8 10 0 9 11 0 10 11 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 2 3
		f 4 3 5 -7 -5
		mu 0 4 3 2 4 5
		f 4 6 8 -10 -8
		mu 0 4 5 4 6 7
		f 4 9 11 -13 -11
		mu 0 4 7 6 8 9
		f 4 12 14 -16 -14
		mu 0 4 9 8 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "leaf9" -p "gacha";
	rename -uid "B191CB61-4680-BB9E-5B4A-B9A90CEA75A7";
	setAttr ".rp" -type "double3" -1.9990418378014927 9.590158942125111 0.13733199545749564 ;
	setAttr ".sp" -type "double3" -1.9990418378014922 9.5901589421251092 0.13733199545749541 ;
createNode mesh -n "leafShape9" -p "leaf9";
	rename -uid "2B2E179E-49CF-33CD-5372-DFA9AA71DA84";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[15]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 5 "e[1]" "e[4]" "e[7]" "e[10]" "e[13]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 5 "e[2]" "e[5]" "e[8]" "e[11]" "e[14]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 5 "e[0:2]" "e[4:5]" "e[7:8]" "e[10:11]" "e[13:15]";
	setAttr ".pv" -type "double2" 0.50000001490116119 0.50000001490116119 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.48372623 0.42284742
		 0.51627374 0.42284742 0.53962529 0.44284576 0.46037474 0.44284576 0.54873836 0.47464645
		 0.45126167 0.47464645 0.54621118 0.51857728 0.45378885 0.51857728 0.53135985 0.55715424
		 0.46864015 0.55715424 0.51287919 0.57715261 0.48712081 0.57715261;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -2.4066019 9.9165812 -1.094925 
		-2.8654289 9.8437014 -0.88498771 -1.9403468 9.9390373 -0.96830118 -3.0575538 9.7615795 
		-0.4571203 -1.5939215 9.9120045 -0.58621609 -2.9680653 9.6937351 0.042527318 -1.3284534 
		9.8408117 0.039116979 -2.6313448 9.6338587 0.63525885 -1.2734145 9.7500086 0.66971958 
		-2.1575847 9.6095667 1.0742738 -1.3968734 9.6787939 1.0661694 -1.7599941 9.6211147 
		1.2323158;
	setAttr -s 12 ".vt[0:11]"  -0.16695026 0 0.75998169 0.16695026 0 0.75998169
		 -0.40651026 0 0.55394226 0.40651026 0 0.55394226 -0.5 0 0.22630575 0.5 0 0.22630575
		 -0.47407407 0 -0.2263058 0.47407407 0 -0.2263058 -0.3217167 0 -0.62375683 0.3217167 0 -0.62375683
		 -0.13212597 0 -0.82979631 0.13212597 0 -0.82979631;
	setAttr -s 16 ".ed[0:15]"  0 1 0 0 2 0 1 3 0 2 3 1 2 4 0 3 5 0 4 5 1
		 4 6 0 5 7 0 6 7 1 6 8 0 7 9 0 8 9 1 8 10 0 9 11 0 10 11 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 2 3
		f 4 3 5 -7 -5
		mu 0 4 3 2 4 5
		f 4 6 8 -10 -8
		mu 0 4 5 4 6 7
		f 4 9 11 -13 -11
		mu 0 4 7 6 8 9
		f 4 12 14 -16 -14
		mu 0 4 9 8 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "leaf10" -p "gacha";
	rename -uid "253F422F-4256-5ED6-F121-AA8B7377E791";
	setAttr ".rp" -type "double3" 2.9962608713025594 1.1237620542398443 0.68254737833963885 ;
	setAttr ".sp" -type "double3" 2.9962608713025594 1.1237620542398445 0.68254737833963897 ;
createNode mesh -n "leafShape10" -p "leaf10";
	rename -uid "F94C6D24-4445-DF02-21EC-5B94BA50E652";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[15]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 5 "e[1]" "e[4]" "e[7]" "e[10]" "e[13]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 5 "e[2]" "e[5]" "e[8]" "e[11]" "e[14]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 5 "e[0:2]" "e[4:5]" "e[7:8]" "e[10:11]" "e[13:15]";
	setAttr ".pv" -type "double2" 0.70102544128894806 0.30957095324993134 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.48372623 0.42284742
		 0.51627374 0.42284742 0.53962529 0.44284576 0.46037474 0.44284576 0.54873836 0.47464645
		 0.45126167 0.47464645 0.54621118 0.51857728 0.45378885 0.51857728 0.53135985 0.55715424
		 0.46864015 0.55715424 0.51287919 0.57715261 0.48712081 0.57715261;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  3.507169 0.4588452 1.1618947 
		3.4394629 0.42227894 0.95509326 3.4860594 0.64340502 1.3986118 3.3212006 0.55436873 
		0.89506614 3.3942034 0.90540689 1.5969975 3.1914306 0.79589415 0.97764564 3.2358654 
		1.2503639 1.7750095 3.0436063 1.14653 1.1877717 3.0705466 1.5390893 1.8510634 2.9400756 
		1.4686255 1.4525523 2.9624157 1.6766526 1.8219848 2.908833 1.6477128 1.6583204;
	setAttr -s 12 ".vt[0:11]"  -0.16695026 0 0.75998169 0.16695026 0 0.75998169
		 -0.40651026 0 0.55394226 0.40651026 0 0.55394226 -0.5 0 0.22630575 0.5 0 0.22630575
		 -0.47407407 0 -0.2263058 0.47407407 0 -0.2263058 -0.3217167 0 -0.62375683 0.3217167 0 -0.62375683
		 -0.13212597 0 -0.82979631 0.13212597 0 -0.82979631;
	setAttr -s 16 ".ed[0:15]"  0 1 0 0 2 0 1 3 0 2 3 1 2 4 0 3 5 0 4 5 1
		 4 6 0 5 7 0 6 7 1 6 8 0 7 9 0 8 9 1 8 10 0 9 11 0 10 11 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 2 3
		f 4 3 5 -7 -5
		mu 0 4 3 2 4 5
		f 4 6 8 -10 -8
		mu 0 4 5 4 6 7
		f 4 9 11 -13 -11
		mu 0 4 7 6 8 9
		f 4 12 14 -16 -14
		mu 0 4 9 8 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lilypad1" -p "gacha";
	rename -uid "74B2F839-439E-4887-4A13-62858CD45D05";
	setAttr ".rp" -type "double3" 1.5457014094778765 9.9169611845057339 -0.60207856089536793 ;
	setAttr ".sp" -type "double3" 1.5457014094778765 9.9169611845057339 -0.60207856089536793 ;
createNode mesh -n "lilypadShape1" -p "lilypad1";
	rename -uid "9BE074AC-4794-0BAE-967A-25980396F8F6";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "e[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[0:12]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[0:11]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[0:11]";
	setAttr ".pv" -type "double2" 0.87047180533409119 0.65017014741897583 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 13 ".uvst[0].uvsp[0:12]" -type "float2" 1.0057883263 0.57204515
		 0.94859678 0.51485366 0.87047178 0.49392015 0.79234678 0.51485366 0.73515534 0.57204515
		 0.71422178 0.65017015 0.73515534 0.72829515 0.79234678 0.78548664 0.87047178 0.80642015
		 0.94859678 0.78548664 1.0057883263 0.72829515 1.026721835 0.65017015 0.87047178 0.65017015;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 13 ".pt[0:12]" -type "float3"  2.185395 8.940259 0.10201901 
		2.0233972 8.9713697 -0.052650042 1.8053309 8.9879007 -0.10577719 1.5896273 8.985424 
		-0.04312662 1.4340837 8.9646015 0.11851391 1.3803778 8.931015 0.33583343 1.4429004 
		8.8936634 0.55060112 1.6048982 8.8625526 0.70527035 1.8229643 8.8460217 0.75839722 
		2.0386679 8.8484983 0.69574702 2.1942117 8.8693209 0.53410637 2.2479177 8.9029064 
		0.31678689 1.8141476 8.9169607 0.32631016;
	setAttr -s 13 ".vt[0:12]"  0.86602539 1 -0.5 0.5 1 -0.86602539 0 1 -1
		 -0.5 1 -0.86602539 -0.86602539 1 -0.5 -1 1 0 -0.86602539 1 0.5 -0.5 1 0.86602539
		 0 1 1 0.5 1 0.86602539 0.86602539 1 0.5 1 1 0 0 1 0;
	setAttr -s 24 ".ed[0:23]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 0 12 1 1 12 1 2 12 1 3 12 1 4 12 1 5 12 1 6 12 1
		 7 12 1 8 12 1 9 12 1 10 12 1 11 12 1;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 13 -13
		mu 0 3 10 9 12
		f 3 1 14 -14
		mu 0 3 9 8 12
		f 3 2 15 -15
		mu 0 3 8 7 12
		f 3 3 16 -16
		mu 0 3 7 6 12
		f 3 4 17 -17
		mu 0 3 6 5 12
		f 3 5 18 -18
		mu 0 3 5 4 12
		f 3 6 19 -19
		mu 0 3 4 3 12
		f 3 7 20 -20
		mu 0 3 3 2 12
		f 3 8 21 -21
		mu 0 3 2 1 12
		f 3 9 22 -22
		mu 0 3 1 0 12
		f 3 10 23 -23
		mu 0 3 0 11 12
		f 3 11 12 -24
		mu 0 3 11 10 12;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lilypad2" -p "gacha";
	rename -uid "25A31131-4778-0FF6-8690-C1A20DA5CE85";
	setAttr ".rp" -type "double3" -1.2195839803858339 1.4791926071540287 5.4260665479103016 ;
	setAttr ".sp" -type "double3" -1.2195839803858339 1.4791926071540287 5.4260665479103016 ;
createNode mesh -n "lilypad2Shape" -p "lilypad2";
	rename -uid "E552FDD1-4A98-9B7D-6956-3680B28CB962";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.87047180533409119 0.65017014741897583 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "bigleaf" -p "gacha";
	rename -uid "B3C70B07-4F06-8DB8-EABF-7FB6797306B8";
	setAttr ".rp" -type "double3" 3.4683327016343828 1.3548911734418576 -0.89379520447476235 ;
	setAttr ".sp" -type "double3" 3.4683327016343828 1.3548911734418576 -0.89379520447476235 ;
createNode mesh -n "bigleafShape" -p "bigleaf";
	rename -uid "F757A642-4264-C754-D075-4BAD629A7AE0";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.8368324339389801 0.17824962735176086 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".pt[0:17]" -type "float3"  0.25643474 0.039035559 0.38122356 
		0.19819058 0.014031197 0.37188527 0.14958166 -0.0093014594 0.38896343 0.11460992 
		-0.028730389 0.42791286 0.10620981 -0.038477082 0.48852977 0.13235827 -0.032515135 
		0.5458374 0.30643734 0.061764691 0.37649649 0.27299869 0.041480638 0.43096212 0.24401344 
		0.025348533 0.46353725 0.20922656 0.0059874323 0.50263268 0.17408235 -0.013572522 
		0.54212958 0.1522979 -0.025696948 0.56661218 0.32787618 0.065249652 0.43764168 0.34780678 
		0.068930097 0.49003896 0.33844528 0.059998535 0.53811115 0.30384317 0.040705245 0.57735252 
		0.24195491 0.011332056 0.59572941 0.17749289 -0.01595383 0.58148068;
createNode transform -n "waterfall" -p "gacha";
	rename -uid "D2412DB8-41B9-3C32-9D17-1E8D87701182";
	setAttr ".rp" -type "double3" 0 9.6358827551834292 -0.17641165160584538 ;
	setAttr ".sp" -type "double3" 0 9.6358827551834292 -0.17641165160584538 ;
createNode mesh -n "waterfallShape" -p "waterfall";
	rename -uid "FD80C071-4141-CEFC-17F5-E7A0D06EF48A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "birb" -p "gacha";
	rename -uid "6E8888A7-4832-8A16-855E-97A26A1F63A0";
	setAttr ".rp" -type "double3" -1.9723502042646559 9.6601813618822767 -0.46242951603332716 ;
	setAttr ".sp" -type "double3" -1.9723502042646559 9.6601813618822767 -0.46242951603332716 ;
createNode transform -n "r_wing" -p "birb";
	rename -uid "28150121-4BB3-2ACE-7549-81B36CBC0E6C";
	setAttr ".rp" -type "double3" -2.5584920452631401 10.365517199783882 -0.93147477083579833 ;
	setAttr ".sp" -type "double3" -2.5584920452631401 10.365517199783882 -0.93147477083579833 ;
createNode mesh -n "r_wingShape" -p "r_wing";
	rename -uid "2311D014-4E0B-7538-1E84-99A845C01C97";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 6 "e[15]" "e[18:19]" "e[22:23]" "e[26:27]" "e[30:31]" "e[34]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.52798375487327576 0.095821499824523926 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.69227248 0.06106931
		 0.69227248 0.078445494 0.66195929 0.067039311 0.66195929 0.03825736 0.69227248 0.11319751
		 0.66195929 0.12460369 0.69227248 0.13057369 0.66195929 0.15338564 0.61376876 0.06002003
		 0.61376876 0.024218619 0.61376876 0.13162297 0.61376876 0.16742444 0.56557822 0.067039311
		 0.56557822 0.03825736 0.56557822 0.12460369 0.56557822 0.15338564 0.53526497 0.078445494
		 0.53526497 0.06106931 0.53526497 0.11319751 0.53526497 0.13057369 0.70683491 0.0958215
		 0.52070254 0.0958215;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 22 ".pt[0:21]" -type "float3"  -2.1216633 10.498526 -1.0768867 
		-2.2865913 10.573062 -1.3363367 -2.4670017 10.734964 -1.4210932 -2.4824858 10.82233 
		-1.2464004 -2.0909851 10.279817 -0.91621268 -2.3641741 10.403278 -1.3459712 -2.6630118 
		10.671458 -1.4863646 -2.6886587 10.816173 -1.1969987 -2.1576018 10.035671 -0.71498978 
		-2.497416 10.189244 -1.2495571 -2.869133 10.522826 -1.4241891 -2.9010348 10.702835 
		-1.0642534 -2.369978 9.9223318 -0.58224458 -2.643167 10.045795 -1.0120029 -2.9420044 
		10.313974 -1.1523963 -2.9676516 10.45869 -0.86303055 -2.5761509 9.9161749 -0.53284293 
		-2.7410786 9.9907122 -0.79229307 -2.9214895 10.152614 -0.87704957 -2.9369731 10.239981 
		-0.70235664 -2.2599206 10.714441 -1.2121036 -2.7987158 10.024065 -0.56713957;
	setAttr -s 22 ".vt[0:21]"  -0.2315855 -0.50540757 0 -0.11579227 -0.50540757 0.15970194
		 0.11579227 -0.50540757 0.15970194 0.2315855 -0.50540757 0 -0.3836031 -0.31025088 0
		 -0.19180202 -0.31025088 0.26453388 0.19180202 -0.31025088 0.26453388 0.3836031 -0.31025088 0
		 -0.47715569 0 0 -0.23857784 0 0.3290478 0.23857784 0 0.32904792 0.47715569 0 0 -0.3836031 0.31025088 0
		 -0.19180202 0.31025088 0.26453388 0.19180202 0.31025088 0.26453388 0.3836031 0.31025088 0
		 -0.2315855 0.50540757 0 -0.11579227 0.50540757 0.15970194 0.11579227 0.50540757 0.15970194
		 0.2315855 0.50540757 0 0 -0.59916091 0 0 0.59916091 0;
	setAttr -s 39 ".ed[0:38]"  0 1 1 1 2 1 2 3 1 4 5 1 5 6 1 6 7 1 8 9 1
		 9 10 1 10 11 1 12 13 1 13 14 1 14 15 1 16 17 1 17 18 1 18 19 1 0 4 0 1 5 1 2 6 1
		 3 7 0 4 8 0 5 9 1 6 10 1 7 11 0 8 12 0 9 13 1 10 14 1 11 15 0 12 16 0 13 17 1 14 18 1
		 15 19 0 20 0 0 20 1 1 20 2 1 20 3 0 16 21 0 17 21 1 18 21 1 19 21 0;
	setAttr -s 18 -ch 66 ".fc[0:17]" -type "polyFaces" 
		f 4 15 3 -17 -1
		mu 0 4 0 3 2 1
		f 4 16 4 -18 -2
		mu 0 4 1 2 5 4
		f 4 17 5 -19 -3
		mu 0 4 4 5 7 6
		f 4 19 6 -21 -4
		mu 0 4 3 9 8 2
		f 4 20 7 -22 -5
		mu 0 4 2 8 10 5
		f 4 21 8 -23 -6
		mu 0 4 5 10 11 7
		f 4 23 9 -25 -7
		mu 0 4 9 13 12 8
		f 4 24 10 -26 -8
		mu 0 4 8 12 14 10
		f 4 25 11 -27 -9
		mu 0 4 10 14 15 11
		f 4 27 12 -29 -10
		mu 0 4 13 17 16 12
		f 4 28 13 -30 -11
		mu 0 4 12 16 18 14
		f 4 29 14 -31 -12
		mu 0 4 14 18 19 15
		f 3 -33 31 0
		mu 0 3 1 20 0
		f 3 -34 32 1
		mu 0 3 4 20 1
		f 3 -35 33 2
		mu 0 3 6 20 4
		f 3 35 -37 -13
		mu 0 3 17 21 16
		f 3 36 -38 -14
		mu 0 3 16 21 18
		f 3 37 -39 -15
		mu 0 3 18 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "l_wing" -p "birb";
	rename -uid "5F6C939C-4C8D-FFAA-AA80-41AC3F3BE272";
	setAttr ".rp" -type "double3" -1.443995482118952 10.289192191243124 -0.017592790586993839 ;
	setAttr ".sp" -type "double3" -1.443995482118952 10.289192191243124 -0.017592790586993839 ;
createNode mesh -n "l_wingShape" -p "l_wing";
	rename -uid "77B35A43-4092-C6FD-92ED-608EA4209496";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.52798375487327576 0.095821499824523926 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "l_leg" -p "birb";
	rename -uid "1D489BAA-46A3-5D53-E99B-CE8CEB0342EF";
	setAttr ".rp" -type "double3" -1.9265886747964045 9.7848254420435321 0.011628432971386757 ;
	setAttr ".sp" -type "double3" -1.9265886747964045 9.7848254420435321 0.011628432971386757 ;
createNode mesh -n "l_legShape" -p "l_leg";
	rename -uid "4E7D602A-4B59-5128-0263-9AB08FB275E4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.10779666900634766 -0.029922917485237122 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.024953872 0.0024057031
		 0.024953723 -0.062251449 -0.014713377 -0.081555843 -0.014713228 0.021710098 0.10779667
		 -0.094580054 0.10779667 -0.13318881 0.19063956 -0.062251478 0.23030663 -0.081555843
		 0.19063956 0.0024057031 0.23030668 0.021710038 0.10779667 0.034734249 0.10779667
		 0.073342979 -0.033010364 -0.089267284 -0.033010364 0.029421568 0.10779667 -0.14861175
		 0.2486037 -0.089267313 0.2486037 0.029421508 0.10779667 0.088765919 -0.014713377
		 -0.081555843 -0.014713228 0.021710038 0.10779667 -0.13318881 0.23030663 -0.081555843
		 0.23030668 0.021710038 0.10779667 0.073342979 0.024953723 -0.062251449 0.024953872
		 0.0024057031 0.10779667 -0.094580054 0.19063956 -0.062251508 0.19063956 0.0024057031
		 0.10779667 0.034734249 0.10779667 -0.029922903 0.10779667 -0.029922903;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 32 ".pt[0:31]" -type "float3"  -2.1739666 9.9842072 0.45662612 
		-1.7876217 9.9775972 0.50282383 -1.5362277 9.9913769 0.042660818 -1.6711785 10.011764 
		-0.46369821 -2.0575235 10.018373 -0.50989431 -2.3089178 10.004596 -0.049731374 -2.3190718 
		9.8783226 0.68132222 -1.7020284 9.8677664 0.75510401 -1.3074074 9.8877506 0.07733722 
		-1.5298295 9.918293 -0.67421126 -2.1468728 9.9288483 -0.74799299 -2.5414939 9.908865 
		-0.070225179 -2.3801472 9.7618561 0.79062128 -1.6709473 9.7497225 0.87542188 -1.2173891 
		9.7726927 0.096429966 -1.4730301 9.8077946 -0.76736343 -2.1822298 9.8199272 -0.85216397 
		-2.6357884 9.796958 -0.073171072 -2.3233478 9.6513577 0.69746912 -1.7063046 9.6408005 
		0.77125084 -1.3116837 9.6607857 0.093484096 -1.5341058 9.6913261 -0.65806437 -2.151149 
		9.7018833 -0.73184615 -2.5457699 9.6818991 -0.054078303 -2.1819987 9.5578842 0.48695576 
		-1.7956539 9.5512743 0.53315347 -1.5442599 9.565053 0.072990507 -1.6792107 9.5854406 
		-0.43336853 -2.0655558 9.5920496 -0.47956467 -2.3169498 9.5782709 -0.019401707 -1.9219513 
		10.030965 -0.0058815032 -1.9312263 9.538682 0.029140614;
	setAttr -s 32 ".vt[0:31]"  0.17222236 -0.27584076 -0.43301249 -0.17222217 -0.27584076 -0.43301392
		 -0.34444445 -0.27584076 -9.5367432e-07 -0.17222236 -0.27584076 0.43301201 0.1722222 -0.27584076 0.43301201
		 0.34444445 -0.27584076 -9.5367432e-07 0.27506149 -0.14685249 -0.64034986 -0.27506128 -0.14685249 -0.64035034
		 -0.55012262 -0.14685249 -9.5367432e-07 -0.2750614 -0.14685249 0.64034891 0.27506131 -0.14685249 0.64034939
		 0.55012262 -0.14685249 -9.5367432e-07 0.31614241 0 -0.73598719 -0.31614205 0 -0.73598719
		 -0.63228434 0 -9.5367432e-07 -0.31614241 0 0.73598623 0.31614211 0 0.73598623 0.63228434 0 -9.5367432e-07
		 0.27506149 0.14685249 -0.64034986 -0.27506128 0.14685249 -0.64035034 -0.55012262 0.14685249 -9.5367432e-07
		 -0.2750614 0.14685249 0.64034891 0.27506131 0.14685249 0.64034939 0.55012262 0.14685249 -9.5367432e-07
		 0.17222236 0.27584457 -0.43301249 -0.17222217 0.27584457 -0.43301392 -0.34444445 0.27584457 -9.5367432e-07
		 -0.17222236 0.27584457 0.43301201 0.1722222 0.27584457 0.43301201 0.34444445 0.27584457 -9.5367432e-07
		 4.7224682e-14 -0.31851768 -9.5367432e-07 4.7224682e-14 0.3185215 -9.5367432e-07;
	setAttr -s 66 ".ed[0:65]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 0 1 6 7 1
		 7 8 1 8 9 1 9 10 1 10 11 1 11 6 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 12 1
		 18 19 1 19 20 1 20 21 1 21 22 1 22 23 1 23 18 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1
		 29 24 1 0 6 1 1 7 1 2 8 1 3 9 1 4 10 1 5 11 1 6 12 1 7 13 1 8 14 1 9 15 1 10 16 1
		 11 17 1 12 18 1 13 19 1 14 20 1 15 21 1 16 22 1 17 23 1 18 24 1 19 25 1 20 26 1 21 27 1
		 22 28 1 23 29 1 30 0 1 30 1 1 30 2 1 30 3 1 30 4 1 30 5 1 24 31 1 25 31 1 26 31 1
		 27 31 1 28 31 1 29 31 1;
	setAttr -s 36 -ch 132 ".fc[0:35]" -type "polyFaces" 
		f 4 0 31 -7 -31
		mu 0 4 0 1 2 3
		f 4 1 32 -8 -32
		mu 0 4 1 4 5 2
		f 4 2 33 -9 -33
		mu 0 4 4 6 7 5
		f 4 3 34 -10 -34
		mu 0 4 6 8 9 7
		f 4 4 35 -11 -35
		mu 0 4 8 10 11 9
		f 4 5 30 -12 -36
		mu 0 4 10 0 3 11
		f 4 6 37 -13 -37
		mu 0 4 3 2 12 13
		f 4 7 38 -14 -38
		mu 0 4 2 5 14 12
		f 4 8 39 -15 -39
		mu 0 4 5 7 15 14
		f 4 9 40 -16 -40
		mu 0 4 7 9 16 15
		f 4 10 41 -17 -41
		mu 0 4 9 11 17 16
		f 4 11 36 -18 -42
		mu 0 4 11 3 13 17
		f 4 12 43 -19 -43
		mu 0 4 13 12 18 19
		f 4 13 44 -20 -44
		mu 0 4 12 14 20 18
		f 4 14 45 -21 -45
		mu 0 4 14 15 21 20
		f 4 15 46 -22 -46
		mu 0 4 15 16 22 21
		f 4 16 47 -23 -47
		mu 0 4 16 17 23 22
		f 4 17 42 -24 -48
		mu 0 4 17 13 19 23
		f 4 18 49 -25 -49
		mu 0 4 19 18 24 25
		f 4 19 50 -26 -50
		mu 0 4 18 20 26 24
		f 4 20 51 -27 -51
		mu 0 4 20 21 27 26
		f 4 21 52 -28 -52
		mu 0 4 21 22 28 27
		f 4 22 53 -29 -53
		mu 0 4 22 23 29 28
		f 4 23 48 -30 -54
		mu 0 4 23 19 25 29
		f 3 -1 -55 55
		mu 0 3 1 0 30
		f 3 -2 -56 56
		mu 0 3 4 1 30
		f 3 -3 -57 57
		mu 0 3 6 4 30
		f 3 -4 -58 58
		mu 0 3 8 6 30
		f 3 -5 -59 59
		mu 0 3 10 8 30
		f 3 -6 -60 54
		mu 0 3 0 10 30
		f 3 24 61 -61
		mu 0 3 25 24 31
		f 3 25 62 -62
		mu 0 3 24 26 31
		f 3 26 63 -63
		mu 0 3 26 27 31
		f 3 27 64 -64
		mu 0 3 27 28 31
		f 3 28 65 -65
		mu 0 3 28 29 31
		f 3 29 60 -66
		mu 0 3 29 25 31;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "r_leg" -p "birb";
	rename -uid "BF9C31C7-4ED8-50CD-C834-77AFEBCA1443";
	setAttr ".rp" -type "double3" -2.5022109606042822 9.7214261836479654 -0.5457054954816466 ;
	setAttr ".sp" -type "double3" -2.5022109606042822 9.7214261836479654 -0.5457054954816466 ;
createNode mesh -n "r_legShape" -p "r_leg";
	rename -uid "43586073-42B1-B4D6-E381-A3BA42E5B32C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.10779666900634766 -0.029922917485237122 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.024953872 0.0024057031
		 0.024953723 -0.062251449 -0.014713377 -0.081555843 -0.014713228 0.021710098 0.10779667
		 -0.094580054 0.10779667 -0.13318881 0.19063956 -0.062251478 0.23030663 -0.081555843
		 0.19063956 0.0024057031 0.23030668 0.021710038 0.10779667 0.034734249 0.10779667
		 0.073342979 -0.033010364 -0.089267284 -0.033010364 0.029421568 0.10779667 -0.14861175
		 0.2486037 -0.089267313 0.2486037 0.029421508 0.10779667 0.088765919 -0.014713377
		 -0.081555843 -0.014713228 0.021710038 0.10779667 -0.13318881 0.23030663 -0.081555843
		 0.23030668 0.021710038 0.10779667 0.073342979 0.024953723 -0.062251449 0.024953872
		 0.0024057031 0.10779667 -0.094580054 0.19063956 -0.062251508 0.19063956 0.0024057031
		 0.10779667 0.034734249 0.10779667 -0.029922903 0.10779667 -0.029922903;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 32 ".pt[0:31]" -type "float3"  -2.7475786 9.9179897 -0.11438184 
		-2.3758197 9.9179487 -0.057923846 -2.1204314 9.9337778 -0.49623203 -2.2368021 9.9496469 
		-0.9909966 -2.6085613 9.949687 -1.047453 -2.8639495 9.9338589 -0.60914493 -2.8965411 
		9.8110943 0.095417276 -2.3027935 9.8110285 0.18558612 -1.9031286 9.8344336 -0.45925429 
		-2.0972116 9.8579044 -1.1942636 -2.690959 9.8579693 -1.2844323 -3.0906239 9.8345652 
		-0.63959092 -2.9615664 9.6945257 0.19544348 -2.2791414 9.6944504 0.29907858 -1.8197863 
		9.7213507 -0.44206938 -2.0428555 9.7483263 -1.2868534 -2.7252803 9.7484016 -1.3904886 
		-3.1846359 9.7215004 -0.64933956 -2.9072104 9.5849466 0.10285355 -2.3134627 9.5848818 
		0.19302242 -1.9137981 9.6082869 -0.45181802 -2.1078811 9.6317568 -1.1868273 -2.7016284 
		9.6318226 -1.2769961 -3.1012933 9.6084175 -0.6321547 -2.7676196 9.4932032 -0.10041384 
		-2.3958607 9.4931612 -0.043955818 -2.1404724 9.5089903 -0.48226401 -2.2568433 9.5248594 
		-0.97702855 -2.6286025 9.5248995 -1.0334851 -2.8839905 9.5090714 -0.59517688 -2.4906402 
		9.9666777 -0.55376893 -2.513782 9.4761705 -0.53763992;
	setAttr -s 32 ".vt[0:31]"  0.17222236 -0.27584076 -0.43301249 -0.17222217 -0.27584076 -0.43301392
		 -0.34444445 -0.27584076 -9.5367432e-07 -0.17222236 -0.27584076 0.43301201 0.1722222 -0.27584076 0.43301201
		 0.34444445 -0.27584076 -9.5367432e-07 0.27506149 -0.14685249 -0.64034986 -0.27506128 -0.14685249 -0.64035034
		 -0.55012262 -0.14685249 -9.5367432e-07 -0.2750614 -0.14685249 0.64034891 0.27506131 -0.14685249 0.64034939
		 0.55012262 -0.14685249 -9.5367432e-07 0.31614241 0 -0.73598719 -0.31614205 0 -0.73598719
		 -0.63228434 0 -9.5367432e-07 -0.31614241 0 0.73598623 0.31614211 0 0.73598623 0.63228434 0 -9.5367432e-07
		 0.27506149 0.14685249 -0.64034986 -0.27506128 0.14685249 -0.64035034 -0.55012262 0.14685249 -9.5367432e-07
		 -0.2750614 0.14685249 0.64034891 0.27506131 0.14685249 0.64034939 0.55012262 0.14685249 -9.5367432e-07
		 0.17222236 0.27584457 -0.43301249 -0.17222217 0.27584457 -0.43301392 -0.34444445 0.27584457 -9.5367432e-07
		 -0.17222236 0.27584457 0.43301201 0.1722222 0.27584457 0.43301201 0.34444445 0.27584457 -9.5367432e-07
		 4.7224682e-14 -0.31851768 -9.5367432e-07 4.7224682e-14 0.3185215 -9.5367432e-07;
	setAttr -s 66 ".ed[0:65]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 0 1 6 7 1
		 7 8 1 8 9 1 9 10 1 10 11 1 11 6 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 12 1
		 18 19 1 19 20 1 20 21 1 21 22 1 22 23 1 23 18 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1
		 29 24 1 0 6 1 1 7 1 2 8 1 3 9 1 4 10 1 5 11 1 6 12 1 7 13 1 8 14 1 9 15 1 10 16 1
		 11 17 1 12 18 1 13 19 1 14 20 1 15 21 1 16 22 1 17 23 1 18 24 1 19 25 1 20 26 1 21 27 1
		 22 28 1 23 29 1 30 0 1 30 1 1 30 2 1 30 3 1 30 4 1 30 5 1 24 31 1 25 31 1 26 31 1
		 27 31 1 28 31 1 29 31 1;
	setAttr -s 36 -ch 132 ".fc[0:35]" -type "polyFaces" 
		f 4 0 31 -7 -31
		mu 0 4 0 1 2 3
		f 4 1 32 -8 -32
		mu 0 4 1 4 5 2
		f 4 2 33 -9 -33
		mu 0 4 4 6 7 5
		f 4 3 34 -10 -34
		mu 0 4 6 8 9 7
		f 4 4 35 -11 -35
		mu 0 4 8 10 11 9
		f 4 5 30 -12 -36
		mu 0 4 10 0 3 11
		f 4 6 37 -13 -37
		mu 0 4 3 2 12 13
		f 4 7 38 -14 -38
		mu 0 4 2 5 14 12
		f 4 8 39 -15 -39
		mu 0 4 5 7 15 14
		f 4 9 40 -16 -40
		mu 0 4 7 9 16 15
		f 4 10 41 -17 -41
		mu 0 4 9 11 17 16
		f 4 11 36 -18 -42
		mu 0 4 11 3 13 17
		f 4 12 43 -19 -43
		mu 0 4 13 12 18 19
		f 4 13 44 -20 -44
		mu 0 4 12 14 20 18
		f 4 14 45 -21 -45
		mu 0 4 14 15 21 20
		f 4 15 46 -22 -46
		mu 0 4 15 16 22 21
		f 4 16 47 -23 -47
		mu 0 4 16 17 23 22
		f 4 17 42 -24 -48
		mu 0 4 17 13 19 23
		f 4 18 49 -25 -49
		mu 0 4 19 18 24 25
		f 4 19 50 -26 -50
		mu 0 4 18 20 26 24
		f 4 20 51 -27 -51
		mu 0 4 20 21 27 26
		f 4 21 52 -28 -52
		mu 0 4 21 22 28 27
		f 4 22 53 -29 -53
		mu 0 4 22 23 29 28
		f 4 23 48 -30 -54
		mu 0 4 23 19 25 29
		f 3 -1 -55 55
		mu 0 3 1 0 30
		f 3 -2 -56 56
		mu 0 3 4 1 30
		f 3 -3 -57 57
		mu 0 3 6 4 30
		f 3 -4 -58 58
		mu 0 3 8 6 30
		f 3 -5 -59 59
		mu 0 3 10 8 30
		f 3 -6 -60 54
		mu 0 3 0 10 30
		f 3 24 61 -61
		mu 0 3 25 24 31
		f 3 25 62 -62
		mu 0 3 24 26 31
		f 3 26 63 -63
		mu 0 3 26 27 31
		f 3 27 64 -64
		mu 0 3 27 28 31
		f 3 28 65 -65
		mu 0 3 28 29 31
		f 3 29 60 -66
		mu 0 3 29 25 31;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "beak" -p "birb";
	rename -uid "055140C7-4E72-50BD-9080-C2977A7D109F";
	setAttr ".rp" -type "double3" -2.3856190561990731 10.780351751507899 0.1752762772423419 ;
	setAttr ".sp" -type "double3" -2.3856190561990731 10.780351751507899 0.1752762772423419 ;
createNode mesh -n "beakShape" -p "beak";
	rename -uid "FA5093AC-425A-F707-7D96-1998F7E0D1B2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.10779666900634766 -0.029922917485237122 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "l_eye" -p "birb";
	rename -uid "34182EF0-497A-8781-B541-B296B39206C0";
	setAttr ".rp" -type "double3" -2.1106627304020948 10.826895886623674 0.11873337600398096 ;
	setAttr ".sp" -type "double3" -2.1106627304020948 10.826895886623674 0.11873337600398096 ;
createNode mesh -n "l_eyeShape" -p "l_eye";
	rename -uid "45CF0A82-4CC6-8445-32F6-4C930E18F567";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75233702073496223 0.20224613023001015 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 32 ".pt[0:31]" -type "float3"  -1.1175871e-08 1.4901161e-07 
		1.4901161e-08 -1.4901161e-08 -1.1920929e-07 3.7252903e-09 -7.4505806e-09 2.9802322e-08 
		1.4901161e-08 -1.4901161e-08 1.7881393e-07 7.4505806e-09 -7.4505806e-09 0 1.1175871e-08 
		-7.4505806e-09 -1.7881393e-07 -7.4505806e-09 -1.3038516e-08 2.9802322e-08 -9.3132257e-09 
		-1.8626451e-09 4.4703484e-08 1.8626451e-09 -7.4505806e-09 -4.4703484e-08 -1.8626451e-09 
		-3.7252903e-09 -4.4703484e-08 -3.7252903e-09 -5.5879354e-09 -4.4703484e-08 1.8626451e-09 
		1.8626451e-09 1.1920929e-07 -7.4505806e-09 -2.3283064e-09 1.8626451e-08 -1.3969839e-09 
		-4.6566129e-10 -1.8626451e-09 -1.1641532e-10 4.6566129e-10 1.8626451e-08 -1.3969839e-09 
		1.3969839e-09 -1.1175871e-08 1.8626451e-09 3.4924597e-10 4.6566129e-09 0 -4.6566129e-10 
		-1.8626451e-08 1.3969839e-09 -5.5879354e-09 4.4703484e-08 1.8626451e-09 5.5879354e-09 
		4.4703484e-08 -3.7252903e-09 -3.7252903e-09 -1.4901161e-07 9.3132257e-09 1.6763806e-08 
		-2.9802322e-08 7.4505806e-09 3.7252903e-09 -2.9802322e-08 -3.7252903e-09 5.5879354e-09 
		7.4505806e-08 1.8626451e-09 1.4901161e-08 -1.7881393e-07 -7.4505806e-09 7.4505806e-09 
		0 -1.1175871e-08 1.8626451e-08 1.7881393e-07 3.7252903e-09 1.1175871e-08 -1.4901161e-07 
		-1.4901161e-08 1.4901161e-08 1.1920929e-07 -3.7252903e-09 1.1175871e-08 0 -1.4901161e-08 
		1.4901161e-08 0 7.4505806e-09 -1.4901161e-08 0 -7.4505806e-09;
createNode transform -n "r_eye" -p "birb";
	rename -uid "7D323CF9-41B3-5E72-5A34-2585E3AAAB38";
	setAttr ".rp" -type "double3" -2.315385395043732 10.931114243704885 0.018511455014820086 ;
	setAttr ".sp" -type "double3" -2.315385395043732 10.931114243704885 0.018511455014820086 ;
createNode mesh -n "r_eyeShape" -p "r_eye";
	rename -uid "F735D1FB-4321-63B8-F7BE-56A17FD72F9F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75233702073496223 0.20224613023001015 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.76651007 0.15314949
		 0.73816395 0.15314949 0.72778857 0.17390043 0.77688545 0.17390043 0.72399092 0.15314949
		 0.70324004 0.17390043 0.73816395 0.15314949 0.72778857 0.17390043 0.76651007 0.15314949
		 0.77688545 0.17390043 0.78068316 0.15314949 0.80143392 0.17390043 0.72399092 0.20224571
		 0.78068316 0.20224571 0.69564474 0.20224571 0.72399092 0.20224571 0.78068316 0.20224571
		 0.80902922 0.20224571 0.72778857 0.23059183 0.77688545 0.23059183 0.70324004 0.23059183
		 0.72778857 0.23059183 0.77688545 0.23059183 0.80143392 0.23059183 0.73816395 0.25134277
		 0.76651007 0.25134277 0.72399092 0.25134277 0.73816395 0.25134277 0.76651007 0.25134277
		 0.78068316 0.25134277 0.75233698 0.1455543 0.75233698 0.25893795;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 32 ".pt[0:31]" -type "float3"  -2.5671227 11.742085 0.43216309 
		-2.0900717 11.74425 0.45007741 -1.8359636 11.749613 0.045466222 -2.0589075 11.752811 
		-0.3770594 -2.5359585 11.750648 -0.39497375 -2.7900662 11.745284 0.0096375197 -2.7541447 
		11.393134 0.72453898 -1.9278679 11.396883 0.75556749 -1.4877398 11.406173 0.05475948 
		-1.8738898 11.411712 -0.6770767 -2.7001662 11.407963 -0.70810521 -3.1402936 11.398675 
		-0.0072975829 -2.823601 10.920388 0.82773441 -1.8694991 10.924718 0.86356306 -1.3612833 
		10.935444 0.054340132 -1.8071698 10.94184 -0.79071194 -2.7612722 10.93751 -0.82654071 
		-3.2694876 10.926785 -0.017317243 -2.7568815 10.450516 0.71410006 -1.9306047 10.454266 
		0.74512863 -1.4904766 10.463553 0.044320546 -1.8766266 10.469093 -0.68751562 -2.702903 
		10.465344 -0.71854419 -3.1430306 10.456056 -0.017736569 -2.5718632 10.109417 0.41408229 
		-2.0948122 10.111582 0.43199664 -1.8407041 10.116944 0.027385376 -2.063648 10.120143 
		-0.39514023 -2.540699 10.117978 -0.41305459 -2.7948067 10.112616 -0.0084432885 -2.3126485 
		11.873734 0.028950356 -2.3181221 9.9884949 0.0080725104;
	setAttr -s 32 ".vt[0:31]"  0.25 -0.86602783 -0.43301249 -0.25 -0.86602783 -0.43301249
		 -0.50000048 -0.86602783 0 -0.25 -0.86602783 0.43301249 0.25 -0.86602783 0.43301249
		 0.5 -0.86602783 0 0.43301296 -0.5 -0.75000048 -0.43301249 -0.5 -0.75000048 -0.86602592 -0.5 0
		 -0.43301249 -0.5 0.75 0.43301249 -0.5 0.75 0.86602545 -0.5 0 0.50000048 0 -0.86602545
		 -0.49999952 0 -0.86602545 -1 0 0 -0.50000048 0 0.86602592 0.5 0 0.86602592 1 0 0
		 0.43301296 0.5 -0.75000048 -0.43301249 0.5 -0.75000048 -0.86602592 0.5 0 -0.43301249 0.5 0.75
		 0.43301249 0.5 0.75 0.86602545 0.5 0 0.25 0.86602783 -0.43301249 -0.25 0.86602783 -0.43301249
		 -0.50000048 0.86602783 0 -0.25 0.86602783 0.43301249 0.25 0.86602783 0.43301249 0.5 0.86602783 0
		 0 -1 0 0 1 0;
	setAttr -s 66 ".ed[0:65]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 0 1 6 7 1
		 7 8 1 8 9 1 9 10 1 10 11 1 11 6 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 12 1
		 18 19 1 19 20 1 20 21 1 21 22 1 22 23 1 23 18 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1
		 29 24 1 0 6 1 1 7 1 2 8 1 3 9 1 4 10 1 5 11 1 6 12 1 7 13 1 8 14 1 9 15 1 10 16 1
		 11 17 1 12 18 1 13 19 1 14 20 1 15 21 1 16 22 1 17 23 1 18 24 1 19 25 1 20 26 1 21 27 1
		 22 28 1 23 29 1 30 0 1 30 1 1 30 2 1 30 3 1 30 4 1 30 5 1 24 31 1 25 31 1 26 31 1
		 27 31 1 28 31 1 29 31 1;
	setAttr -s 36 -ch 132 ".fc[0:35]" -type "polyFaces" 
		f 4 0 31 -7 -31
		mu 0 4 0 1 2 3
		f 4 1 32 -8 -32
		mu 0 4 1 4 5 2
		f 4 2 33 -9 -33
		mu 0 4 4 6 7 5
		f 4 3 34 -10 -34
		mu 0 4 6 8 9 7
		f 4 4 35 -11 -35
		mu 0 4 8 10 11 9
		f 4 5 30 -12 -36
		mu 0 4 10 0 3 11
		f 4 6 37 -13 -37
		mu 0 4 3 2 12 13
		f 4 7 38 -14 -38
		mu 0 4 2 5 14 12
		f 4 8 39 -15 -39
		mu 0 4 5 7 15 14
		f 4 9 40 -16 -40
		mu 0 4 7 9 16 15
		f 4 10 41 -17 -41
		mu 0 4 9 11 17 16
		f 4 11 36 -18 -42
		mu 0 4 11 3 13 17
		f 4 12 43 -19 -43
		mu 0 4 13 12 18 19
		f 4 13 44 -20 -44
		mu 0 4 12 14 20 18
		f 4 14 45 -21 -45
		mu 0 4 14 15 21 20
		f 4 15 46 -22 -46
		mu 0 4 15 16 22 21
		f 4 16 47 -23 -47
		mu 0 4 16 17 23 22
		f 4 17 42 -24 -48
		mu 0 4 17 13 19 23
		f 4 18 49 -25 -49
		mu 0 4 19 18 24 25
		f 4 19 50 -26 -50
		mu 0 4 18 20 26 24
		f 4 20 51 -27 -51
		mu 0 4 20 21 27 26
		f 4 21 52 -28 -52
		mu 0 4 21 22 28 27
		f 4 22 53 -29 -53
		mu 0 4 22 23 29 28
		f 4 23 48 -30 -54
		mu 0 4 23 19 25 29
		f 3 -1 -55 55
		mu 0 3 1 0 30
		f 3 -2 -56 56
		mu 0 3 4 1 30
		f 3 -3 -57 57
		mu 0 3 6 4 30
		f 3 -4 -58 58
		mu 0 3 8 6 30
		f 3 -5 -59 59
		mu 0 3 10 8 30
		f 3 -6 -60 54
		mu 0 3 0 10 30
		f 3 24 61 -61
		mu 0 3 25 24 31
		f 3 25 62 -62
		mu 0 3 24 26 31
		f 3 26 63 -63
		mu 0 3 26 27 31
		f 3 27 64 -64
		mu 0 3 27 28 31
		f 3 28 65 -65
		mu 0 3 28 29 31
		f 3 29 60 -66
		mu 0 3 29 25 31;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "base" -p "birb";
	rename -uid "5F6C4F34-45E0-F236-933D-33BD83B79D3A";
	setAttr ".rp" -type "double3" -2.0373268310641062 10.581104396959057 -0.4946541205911672 ;
	setAttr ".sp" -type "double3" -2.0373268310641062 10.581104396959057 -0.4946541205911672 ;
createNode mesh -n "baseShape" -p "base";
	rename -uid "47DA4A15-45E8-F343-E759-A0B3EC6A5B39";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -0.20064203863783781 -0.2006415618006796 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "754EB4D8-455D-458D-8E8D-FD833239AB18";
	setAttr -s 32 ".lnk";
	setAttr -s 32 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "6BD358A0-467A-2D63-ACD7-0CAC43DF4D7D";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "E23D1107-4476-9D40-678F-3B89E6395922";
createNode displayLayerManager -n "layerManager";
	rename -uid "A7EE5750-460E-90B2-24C1-56B29BC5E577";
createNode displayLayer -n "defaultLayer";
	rename -uid "E83A5813-40A9-6B7E-444D-51B96519319B";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "62B15F64-4B8D-8DF5-2797-549C0FA7F8E9";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "4C373691-479B-9D05-C582-20A1BF42B7D8";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "434285BF-406C-8C98-E266-C583198346B9";
	setAttr ".version" -type "string" "5.3.0";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "91CCA472-4312-01E8-6125-73BF309D3070";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "4D26ADCC-420A-C7D6-01D3-A2846D99044D";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "C0D829A2-4BC0-18D8-15BE-2B8A8CF6B5A0";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode groupId -n "groupId4";
	rename -uid "FEEE4A62-444A-E191-3134-64B03F3E7092";
	setAttr ".ihi" 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "E7E7B629-4E91-6721-FA97-3EA2ED9D3FAA";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 849\n            -height 883\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n"
		+ "                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n"
		+ "                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n"
		+ "                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n"
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n"
		+ "                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n"
		+ "                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 849\\n    -height 883\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 849\\n    -height 883\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "13E0896B-4610-0394-26C6-D98AACD96D9D";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode lambert -n "skin";
	rename -uid "BD23366B-4DE1-4914-EE7C-78A043345081";
	setAttr ".c" -type "float3" 0.50999999 0.29289365 0.25601998 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "C09C61DE-450F-914D-C40F-24ACF7514BE1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "17AE7063-499B-9140-07D0-498161F81683";
createNode lambert -n "black";
	rename -uid "1DAF75B1-4DE8-614D-14CB-90B69DE99382";
	setAttr ".c" -type "float3" 0.0361 0.0361 0.0361 ;
createNode shadingEngine -n "lambert3SG";
	rename -uid "91B00412-430D-AF59-5498-CEB8454FCC06";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo2";
	rename -uid "BB183EBA-4D52-6D3B-EAF5-5CB0AD6D06E2";
createNode lambert -n "red";
	rename -uid "0EF9B238-475E-86EB-C97F-65AC3EEEA843";
	setAttr ".c" -type "float3" 0.12800001 0.04734781 0.028543999 ;
createNode shadingEngine -n "lambert4SG";
	rename -uid "4A79560D-4E81-1D8D-9700-BCA9C98BE0CA";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo3";
	rename -uid "3BBC89D8-4D68-44AA-53C5-93865952C629";
createNode lambert -n "white";
	rename -uid "0EE27A3A-4167-D6DD-9018-BAB01F1F9E3E";
	setAttr ".c" -type "float3" 1.3243661 0.78738689 0.68250495 ;
createNode shadingEngine -n "lambert5SG";
	rename -uid "84912BF0-4E11-D762-3A90-1E81C45D9597";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "D2584995-4E27-5E26-3C31-7A93427D48FC";
createNode groupId -n "groupId33";
	rename -uid "F76D7DA3-46A8-65C2-B459-0584DFB86083";
	setAttr ".ihi" 0;
createNode shadingEngine -n "lambert1SG";
	rename -uid "B30ED4C8-42FA-593C-AD33-3488E156201F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "229EB602-4ABD-5B7F-9137-3E9D197FA685";
createNode objectSet -n "set13";
	rename -uid "C0329628-48CF-ACCA-3724-DDAEC30D19AD";
	setAttr ".ihi" 0;
createNode lambert -n "metal";
	rename -uid "364B0276-47F9-3CC2-64A9-34A790C95A5E";
	setAttr ".c" -type "float3" 0.176 0.15233615 0.14327745 ;
createNode shadingEngine -n "lambert6SG";
	rename -uid "45D9555B-4503-FED3-8570-3285A707FC71";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
	rename -uid "8EA5DF5D-44E5-FA28-FDA0-6A8392EAE70F";
createNode groupId -n "groupId40";
	rename -uid "C2FA24CA-4DFA-8308-4B41-7D80A4980101";
	setAttr ".ihi" 0;
createNode lambert -n "green";
	rename -uid "E75F1F8C-45AD-13EE-8644-1394BE98BEFD";
	setAttr ".c" -type "float3" 0.035713501 0.040160645 0.021097684 ;
createNode shadingEngine -n "lambert7SG";
	rename -uid "830689BA-45F4-7553-F57B-B8AF4D090CD3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
	rename -uid "3897DDB3-497A-9139-EB8A-8DB4870D9383";
createNode groupId -n "groupId43";
	rename -uid "945F3AEB-479C-E637-D265-AAA3F946E3A6";
	setAttr ".ihi" 0;
createNode blinn -n "darkmetal";
	rename -uid "3205EA3C-4D53-8415-7456-7B842F4B666A";
	setAttr ".c" -type "float3" 0.10040161 0.082852148 0.077330947 ;
createNode shadingEngine -n "blinn1SG";
	rename -uid "F13C7EF2-4466-E3CD-199E-A5B622CD0079";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo8";
	rename -uid "CB7155E1-4481-5D2D-A227-FB893A1247F7";
createNode groupId -n "groupId85";
	rename -uid "DCC54B20-4807-175E-5D8C-A395FD2266B4";
	setAttr ".ihi" 0;
createNode lambert -n "blue";
	rename -uid "789101A5-4266-3947-C476-E1BF53ADBE98";
	setAttr ".c" -type "float3" 0.045844 0.052060004 0.072999999 ;
createNode shadingEngine -n "lambert8SG";
	rename -uid "0CC6FBAA-4CD6-986F-4249-92AB14DBB3B7";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo9";
	rename -uid "A3979211-4993-5408-4F36-62A8B92E68CC";
createNode blinn -n "bluedark";
	rename -uid "564044FB-4154-C82D-0F81-679869266ECD";
	setAttr ".c" -type "float3" 0.022810806 0.028742656 0.048582997 ;
createNode shadingEngine -n "blinn2SG";
	rename -uid "5A8A4DED-49A1-CF47-F54C-2DBC4DF29DC9";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo10";
	rename -uid "A2201C40-4788-9AE4-C669-4AA52CD3E966";
createNode lambert -n "fire";
	rename -uid "719E4562-45BE-E8BF-D69A-9A805EF69C2A";
	setAttr ".c" -type "float3" 0.48500001 0.11249323 0.074689992 ;
	setAttr ".ambc" -type "float3" 1 0.96520001 0 ;
createNode shadingEngine -n "lambert9SG";
	rename -uid "376F5CF0-48D4-2907-4C51-8AAA397F5EFB";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo11";
	rename -uid "8306DF5F-4EAC-6286-1A76-5EA401291B21";
createNode groupId -n "groupId103";
	rename -uid "B3BD9ED5-4165-7703-8DFE-C5826948764F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId106";
	rename -uid "77319446-4D9B-9836-EDB5-88B4410B3C8A";
	setAttr ".ihi" 0;
createNode polyCylinder -n "polyCylinder6";
	rename -uid "FBB6735B-4A22-36C6-518E-9D989238AFE3";
	setAttr ".sa" 12;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyBevel3 -n "polyBevel3";
	rename -uid "EEA11596-454C-B25D-4C2C-D1B85830E2D2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:23]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0 1 0 0 -1 0 0 6.2843906966610099 3.5943402242884184 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.3;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak61";
	rename -uid "66012CA2-4411-D7CF-2EA4-31B1C057EFE4";
	setAttr ".uopa" yes;
	setAttr -s 26 ".tk[0:25]" -type "float3"  0 0.7559979 3.0642155e-14
		 0 0.7559979 3.0642155e-14 0 0.7559979 3.0642155e-14 0 0.7559979 3.0642155e-14 0 0.7559979
		 3.0642155e-14 0 0.7559979 3.0642155e-14 0 0.7559979 3.0642155e-14 0 0.7559979 3.0642155e-14
		 0 0.7559979 3.0642155e-14 0 0.7559979 3.0642155e-14 0 0.7559979 3.0642155e-14 0 0.7559979
		 3.0642155e-14 0 -0.7559979 3.0642155e-14 0 -0.7559979 3.0642155e-14 0 -0.7559979
		 3.0642155e-14 0 -0.7559979 3.0642155e-14 0 -0.7559979 3.0642155e-14 0 -0.7559979
		 3.0642155e-14 0 -0.7559979 3.0642155e-14 0 -0.7559979 3.0642155e-14 0 -0.7559979
		 3.0642155e-14 0 -0.7559979 3.0642155e-14 0 -0.7559979 3.0642155e-14 0 -0.7559979
		 3.0642155e-14 0 0.7559979 3.0642155e-14 0 -0.7559979 3.0642155e-14;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	rename -uid "A497FD7A-47FA-EF3C-FD79-FFBC9CA18EA6";
	setAttr ".ics" -type "componentList" 1 "f[36:59]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0 1 0 0 -1 0 0 6.2843906966610099 3.5943402242884184 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 6.2843909 3.5943403 0 ;
	setAttr ".rs" 47140;
	setAttr ".lt" -type "double3" -8.8817841970012523e-16 1.5117497443152819e-17 -0.12344373458272384 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 5.5253594008846427 2.8353091073259855 -0.28836247324943542 ;
	setAttr ".cbx" -type "double3" 7.0434219924373771 4.3533715796694299 0.28836247324943542 ;
createNode polyTweak -n "polyTweak62";
	rename -uid "1E9B578D-4AB4-AB38-3927-8C8B20A1DCED";
	setAttr ".uopa" yes;
	setAttr -s 26 ".tk";
	setAttr ".tk[0]" -type "float3" 0 -0.044360366 -2.1307137e-08 ;
	setAttr ".tk[1]" -type "float3" 0 0.044360366 -2.1307137e-08 ;
	setAttr ".tk[3]" -type "float3" -0.14306176 -0.044360366 0.082596757 ;
	setAttr ".tk[5]" -type "float3" -0.082596764 -0.044360366 0.14306174 ;
	setAttr ".tk[7]" -type "float3" 0 -0.044360366 0.16519351 ;
	setAttr ".tk[9]" -type "float3" 0.082596764 -0.044360366 0.14306174 ;
	setAttr ".tk[11]" -type "float3" 0.14306176 -0.044360366 0.082596757 ;
	setAttr ".tk[13]" -type "float3" 0.16519353 -0.044360366 -2.1307137e-08 ;
	setAttr ".tk[15]" -type "float3" 0.14306176 -0.044360366 -0.082596779 ;
	setAttr ".tk[17]" -type "float3" 0.082596764 -0.044360366 -0.14306177 ;
	setAttr ".tk[19]" -type "float3" 0 -0.044360366 -0.16519351 ;
	setAttr ".tk[21]" -type "float3" -0.082596764 -0.044360366 -0.14306177 ;
	setAttr ".tk[23]" -type "float3" -0.14306176 -0.044360366 -0.082596779 ;
	setAttr ".tk[25]" -type "float3" -0.16519353 -0.044360366 -2.1307137e-08 ;
	setAttr ".tk[27]" -type "float3" -0.14306176 0.044360366 0.082596757 ;
	setAttr ".tk[29]" -type "float3" -0.082596764 0.044360366 0.14306174 ;
	setAttr ".tk[31]" -type "float3" 0 0.044360366 0.16519351 ;
	setAttr ".tk[33]" -type "float3" 0.082596764 0.044360366 0.14306174 ;
	setAttr ".tk[35]" -type "float3" 0.14306176 0.044360366 0.082596757 ;
	setAttr ".tk[37]" -type "float3" 0.16519353 0.044360366 -2.1307137e-08 ;
	setAttr ".tk[39]" -type "float3" 0.14306176 0.044360366 -0.082596779 ;
	setAttr ".tk[41]" -type "float3" 0.082596764 0.044360366 -0.14306177 ;
	setAttr ".tk[43]" -type "float3" 0 0.044360366 -0.16519351 ;
	setAttr ".tk[45]" -type "float3" -0.082596764 0.044360366 -0.14306177 ;
	setAttr ".tk[47]" -type "float3" -0.14306176 0.044360366 -0.082596779 ;
	setAttr ".tk[49]" -type "float3" -0.16519353 0.044360366 -2.1307137e-08 ;
createNode polySoftEdge -n "polySoftEdge42";
	rename -uid "06F1FDEF-4030-721E-DB53-E1AF23AA0625";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0 1 0 0 -1 0 0 6.2843906966610099 3.5943402242884184 0 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak63";
	rename -uid "645A0F48-423B-8C72-3F75-B195B40A10B9";
	setAttr ".uopa" yes;
	setAttr -s 26 ".tk[48:73]" -type "float3"  -0.10750538 -0.058547087 0.062068228
		 -0.062068246 -0.058547087 0.10750535 0 -0.058547087 -1.9496193e-08 0 -0.058547087
		 0.12413646 0.062068246 -0.058547087 0.10750535 0.10750538 -0.058547087 0.062068228
		 0.12413649 -0.058547087 -1.9496193e-08 0.10750538 -0.058547087 -0.062068257 0.062068246
		 -0.058547087 -0.10750538 0 -0.058547087 -0.12413646 -0.062068246 -0.058547087 -0.10750538
		 -0.10750538 -0.058547087 -0.062068257 -0.12413649 -0.058547087 -1.9496193e-08 -0.062068246
		 0.058547087 0.10750535 -0.10750538 0.058547087 0.062068228 0 0.058547087 -1.9496193e-08
		 0 0.058547087 0.12413646 0.062068246 0.058547087 0.10750535 0.10750538 0.058547087
		 0.062068228 0.12413649 0.058547087 -1.9496193e-08 0.10750538 0.058547087 -0.062068257
		 0.062068246 0.058547087 -0.10750538 0 0.058547087 -0.12413646 -0.062068246 0.058547087
		 -0.10750538 -0.10750538 0.058547087 -0.062068257 -0.12413649 0.058547087 -1.9496193e-08;
createNode polySoftEdge -n "polySoftEdge43";
	rename -uid "83B72076-4DC4-3A83-BB0D-A5990EEA01BA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 47 "e[1]" "e[6:7]" "e[10]" "e[13]" "e[16]" "e[19]" "e[22]" "e[25]" "e[28]" "e[31]" "e[34]" "e[37]" "e[42]" "e[45]" "e[48]" "e[51]" "e[54]" "e[57]" "e[60]" "e[63]" "e[66]" "e[69]" "e[71]" "e[86]" "e[90]" "e[93]" "e[96]" "e[99]" "e[102]" "e[105]" "e[108]" "e[111]" "e[114]" "e[117]" "e[119]" "e[122]" "e[126]" "e[129]" "e[132]" "e[135]" "e[138]" "e[141]" "e[144]" "e[147]" "e[150]" "e[153]" "e[155]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0 1 0 0 -1 0 0 6.2843906966610099 3.5943402242884184 0 1;
	setAttr ".a" 0;
createNode polySplit -n "polySplit62";
	rename -uid "CD5BCD73-4D9A-D157-712D-B0B5CD6CAC16";
	setAttr -s 5 ".e[0:4]"  0 0.422649 0.5 0.42265001 0;
	setAttr -s 5 ".d[0:4]"  -2147483501 -2147483503 -2147483506 -2147483509 -2147483512;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit63";
	rename -uid "72750423-47EB-01CB-CA1A-DAB4C30E2367";
	setAttr -s 5 ".e[0:4]"  0 0.42265001 0.5 0.57735002 0;
	setAttr -s 5 ".d[0:4]"  -2147483519 -2147483521 -2147483525 -2147483524 -2147483494;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyDelEdge -n "polyDelEdge6";
	rename -uid "ECDCF44A-4AD9-22B3-1705-F7A7E941A475";
	setAttr ".ics" -type "componentList" 10 "e[123:124]" "e[127]" "e[130]" "e[136]" "e[139]" "e[142]" "e[145]" "e[148]" "e[156:158]" "e[163:165]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge7";
	rename -uid "73590E08-4630-AE50-C762-6AAD24005E50";
	setAttr ".ics" -type "componentList" 1 "e[145]";
	setAttr ".cv" yes;
createNode polySplit -n "polySplit64";
	rename -uid "4CDF1F95-4606-69DC-8680-6FB2DC50722B";
	setAttr -s 5 ".e[0:4]"  1 0.42265001 0.5 0.57735002 1;
	setAttr -s 5 ".d[0:4]"  -2147483530 -2147483561 -2147483560 -2147483557 -2147483554;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit65";
	rename -uid "F8E755CB-43E2-188B-F388-26A743AC5660";
	setAttr -s 5 ".e[0:4]"  1 0.57735097 0.5 0.57735002 1;
	setAttr -s 5 ".d[0:4]"  -2147483536 -2147483539 -2147483542 -2147483545 -2147483548;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyDelEdge -n "polyDelEdge8";
	rename -uid "B817D282-43B1-E381-4316-76BD532E8470";
	setAttr ".ics" -type "componentList" 11 "e[87:88]" "e[91]" "e[94]" "e[100]" "e[103]" "e[106]" "e[109]" "e[112]" "e[118]" "e[147:149]" "e[154:156]";
	setAttr ".cv" yes;
createNode polySplit -n "polySplit66";
	rename -uid "E57E89AD-4C14-7274-01A8-1B8AD4719337";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483562 -2147483560;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit67";
	rename -uid "62D32DAB-43DD-B5FC-A390-33AB60E3AC9D";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483547 -2147483551;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit68";
	rename -uid "193F9F53-4292-F847-DCF0-8D81F1ED70FB";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483523 -2147483527;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit69";
	rename -uid "B62A5180-426E-FE1A-F270-40BA0EC372F4";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483535 -2147483537;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit70";
	rename -uid "90CCCBD5-4DD2-C0DE-7019-F39DFD03E513";
	setAttr -s 7 ".e[0:6]"  0.89999998 0.2 0.80000001 0.1 0.2 0.80000001
		 0.89999998;
	setAttr -s 7 ".d[0:6]"  -2147483518 -2147483513 -2147483513 -2147483518 -2147483514 -2147483514 
		-2147483518;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit71";
	rename -uid "CD677259-402A-767C-CC19-8B943BE4FC88";
	setAttr -s 6 ".e[0:5]"  0.2 0.1 0.2 0.80000001 0.89999998 0.80000001;
	setAttr -s 6 ".d[0:5]"  -2147483512 -2147483555 -2147483511 -2147483511 -2147483555 -2147483512;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit72";
	rename -uid "748B5C47-4E4B-33B1-E403-3E93017083D7";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483490 -2147483487;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit73";
	rename -uid "CA2AB296-42F6-76DD-5B9C-3296F077AD14";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483489 -2147483488;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit74";
	rename -uid "D037D9B2-4A78-71D7-F8A3-98A52D67E886";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483498 -2147483497;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit75";
	rename -uid "4AEABCE2-4896-02D3-02A8-ADB821326448";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483500 -2147483499;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyDelEdge -n "polyDelEdge9";
	rename -uid "F8562334-442D-F2CD-405A-3DA23D6BF744";
	setAttr ".ics" -type "componentList" 2 "e[142]" "e[154]";
	setAttr ".cv" yes;
createNode polySplit -n "polySplit76";
	rename -uid "60F4C1D5-4C4F-9F4A-6AAA-CD87F501063A";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483529 -2147483498;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit77";
	rename -uid "7C0662C0-40B3-C1BA-B4F2-BCAC77CF4C5E";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483501 -2147483531;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit78";
	rename -uid "1A1DBEC7-4591-2DB8-D168-8E8AFF29E396";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483500 -2147483516;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit79";
	rename -uid "7F4EBC27-41FD-DCD3-C283-648CC5D7CA5C";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483499 -2147483519;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit80";
	rename -uid "FEE625B6-4AB9-8B45-978F-918241364A7A";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483485 -2147483543;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit81";
	rename -uid "B0874FB6-4F4A-41D5-2D59-54989194C26C";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483488 -2147483541;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit82";
	rename -uid "8A833723-4FCA-5A37-EADD-AA8321F12BCF";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483487 -2147483556;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit83";
	rename -uid "88B73E14-428C-FD59-8B30-1EBDB17360C4";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483484 -2147483553;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyDelEdge -n "polyDelEdge10";
	rename -uid "A470DDEF-4474-634A-3FFF-528E8DABE58D";
	setAttr ".ics" -type "componentList" 8 "e[148]" "e[150]" "e[156]" "e[158]" "e[161]" "e[163]" "e[166]" "e[169]";
	setAttr ".cv" yes;
createNode polySplit -n "polySplit84";
	rename -uid "D003649C-4E91-DFF9-07A0-AF8791AF7B18";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483506 -2147483505;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit85";
	rename -uid "DF0563A3-43EF-C264-4609-A3A49194B6F7";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483502 -2147483501;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	rename -uid "2496F2CE-478C-94A1-FA2E-70BE7E0744C7";
	setAttr ".ics" -type "componentList" 3 "f[74]" "f[76]" "f[82:83]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0 1 0 0 -1 0 0 6.2843906966610099 3.5943402242884184 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 6.2843909 3.5943403 0 ;
	setAttr ".rs" 37554;
	setAttr ".lt" -type "double3" -8.8817841970012523e-16 -1.3595155561520868e-15 -0.12214298637609801 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 5.8422434417171623 3.2474272144064451 -0.22346583008766174 ;
	setAttr ".cbx" -type "double3" 6.7265379516048576 3.941253263972714 0.22346583008766174 ;
createNode polySoftEdge -n "polySoftEdge44";
	rename -uid "FD2E65E0-40ED-9CE1-1548-7E88232F776C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[164:165]" "e[167]" "e[169]" "e[172]" "e[174]" "e[177:178]" "e[180]" "e[182]" "e[185]" "e[187]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0 1 0 0 -1 0 0 6.2843906966610099 3.5943402242884184 0 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak64";
	rename -uid "CF1DBB04-4F47-4F57-753D-E79DB4922F9A";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[84:95]" -type "float3"  0.071127884 0.0225973 0.044919629
		 0.040030323 0.0225973 0.06717027 -0.077296413 0.0225973 -0.0069253547 -0.071127884
		 0.0225973 -0.044919629 -0.040030323 0.0225973 -0.06717027 0.077296413 0.0225973 0.0069253547
		 0.071127884 -0.0225973 0.044919629 -0.071127884 -0.0225973 -0.044919629 -0.077296413
		 -0.0225973 -0.0069253547 0.040030323 -0.0225973 0.06717027 0.077296413 -0.0225973
		 0.0069253547 -0.040030323 -0.0225973 -0.06717027;
createNode transformGeometry -n "transformGeometry22";
	rename -uid "89570733-4947-9993-842A-F9B7251E7845";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 0 1 0 0 -1 0 0 0 0 0 1;
createNode lambert -n "cyan";
	rename -uid "F1168780-485B-8D63-30FD-04B8B66944C2";
	setAttr ".c" -type "float3" 0.051399998 0.1627 0.29010001 ;
createNode shadingEngine -n "lambert10SG";
	rename -uid "E61AA55E-4D34-62FF-F817-5C9FB51CE966";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo12";
	rename -uid "919E7E95-44B1-F335-FB41-A98753A89F1B";
createNode groupId -n "groupId109";
	rename -uid "983D9FD6-4F05-EC03-326D-E2946CF87A37";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts50";
	rename -uid "59870692-4840-3ED2-4244-9E848B6A0D45";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:40]" "f[65:83]";
	setAttr ".irc" -type "componentList" 2 "f[41:64]" "f[84:95]";
createNode groupId -n "groupId110";
	rename -uid "B50D98FC-4BE4-59F1-FCD2-4BB909F9771E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId111";
	rename -uid "6147A4E9-4810-8D6C-60AC-44954C03807A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts51";
	rename -uid "C1883748-4413-340A-99F9-2BAF8C7C8C94";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[41:64]" "f[84:95]";
	setAttr ".irc" -type "componentList" 1 "f[20:21]";
createNode lambert -n "cyandark";
	rename -uid "2E7F5DDF-4418-E91F-BA6B-DAB1FC45C9E4";
	setAttr ".c" -type "float3" 0.015249165 0.048269138 0.086065575 ;
createNode shadingEngine -n "lambert11SG";
	rename -uid "17F9163C-47E5-362C-20E2-E1817A0353FE";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo13";
	rename -uid "0D5827A2-40CB-5F05-56EB-1991AE3F5E0D";
createNode polyMapCut -n "polyMapCut35";
	rename -uid "B88811A9-4565-858B-2EE3-0A974513177C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 22 "e[3:4]" "e[9]" "e[12]" "e[15]" "e[18]" "e[21]" "e[24]" "e[27]" "e[30]" "e[33]" "e[35]" "e[39:40]" "e[43]" "e[46]" "e[49]" "e[52]" "e[55]" "e[58]" "e[61]" "e[64]" "e[67]" "e[70]";
createNode polyTweakUV -n "polyTweakUV65";
	rename -uid "B9C8B878-40AB-DC5D-52AB-E58B7A5C5E42";
	setAttr ".uopa" yes;
	setAttr -s 96 ".uvtk";
	setAttr ".uvtk[1]" -type "float2" 0.19641572 -0.28131285 ;
	setAttr ".uvtk[2]" -type "float2" 0.23001891 -0.22845507 ;
	setAttr ".uvtk[3]" -type "float2" 0.020199507 -0.15624991 ;
	setAttr ".uvtk[4]" -type "float2" 0.020107001 -0.22845522 ;
	setAttr ".uvtk[5]" -type "float2" 0.10337746 -0.30066016 ;
	setAttr ".uvtk[6]" -type "float2" 0.15632761 -0.28131288 ;
	setAttr ".uvtk[7]" -type "float2" 0.010338813 -0.28131288 ;
	setAttr ".uvtk[8]" -type "float2" 0.063289285 -0.30066016 ;
	setAttr ".uvtk[9]" -type "float2" -0.063352168 -0.22845505 ;
	setAttr ".uvtk[10]" -type "float2" -0.029749006 -0.28131291 ;
	setAttr ".uvtk[11]" -type "float2" -0.10353282 -0.15624996 ;
	setAttr ".uvtk[12]" -type "float2" -0.10344023 -0.22845499 ;
	setAttr ".uvtk[13]" -type "float2" -0.10501885 -0.084044889 ;
	setAttr ".uvtk[14]" -type "float2" -0.14362088 -0.15624993 ;
	setAttr ".uvtk[15]" -type "float2" -0.072994471 -0.031187177 ;
	setAttr ".uvtk[16]" -type "float2" -0.14510685 -0.084044918 ;
	setAttr ".uvtk[17]" -type "float2" -0.021622717 -0.011839941 ;
	setAttr ".uvtk[18]" -type "float2" -0.11308244 -0.031187311 ;
	setAttr ".uvtk[19]" -type "float2" 0.029749066 -0.031187311 ;
	setAttr ".uvtk[20]" -type "float2" -0.061710715 -0.011839941 ;
	setAttr ".uvtk[21]" -type "float2" 0.061773658 -0.084044993 ;
	setAttr ".uvtk[22]" -type "float2" -0.010338724 -0.031187296 ;
	setAttr ".uvtk[23]" -type "float2" 0.060287505 -0.15625009 ;
	setAttr ".uvtk[24]" -type "float2" 0.02168563 -0.084044844 ;
	setAttr ".uvtk[26]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[27]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[28]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[29]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[30]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[31]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[32]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[33]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[34]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[35]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[36]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[37]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[38]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[39]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[40]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[41]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[42]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[43]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[44]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[45]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[46]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[47]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[48]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[49]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[51]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[72]" -type "float2" -0.1907135 -0.15301931 ;
	setAttr ".uvtk[146]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[147]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[148]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[149]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[150]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[151]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[152]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[153]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[154]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[155]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[156]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[157]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[158]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[159]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[160]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[161]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[162]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[163]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[164]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[165]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[166]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[167]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[168]" -type "float2" -0.31701916 0 ;
	setAttr ".uvtk[170]" -type "float2" -0.19081381 -0.23114426 ;
	setAttr ".uvtk[171]" -type "float2" -0.19081375 -0.19384448 ;
	setAttr ".uvtk[172]" -type "float2" -0.14904729 -0.27196944 ;
	setAttr ".uvtk[173]" -type "float2" -0.16769698 -0.23966685 ;
	setAttr ".uvtk[174]" -type "float2" -0.089671969 -0.29685837 ;
	setAttr ".uvtk[175]" -type "float2" -0.1219748 -0.27820823 ;
	setAttr ".uvtk[176]" -type "float2" -0.023017019 -0.29914176 ;
	setAttr ".uvtk[177]" -type "float2" -0.060316682 -0.29914176 ;
	setAttr ".uvtk[178]" -type "float2" 0.038641751 -0.27820823 ;
	setAttr ".uvtk[179]" -type "float2" 0.0063387752 -0.29685816 ;
	setAttr ".uvtk[180]" -type "float2" 0.084363639 -0.2396666 ;
	setAttr ".uvtk[181]" -type "float2" 0.06571275 -0.27196917 ;
	setAttr ".uvtk[182]" -type "float2" 0.10747972 -0.19384429 ;
	setAttr ".uvtk[183]" -type "float2" 0.1074796 -0.23114434 ;
	setAttr ".uvtk[184]" -type "float2" 0.10737944 -0.15301946 ;
	setAttr ".uvtk[185]" -type "float2" 0.12602967 -0.18532276 ;
	setAttr ".uvtk[186]" -type "float2" 0.089671701 -0.12813145 ;
	setAttr ".uvtk[187]" -type "float2" 0.1219748 -0.14678162 ;
	setAttr ".uvtk[188]" -type "float2" 0.064683229 -0.12584808 ;
	setAttr ".uvtk[189]" -type "float2" 0.10198349 -0.12584808 ;
	setAttr ".uvtk[190]" -type "float2" 0.044691831 -0.1467815 ;
	setAttr ".uvtk[191]" -type "float2" 0.076995075 -0.12813106 ;
	setAttr ".uvtk[192]" -type "float2" 0.040636659 -0.18532249 ;
createNode polyMapSewMove -n "polyMapSewMove18";
	rename -uid "0726A2EB-4A44-9201-C803-03881D268912";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[1]" "e[6:7]" "e[10]" "e[13]" "e[16]" "e[19]" "e[22]" "e[25]" "e[28]" "e[31]" "e[34]";
createNode polyMapSewMove -n "polyMapSewMove19";
	rename -uid "CAC9AD7A-4BF3-AC32-8A00-65A32E42C7BB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[0]" "e[2]" "e[5]" "e[8]" "e[11]" "e[14]" "e[17]" "e[20]" "e[23]" "e[26]" "e[29]" "e[32]";
createNode polyTweakUV -n "polyTweakUV66";
	rename -uid "22A80A82-42BA-751C-CF10-EABD4D9220E7";
	setAttr ".uopa" yes;
	setAttr -s 48 ".uvtk";
	setAttr ".uvtk[14]" -type "float2" 0.33721867 0.15624994 ;
	setAttr ".uvtk[15]" -type "float2" 0.33712617 0.22845513 ;
	setAttr ".uvtk[16]" -type "float2" 0.51343489 0.28131294 ;
	setAttr ".uvtk[17]" -type "float2" 0.54703808 0.22845513 ;
	setAttr ".uvtk[18]" -type "float2" 0.42039657 0.30066007 ;
	setAttr ".uvtk[19]" -type "float2" 0.47334683 0.281313 ;
	setAttr ".uvtk[20]" -type "float2" 0.32735801 0.28131276 ;
	setAttr ".uvtk[21]" -type "float2" 0.38030842 0.30066007 ;
	setAttr ".uvtk[22]" -type "float2" 0.25366712 0.22845513 ;
	setAttr ".uvtk[23]" -type "float2" 0.28727016 0.28131294 ;
	setAttr ".uvtk[24]" -type "float2" 0.21348634 0.15624988 ;
	setAttr ".uvtk[25]" -type "float2" 0.21357894 0.22845495 ;
	setAttr ".uvtk[26]" -type "float2" 0.21200031 0.084044814 ;
	setAttr ".uvtk[27]" -type "float2" 0.17339829 0.15624988 ;
	setAttr ".uvtk[28]" -type "float2" 0.24402457 0.031186998 ;
	setAttr ".uvtk[29]" -type "float2" 0.17191219 0.084044814 ;
	setAttr ".uvtk[30]" -type "float2" 0.29539645 0.011839986 ;
	setAttr ".uvtk[31]" -type "float2" 0.20393667 0.031187057 ;
	setAttr ".uvtk[32]" -type "float2" 0.34676823 0.031187117 ;
	setAttr ".uvtk[33]" -type "float2" 0.25530845 0.011839926 ;
	setAttr ".uvtk[34]" -type "float2" 0.37879282 0.084044993 ;
	setAttr ".uvtk[35]" -type "float2" 0.30668044 0.031187057 ;
	setAttr ".uvtk[36]" -type "float2" 0.37730658 0.15624994 ;
	setAttr ".uvtk[37]" -type "float2" 0.33870482 0.084044993 ;
	setAttr ".uvtk[39]" -type "float2" 0.35765618 0.18532205 ;
	setAttr ".uvtk[122]" -type "float2" 0.14932162 0.23966622 ;
	setAttr ".uvtk[123]" -type "float2" 0.16797248 0.27196938 ;
	setAttr ".uvtk[124]" -type "float2" 0.1262058 0.1938445 ;
	setAttr ".uvtk[125]" -type "float2" 0.12620488 0.23114431 ;
	setAttr ".uvtk[126]" -type "float2" 0.19504446 0.27820832 ;
	setAttr ".uvtk[127]" -type "float2" 0.22734645 0.29685771 ;
	setAttr ".uvtk[128]" -type "float2" 0.25670218 0.29914135 ;
	setAttr ".uvtk[129]" -type "float2" 0.29400256 0.29914206 ;
	setAttr ".uvtk[130]" -type "float2" 0.32335758 0.29685855 ;
	setAttr ".uvtk[131]" -type "float2" 0.35566044 0.27820778 ;
	setAttr ".uvtk[132]" -type "float2" 0.38273191 0.2719692 ;
	setAttr ".uvtk[133]" -type "float2" 0.40138251 0.23966682 ;
	setAttr ".uvtk[134]" -type "float2" 0.42449901 0.23114443 ;
	setAttr ".uvtk[135]" -type "float2" 0.42449901 0.19384444 ;
	setAttr ".uvtk[136]" -type "float2" 0.44304961 0.1853233 ;
	setAttr ".uvtk[137]" -type "float2" 0.42439884 0.15301943 ;
	setAttr ".uvtk[138]" -type "float2" 0.43899375 0.14678156 ;
	setAttr ".uvtk[139]" -type "float2" 0.40669149 0.12813181 ;
	setAttr ".uvtk[140]" -type "float2" 0.41900265 0.12584752 ;
	setAttr ".uvtk[141]" -type "float2" 0.3817023 0.12584782 ;
	setAttr ".uvtk[142]" -type "float2" 0.39401424 0.12813056 ;
	setAttr ".uvtk[143]" -type "float2" 0.36171085 0.14678103 ;
	setAttr ".uvtk[144]" -type "float2" 0.12630567 0.15301937 ;
createNode polyMapSewMove -n "polyMapSewMove20";
	rename -uid "92A69CA0-45DB-D70E-84D4-3F906838411A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[37]" "e[42]" "e[45]" "e[48]" "e[51]" "e[54]" "e[57]" "e[60]" "e[63]" "e[66]" "e[69]" "e[71]";
createNode polyMapSewMove -n "polyMapSewMove21";
	rename -uid "5620CFB2-4BFB-C231-5479-C986D7781253";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[36]" "e[38]" "e[41]" "e[44]" "e[47]" "e[50]" "e[53]" "e[56]" "e[59]" "e[62]" "e[65]" "e[68]";
createNode polyTweakUV -n "polyTweakUV67";
	rename -uid "88090A8D-4081-130D-F7D1-FEA57CECE71C";
	setAttr ".uopa" yes;
	setAttr -s 48 ".uvtk";
	setAttr ".uvtk[14]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[15]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[16]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[17]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[18]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[19]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[20]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[21]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[22]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[23]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[24]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[25]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[27]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[62]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[63]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[64]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[65]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[66]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[67]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[68]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[69]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[70]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[71]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[72]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[73]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[74]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[75]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[82]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[83]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[84]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[85]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[90]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[91]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[92]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[93]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[94]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[95]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[98]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[99]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[100]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[101]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[102]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[103]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[104]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[105]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[106]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[107]" -type "float2" 0 -0.59449643 ;
	setAttr ".uvtk[108]" -type "float2" 0 -0.59449643 ;
createNode polyFlipUV -n "polyFlipUV6";
	rename -uid "23537DA4-4999-5823-A180-AB921E97B9B0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "f[12:23]" "f[37:40]" "f[53:64]" "f[69:71]" "f[76:79]" "f[82]" "f[87:92]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".up" yes;
	setAttr ".pu" 0.50000035759999995;
	setAttr ".pv" 0.2492534411;
createNode polyTweakUV -n "polyTweakUV68";
	rename -uid "AB81A9FB-45BE-B9DA-1D81-6B9350F6B1D6";
	setAttr ".uopa" yes;
	setAttr -s 122 ".uvtk[0:121]" -type "float2" -0.31186247 0.10625091 0
		 0.93644363 0 0.93644363 0 0.93644363 0 0.93644357 0 0.93644357 0 0.93644363 0 0.93644363
		 0 0.93644357 0 0.93644369 0 0.93644369 0 0.93644357 0 0.93644363 0.31186253 -0.10625088
		 0 0.85822046 0 0.85822046 0 0.8582204 0 0.8582204 0 0.8582204 0 0.85822046 0 0.85822046
		 0 0.8582204 0 0.8582204 0 0.8582204 0 0.8582204 0 0.8582204 -0.2598854 0.10625091
		 0 0.8582204 -0.20790821 0.10625091 -0.2598854 -0.10625088 -0.15593114 0.10625091
		 -0.2079083 -0.10625088 -0.10395402 0.10625091 -0.15593117 -0.10625088 -0.051976889
		 0.10625091 -0.10395402 -0.10625088 2.3841858e-07 0.10625091 -0.051976889 -0.10625088
		 0.051977277 0.10625091 2.3841858e-07 -0.10625088 0.10395426 0.10625091 0.051977277
		 -0.10625088 0.15593135 0.10625091 0.10395426 -0.10625088 0.20790833 0.10625091 0.15593135
		 -0.10625088 0.25988543 0.10625091 0.20790833 -0.10625088 0 0.93644363 0.25988543
		 -0.10625088 0 0.93644363 0 0.93644363 0 0.93644363 0 0.93644363 0 0.93644363 0 0.93644363
		 0 0.93644363 0 0.93644363 0 0.93644357 0 0.93644363 0 0.93644363 0 0.93644363 0 0.85822046
		 0 0.8582204 0 0.8582204 0 0.8582204 0 0.85822046 0 0.85822046 0 0.85822034 0 0.8582204
		 0 0.8582204 0 0.8582204 0 0.85822034 0 0.85822046 0 0.8582204 0 0.85822046 0 0.93644369
		 0 0.93644363 0 0.93644357 0 0.93644357 0 0.93644369 0 0.93644369 0 0.8582204 0 0.85822046
		 0 0.85822046 0 0.85822046 0 0.93644363 0 0.93644357 0 0.93644357 0 0.93644369 0 0.8582204
		 0 0.85822046 0 0.85822046 0 0.85822046 0 0.85822046 0 0.8582204 0 0.93644369 0 0.93644369
		 0 0.8582204 0 0.85822046 0 0.85822046 0 0.85822046 0 0.85822046 0 0.8582204 0 0.85822046
		 0 0.8582204 0 0.8582204 0 0.85822034 0 0.8582204 -0.31186247 -0.10625088 0 0.93644363
		 0 0.93644363 0 0.93644363 0 0.93644363 0 0.93644357 0 0.93644363 0 0.93644357 0 0.93644363
		 0 0.93644363 0 0.93644357 0 0.93644363 0.31186253 0.10625091;
createNode polyMapCut -n "polyMapCut36";
	rename -uid "0F2F5CB2-4C6A-0185-EAD1-18BB11BAACF5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[74]" "e[80]";
createNode polyTweakUV -n "polyTweakUV69";
	rename -uid "8EB2A8AE-463B-3CDF-FCAF-2391CF1CBB07";
	setAttr ".uopa" yes;
	setAttr -s 6 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0.87372494 0 ;
	setAttr ".uvtk[26]" -type "float2" 0.87372494 0 ;
	setAttr ".uvtk[29]" -type "float2" 0.87372494 0 ;
	setAttr ".uvtk[31]" -type "float2" 0.87372494 0 ;
	setAttr ".uvtk[109]" -type "float2" 0.87372494 0 ;
	setAttr ".uvtk[124]" -type "float2" 0.87372494 0 ;
createNode polyMapSewMove -n "polyMapSewMove22";
	rename -uid "79265AC8-4A4B-1470-5B6D-7DBB49C693FE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[73]";
createNode polyTweakUV -n "polyTweakUV70";
	rename -uid "C5672DB3-4E4C-9838-C0E4-9B9846D1A6CA";
	setAttr ".uopa" yes;
	setAttr -s 28 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -0.43714431 0 ;
	setAttr ".uvtk[13]" -type "float2" -0.43714431 0 ;
	setAttr ".uvtk[26]" -type "float2" -0.43714434 0 ;
	setAttr ".uvtk[28]" -type "float2" -0.00028197467 0 ;
	setAttr ".uvtk[29]" -type "float2" -0.43714434 0 ;
	setAttr ".uvtk[30]" -type "float2" -0.00028198957 0 ;
	setAttr ".uvtk[31]" -type "float2" -0.4371444 0 ;
	setAttr ".uvtk[32]" -type "float2" -0.00028204918 0 ;
	setAttr ".uvtk[33]" -type "float2" -0.00028192997 0 ;
	setAttr ".uvtk[34]" -type "float2" -0.00028210878 0 ;
	setAttr ".uvtk[35]" -type "float2" -0.00028204918 0 ;
	setAttr ".uvtk[36]" -type "float2" -0.00028213859 0 ;
	setAttr ".uvtk[37]" -type "float2" -0.00028210878 0 ;
	setAttr ".uvtk[38]" -type "float2" -0.00028210878 0 ;
	setAttr ".uvtk[39]" -type "float2" -0.00028213859 0 ;
	setAttr ".uvtk[40]" -type "float2" -0.43714446 0 ;
	setAttr ".uvtk[41]" -type "float2" -0.00028210878 0 ;
	setAttr ".uvtk[42]" -type "float2" -0.43714446 0 ;
	setAttr ".uvtk[43]" -type "float2" -0.00028204918 0 ;
	setAttr ".uvtk[44]" -type "float2" -0.43714434 0 ;
	setAttr ".uvtk[45]" -type "float2" -0.43714446 0 ;
	setAttr ".uvtk[46]" -type "float2" -0.43714434 0 ;
	setAttr ".uvtk[47]" -type "float2" -0.43714434 0 ;
	setAttr ".uvtk[49]" -type "float2" -0.43714434 0 ;
	setAttr ".uvtk[120]" -type "float2" -0.00028198957 0 ;
	setAttr ".uvtk[121]" -type "float2" -0.43714452 0 ;
	setAttr ".uvtk[122]" -type "float2" -0.43714446 0 ;
	setAttr ".uvtk[123]" -type "float2" -0.00028191507 0 ;
createNode polyPlanarProj -n "polyPlanarProj28";
	rename -uid "9C8857BD-4016-F6B6-04FB-89A87E8881F1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[0:23]" "f[36:95]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".ps" -type "double2" 2 2 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV71";
	rename -uid "966F9B26-4D48-7291-DACD-D5986DB4360D";
	setAttr ".uopa" yes;
	setAttr -s 124 ".uvtk[0:123]" -type "float2" 0.15917073 -0.34373707 -0.27193999
		 0.017457929 -0.23423374 0.039227795 -0.18403509 -0.010971129 -0.20580475 -0.048677389
		 -0.29614699 0.10780038 -0.25260758 0.10780038 -0.11546235 -0.029344855 -0.11546235
		 -0.072884634 -0.04688967 -0.010971129 -0.025119968 -0.048677389 0.0033090618 0.039227795
		 0.04101526 0.017457929 0.15917073 -0.29422385 0.02168303 0.10780038 0.065222435 0.10780038
		 0.0033090618 0.17637299 0.04101526 0.19814281 -0.04688967 0.22657184 -0.025119968
		 0.26427805 -0.11546235 0.24494575 -0.11546235 0.28848523 -0.18403509 0.22657184 -0.20580475
		 0.26427805 -0.23423374 0.17637299 -0.27193999 0.19814281 0.23125859 -0.34373707 -0.27193999
		 0.017457929 -0.12918054 -0.34373707 0.23125859 -0.2942239 -0.057092726 -0.34373707
		 0.3033464 -0.2942239 0.014995096 -0.34373707 -0.057092726 -0.29422385 0.087082982
		 -0.34373707 0.014995096 -0.2942239 0.15917073 -0.34373707 0.087082982 -0.2942239
		 0.23125859 -0.34373707 0.15917073 -0.29422385 -0.12918057 -0.34373707 0.23125859
		 -0.2942239 -0.057092726 -0.34373707 0.3033464 -0.2942239 0.014995096 -0.34373707
		 -0.057092726 -0.29422385 0.087082982 -0.34373707 0.014995096 -0.2942239 -0.23423374
		 0.039227795 0.087082982 -0.2942239 -0.25260758 0.10780038 -0.29614699 0.10780038
		 -0.20580475 -0.048677389 -0.18403509 -0.010971129 -0.11546235 -0.072884634 -0.11546235
		 -0.029344855 -0.025119968 -0.048677389 -0.04688967 -0.010971129 0.04101526 0.017457929
		 0.0033090618 0.039227795 0.065222435 0.10780038 0.02168303 0.10780038 0.04101526
		 0.19814281 0.0033090618 0.17637299 -0.025119968 0.26427805 -0.04688967 0.22657184
		 -0.11546235 0.28848523 -0.11546235 0.24494575 -0.20580475 0.26427805 -0.18403509
		 0.22657184 -0.27193999 0.19814281 -0.23423374 0.17637299 -0.11546235 -0.0069154594
		 -0.17282034 0.0084535982 -0.21480919 0.050442409 -0.21480919 0.050442409 -0.17282034
		 0.0084535982 -0.11546235 -0.0069154594 -0.19493976 0.15368678 -0.16667266 0.17048241
		 -0.17282034 0.20714729 -0.21480919 0.16515829 -0.11546235 0.22251622 -0.016115554
		 0.16515829 -0.058104575 0.20714729 -0.016115554 0.050442409 -0.035984851 0.061914157
		 -0.064252079 0.045118522 -0.058104575 0.0084535982 -0.058104575 0.0084535982 -0.016115554
		 0.050442409 -0.00074652769 0.10780038 -0.016115554 0.16515829 -0.058104575 0.20714729
		 -0.11546235 0.22251622 -0.17282034 0.20714729 -0.21480919 0.16515829 -0.23017815
		 0.10780038 -0.00074652769 0.10780038 -0.23017815 0.10780038 -0.1953516 0.12080891
		 -0.064252079 0.045118522 -0.035573073 0.094791904 -0.19493976 0.15368678 -0.035984851
		 0.061914157 -0.035573073 0.094791904 -0.048836596 0.07003051 -0.071484849 0.057254985
		 -0.18138531 0.11955763 -0.18208802 0.14557047 -0.16667266 0.17048241 -0.048836596
		 0.07003051 -0.18208802 0.14557047 -0.18138531 0.11955763 -0.071484849 0.057254985
		 -0.1953516 0.12080891 -0.049539395 0.096043065 -0.15943988 0.15834565 -0.15943988
		 0.15834565 -0.049539395 0.096043065 0.30334646 -0.34373707 -0.12918063 -0.2942239
		 0.30334646 -0.34373707 -0.1291806 -0.2942239;
createNode groupId -n "groupId137";
	rename -uid "0C747F94-444B-FB13-FF36-83B8C20C4FB3";
	setAttr ".ihi" 0;
createNode lambert -n "purple";
	rename -uid "D2E09020-4D82-FC09-8C17-F9AC17CD5D5D";
	setAttr ".c" -type "float3" 0.090058714 0.065008 0.13600001 ;
createNode shadingEngine -n "lambert12SG";
	rename -uid "1072E7B9-43E5-ABE6-D87E-E7ABE29898DA";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo14";
	rename -uid "BB286504-4F38-9AAB-19CB-50AEEBDA74CA";
createNode lambert -n "bone";
	rename -uid "2457009A-420F-8784-93DB-968EF8B896AF";
	setAttr ".c" -type "float3" 0.2033195 0.19151893 0.16387501 ;
createNode shadingEngine -n "lambert13SG";
	rename -uid "FCC8382F-475C-AF3F-88C7-AAA7DE0E7EF4";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo15";
	rename -uid "79BC3F6B-4934-7408-F66C-80B934FB06BB";
createNode groupId -n "groupId148";
	rename -uid "208A2E01-4B29-3D1A-12C1-0DB4A20B0ACD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId180";
	rename -uid "E9CEDA50-43CE-D24F-D7A0-05A7C0A030CD";
	setAttr ".ihi" 0;
createNode lambert -n "grey";
	rename -uid "BE0FFD4E-470E-874D-0903-9293C54B53AD";
	setAttr ".c" -type "float3" 0.10460251 0.10460245 0.10460245 ;
createNode shadingEngine -n "lambert14SG";
	rename -uid "098A676A-4EAE-97EB-8DB1-39B7216EF025";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo16";
	rename -uid "C9C1EC34-4D07-EB17-2DD8-7AA05A81615B";
createNode lambert -n "orange";
	rename -uid "F2D2E822-47AE-6162-3960-FD84CA4F3B06";
	setAttr ".c" -type "float3" 0.65708303 0.22173715 0.10140145 ;
createNode shadingEngine -n "lambert15SG";
	rename -uid "AB5C7EF4-47D9-BF49-B6DE-E2A3234EED89";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo17";
	rename -uid "DDC684EB-46AF-EC2A-0477-739812E2CA8A";
createNode lambert -n "lime";
	rename -uid "215757BE-4B37-4992-0064-5CAA3038C263";
	setAttr ".c" -type "float3" 0.13388051 0.16877638 0.032898705 ;
createNode shadingEngine -n "lambert16SG";
	rename -uid "66851903-4928-7B4C-71F4-8F921839DB67";
	setAttr ".ihi" 0;
	setAttr -s 14 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo18";
	rename -uid "5B4E74EC-428A-272C-0C43-978E9B00D394";
createNode lambert -n "brown";
	rename -uid "46C7EAE7-4F08-3E99-6B38-AEB87CF3507C";
	setAttr ".c" -type "float3" 0.037974685 0.024677018 0.01510352 ;
createNode shadingEngine -n "lambert17SG";
	rename -uid "74288068-4A05-3BD1-96BD-24ACB6C46FF6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo19";
	rename -uid "40F72D4B-490A-CD76-67AA-4BAFA7767829";
createNode lambert -n "sesame";
	rename -uid "569539BF-425D-7593-B88B-1690F6DD1FC2";
	setAttr ".c" -type "float3" 0.95394337 0.42808074 0.2211846 ;
createNode shadingEngine -n "lambert18SG";
	rename -uid "551F7640-4190-9424-4619-DDBD17473A6A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo20";
	rename -uid "2D0BD882-4FED-2FC3-A8BF-45BF26E91636";
createNode lambert -n "yellow";
	rename -uid "5CEA44D5-4F4A-275C-D97C-C4A94E867709";
	setAttr ".c" -type "float3" 0.85600001 0.37483102 0.079607993 ;
createNode shadingEngine -n "lambert19SG";
	rename -uid "ED1B6899-4E4D-0F9D-912D-E483D0F1E28D";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo21";
	rename -uid "960B9981-4573-1494-B335-F28DDC95DF4D";
createNode groupId -n "groupId219";
	rename -uid "236E3591-40B8-848D-D21D-E9B91792F828";
	setAttr ".ihi" 0;
createNode lambert -n "beige";
	rename -uid "87183999-4B12-4AD7-43D8-4D86EFFA114F";
	setAttr ".c" -type "float3" 0.42916667 0.30346188 0.26683986 ;
createNode shadingEngine -n "lambert20SG";
	rename -uid "07BF2999-4560-EECD-BC8D-10B2A54F9F67";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo22";
	rename -uid "986330E0-4AC2-EB2A-58C5-718EFEB5A48A";
createNode groupId -n "groupId226";
	rename -uid "D794D6BB-47E1-8B00-D122-8D82B286D257";
	setAttr ".ihi" 0;
createNode lambert -n "salmon";
	rename -uid "9DD6A13C-4941-30BC-FE06-F6A32CDF639D";
	setAttr ".c" -type "float3" 0.12959133 0.14583333 0.095316328 ;
createNode shadingEngine -n "lambert21SG";
	rename -uid "71115F8C-4324-B53D-24F2-8A8DEA92573C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo23";
	rename -uid "60F237B6-482D-5814-6FE0-A2990F70C76D";
createNode lambert -n "magenta";
	rename -uid "C90F6B44-4A9A-5C29-C440-B28EB0B91CE4";
	setAttr ".c" -type "float3" 0.16736402 0.034729406 0.048526261 ;
createNode shadingEngine -n "lambert22SG";
	rename -uid "FB09DA48-4C02-B67A-D375-14B054DF5971";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo24";
	rename -uid "10C9732F-4FAC-7AFC-EF27-99A032D50AA2";
createNode groupId -n "groupId253";
	rename -uid "D4CD81BC-4572-C898-097E-77A7B05CBC1E";
	setAttr ".ihi" 0;
createNode lambert -n "greener";
	rename -uid "9DE7BFCF-4FDB-035A-BA5F-79A12D647D3D";
	setAttr ".c" -type "float3" 0.045456178 0.058333334 0.020063059 ;
createNode shadingEngine -n "lambert23SG";
	rename -uid "6ECE08EE-4703-4486-EB2B-60A2A2948D17";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo25";
	rename -uid "47382514-467C-AE83-2364-A9BD9B3CFD4E";
createNode lambert -n "brow";
	rename -uid "09124C33-4BA3-FE4E-5117-50803E147401";
	setAttr ".c" -type "float3" 0.050000001 0.035640627 0.030049855 ;
createNode shadingEngine -n "lambert24SG";
	rename -uid "F28ED24F-4507-A5CD-B40C-AFA8FDA92E0B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo26";
	rename -uid "CDEAF871-432A-EC37-A7C9-F3995B4F1D18";
createNode polyCube -n "polyCube10";
	rename -uid "E817A7AF-4663-9A38-A32C-23A8884CA4FF";
	setAttr ".sh" 2;
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace22";
	rename -uid "5183DBAF-4F9F-84D2-DAE2-4D9E823E1AEB";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 4.5642376269718508 0 0 0 0 4.5642376269718508 0 0 0 0 4.5642376269718508 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2.0070639 -0.0065722461 ;
	setAttr ".rs" 56844;
	setAttr ".lt" -type "double3" 0 0 5.206121192810337 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.2821188134859254 2.0070638533591563 -1.7881258219519554 ;
	setAttr ".cbx" -type "double3" 2.2821188134859254 2.0070638533591563 1.7749813296056933 ;
createNode polyTweak -n "polyTweak134";
	rename -uid "4BCFE4C2-4EBF-0465-8F70-E69E041F7D6C";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[2:11]" -type "float3"  -0.070370369 0.2008184 0.11892349
		 0.070370369 0.2008184 0.11892349 0 -0.060263056 -0.11111112 0 -0.060263056 -0.11111112
		 0 -0.060263056 0.10823122 0 -0.060263056 0.10823122 3.7252903e-09 0.30365255 -0.054683089
		 -3.7252903e-09 0.30365255 -0.054683089 0 0 -0.038206719 0 0 -0.038206719;
createNode polySplitRing -n "polySplitRing14";
	rename -uid "D9165912-4594-549E-1379-ADA428D04DA8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[20:21]" "e[23]" "e[25]";
	setAttr ".ix" -type "matrix" 4.5642376269718508 0 0 0 0 4.5642376269718508 0 0 0 0 4.5642376269718508 0
		 0 0 0 1;
	setAttr ".wt" 0.43069693446159363;
	setAttr ".re" 21;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing15";
	rename -uid "1A2DFAEF-4D5B-F5A1-B86B-24BC7B6F4BE4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[20:21]" "e[23]" "e[25]";
	setAttr ".ix" -type "matrix" 4.5642376269718508 0 0 0 0 4.5642376269718508 0 0 0 0 4.5642376269718508 0
		 0 0 0 1;
	setAttr ".wt" 0.47115203738212585;
	setAttr ".re" 21;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing16";
	rename -uid "EBDAF922-4CB5-4EB9-B2A8-21B72D4D3D8A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[28:29]" "e[31]" "e[33]";
	setAttr ".ix" -type "matrix" 4.5642376269718508 0 0 0 0 4.5642376269718508 0 0 0 0 4.5642376269718508 0
		 0 0 0 1;
	setAttr ".wt" 0.29026228189468384;
	setAttr ".re" 28;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing17";
	rename -uid "6A825AFE-43FC-D280-C8B5-C6AAEC085B25";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[44:45]" "e[47]" "e[49]";
	setAttr ".ix" -type "matrix" 4.5642376269718508 0 0 0 0 4.5642376269718508 0 0 0 0 4.5642376269718508 0
		 0 0 0 1;
	setAttr ".wt" 0.30490759015083313;
	setAttr ".re" 44;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak135";
	rename -uid "4062EE3F-4986-B3B1-1F00-8E86C75B2FEC";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[16:27]" -type "float3"  0 -0.094243228 0 0 -0.094243228
		 0 0 -0.094243228 0 0 -0.094243228 0 0 -0.094243228 1.4901161e-08 0 -0.094243228 1.4901161e-08
		 0 -0.094243228 0 0 -0.094243228 0 0 -0.015282669 1.4901161e-08 0 -0.015282669 1.4901161e-08
		 0 -0.015282669 0 0 -0.015282669 0;
createNode polyTweak -n "polyTweak136";
	rename -uid "F22AB6CE-4FC3-002A-EFEB-58BA3A042890";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[16]" -type "float3" 0 0 0.18593939 ;
	setAttr ".tk[17]" -type "float3" 0 0 0.18593939 ;
	setAttr ".tk[20]" -type "float3" 0 0 0.11462017 ;
	setAttr ".tk[21]" -type "float3" 0 0 0.11462017 ;
	setAttr ".tk[24]" -type "float3" 0 0 0.11462017 ;
	setAttr ".tk[25]" -type "float3" 0 0 0.11462017 ;
createNode polySplit -n "polySplit127";
	rename -uid "C95B569B-48F9-1668-021C-AAB0E74374E2";
	setAttr -s 5 ".e[0:4]"  0.2 0.56842798 0.30000001 0.396548 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483637 -2147483605 -2147483613 -2147483597 -2147483589;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit128";
	rename -uid "AC0E15D0-4A83-E069-CFFC-D585B248E958";
	setAttr -s 5 ".e[0:4]"  0.2 0.43157199 0.69999999 0.60345203 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483638 -2147483608 -2147483616 -2147483600 -2147483592;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyDelEdge -n "polyDelEdge25";
	rename -uid "D2821F0A-4D04-222A-DE9A-41AB9C0B792C";
	setAttr ".ics" -type "componentList" 2 "e[43]" "e[51]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge26";
	rename -uid "ED8A7287-4A30-E50E-3D65-ED8079FF5005";
	setAttr ".ics" -type "componentList" 2 "e[68]" "e[70]";
	setAttr ".cv" yes;
createNode polySplit -n "polySplit129";
	rename -uid "90CD903D-428A-082E-FF63-2A9EA9A2486A";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483616 -2147483611;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit130";
	rename -uid "71845D0B-46D1-CE8F-766B-02AC8D0CA367";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483576 -2147483619;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyDelEdge -n "polyDelEdge27";
	rename -uid "4BDB4F64-4FB0-2339-7F0B-C0805BE6D0BA";
	setAttr ".ics" -type "componentList" 2 "e[40]" "e[47]";
	setAttr ".cv" yes;
createNode polySplit -n "polySplit131";
	rename -uid "3DE7C745-4AB3-19A8-BFF4-26BF88AC532B";
	setAttr -s 3 ".e[0:2]"  0 1 1;
	setAttr -s 3 ".d[0:2]"  -2147483612 -2147483586 -2147483620;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyDelEdge -n "polyDelEdge28";
	rename -uid "4F887F13-46C0-6E42-991F-75965A041DD5";
	setAttr ".ics" -type "componentList" 2 "e[57]" "e[59]";
	setAttr ".cv" yes;
createNode polySplit -n "polySplit132";
	rename -uid "BEF29E75-41FE-D9EC-BEC9-699D884C6083";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483592 -2147483635;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit133";
	rename -uid "3FD3B9C7-42FA-9161-2E54-3AADD210B4BA";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483638 -2147483636;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace23";
	rename -uid "673BA414-4017-3543-6CC2-5B992C5203FF";
	setAttr ".ics" -type "componentList" 1 "f[23:26]";
	setAttr ".ix" -type "matrix" 4.5642376269718508 0 0 0 0 4.5642376269718508 0 0 0 0 4.5642376269718508 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 6.3410816 -0.0065722461 ;
	setAttr ".rs" 37066;
	setAttr ".lt" -type "double3" 0 -1.9438364553658866e-16 0.9657891766701312 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.2821186774610442 5.7025286553323653 -1.7881256859270742 ;
	setAttr ".cbx" -type "double3" 2.2821186774610442 6.9796341631698615 1.7749811935808122 ;
createNode polyTweak -n "polyTweak137";
	rename -uid "F451303A-4F6D-9758-869D-C9A6037A556A";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[12:15]" -type "float3"  0 -0.051169734 0 0 -0.051169734
		 0 0 -0.051169734 0 0 -0.051169734 0;
createNode polyDelEdge -n "polyDelEdge29";
	rename -uid "55BF239A-4F63-C492-4B62-36B2E154E9F7";
	setAttr ".ics" -type "componentList" 2 "e[76]" "e[88]";
	setAttr ".cv" yes;
createNode polySplit -n "polySplit134";
	rename -uid "701FC016-4397-56FC-9708-87BFEFD3D93B";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483589 -2147483579;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit135";
	rename -uid "151A3416-420B-7173-71C9-02B1E37BA243";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483594 -2147483580;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyDelEdge -n "polyDelEdge30";
	rename -uid "9EFDE0D2-46E9-345D-1E7A-5B992C734860";
	setAttr ".ics" -type "componentList" 1 "e[88:89]";
	setAttr ".cv" yes;
createNode polySoftEdge -n "polySoftEdge80";
	rename -uid "0A7DCDD0-4D6F-6B57-BD21-82B7CA5A93FF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[22]" "e[24]" "e[26:27]" "e[48:51]" "e[54]" "e[59]";
	setAttr ".ix" -type "matrix" 4.5642376269718508 0 0 0 0 4.5642376269718508 0 0 0 0 4.5642376269718508 0
		 0 0 0 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak138";
	rename -uid "60791685-4A0E-4EAF-5CAF-1D971C6C792F";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk";
	setAttr ".tk[12]" -type "float3" 0 0.064635366 0 ;
	setAttr ".tk[13]" -type "float3" 0 0.064635366 0 ;
	setAttr ".tk[14]" -type "float3" 0 0.064635366 0 ;
	setAttr ".tk[15]" -type "float3" 0 0.064635366 0 ;
	setAttr ".tk[28]" -type "float3" 0 -1.7763568e-15 0 ;
	setAttr ".tk[29]" -type "float3" 0 -1.7763568e-15 0 ;
	setAttr ".tk[30]" -type "float3" 0 -1.7763568e-15 0 ;
	setAttr ".tk[31]" -type "float3" 0 -1.7763568e-15 0 ;
	setAttr ".tk[34]" -type "float3" 0 -1.7763568e-15 0 ;
	setAttr ".tk[37]" -type "float3" 0 -1.7763568e-15 0 ;
	setAttr ".tk[38]" -type "float3" -0.026924426 0.061347727 0 ;
	setAttr ".tk[39]" -type "float3" 0.026924426 0.061347727 0 ;
	setAttr ".tk[40]" -type "float3" -0.026924426 0.0086739808 0 ;
	setAttr ".tk[41]" -type "float3" 0.026924426 0.0086739808 0 ;
	setAttr ".tk[42]" -type "float3" 0.026924426 0.061347727 0 ;
	setAttr ".tk[43]" -type "float3" 0.026924426 0.0086739808 0 ;
	setAttr ".tk[44]" -type "float3" -0.026924426 0.061347727 0 ;
	setAttr ".tk[45]" -type "float3" -0.026924426 0.0086739808 0 ;
createNode polySoftEdge -n "polySoftEdge81";
	rename -uid "9760C33F-4AE4-07FA-F838-13A6FA6D6FD2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[72]" "e[75]" "e[80]" "e[85]";
	setAttr ".ix" -type "matrix" 4.5642376269718508 0 0 0 0 4.5642376269718508 0 0 0 0 4.5642376269718508 0
		 0 0 0 1;
	setAttr ".a" 180;
createNode polyExtrudeFace -n "polyExtrudeFace24";
	rename -uid "13663784-4866-D240-4C10-658DC5E6F801";
	setAttr ".ics" -type "componentList" 5 "f[10:11]" "f[14]" "f[17:18]" "f[20:21]" "f[29:33]";
	setAttr ".ix" -type "matrix" 4.5642376269718508 0 0 0 0 4.5642376269718508 0 0 0 0 4.5642376269718508 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3.8547959 1.0795301 ;
	setAttr ".rs" 56222;
	setAttr ".lt" -type "double3" 0 -4.9960036108132044e-16 -0.36911873186146599 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.2821185414361631 2.0070638533591563 -0.46459209762149395 ;
	setAttr ".cbx" -type "double3" 2.2821185414361631 5.7025281112328399 2.623652261633787 ;
createNode polyTweak -n "polyTweak139";
	rename -uid "C80EEA49-4CA0-A0E6-5EA3-648246977F34";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[12:15]" -type "float3"  -0.041351728 0 0.03228154
		 0.041351728 0 0.03228154 0.041351728 0 -0.03228154 -0.041351728 0 -0.03228154;
createNode polySoftEdge -n "polySoftEdge82";
	rename -uid "CB929AAD-4061-B3B9-4E1B-53A6124D7B9A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 4.5642376269718508 0 0 0 0 4.5642376269718508 0 0 0 0 4.5642376269718508 0
		 0 0 0 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak140";
	rename -uid "156CE8DA-4672-29E0-F0DF-3F8A2A0F8F2E";
	setAttr ".uopa" yes;
	setAttr -s 40 ".tk";
	setAttr ".tk[4]" -type "float3" 0 -0.00094177085 0 ;
	setAttr ".tk[5]" -type "float3" 0 -0.00094177085 0 ;
	setAttr ".tk[6]" -type "float3" 0 -0.00094177085 0 ;
	setAttr ".tk[7]" -type "float3" 0 -0.00094177085 0 ;
	setAttr ".tk[12]" -type "float3" 0.00053411024 0 0 ;
	setAttr ".tk[13]" -type "float3" -0.00053409173 0 0 ;
	setAttr ".tk[14]" -type "float3" -0.00053409173 0 0 ;
	setAttr ".tk[15]" -type "float3" 0.00053411024 0 0 ;
	setAttr ".tk[22]" -type "float3" 0 -0.0082901241 0 ;
	setAttr ".tk[23]" -type "float3" 0 -0.0082901241 0 ;
	setAttr ".tk[24]" -type "float3" 0 -0.0082901241 0 ;
	setAttr ".tk[25]" -type "float3" 0 -0.0082901241 0 ;
	setAttr ".tk[26]" -type "float3" 0 -0.00094177085 0 ;
	setAttr ".tk[28]" -type "float3" 0 -0.0082901241 0 ;
	setAttr ".tk[29]" -type "float3" 0 -0.00094177085 0 ;
	setAttr ".tk[31]" -type "float3" 0 -0.0082901241 0 ;
	setAttr ".tk[32]" -type "float3" -0.038057584 0 0 ;
	setAttr ".tk[33]" -type "float3" 0.038057629 0 0 ;
	setAttr ".tk[34]" -type "float3" -0.038057584 0 0 ;
	setAttr ".tk[35]" -type "float3" 0.038057629 0 0 ;
	setAttr ".tk[36]" -type "float3" 0.038057629 0 0 ;
	setAttr ".tk[37]" -type "float3" 0.038057629 0 0 ;
	setAttr ".tk[38]" -type "float3" -0.038057584 0 0 ;
	setAttr ".tk[39]" -type "float3" -0.038057584 0 0 ;
	setAttr ".tk[40]" -type "float3" -0.022816125 -0.026864173 -0.00047558636 ;
	setAttr ".tk[41]" -type "float3" 0.022816125 -0.026864173 -0.00047558636 ;
	setAttr ".tk[42]" -type "float3" 0.02216454 0.0007496046 -0.00076338416 ;
	setAttr ".tk[43]" -type "float3" -0.02216454 0.0007496046 -0.00076338416 ;
	setAttr ".tk[44]" -type "float3" 0.020808592 -0.00094173825 -8.4092011e-05 ;
	setAttr ".tk[45]" -type "float3" 0.020808592 2.4423633e-05 0.00096287107 ;
	setAttr ".tk[46]" -type "float3" 0.022202745 2.3722858e-05 -0.00096287485 ;
	setAttr ".tk[47]" -type "float3" -0.022202745 2.3722858e-05 -0.00096287485 ;
	setAttr ".tk[48]" -type "float3" 0.022156635 -0.00072781235 -0.00076226715 ;
	setAttr ".tk[49]" -type "float3" -0.022156635 -0.00072781235 -0.00076226715 ;
	setAttr ".tk[50]" -type "float3" 0.022816125 0.016765511 -0.00047338178 ;
	setAttr ".tk[51]" -type "float3" -0.022816125 0.016765511 -0.00047338178 ;
	setAttr ".tk[52]" -type "float3" -0.020808592 -0.00094173825 -8.4092011e-05 ;
	setAttr ".tk[53]" -type "float3" -0.020808592 2.4423633e-05 0.00096287107 ;
	setAttr ".tk[54]" -type "float3" -0.020808592 -0.0082902173 0.00064883387 ;
	setAttr ".tk[55]" -type "float3" 0.020808592 -0.0082902173 0.00064883387 ;
createNode polySplit -n "polySplit136";
	rename -uid "080CD097-47A7-6C9D-5FC0-FFA6A44A3796";
	setAttr -s 4 ".e[0:3]"  0 0.80000001 0.80000001 0;
	setAttr -s 4 ".d[0:3]"  -2147483633 -2147483641 -2147483642 -2147483629;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySoftEdge -n "polySoftEdge83";
	rename -uid "2C1FCB65-42FF-0BF7-2B6A-7792A0B456AE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[73:74]" "e[76]" "e[78]" "e[80]" "e[83]" "e[85]" "e[88:89]" "e[91]" "e[93:94]" "e[96]" "e[99]" "e[103:104]" "e[106:107]";
	setAttr ".ix" -type "matrix" 4.5642376269718508 0 0 0 0 4.5642376269718508 0 0 0 0 4.5642376269718508 0
		 0 0 0 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak141";
	rename -uid "863BBA22-4F70-2F3E-03C7-669C413B9BEF";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk";
	setAttr ".tk[22]" -type "float3" 0 0 0.027108837 ;
	setAttr ".tk[23]" -type "float3" 0 0 0.027108837 ;
	setAttr ".tk[40]" -type "float3" 0.029769223 0 0 ;
	setAttr ".tk[41]" -type "float3" -0.027705865 0 0 ;
	setAttr ".tk[42]" -type "float3" -0.013929982 0 0 ;
	setAttr ".tk[43]" -type "float3" 0.015993312 0 0 ;
	setAttr ".tk[44]" -type "float3" 0.014737648 0 0 ;
	setAttr ".tk[45]" -type "float3" 0.014737624 0 0 ;
	setAttr ".tk[46]" -type "float3" -0.014737624 0 0 ;
	setAttr ".tk[47]" -type "float3" 0.016800957 0 0 ;
	setAttr ".tk[48]" -type "float3" -0.01376276 0 0 ;
	setAttr ".tk[49]" -type "float3" 0.015826091 0 0 ;
	setAttr ".tk[50]" -type "float3" -0.027705865 0 0 ;
	setAttr ".tk[51]" -type "float3" 0.029769223 0 0 ;
	setAttr ".tk[52]" -type "float3" -0.01267429 0 0 ;
	setAttr ".tk[53]" -type "float3" -0.012674104 0 0 ;
	setAttr ".tk[54]" -type "float3" -0.012674104 0 0 ;
	setAttr ".tk[55]" -type "float3" 0.014737624 0 0 ;
	setAttr ".tk[56]" -type "float3" 0.0082414253 -0.056372799 0.011274557 ;
	setAttr ".tk[57]" -type "float3" -0.0082414253 -0.056372799 0.011274557 ;
createNode polySoftEdge -n "polySoftEdge84";
	rename -uid "E004142E-4B2A-3F3F-37C8-FE8BBE29AE44";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[2]" "e[10:11]" "e[36:37]" "e[41:43]" "e[47:48]";
	setAttr ".ix" -type "matrix" 4.5642376269718508 0 0 0 0 4.5642376269718508 0 0 0 0 4.5642376269718508 0
		 0 0 0 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge85";
	rename -uid "ECD61C89-411A-B8EC-8381-A0AAA3703AF1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[0]" "e[5]" "e[16:17]";
	setAttr ".ix" -type "matrix" 4.5642376269718508 0 0 0 0 4.5642376269718508 0 0 0 0 4.5642376269718508 0
		 0 0 0 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak142";
	rename -uid "BA27860B-406F-2F14-D5A8-11AD80B51AB2";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[4:5]" -type "float3"  0 0 0.025215812 0 0 0.025215812;
createNode polySoftEdge -n "polySoftEdge86";
	rename -uid "2AE09B5B-400E-43B3-46A8-3A8DFE268EE7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[36:39]" "e[41]" "e[46]";
	setAttr ".ix" -type "matrix" 4.5642376269718508 0 0 0 0 4.5642376269718508 0 0 0 0 4.5642376269718508 0
		 0 0 0 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge87";
	rename -uid "D0875003-44E7-4AC1-3EEA-678CB33924DF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[53]" "e[60]" "e[65]" "e[69]";
	setAttr ".ix" -type "matrix" 4.5642376269718508 0 0 0 0 4.5642376269718508 0 0 0 0 4.5642376269718508 0
		 0 0 0 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge88";
	rename -uid "9A57A037-492F-E41D-4523-53A2670C6F03";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[20]" "e[22]" "e[24:25]" "e[57]" "e[62]" "e[67]" "e[70]";
	setAttr ".ix" -type "matrix" 4.5642376269718508 0 0 0 0 4.5642376269718508 0 0 0 0 4.5642376269718508 0
		 0 0 0 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge89";
	rename -uid "F1C68105-4D4B-A86D-E3E1-9CBFBD846972";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[51:52]" "e[54:56]" "e[58]";
	setAttr ".ix" -type "matrix" 4.5642376269718508 0 0 0 0 4.5642376269718508 0 0 0 0 4.5642376269718508 0
		 0 0 0 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge90";
	rename -uid "2B44BB6E-4757-9EF4-8C88-EB907FD62588";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[20]" "e[57]" "e[62]" "e[70]";
	setAttr ".ix" -type "matrix" 4.5642376269718508 0 0 0 0 4.5642376269718508 0 0 0 0 4.5642376269718508 0
		 0 0 0 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge91";
	rename -uid "D5F98EC1-4623-0C28-37DD-89A1CCFEAA6B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[69]";
	setAttr ".ix" -type "matrix" 4.5642376269718508 0 0 0 0 4.5642376269718508 0 0 0 0 4.5642376269718508 0
		 0 0 0 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge92";
	rename -uid "4CDE90A9-4FAE-D8C8-2BED-F6A03BE9CFC0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[37:39]" "e[41]" "e[46]";
	setAttr ".ix" -type "matrix" 4.5642376269718508 0 0 0 0 4.5642376269718508 0 0 0 0 4.5642376269718508 0
		 0 0 0 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge93";
	rename -uid "D78E46E5-485F-517E-35DB-9BB7D62AF883";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[60]";
	setAttr ".ix" -type "matrix" 4.5642376269718508 0 0 0 0 4.5642376269718508 0 0 0 0 4.5642376269718508 0
		 0 0 0 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge94";
	rename -uid "B0AD6BA7-4932-7132-119A-D5B8FA20D2E8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[53]";
	setAttr ".ix" -type "matrix" 4.5642376269718508 0 0 0 0 4.5642376269718508 0 0 0 0 4.5642376269718508 0
		 0 0 0 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge95";
	rename -uid "01F7B1F1-4B6B-91C1-9BA6-3DAEC81EDFB7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[59]" "e[61]" "e[63:64]" "e[66]" "e[68]";
	setAttr ".ix" -type "matrix" 4.5642376269718508 0 0 0 0 4.5642376269718508 0 0 0 0 4.5642376269718508 0
		 0 0 0 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge96";
	rename -uid "B8C3AFAD-4F8B-110F-35FC-D89DA819C68C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[24]" "e[67]";
	setAttr ".ix" -type "matrix" 4.5642376269718508 0 0 0 0 4.5642376269718508 0 0 0 0 4.5642376269718508 0
		 0 0 0 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge97";
	rename -uid "644E2859-44BC-B27F-2F73-99839CDFEFC0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[65]";
	setAttr ".ix" -type "matrix" 4.5642376269718508 0 0 0 0 4.5642376269718508 0 0 0 0 4.5642376269718508 0
		 0 0 0 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge98";
	rename -uid "0B5D2F0E-441E-F1AA-D8A0-6C818531270C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[6:9]" "e[12:15]" "e[21]" "e[23]" "e[26:27]" "e[30:31]" "e[33:34]" "e[108:109]";
	setAttr ".ix" -type "matrix" 4.5642376269718508 0 0 0 0 4.5642376269718508 0 0 0 0 4.5642376269718508 0
		 0 0 0 1;
	setAttr ".a" 0;
createNode polyDelEdge -n "polyDelEdge31";
	rename -uid "C0B338F8-4793-A55E-06EC-EAB4849FDF4B";
	setAttr ".ics" -type "componentList" 2 "e[32]" "e[35]";
	setAttr ".cv" yes;
createNode lambert -n "wood";
	rename -uid "7CD89639-4F89-C693-C829-ECB4C2A3D698";
	setAttr ".c" -type "float3" 0.079497911 0.038871959 0.013758065 ;
createNode shadingEngine -n "lambert25SG";
	rename -uid "1BC78478-4831-1606-C62C-9FA9B35AD5DE";
	setAttr ".ihi" 0;
	setAttr -s 7 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 5 ".gn";
createNode materialInfo -n "materialInfo27";
	rename -uid "8FD8600A-4E24-4674-5090-4894917E5073";
createNode groupId -n "groupId265";
	rename -uid "C911F235-471C-55C9-2002-2FA92A7162AC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts110";
	rename -uid "BD5CF26F-461D-DEA5-33A6-D8B716128A09";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 7 "f[0:1]" "f[3:9]" "f[12:13]" "f[15:16]" "f[25:26]" "f[32:33]" "f[42:54]";
	setAttr ".irc" -type "componentList" 6 "f[2]" "f[10:11]" "f[14]" "f[17:24]" "f[27:31]" "f[34:41]";
createNode groupId -n "groupId266";
	rename -uid "66DC5318-4E75-2C82-E02B-ABBD79FA454D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId267";
	rename -uid "76576BA0-4A58-5DD0-1ECF-0B9186637E7A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts111";
	rename -uid "D46268CE-4192-2040-BB4B-55A339F475BF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "f[2]" "f[21:24]" "f[34:41]";
createNode lambert -n "glass";
	rename -uid "ED1ECD81-4ECB-EA6C-6810-608A7FF12911";
	setAttr ".c" -type "float3" 0.19434716 0.25104603 0.17476909 ;
	setAttr ".it" -type "float3" 0.58403361 0.58403361 0.58403361 ;
createNode shadingEngine -n "lambert26SG";
	rename -uid "90CC116F-46C3-201D-63FD-F6906F4E6558";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo28";
	rename -uid "16F8E7A1-4380-71CF-D2D2-4C89E05EFA5A";
createNode groupId -n "groupId268";
	rename -uid "566DA041-4C70-F273-5CB8-7F954DC8FE7A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts112";
	rename -uid "C0ABA7D4-4896-7D03-B724-E083F56D7608";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 4 "f[10:11]" "f[14]" "f[17:20]" "f[27:31]";
createNode polyPlane -n "polyPlane1";
	rename -uid "972B9E4B-40A4-31C5-9B55-7280965590C6";
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode polyExtrudeEdge -n "polyExtrudeEdge7";
	rename -uid "A9B8B131-451B-E99D-AB51-E4ACCA70600B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[3]";
	setAttr ".ix" -type "matrix" 3.9188723701374051 0 0 0 0 3.9188723701374051 0 0 0 0 3.9188723701374051 0
		 0 1.8596553257359183 -0.12673746512873074 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.8596554 -2.0861735 ;
	setAttr ".rs" 33161;
	setAttr ".lt" -type "double3" 0 0 3.9742958284520862 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.9594361850687025 1.8596553257359183 -2.0861736501974333 ;
	setAttr ".cbx" -type "double3" 1.9594361850687025 1.8596553257359183 -2.0861736501974333 ;
createNode polySplitRing -n "polySplitRing18";
	rename -uid "D446889F-4CC9-91A4-EF49-03B223400157";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[4:5]";
	setAttr ".ix" -type "matrix" 3.9188723701374051 0 0 0 0 3.9188723701374051 0 0 0 0 3.9188723701374051 0
		 0 1.8596553257359183 -0.12673746512873074 1;
	setAttr ".wt" 0.51416647434234619;
	setAttr ".dr" no;
	setAttr ".re" 4;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeEdge -n "polyExtrudeEdge8";
	rename -uid "E08A44B8-47FB-FDCF-1E5E-9DA511A18A84";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[6]";
	setAttr ".ix" -type "matrix" 3.9188723701374051 0 0 0 0 3.9188723701374051 0 0 0 0 3.9188723701374051 0
		 0 1.8596553257359183 -0.12673746512873074 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 6.1887121 -0.29242128 ;
	setAttr ".rs" 64774;
	setAttr ".lt" -type "double3" 0 -6.6613381477509392e-16 1.8027824636915588 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.9594361850687025 6.1887120495270684 -0.29242127082020114 ;
	setAttr ".cbx" -type "double3" 1.9594361850687025 6.1887120495270684 -0.29242127082020114 ;
createNode polyTweak -n "polyTweak143";
	rename -uid "7A1A2E96-445F-5D84-6CE9-9B9CA5E56022";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[2:7]" -type "float3"  0 0 0.74055427 0 0 0.74055427
		 0 0.090526253 0.4577215 0 0.090526253 0.4577215 0 0 0.29934806 0 0 0.29934806;
createNode polySoftEdge -n "polySoftEdge99";
	rename -uid "35A80DDA-4765-D61A-E7DB-209C29B74727";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 3.9188723701374051 0 0 0 0 3.9188723701374051 0 0 0 0 3.9188723701374051 0
		 0 1.8596553257359183 -0.12673746512873074 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak144";
	rename -uid "DCDF3027-48F4-0963-1863-3A95A31C9072";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[4]" -type "float3" 0 -0.036522105 0 ;
	setAttr ".tk[5]" -type "float3" 0 -0.036522105 0 ;
	setAttr ".tk[8]" -type "float3" 0 0.084029891 0.12417366 ;
	setAttr ".tk[9]" -type "float3" 0 0.084029891 0.12417366 ;
createNode lambert -n "water";
	rename -uid "7821BA1B-4003-D56B-F045-13B9F622D34D";
	setAttr ".c" -type "float3" 0.23768519 0.39819014 0.25891581 ;
	setAttr ".it" -type "float3" 0.51260507 0.51260507 0.51260507 ;
createNode shadingEngine -n "lambert27SG";
	rename -uid "85F068E6-42A8-E40D-5A9A-72ADEF7750AE";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo29";
	rename -uid "5B78EC69-429A-1D06-1C5D-09ACB0B548B1";
createNode polyExtrudeEdge -n "polyExtrudeEdge9";
	rename -uid "0D6D7023-426C-D091-1DAD-D2B044055CD9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[1:2]" "e[4:5]" "e[7:8]" "e[10:11]";
	setAttr ".ix" -type "matrix" 3.9188723701374051 0 0 0 0 3.9188723701374051 0 0 0 0 3.9188723701374051 0
		 0 1.8596553257359185 -0.32346844506043637 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3.8337274 1.7429711 ;
	setAttr ".rs" 48226;
	setAttr ".lt" -type "double3" -1.1102230246251565e-16 0 1.2898428413808829 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.9594361850687025 1.8264518459946291 1.3430418165336764 ;
	setAttr ".cbx" -type "double3" 1.9594361850687025 5.841002738193005 2.1429003017515988 ;
createNode polyTweak -n "polyTweak145";
	rename -uid "F6F124B2-4F9A-6173-1A96-D1B00C73C1F3";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[0:9]" -type "float3"  0 -0.0084727127 -0.073930152
		 0 -0.0084727127 -0.073930152 0 0.23101172 0.31478944 0 0.23101172 0.31478944 0 -0.28901988
		 0.59720898 0 -0.28901988 0.59720898 0 -0.021128356 0.83000863 0 -0.021128356 0.83000863
		 0 -0.052204452 -0.10059197 0 -0.052204452 -0.10059197;
createNode polyPlane -n "polyPlane2";
	rename -uid "3C7CC31C-4C13-E6AD-6D49-25A2988156BD";
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode polyCylinder -n "polyCylinder11";
	rename -uid "82BB3888-430E-A0A3-6DF9-9C8701A6BA08";
	setAttr ".sa" 8;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyBevel3 -n "polyBevel4";
	rename -uid "1A2ADD52-4448-36C3-908F-22B9A190FA68";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:15]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0 1 0 0 -1 0 0 0 0 4.0886098913880593 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.4;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak146";
	rename -uid "BCC98AD9-4420-594C-46A8-3AB0B8B8BFC6";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk[0:17]" -type "float3"  0 0.67130649 -3.7252903e-09
		 4.4408921e-16 0.67130649 7.4505806e-09 0 0.67130649 -3.7252903e-09 0 0.67130649 2.220446e-16
		 0 0.67130649 -3.7252903e-09 4.4408921e-16 0.67130649 -7.4505806e-09 0 0.67130649
		 3.7252903e-09 0 0.67130649 2.220446e-16 0 -0.67130649 -3.7252903e-09 4.4408921e-16
		 -0.67130649 7.4505806e-09 0 -0.67130649 -3.7252903e-09 0 -0.67130649 2.220446e-16
		 0 -0.67130649 -3.7252903e-09 4.4408921e-16 -0.67130649 -7.4505806e-09 0 -0.67130649
		 3.7252903e-09 0 -0.67130649 2.220446e-16 0 0.67130625 0 0 -0.67130625 0;
createNode polySplit -n "polySplit137";
	rename -uid "18F8CB84-40EE-A1AB-E55F-E3B70B47F45A";
	setAttr -s 9 ".e[0:8]"  0.30000001 0.30000001 0.30000001 0.30000001
		 0.30000001 0.69999999 0.30000001 0.30000001 0.30000001;
	setAttr -s 9 ".d[0:8]"  -2147483579 -2147483580 -2147483581 -2147483582 -2147483584 -2147483583 
		-2147483577 -2147483578 -2147483579;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace25";
	rename -uid "3DBE0F89-4960-AB8B-FB04-D996DD359A69";
	setAttr ".ics" -type "componentList" 1 "f[40:47]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0 1 0 0 -1 0 0 0 0 4.0886098913880593 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.9802322e-08 -2.9802322e-08 4.4173036 ;
	setAttr ".rs" 48432;
	setAttr ".lt" -type "double3" 3.6554209764571763e-17 -7.1923685133730778e-18 -0.15897800928070019 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.60039281845092773 -0.60039287805557251 4.4173034302922494 ;
	setAttr ".cbx" -type "double3" 0.60039287805557251 0.60039281845092773 4.4173037581177956 ;
createNode polyDelEdge -n "polyDelEdge32";
	rename -uid "49430E90-41A3-9CDF-D3E0-8ABF67AC845A";
	setAttr ".ics" -type "componentList" 7 "e[83:84]" "e[87]" "e[90]" "e[93]" "e[96]" "e[99]" "e[102]";
	setAttr ".cv" yes;
createNode polyTweak -n "polyTweak147";
	rename -uid "92765D57-4D6B-DF6E-7A9F-E6BA80C70BA2";
	setAttr ".uopa" yes;
	setAttr -s 17 ".tk[33:49]" -type "float3"  -3.5175831e-09 0.011304336
		 0.085383266 -0.060375065 0.011304336 0.060375057 -0.085383266 0.011304336 -4.2382573e-09
		 -0.060375065 0.011304336 -0.060375065 -4.2382573e-09 0.011304336 -0.085383266 0.060375057
		 0.011304336 -0.060375065 0.085383266 0.011304336 -3.5175827e-09 0.060375065 0.011304336
		 0.060375065 -1.8256122e-08 -0.011304233 -0.053784788 0.038031653 -0.011304233 -0.038031586
		 1.1270735e-08 -8.7478071e-08 6.0479364e-09 0.053784765 -0.011304233 1.6236051e-08
		 0.03803166 -0.011304233 0.03803163 2.9802322e-08 -0.011304233 0.053784758 -0.038031638
		 -0.011304233 0.0380316 -0.05378478 -0.011304233 -1.1350463e-08 -0.03803166 -0.011304233
		 -0.03803163;
createNode polySplit -n "polySplit138";
	rename -uid "3673EA1E-47C6-3F43-7A74-4F888E006F52";
	setAttr -s 5 ".e[0:4]"  0.69999999 0.69999999 1 0.30000001 0.30000001;
	setAttr -s 5 ".d[0:4]"  -2147483562 -2147483574 -2147483612 -2147483573 -2147483560;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit139";
	rename -uid "36E941EE-4DBA-646E-2C4E-05BBFAF95487";
	setAttr -s 7 ".e[0:6]"  0 0.69999999 0.69999999 1 0.30000001 0.30000001
		 0;
	setAttr -s 7 ".d[0:6]"  -2147483549 -2147483554 -2147483570 -2147483601 -2147483569 -2147483553 
		-2147483552;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent29";
	rename -uid "C10C21C1-4C40-1BAA-10B2-A7B475D3BF1D";
	setAttr ".dc" -type "componentList" 4 "f[49]" "f[52]" "f[54]" "f[57:58]";
createNode polyCloseBorder -n "polyCloseBorder8";
	rename -uid "220E6184-4B2D-7C69-B8CE-D2B50C48B5CB";
	setAttr ".ics" -type "componentList" 7 "e[75]" "e[79]" "e[92]" "e[95]" "e[98:99]" "e[102:103]" "e[106:107]";
createNode polySplit -n "polySplit140";
	rename -uid "9534199B-4DA2-5463-100F-C0B8B458F321";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483556 -2147483569;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit141";
	rename -uid "50CECAFF-4ADF-4B92-3894-F185850226CF";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483573 -2147483549;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyDelEdge -n "polyDelEdge33";
	rename -uid "95DCFF6F-4470-AC95-E885-FA9214882FE3";
	setAttr ".ics" -type "componentList" 2 "e[65]" "e[69]";
	setAttr ".cv" yes;
createNode polySoftEdge -n "polySoftEdge100";
	rename -uid "54C11D18-43BC-5BE6-4DE6-B0AED66E01CC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0 1 0 0 -1 0 0 0 0 4.0886098913880593 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge101";
	rename -uid "CE17F272-422A-0407-1DC2-1188F99C1C2E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 24 "e[1]" "e[3:4]" "e[6:7]" "e[9:10]" "e[12:13]" "e[15:16]" "e[18:19]" "e[21:23]" "e[25]" "e[27:28]" "e[30:31]" "e[33:34]" "e[37]" "e[40]" "e[43]" "e[46:47]" "e[70:75]" "e[78]" "e[80:81]" "e[84]" "e[86:87]" "e[89:90]" "e[96:98]" "e[103:105]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0 1 0 0 -1 0 0 0 0 4.0886098913880593 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge102";
	rename -uid "43B77836-4D92-4216-B394-609D0B72FB62";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[1]" "e[6:7]" "e[10]" "e[13]" "e[16]" "e[19]" "e[22]" "e[25]" "e[30]" "e[33]" "e[47]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0 1 0 0 -1 0 0 0 0 4.0886098913880593 1;
	setAttr ".a" 180;
createNode objectSet -n "set46";
	rename -uid "89644996-4580-1A3B-11AC-1A9E280717F0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId269";
	rename -uid "F0A6A25F-4E6C-9354-63A9-64905137570E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts113";
	rename -uid "61D896A3-42B8-1970-3DD3-E7970CB1CC62";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 8 "e[1]" "e[6:7]" "e[10]" "e[13]" "e[16]" "e[19]" "e[22]" "e[56:63]";
createNode deleteComponent -n "deleteComponent30";
	rename -uid "A020265C-45E4-1F39-9B4D-00993B17ECA4";
	setAttr ".dc" -type "componentList" 1 "f[24:31]";
createNode objectSet -n "set47";
	rename -uid "14DF6EE0-4EDD-C051-D131-92B2A3709D08";
	setAttr ".ihi" 0;
createNode groupId -n "groupId270";
	rename -uid "13C2C416-4A2A-5338-24E4-509E2269D493";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts114";
	rename -uid "BFE523D7-474F-E644-4B83-1394E8A9ABEB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "e[0:23]";
createNode polyTweak -n "polyTweak148";
	rename -uid "1E91C2D4-4A57-B6ED-EFB3-5C82B6F30E8E";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0.053524747 0.027598361 ;
	setAttr ".tk[1]" -type "float3" 0 0.036488563 0.00015458942 ;
	setAttr ".tk[2]" -type "float3" 0 0.19307792 0 ;
	setAttr ".tk[3]" -type "float3" 0 0.085271046 0.0049365349 ;
	setAttr ".tk[4]" -type "float3" 0 0.053524747 0.027598361 ;
	setAttr ".tk[5]" -type "float3" 0 0.036488563 0.00015458942 ;
	setAttr ".tk[6]" -type "float3" 0 -0.083785146 0.014138434 ;
	setAttr ".tk[7]" -type "float3" 0 -0.081282794 -0.01139005 ;
	setAttr ".tk[8]" -type "float3" 0 -0.22109532 0.00067849905 ;
	setAttr ".tk[9]" -type "float3" 0 -0.19905415 -0.022934686 ;
	setAttr ".tk[10]" -type "float3" 0 -0.277971 -0.0048967875 ;
	setAttr ".tk[11]" -type "float3" 0 -0.24783671 -0.027716631 ;
	setAttr ".tk[12]" -type "float3" 0 -0.22109532 0.00067849777 ;
	setAttr ".tk[13]" -type "float3" 0 -0.19905418 -0.022934692 ;
	setAttr ".tk[14]" -type "float3" 0 -0.083785146 0.014138434 ;
	setAttr ".tk[15]" -type "float3" 0 -0.081282794 -0.01139005 ;
	setAttr ".tk[47]" -type "float3" -1.4901161e-08 0 -1.1175871e-08 ;
	setAttr ".tk[50]" -type "float3" -5.5879354e-09 0 -7.4505806e-09 ;
	setAttr ".tk[51]" -type "float3" 1.4901161e-08 0 1.1175871e-08 ;
	setAttr ".tk[54]" -type "float3" 1.4901161e-08 0 7.4505806e-09 ;
createNode deleteComponent -n "deleteComponent31";
	rename -uid "3909179F-4E8A-E7FD-DF6D-0FBDED3BDF73";
	setAttr ".dc" -type "componentList" 1 "f[0:7]";
createNode polyCylinder -n "polyCylinder12";
	rename -uid "BC122FC5-4108-81C3-EB88-11BB2152B83A";
	setAttr ".sa" 8;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyBevel3 -n "polyBevel5";
	rename -uid "087AFAA4-466F-5EC9-9F4F-B9BEF16DAFF0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[8:15]";
	setAttr ".ix" -type "matrix" 0.43014972924957467 0 0 0 0 0 0.43014972924957467 0
		 0 -0.43014972924957467 0 0 0.075244702887112894 0.34704254415886587 3.2964896807856894 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak149";
	rename -uid "B2DFB4B7-4BAB-5BEE-A549-20829BC075E6";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[8]" -type "float3" 2.9802322e-08 -1.4257934 -2.9802322e-08 ;
	setAttr ".tk[9]" -type "float3" 2.6645353e-15 -1.4257934 5.9604645e-08 ;
	setAttr ".tk[10]" -type "float3" -4.4703484e-08 -1.4257934 -2.9802322e-08 ;
	setAttr ".tk[11]" -type "float3" 5.9604645e-08 -1.4257934 1.3322676e-15 ;
	setAttr ".tk[12]" -type "float3" -4.4703484e-08 -1.4257934 1.4901161e-08 ;
	setAttr ".tk[13]" -type "float3" 2.6645353e-15 -1.4257934 -7.4505806e-08 ;
	setAttr ".tk[14]" -type "float3" 2.9802322e-08 -1.4257934 2.9802322e-08 ;
	setAttr ".tk[15]" -type "float3" -5.9604645e-08 -1.4257934 1.3322676e-15 ;
	setAttr ".tk[17]" -type "float3" 2.6645353e-15 -1.4257934 1.3322676e-15 ;
createNode objectSet -n "set48";
	rename -uid "415E2177-484B-9453-FD67-AB818F582FC7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId271";
	rename -uid "EC437A4D-4B21-1730-6447-96B6B22A439C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts115";
	rename -uid "D4EB8BFA-4236-0347-B78A-DBA035F23256";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "e[0:15]";
createNode polyTweak -n "polyTweak150";
	rename -uid "2B53479D-4690-8B31-1AF5-07B7C7CF72EF";
	setAttr ".uopa" yes;
	setAttr -s 26 ".tk[0:25]" -type "float3"  0 -1.43162835 0 0 -1.43162835
		 0 0 -1.43162835 0 0 -1.43162835 0 0 -1.43162835 0 0 -1.43162835 0 0 -1.43162835 0
		 0 -1.43162835 0 0 -1.43162823 0 0 6.8917871e-08 0 0 -0.1439237 0 0.068476669 6.8917871e-08
		 -0.068476669 0 -0.1439237 0 -4.1871351e-09 6.8917871e-08 -0.096840642 0 -0.1439237
		 0 -0.068476692 6.8917871e-08 -0.068476669 0 -0.1439237 0 -0.096840635 6.8917871e-08
		 8.3742719e-09 0 -0.1439237 0 -0.068476692 6.8917871e-08 0.068476677 0 -0.1439237
		 0 3.6671762e-18 6.8917871e-08 0.096840642 0 -0.1439237 0 0.068476677 6.8917871e-08
		 0.068476692 0 -0.1439237 0 0.096840635 6.8917871e-08 1.674854e-08;
createNode deleteComponent -n "deleteComponent32";
	rename -uid "C326209B-4EBA-F9F2-1E08-D58627BA3F9A";
	setAttr ".dc" -type "componentList" 1 "f[0:7]";
createNode polySplit -n "polySplit142";
	rename -uid "499E7877-4CAC-4EC5-DEEF-58B81E110E2E";
	setAttr -s 3 ".e[0:2]"  0 0.29289299 1;
	setAttr -s 3 ".d[0:2]"  -2147483631 -2147483608 -2147483634;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit143";
	rename -uid "1844260B-46E2-0AA5-D234-C6BFD887FB1D";
	setAttr -s 3 ".e[0:2]"  1 0.29289299 0;
	setAttr -s 3 ".d[0:2]"  -2147483622 -2147483603 -2147483619;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyDelEdge -n "polyDelEdge34";
	rename -uid "FBB3AC63-451C-88E2-43BD-76A668F09568";
	setAttr ".ics" -type "componentList" 4 "e[40:42]" "e[44:46]" "e[48]" "e[51]";
	setAttr ".cv" yes;
createNode polySplit -n "polySplit144";
	rename -uid "5893EE9E-415A-1943-7FEA-BDB4F84D6EDF";
	setAttr -s 13 ".e[0:12]"  0 0.69999999 0.34999999 0.39393401 0.34999999
		 0.30000001 1 0.69999999 0.64999998 0.60606599 0.64999998 0.30000001 1;
	setAttr -s 13 ".d[0:12]"  -2147483635 -2147483631 -2147483607 -2147483608 -2147483606 -2147483622 
		-2147483624 -2147483619 -2147483606 -2147483608 -2147483607 -2147483634 -2147483636;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit145";
	rename -uid "4BF1EE07-41AA-1B17-CE47-3493808C6EBD";
	setAttr -s 3 ".e[0:2]"  1 0 1;
	setAttr -s 3 ".d[0:2]"  -2147483594 -2147483634 -2147483604;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit146";
	rename -uid "59DE3AEE-4B04-14E4-D97F-13AE11C673C5";
	setAttr -s 3 ".e[0:2]"  0 0 1;
	setAttr -s 3 ".d[0:2]"  -2147483600 -2147483622 -2147483588;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyDelEdge -n "polyDelEdge35";
	rename -uid "5DB45E8B-426F-9847-2D30-2F9C7197A7C8";
	setAttr ".ics" -type "componentList" 3 "e[53:54]" "e[57:60]" "e[63:64]";
	setAttr ".cv" yes;
createNode polyExtrudeFace -n "polyExtrudeFace26";
	rename -uid "E7BC8DBD-40BB-09B7-B3C1-E9B3C473F797";
	setAttr ".ics" -type "componentList" 1 "f[17:18]";
	setAttr ".ix" -type "matrix" 0.43014972924957467 0 0 0 0 0 0.43014972924957467 0
		 0 -0.43014972924957467 0 0 0.075244702887112894 0.34704254415886587 3.2964896807856894 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.075244687 0.3470425 3.1133349 ;
	setAttr ".rs" 48459;
	setAttr ".lt" -type "double3" 0 -5.2034133922338128e-17 -0.084590731570177088 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.0035130055741479094 0.10793693345367256 3.1133348892332031 ;
	setAttr ".cbx" -type "double3" 0.14697636815142562 0.58614805230837197 3.1133348892332031 ;
createNode polySoftEdge -n "polySoftEdge103";
	rename -uid "82102C1C-4577-88A8-9D1D-40A82EBF9A1B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.43014972924957467 0 0 0 0 0 0.43014972924957467 0
		 0 -0.43014972924957467 0 0 0.075244702887112894 0.34704254415886587 3.2964896807856894 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak151";
	rename -uid "88ABD61C-40DE-E82A-DAEE-E4A17034D394";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[24:35]" -type "float3"  -0.021437183 6.9944051e-14
		 -0.08674027 0.021437187 6.9944051e-14 -0.08674027 -0.021437149 6.9944051e-14 -4.6505129e-09
		 0.021437183 6.9944051e-14 -4.6505129e-09 -0.021437187 6.9944051e-14 0.086740255 0.021437187
		 6.9944051e-14 0.08674027 -0.050005019 3.4194869e-14 0 -0.050005056 3.4194869e-14
		 0 0.050005063 3.4194869e-14 0 0.050005104 3.4194869e-14 0 -0.050005067 3.4194869e-14
		 0 0.050005067 3.4194869e-14 0;
createNode polySoftEdge -n "polySoftEdge104";
	rename -uid "3451AC1B-43AD-EF4F-541B-709BC251D1E9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[9]" "e[11:12]" "e[14]" "e[16:17]" "e[19:20]" "e[22:23]" "e[25]" "e[27:29]" "e[41]" "e[44]" "e[46:51]" "e[58]" "e[62:63]" "e[65]" "e[67:68]";
	setAttr ".ix" -type "matrix" 0.43014972924957467 0 0 0 0 0 0.43014972924957467 0
		 0 -0.43014972924957467 0 0 0.075244702887112894 0.34704254415886587 3.2964896807856894 1;
	setAttr ".a" 0;
createNode groupId -n "groupId272";
	rename -uid "024AB2CD-4508-0B69-C56A-D1917D401723";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts116";
	rename -uid "89F0D27D-414B-DD00-1772-0A883D8FED24";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:16]" "f[19:33]";
	setAttr ".irc" -type "componentList" 1 "f[17:18]";
createNode groupId -n "groupId273";
	rename -uid "DD37916E-42FC-280E-0382-BFBA56C18377";
	setAttr ".ihi" 0;
createNode groupId -n "groupId274";
	rename -uid "C0133326-4667-B155-0B3D-0CAF643BB759";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts117";
	rename -uid "02CFB649-42D4-7117-5B4D-0BBE19BFB181";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[17:18]";
createNode polyCube -n "polyCube11";
	rename -uid "B365EBB7-4DE2-E068-AE1F-B68811F26AB2";
	setAttr ".cuv" 4;
createNode polyBevel3 -n "polyBevel6";
	rename -uid "8B814779-42D9-55E7-51A6-72ACB6D6661A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[0:1]" "e[4:5]";
	setAttr ".ix" -type "matrix" 0.88532036039247397 0 0 0 0 0.88532036039247397 0 0
		 0 0 0.88532036039247397 0 0.0086290379167569958 -0.55087529019258452 3.4746461541234717 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.3;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak152";
	rename -uid "4BDB99D4-4E9D-3BD2-7109-7D980845CFB7";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  0.14509505 0 0 0.0053943992
		 0 0 0.14509505 -0.10545073 0 0.0053943992 -0.10545073 0 0.14509505 -0.10545073 0
		 0.0053943992 -0.10545073 0 0.14509505 0 0 0.0053943992 0 0;
createNode polyTweak -n "polyTweak153";
	rename -uid "EEAF3B73-489C-1B31-73AB-E18003473C18";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[5]" -type "float3" 0 0 -0.080377027 ;
	setAttr ".tk[7]" -type "float3" 0 0 -0.080377027 ;
	setAttr ".tk[9]" -type "float3" 0 0 -0.080377027 ;
	setAttr ".tk[11]" -type "float3" 0 0 -0.080377027 ;
createNode deleteComponent -n "deleteComponent33";
	rename -uid "036300AA-40D6-778F-FCC1-FAA00826C021";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode polySoftEdge -n "polySoftEdge105";
	rename -uid "83570917-4B32-837E-0465-C8A0EAC734A5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.88532036039247397 0 0 0 0 0.88532036039247397 0 0
		 0 0 0.88532036039247397 0 0.0086290379167569958 -0.55087529019258452 2.6706751019536714 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak154";
	rename -uid "611A66DF-4B58-AEC9-C61D-9A9B0D975EA2";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[0:3]" -type "float3"  0 0 0.025426447 0 0 0.025426447
		 0 0 0.025426447 0 0 0.025426447;
createNode polySoftEdge -n "polySoftEdge106";
	rename -uid "BBBE5D36-4BF2-B598-E89D-969B0EB91C05";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[5]" "e[7:8]" "e[10:11]" "e[13:15]";
	setAttr ".ix" -type "matrix" 0.88532036039247397 0 0 0 0 0.88532036039247397 0 0
		 0 0 0.88532036039247397 0 0.0086290379167569958 -0.55087529019258452 2.6706751019536714 1;
	setAttr ".a" 0;
createNode deleteComponent -n "deleteComponent34";
	rename -uid "B320CAF0-4747-7434-535B-4B89FED34ABD";
	setAttr ".dc" -type "componentList" 1 "f[0:4]";
createNode polyCloseBorder -n "polyCloseBorder9";
	rename -uid "4597D9BF-49BA-2B23-A2DB-AD803C2D351B";
	setAttr ".ics" -type "componentList" 1 "e[4:7]";
createNode polyBevel3 -n "polyBevel7";
	rename -uid "299046E8-4FE2-1823-B212-25AE358D0937";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[8:11]";
	setAttr ".ix" -type "matrix" 0.88532036039247397 0 0 0 0 0.88532036039247397 0 0
		 0 0 0.88532036039247397 0 0.0086290379167569958 -0.55087529019258452 2.6706751019536714 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.4;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polySoftEdge -n "polySoftEdge107";
	rename -uid "A3893F10-41D1-D239-2DC4-64AAB2D243CC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[12:19]";
	setAttr ".ix" -type "matrix" 0.88532036039247397 0 0 0 0 0.88532036039247397 0 0
		 0 0 0.88532036039247397 0 0.0086290379167569958 -0.55087529019258452 2.6706751019536714 1;
	setAttr ".a" 180;
createNode polyCube -n "polyCube12";
	rename -uid "8F4E9AC3-4699-655B-C49F-9B9A92F71BAC";
	setAttr ".sw" 3;
	setAttr ".sh" 2;
	setAttr ".cuv" 4;
createNode polyDelEdge -n "polyDelEdge36";
	rename -uid "BCDC9832-4FEA-3D93-F5CB-63B55C2D7E13";
	setAttr ".ics" -type "componentList" 1 "e[19:20]";
	setAttr ".cv" yes;
createNode polyTweak -n "polyTweak155";
	rename -uid "AD6F1B15-4BC5-16FB-1AA8-649278850E64";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk";
	setAttr ".tk[1]" -type "float3" -0.14074072 5.2180482e-15 2.0872193e-14 ;
	setAttr ".tk[2]" -type "float3" 0.14074072 5.2180482e-15 2.0872193e-14 ;
	setAttr ".tk[4]" -type "float3" 0 0.12645838 -5.5511151e-17 ;
	setAttr ".tk[5]" -type "float3" -0.049657077 0.37159726 2.8810287e-14 ;
	setAttr ".tk[6]" -type "float3" 0.049657077 0.37159726 2.8810287e-14 ;
	setAttr ".tk[7]" -type "float3" 0 0.12645838 -5.5511151e-17 ;
	setAttr ".tk[8]" -type "float3" 0 -0.18522124 0 ;
	setAttr ".tk[9]" -type "float3" -0.14074072 -5.2180482e-15 2.0872193e-14 ;
	setAttr ".tk[10]" -type "float3" 0.14074072 -5.2180482e-15 2.0872193e-14 ;
	setAttr ".tk[11]" -type "float3" 0 -0.18522124 0 ;
	setAttr ".tk[12]" -type "float3" 0 -0.18522124 0 ;
	setAttr ".tk[13]" -type "float3" -0.14074072 -5.2180482e-15 2.0872193e-14 ;
	setAttr ".tk[14]" -type "float3" 0.14074072 -5.2180482e-15 2.0872193e-14 ;
	setAttr ".tk[15]" -type "float3" 0 -0.18522124 0 ;
	setAttr ".tk[16]" -type "float3" 0 0.12645838 5.5511151e-17 ;
	setAttr ".tk[17]" -type "float3" -0.049657077 0.37159726 2.892131e-14 ;
	setAttr ".tk[18]" -type "float3" 0.049657077 0.37159726 2.892131e-14 ;
	setAttr ".tk[19]" -type "float3" 0 0.12645838 5.5511151e-17 ;
	setAttr ".tk[21]" -type "float3" -0.14074072 5.2180482e-15 2.0872193e-14 ;
	setAttr ".tk[22]" -type "float3" 0.14074072 5.2180482e-15 2.0872193e-14 ;
createNode polySplit -n "polySplit147";
	rename -uid "1F07F627-49EC-1849-D3D6-4596E28B9106";
	setAttr -s 3 ".e[0:2]"  1 0.5 0.69999999;
	setAttr -s 3 ".d[0:2]"  -2147483627 -2147483645 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit148";
	rename -uid "910C062F-462D-9605-6569-648CDC0E269C";
	setAttr -s 3 ".e[0:2]"  0 0.5 0.30000001;
	setAttr -s 3 ".d[0:2]"  -2147483640 -2147483643 -2147483646;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyDelEdge -n "polyDelEdge37";
	rename -uid "BB37E560-4A27-CA2B-BF66-F288851E12BC";
	setAttr ".ics" -type "componentList" 1 "e[37:38]";
	setAttr ".cv" yes;
createNode polyTweak -n "polyTweak156";
	rename -uid "70B7F5B3-4A22-5214-AF12-389C6F1A14FB";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[24:27]" -type "float3"  -0.0035116177 -6.9388939e-16
		 5.5511151e-15 0.0035116177 1.3877788e-15 5.5511151e-15 0.0035116333 -4.1633363e-16
		 3.3306691e-15 -0.0035116333 8.3266727e-16 3.3306691e-15;
createNode polySplit -n "polySplit149";
	rename -uid "A98EFA1C-453C-AEAF-9CF6-B684EB7086D4";
	setAttr -s 2 ".e[0:1]"  0 0.69999999;
	setAttr -s 2 ".d[0:1]"  -2147483609 -2147483635;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit150";
	rename -uid "3E6194B9-491C-CEEC-6912-8788A722849C";
	setAttr -s 2 ".e[0:1]"  0 0.30000001;
	setAttr -s 2 ".d[0:1]"  -2147483605 -2147483633;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode objectSet -n "set49";
	rename -uid "02024B79-4E87-B5CC-A69B-EC94A34C4508";
	setAttr ".ihi" 0;
createNode groupId -n "groupId275";
	rename -uid "41BB1394-486F-F06F-CE7F-8D8C5F4AB70A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts118";
	rename -uid "9BB0364F-4E19-8A56-F2A9-94830E502212";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 4 "e[7:15]" "e[26:33]" "e[46]" "e[48]";
createNode polyTweak -n "polyTweak157";
	rename -uid "3AD096DA-42A9-12C2-15F3-F58D3D6A699F";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[19]" -type "float3" -0.051280782 1.7208457e-15 6.8833828e-15 ;
	setAttr ".tk[20]" -type "float3" 0.050454929 2.220446e-15 8.8817842e-15 ;
	setAttr ".tk[22]" -type "float3" 0.0029847156 -8.6042284e-16 6.8833828e-15 ;
	setAttr ".tk[23]" -type "float3" 0.0029848013 1.7208457e-15 6.8833828e-15 ;
	setAttr ".tk[24]" -type "float3" -0.0038105878 -2.3037128e-15 1.8429702e-14 ;
	setAttr ".tk[25]" -type "float3" -0.0038106474 4.6074256e-15 1.8429702e-14 ;
	setAttr ".tk[26]" -type "float3" 0.0064963675 1.7208457e-15 6.8833828e-15 ;
	setAttr ".tk[27]" -type "float3" -0.0073222737 4.6074256e-15 1.8429702e-14 ;
createNode deleteComponent -n "deleteComponent35";
	rename -uid "940CD4B0-4409-AF30-FBB1-44A6D3336F00";
	setAttr ".dc" -type "componentList" 1 "f[7:12]";
createNode polyExtrudeFace -n "polyExtrudeFace27";
	rename -uid "4C1725E4-4C22-BB08-1358-1F800AB0A537";
	setAttr ".ics" -type "componentList" 1 "f[15]";
	setAttr ".ix" -type "matrix" 1.6539010111089147 0 0 0 0 1.6539010111089147 0 0 0 0 1.6539010111089147 0
		 1.4492412584785714 -0.1415737217951627 2.7925041385031006 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.4485583 -0.24775644 3.6194546 ;
	setAttr ".rs" 36298;
	setAttr ".lt" -type "double3" 0 0 -0.13922739174007814 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.8560055362496739 -0.96852422734962007 3.6194546440575581 ;
	setAttr ".cbx" -type "double3" 2.0411111029921543 0.47301136263568433 3.6194546440575581 ;
createNode polySoftEdge -n "polySoftEdge108";
	rename -uid "57ACACDE-4A78-191F-AF23-0780247E583D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1.6539010111089147 0 0 0 0 1.6539010111089147 0 0 0 0 1.6539010111089147 0
		 1.4492412584785714 -0.1415737217951627 2.7925041385031006 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak158";
	rename -uid "5BC9C877-4282-C54D-63DC-37B1DCE3207E";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[3]" -type "float3" 0 -0.033498965 0 ;
	setAttr ".tk[4]" -type "float3" 0 -0.033498965 0 ;
	setAttr ".tk[20]" -type "float3" 0 -0.033498965 0 ;
	setAttr ".tk[22]" -type "float3" 0 -0.033498965 0 ;
	setAttr ".tk[26]" -type "float3" 0.049637936 -0.12126898 -3.3306691e-16 ;
	setAttr ".tk[27]" -type "float3" -0.049827855 -0.12126898 -3.3306691e-16 ;
	setAttr ".tk[28]" -type "float3" 0.082367741 -0.093090273 -3.3306691e-16 ;
	setAttr ".tk[29]" -type "float3" 0.082367741 0.079111435 -3.3306691e-16 ;
	setAttr ".tk[30]" -type "float3" -0.082367741 0.079111435 -3.3306691e-16 ;
	setAttr ".tk[31]" -type "float3" -0.082367741 -0.093090273 -3.3306691e-16 ;
createNode polySoftEdge -n "polySoftEdge109";
	rename -uid "6663B7CC-41A8-D890-3D72-A28E71829537";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[0]" "e[2:6]" "e[13:15]" "e[18]" "e[25]" "e[27:28]" "e[31:32]" "e[34]" "e[36]" "e[38]" "e[45]" "e[47]" "e[49]" "e[51]" "e[53:54]";
	setAttr ".ix" -type "matrix" 1.6539010111089147 0 0 0 0 1.6539010111089147 0 0 0 0 1.6539010111089147 0
		 1.4492412584785714 -0.1415737217951627 2.7925041385031006 1;
	setAttr ".a" 0;
createNode polySplit -n "polySplit151";
	rename -uid "002C1A9E-4390-30EA-59C6-D6B9FBFA9796";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483601 -2147483595;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode groupId -n "groupId276";
	rename -uid "4739477D-4453-60E8-2E97-0F9C31543E2C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts119";
	rename -uid "F41CAD66-4336-8518-C687-5C89CECB4F9B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:14]" "f[16:23]";
	setAttr ".irc" -type "componentList" 2 "f[15]" "f[24]";
createNode groupId -n "groupId277";
	rename -uid "B1F1018D-437A-A85B-5F61-1E9F76AC2BEF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId278";
	rename -uid "9E155EC9-431D-CA9A-BD88-FFB695BCDE65";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts120";
	rename -uid "0CB53992-4812-0036-1ECE-5D91DCCBF4CF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[15]" "f[24]";
	setAttr ".irc" -type "componentList" 1 "f[21]";
createNode polyPlane -n "polyPlane3";
	rename -uid "8A676C46-4BEF-AE14-CF9B-02B432ADFF68";
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode polyPlane -n "polyPlane4";
	rename -uid "E78004D4-4E14-FAF6-3D00-A38A6BDCB51C";
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode polyMergeVert -n "polyMergeVert29";
	rename -uid "A46947E7-43A8-9F7D-17EA-9D8A2B52A398";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0 1 0 0 -1 0 0 -1.1524286175743028 5.0150334645696617 2.7817376135289988 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak159";
	rename -uid "B292A75A-4F2B-AEED-B067-29991779CB43";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[0:3]" -type "float3"  -0.15925923 -2.7477608e-14
		 0 0.15925923 -7.1054274e-15 -0.5 -0.15925923 -2.7477608e-14 0 0.15925923 -7.1054274e-15
		 0.5;
createNode polyPlane -n "polyPlane5";
	rename -uid "6B9D094C-492B-A6AD-0870-41B9C7167B34";
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode polyTweak -n "polyTweak160";
	rename -uid "DD75BBCC-43AC-1A22-F9B0-F581837928FA";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk[0:31]" -type "float3"  0 0 -0.422378 0 0 -0.422378
		 0 0 -0.32679495 0 0 -0.30601573 0 0 -0.30601573 0 0 -0.32679495 0 0 -0.30601573 0
		 0 -0.30601573 0 0 -0.30601573 0 0 -0.30601573 0 0 0.17230284 0 0 0.17230284 0 0 0.17230284
		 0 0 0.17230284 0 0 0.17230284 0 0 0.17230284 0 0 0.17230284 0 0 0.17230284 0 0 0.17230284
		 0 0 0.17230284 0 0 -0.32679495 0 0 -0.422378 0 0 -0.32679495 0 0 -0.422378 0 0 0.17230284
		 0 0 0.17230284 0 0 -0.30601573 0 0 -0.30601573 0 0 -0.32679495 0 0 -0.422378 0 0
		 -0.422378 0 0 -0.32679495;
createNode transformGeometry -n "transformGeometry49";
	rename -uid "2AC4C4C2-425A-BABE-781C-09A70BC834C9";
	setAttr ".txf" -type "matrix" 1.6539010111089147 0 0 0 0 1.6539010111089147 0 0
		 0 0 1.6539010111089147 0 1.4492412584785714 -0.1415737217951627 2.7925041385031006 1;
createNode polyTweak -n "polyTweak161";
	rename -uid "B72F9E61-4638-21AC-89BA-9895F7E6D978";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[2]" -type "float3" 0 0 0.044766366 ;
	setAttr ".tk[3]" -type "float3" 0 0 0.044766366 ;
	setAttr ".tk[6]" -type "float3" 0 0 0.044766366 ;
	setAttr ".tk[7]" -type "float3" 0 0 0.044766366 ;
	setAttr ".tk[10]" -type "float3" 0 0 0.044766366 ;
	setAttr ".tk[11]" -type "float3" 0 0 0.044766366 ;
	setAttr ".tk[14]" -type "float3" 0 0 0.044766366 ;
	setAttr ".tk[15]" -type "float3" 0 0 0.044766366 ;
createNode transformGeometry -n "transformGeometry50";
	rename -uid "D4B06803-4EBB-21CC-2008-248F6B790D66";
	setAttr ".txf" -type "matrix" 0.88532036039247397 0 0 0 0 0.88532036039247397 0 0
		 0 0 0.88532036039247397 0 0.0086290379167569958 -0.55087529019258452 2.6706751019536714 1;
createNode polyTweak -n "polyTweak162";
	rename -uid "D63BD559-43BC-5BDE-F2DF-71996EBC0A5C";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  -3.4416914e-15 -0.36138901
		 3.4416914e-15 -6.8833828e-15 -0.50094086 3.4416914e-15 -1.0325074e-14 -0.36138901
		 3.4416914e-15 -1.3766766e-14 -0.22408079 -5.3776428e-17 -1.0325074e-14 -0.08677195
		 -3.4416914e-15 -6.8833828e-15 -0.029896822 -3.4416914e-15 -3.4416914e-15 -0.08677195
		 -3.4416914e-15 0 -0.22408079 -5.3776428e-17;
createNode transformGeometry -n "transformGeometry51";
	rename -uid "13C88022-46C0-C41E-EE83-F3860D7C4AC7";
	setAttr ".txf" -type "matrix" 1.0209641561240297 0 0 0 0 0 1.0209641561240297 0
		 0 -1.0209641561240297 0 0 -1.4000200910317229 -0.04692800945131026 2.7662093255844322 1;
createNode transformGeometry -n "transformGeometry52";
	rename -uid "69CD939A-4ABC-396C-EBA8-3CAFA3D96BCA";
	setAttr ".txf" -type "matrix" 0.43014972924957467 0 0 0 0 0 0.43014972924957467 0
		 0 -0.43014972924957467 0 0 0.075244702887112894 0.34704254415886587 3.2964896807856894 1;
createNode polyPlane -n "polyPlane6";
	rename -uid "890030DD-4738-0275-7B73-3AA583D6DEF8";
	setAttr ".sw" 1;
	setAttr ".sh" 5;
	setAttr ".cuv" 2;
createNode polyPlanarProj -n "polyPlanarProj71";
	rename -uid "0B90ABBF-4709-B48B-49E8-E2A6734BF521";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 7.7576752099574575 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 7.7576751708984375 -0.034907311201095581 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 1 1.5897780060768127 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak163";
	rename -uid "F78BF12B-4495-88B9-DF8A-909883B074E1";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk[0:13]" -type "float3"  0.33304974 1.9451107e-13 0.25998169
		 -0.33304974 1.9451107e-13 0.25998169 0.093489729 2.0605739e-13 0.25394225 -0.093489729
		 2.0605739e-13 0.25394225 0 1.3944401e-13 0.12630576 0 1.3944401e-13 0.12630576 0.025925927
		 1.4566126e-13 -0.12630577 -0.025925927 1.4566126e-13 -0.12630577 0.1782833 2.0250468e-13
		 -0.32375681 -0.1782833 2.0250468e-13 -0.32375681 0.36787403 1.9095836e-13 -0.32979634
		 -0.36787403 1.9095836e-13 -0.32979634 0 0 0 0 0 0;
createNode polyTweakUV -n "polyTweakUV195";
	rename -uid "6092C672-498C-9254-6487-169DA5F1C808";
	setAttr ".uopa" yes;
	setAttr -s 12 ".uvtk[0:11]" -type "float2" 0.15067646 0.42284745 -0.15067649
		 0.42284745 -0.36688495 0.31324315 0.36688498 0.31324315 -0.45126164 0.13895434 0.45126167
		 0.13895434 -0.42786294 -0.10181588 0.42786291 -0.10181588 -0.29035681 -0.31324309
		 0.29035681 -0.31324309 -0.11924678 -0.42284739 0.11924678 -0.42284739;
createNode polyCylinder -n "polyCylinder13";
	rename -uid "944A09ED-4AD4-F4B8-9643-55B706E58F33";
	setAttr ".sa" 12;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode objectSet -n "set50";
	rename -uid "DBC92455-4659-5627-AB7B-55A574544F80";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr -s 2 ".gn";
createNode groupId -n "groupId279";
	rename -uid "EC801B20-404F-06B7-64B5-B1A0C582742D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts121";
	rename -uid "3E915261-41BF-5E52-2E88-C5B13DCDE721";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "e[0:47]";
createNode deleteComponent -n "deleteComponent36";
	rename -uid "87105053-49B7-5A4D-8093-7D884C4DD95B";
	setAttr ".dc" -type "componentList" 1 "f[0:23]";
createNode polyTweakUV -n "polyTweakUV196";
	rename -uid "7FA3E2C1-4A4B-C6EE-AD54-3DB03D0FEC1B";
	setAttr ".uopa" yes;
	setAttr -s 13 ".uvtk[0:12]" -type "float2" 0.37047184 -0.19357987 0.37047178
		 -0.19357987 0.37047178 -0.19357987 0.37047178 -0.19357987 0.37047184 -0.19357987
		 0.37047178 -0.19357987 0.37047184 -0.19357987 0.37047178 -0.19357987 0.37047178 -0.19357987
		 0.37047178 -0.19357987 0.37047184 -0.19357987 0.37047184 -0.19357987 0.37047178 -0.19357987;
createNode groupId -n "groupId280";
	rename -uid "174679F9-405E-D695-8D16-7BB859E3CF0E";
	setAttr ".ihi" 0;
createNode polyPlane -n "polyPlane7";
	rename -uid "75C755A8-44CC-A139-F311-FFA7D14A142E";
	setAttr ".sw" 5;
	setAttr ".sh" 2;
	setAttr ".cuv" 2;
createNode polyPlanarProj -n "polyPlanarProj72";
	rename -uid "447BA86A-400B-C706-D3EA-988CE5EDEA96";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:9]";
	setAttr ".ix" -type "matrix" 1.7600007305283747 0 0 0 0 1.7600007305283747 0 0 0 0 1.7600007305283747 0
		 3.4683327016343828 -0.95655092323244051 -0.89379520447476235 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 3.8192408084869385 -1.2338863611221313 -0.8937951922416687 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 3.1720454984534352 2.6418709085803886 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak164";
	rename -uid "8516DB54-460F-0881-FFA1-5B80B6FF4380";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk[0:17]" -type "float3"  -0.20176937 0 -0.21665117
		 -0.15490191 0 0.093403295 0.018621119 0 0.24906515 0.26690829 0 0.25053117 0.51979941
		 0 0.038388371 0.56666684 0 -0.32098839 -0.20176937 -0.31515381 0 -0.15490191 0 0
		 0.018621119 0 0 0.26690829 0 0 0.51979941 0 0 0.60052854 0 0 -0.20176937 0 0.21665117
		 -0.15490191 0 -0.093403295 0.018621119 0 -0.24906515 0.26690829 0 -0.25053117 0.51979941
		 0 -0.038388371 0.56666684 0 0.32098839;
createNode polyPlanarProj -n "polyPlanarProj73";
	rename -uid "997A9BDA-4FA9-7EF1-957B-C5A876B4A292";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:9]";
	setAttr ".ix" -type "matrix" 1.7600007305283747 0 0 0 0 1.7600007305283747 0 0 0 0 1.7600007305283747 0
		 3.4683327016343828 -0.95655092323244051 -0.89379520447476235 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 3.8192408084869385 -1.2338863611221313 -0.89379525184631348 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 3.1720454984534352 2.6418710134846073 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV197";
	rename -uid "9328BD7E-4533-FD8C-356F-798840B8C570";
	setAttr ".uopa" yes;
	setAttr -s 18 ".uvtk[0:17]" -type "float2" 0.79381013 0.0032754838 0.60975939
		 0.17250405 0.69985873 -0.22281815 0.8368324 -0.18549004 0.37887633 0.21972576 0.49261054
		 -0.27929756 0.12992255 0.15291807 0.24387938 -0.34708196 -0.089152053 -0.056890815
		 -0.0074059516 -0.41556236 -0.17155978 -0.3336339 -0.1631678 -0.4580107 0.789958 -0.61814022
		 0.87985462 -0.37425557 0.60634476 -0.77832079 0.35783616 -0.8470819 0.074340165 -0.77423382
		 -0.11719935 -0.57214713;
createNode groupId -n "groupId281";
	rename -uid "A1C5FB8C-41CA-F867-0A4A-A58A5DA35919";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts122";
	rename -uid "0DA41167-4936-46B6-412E-BCB865A8C3CC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:9]";
createNode groupId -n "groupId282";
	rename -uid "D2CE662A-4C4F-A355-0AD4-EEB212227913";
	setAttr ".ihi" 0;
createNode polyTweak -n "polyTweak165";
	rename -uid "9516454B-4F07-A884-9672-8EB2AB00A077";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk";
	setAttr ".tk[2]" -type "float3" 0 0.036599636 0 ;
	setAttr ".tk[3]" -type "float3" 0 0.036599636 0 ;
	setAttr ".tk[6]" -type "float3" 0 0 -0.086814061 ;
	setAttr ".tk[7]" -type "float3" 0 0 -0.086814061 ;
	setAttr ".tk[12]" -type "float3" 0 -1.8626458e-09 0 ;
	setAttr ".tk[13]" -type "float3" 2.056122e-08 -6.6613381e-16 0 ;
	setAttr ".tk[14]" -type "float3" 2.056122e-08 -6.6613381e-16 -0.054532483 ;
	setAttr ".tk[15]" -type "float3" 0 -1.8626458e-09 -0.054532483 ;
	setAttr ".tk[16]" -type "float3" 0 0 -0.086814061 ;
	setAttr ".tk[17]" -type "float3" 0 0 -0.086814061 ;
	setAttr ".tk[20]" -type "float3" 0 0 -0.086814061 ;
	setAttr ".tk[21]" -type "float3" 0 0 -0.086814061 ;
	setAttr ".tk[32]" -type "float3" -4.4408921e-16 0 -0.054532483 ;
	setAttr ".tk[33]" -type "float3" 1.110223e-16 0 -0.054532483 ;
	setAttr ".tk[34]" -type "float3" -2.056122e-08 0 -0.054532483 ;
	setAttr ".tk[35]" -type "float3" 0 1.8626451e-09 -0.054532483 ;
	setAttr ".tk[36]" -type "float3" 1.110223e-16 0 0 ;
	setAttr ".tk[37]" -type "float3" 0 1.8626451e-09 0 ;
	setAttr ".tk[38]" -type "float3" -4.4408921e-16 0 0 ;
	setAttr ".tk[39]" -type "float3" -2.056122e-08 0 0 ;
createNode transformGeometry -n "transformGeometry53";
	rename -uid "EAD393E0-45BF-391E-21F4-D69CAA455A9F";
	setAttr ".txf" -type "matrix" 4.5642376269718508 0 0 0 0 4.5642376269718508 0 0
		 0 0 4.5642376269718508 0 0 2.3114420966742952 0 1;
createNode polyTweak -n "polyTweak166";
	rename -uid "A38E4CD7-4DFF-F53A-23B9-8B8699327E57";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[10:19]" -type "float3"  1.1175871e-08 -0.07950145
		 -0.88497579 1.1175871e-08 -0.046955507 -1.028115869 9.3132257e-09 -0.07950145 -0.88497579
		 9.3132257e-09 -0.046955507 -1.028115869 1.1175871e-08 -0.00064884999 -1.11631215
		 9.3132257e-09 -0.00064884999 -1.11631215 1.1175871e-08 0.047030438 -1.027546644 9.3132257e-09
		 0.047030438 -1.027546644 1.1175871e-08 0.07950145 -0.88321304 9.3132257e-09 0.07950145
		 -0.88321304;
createNode transformGeometry -n "transformGeometry54";
	rename -uid "000A4528-45A4-F905-8D49-9A950FFCA8CC";
	setAttr ".txf" -type "matrix" 3.7980495761203761 0 0 0 0 3.7980495761203761 0 0
		 0 0 3.7980495761203761 0 0 4.2319600590542699 -0.25839853843984817 1;
createNode polyTweak -n "polyTweak167";
	rename -uid "2DFC37D2-4A85-6BE3-0845-B5BDCBC60EB1";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[0:3]" -type "float3"  0 0 -0.15297662 0 0 -0.15297662
		 0 0 0.15297662 0 0 0.15297662;
createNode transformGeometry -n "transformGeometry55";
	rename -uid "253984F4-4576-0866-B56F-2F83EAB31CD9";
	setAttr ".txf" -type "matrix" 3.6101536692273815 0 0 0 0 0 3.6101536692273815 0
		 0 -3.6101536692273815 0 0 0 6.3186442838849288 0.69240235260169447 1;
createNode polyTweak -n "polyTweak168";
	rename -uid "99AC2D2E-4941-DBAF-778F-08A5B587629F";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk[0:2]" -type "float3"  0 -0.55944496 0.053149205
		 0.04237644 -0.897838 -0.53375876 0 -0.89783806 -0.033759058;
createNode transformGeometry -n "transformGeometry56";
	rename -uid "49D2FDCC-48BC-4A69-17CD-EF8BD5C5F2BF";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 0 1 0 0 -1 0 0 -1.1524286175743028 7.32647556124396 2.7817376135289988 1;
createNode polyTweak -n "polyTweak169";
	rename -uid "AAABEB90-4DE2-6E58-F272-A1968F4A21FA";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[0:3]" -type "float3"  -1.31481504 -1.2656542e-14
		 0 1.31481504 -1.2656542e-14 0 -1.31481504 -2.1094237e-14 0 1.31481504 -2.1094237e-14
		 0;
createNode transformGeometry -n "transformGeometry57";
	rename -uid "C7FD5C73-42C4-5990-F2EC-D2B307C84F8F";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 -0.2923022174284764 0.95632599760039771 0
		 0 -0.95632599760039771 -0.2923022174284764 0 0 4.8595536062930407 2.0175526921453213 1;
createNode transformGeometry -n "transformGeometry58";
	rename -uid "79681755-4249-8126-63E6-2F859BF309E4";
	setAttr ".txf" -type "matrix" 11.116313995045786 0 0 0 0 11.116313995045786 0 0
		 0 0 11.116313995045786 0 0 0.38920134872999212 0 1;
createNode transformGeometry -n "transformGeometry59";
	rename -uid "60B1F5E5-4AFA-BDA7-6B9A-EDA265D8FBF2";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 2.3114420966742983 0 1;
createNode transformGeometry -n "transformGeometry60";
	rename -uid "42BA5273-49D2-1D8B-D3EE-C7B3B041C1D0";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 2.3114420966742983 0 1;
createNode transformGeometry -n "transformGeometry61";
	rename -uid "223CB085-463F-120C-BE69-D09CE47B8AB3";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 2.3114420966742983 0 1;
createNode transformGeometry -n "transformGeometry62";
	rename -uid "8BFB4A92-47C2-0454-2419-83A3DC23189A";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 2.3114420966742983 0 1;
createNode polyTweak -n "polyTweak170";
	rename -uid "302076B7-445B-8747-F015-AFB5E2CC2FED";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[0:11]" -type "float3"  1.62335789 -1.070904613 1.5747329
		 1.56854928 -1.093718648 1.47862399 1.6123606 -0.98706305 1.68758547 1.47890627 -1.042614102
		 1.45356715 1.5476886 -0.87338138 1.78429973 1.38354266 -0.94170785 1.49646151 1.43289363
		 -0.72693253 1.87326872 1.27725899 -0.79171646 1.60035479 1.31081712 -0.60718608 1.91409242
		 1.20520031 -0.65114951 1.72888815 1.22937596 -0.5526666 1.90341818 1.18600047 -0.5707221
		 1.82735717;
createNode transformGeometry -n "transformGeometry63";
	rename -uid "D9F666C1-473B-BC64-DDED-35878750CFDC";
	setAttr ".txf" -type "matrix" 0.90730705415834279 -0.19378396203636522 -0.42483728407576304 0
		 0.39231352797269003 0.8198443349096548 0.46388618722164909 0 0.25323711744727184 -0.57580211443073581 0.80347241382200696 0
		 1.4386112808395841 9.7310057781331221 2.2592263070412839 1;
createNode transformGeometry -n "transformGeometry64";
	rename -uid "CC77FC46-4CD3-9E8D-02F2-168E2C7F5E16";
	setAttr ".txf" -type "matrix" 0.67837622440965539 -0.077527796931183446 0.047858682862470185 0
		 0.08217272754524288 0.67592039555480876 -0.069818166600381093 0 -0.039352962659863329 0.074942472888612846 0.67921298924112405 0
		 -1.3017567079310768 0.80327221159922002 6.0716040859714262 1;
createNode polyTweak -n "polyTweak171";
	rename -uid "8C6EE1E3-4FE3-74A5-99C5-9B9A29195C8E";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk[0:17]" -type "float3"  0.085920729 0.27856752 -0.22742422
		 -0.13344143 0.12505998 -0.17312159 -0.29656029 -0.061196469 -0.037598591 -0.39252451
		 -0.25752941 0.1566027 -0.37444794 -0.42452395 0.38916284 -0.23335169 -0.47977698
		 0.55742037 0.14415117 0.35571495 -0.28986549 0.18607928 0.21215558 -0.072108693 0.10677736
		 0.048746105 0.089912035 0.011602296 -0.14737147 0.28436279 -0.084550142 -0.34550315
		 0.48081088 -0.14415123 -0.4683167 0.60258102 0.39106169 0.36174342 -0.13095748 0.50559998
		 0.29925114 0.028904129 0.51011497 0.15868874 0.21742252 0.41572931 -0.037213735 0.41212308
		 0.20534769 -0.26648256 0.57245886 -0.040572394 -0.42722899 0.61836541;
createNode transformGeometry -n "transformGeometry65";
	rename -uid "86032B98-4677-352E-E415-ABA63D4AA10E";
	setAttr ".txf" -type "matrix" 1.7600007305283747 0 0 0 0 1.7600007305283747 0 0
		 0 0 1.7600007305283747 0 3.4683327016343828 1.3548911734418576 -0.89379520447476235 1;
createNode polyPlane -n "polyPlane8";
	rename -uid "A1E63847-452B-1C15-75F9-8D971B335E20";
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode polyExtrudeEdge -n "polyExtrudeEdge10";
	rename -uid "72DB8D0A-448B-575B-29D6-75854B8954A5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[2]";
	setAttr ".ix" -type "matrix" 4.5832447744792528 0 0 0 0 4.5832447744792528 0 0 0 0 4.5832447744792528 0
		 0 9.6358827551834292 -0.17641165160584538 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.5653594 9.6358824 -0.17641166 ;
	setAttr ".rs" 45816;
	setAttr ".lt" -type "double3" 0 0 -1.4922197180505545 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.5653593515921549 9.6358827551834292 -2.1001779932543285 ;
	setAttr ".cbx" -type "double3" 2.5653593515921549 9.6358827551834292 1.7473546900426378 ;
createNode polyTweak -n "polyTweak172";
	rename -uid "CDBB3380-45A3-A2F9-D6B9-6D9AC5AC5EB3";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[0:3]" -type "float3"  0 0 -0.080261052 0.05972559
		 0 -0.080261052 0 0 0.080261052 0.05972559 0 0.080261052;
createNode polySoftEdge -n "polySoftEdge110";
	rename -uid "AAE2F0E3-4B98-BA97-0CEE-B9BB936F29D5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[2]";
	setAttr ".ix" -type "matrix" 4.5832447744792528 0 0 0 0 4.5832447744792528 0 0 0 0 4.5832447744792528 0
		 0 9.6358827551834292 -0.17641165160584538 1;
	setAttr ".a" 180;
createNode polySphere -n "polySphere8";
	rename -uid "23BED454-4C21-8839-3225-97A39DA8CE8A";
	setAttr ".sa" 8;
	setAttr ".sh" 8;
createNode lambert -n "bird";
	rename -uid "F6628375-4D30-8A01-714D-9EAD77CCCBED";
	setAttr ".c" -type "float3" 0.69936705 0.16313542 0.026093137 ;
createNode shadingEngine -n "lambert28SG";
	rename -uid "A47E924B-4A28-89EA-373F-D193985509C3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo30";
	rename -uid "104E8FC4-4291-A9AF-2523-EE9960BB3F0D";
createNode polySoftEdge -n "polySoftEdge111";
	rename -uid "3CE98E56-4221-1D3E-985E-C4997EA6F59C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 11.581288345989952 0 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak173";
	rename -uid "EE022713-4205-396D-E5CB-40BBE73A0AE4";
	setAttr ".uopa" yes;
	setAttr -s 58 ".tk[0:57]" -type "float3"  0 0 0.033587683 0 0 0.047500145
		 0 0 0.033587683 0 0 0 0 0 -0.033587683 0 0 -0.047500163 0 0 -0.033587683 0 0 0 0
		 0 0.062061928 0 0 0.087768815 0 0 0.062061928 0 0 0 0 0 -0.062061928 0 0 -0.087768815
		 0 0 -0.062061947 0 0 0 0 0 0.081087813 0 0 0.11467549 0 0 0.081087813 0 0 0 0 0 -0.081087813
		 0 0 -0.1146755 0 0 -0.08108782 0 0 0 0 0 0.087768815 0 0 0.12412386 0 0 0.087768815
		 0 0 0 0 0 -0.087768815 0 0 -0.12412389 0 0 -0.087768823 0 0 0 0 0 0.081087813 0 0
		 0.11467549 0 0 0.081087813 0 0 0 0 0 -0.081087813 0 0 -0.1146755 0 0 -0.08108782
		 0 0 0 0 0 0.062061928 0 0 0.087768815 0 0 0.062061928 0 0 0 0 0 -0.062061928 0 0
		 -0.087768815 0 0 -0.062061947 0 0 0 0 0 0.033587683 0 0 0.047500145 0 0 0.033587683
		 0 0 0 0 0 -0.033587683 0 0 -0.047500163 0 0 -0.033587683 0 0 0 0 0 0 0 0 0;
createNode polyExtrudeFace -n "polyExtrudeFace28";
	rename -uid "688CCF72-4600-76FF-3417-129425A1F85E";
	setAttr ".ics" -type "componentList" 2 "f[56]" "f[61:63]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 11.581288345989952 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.18649076 12.505784 0 ;
	setAttr ".rs" 42968;
	setAttr ".lt" -type "double3" 1.4029576111962427e-16 8.3266726846886741e-17 0.30357445857038551 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.5681813625434415e-09 12.469205626187096 -0.35282042622566223 ;
	setAttr ".cbx" -type "double3" 0.37298151850700378 12.54236311548687 0.35282042622566223 ;
createNode polyTweak -n "polyTweak174";
	rename -uid "26337095-41A2-A84A-0C24-EF900628B50F";
	setAttr ".uopa" yes;
	setAttr -s 40 ".tk";
	setAttr ".tk[0]" -type "float3" 0.014238715 0.035962246 -0.012471351 ;
	setAttr ".tk[1]" -type "float3" -1.5681814e-09 0.035962246 -0.017637156 ;
	setAttr ".tk[2]" -type "float3" -0.01423872 0.035962246 -0.012471351 ;
	setAttr ".tk[3]" -type "float3" 0.0097019393 0.035962246 0 ;
	setAttr ".tk[4]" -type "float3" -0.01423872 0.035962246 0.012471351 ;
	setAttr ".tk[5]" -type "float3" -1.5681814e-09 0.035962246 0.017637156 ;
	setAttr ".tk[6]" -type "float3" 0.014238715 0.035962246 0.012471351 ;
	setAttr ".tk[7]" -type "float3" -0.0097019374 0.035962246 0 ;
	setAttr ".tk[8]" -type "float3" 0.027778387 0.046719376 -0.024330426 ;
	setAttr ".tk[9]" -type "float3" -1.655721e-09 0.046719376 -0.034408417 ;
	setAttr ".tk[10]" -type "float3" -0.027778389 0.046719376 -0.024330426 ;
	setAttr ".tk[11]" -type "float3" 0.016003672 0.046719376 0 ;
	setAttr ".tk[12]" -type "float3" -0.027778389 0.046719376 0.024330426 ;
	setAttr ".tk[13]" -type "float3" -1.655721e-09 0.046719376 0.034408417 ;
	setAttr ".tk[14]" -type "float3" 0.027778387 0.046719376 0.024330426 ;
	setAttr ".tk[15]" -type "float3" -0.016003672 0.046719376 0 ;
	setAttr ".tk[19]" -type "float3" 0.068435512 0 0 ;
	setAttr ".tk[23]" -type "float3" -0.068435512 0 0 ;
	setAttr ".tk[27]" -type "float3" 0.074074067 0 0 ;
	setAttr ".tk[31]" -type "float3" -0.074074067 0 0 ;
	setAttr ".tk[35]" -type "float3" 0.068435512 0 0 ;
	setAttr ".tk[39]" -type "float3" -0.068435512 0 0 ;
	setAttr ".tk[40]" -type "float3" 0.027778387 -0.046719376 -0.024330426 ;
	setAttr ".tk[41]" -type "float3" -1.655721e-09 -0.046719376 -0.034408417 ;
	setAttr ".tk[42]" -type "float3" -0.027778389 -0.046719376 -0.024330426 ;
	setAttr ".tk[43]" -type "float3" 0.016003672 -0.046719376 0 ;
	setAttr ".tk[44]" -type "float3" -0.027778389 -0.046719376 0.024330426 ;
	setAttr ".tk[45]" -type "float3" -1.655721e-09 -0.046719376 0.034408417 ;
	setAttr ".tk[46]" -type "float3" 0.027778387 -0.046719376 0.024330426 ;
	setAttr ".tk[47]" -type "float3" -0.016003672 -0.046719376 0 ;
	setAttr ".tk[48]" -type "float3" 0.014238715 -0.035962239 -0.012471351 ;
	setAttr ".tk[49]" -type "float3" -1.5681814e-09 -0.035962239 -0.017637156 ;
	setAttr ".tk[50]" -type "float3" -0.01423872 -0.035962239 -0.012471351 ;
	setAttr ".tk[51]" -type "float3" 0.0097019393 -0.035962239 0 ;
	setAttr ".tk[52]" -type "float3" -0.01423872 -0.035962239 0.012471351 ;
	setAttr ".tk[53]" -type "float3" -1.5681814e-09 -0.035962239 0.017637156 ;
	setAttr ".tk[54]" -type "float3" 0.014238715 -0.035962239 0.012471351 ;
	setAttr ".tk[55]" -type "float3" -0.0097019374 -0.035962239 0 ;
	setAttr ".tk[56]" -type "float3" 3.0792997e-09 0.038925245 0 ;
	setAttr ".tk[57]" -type "float3" 3.0792997e-09 -0.038925245 0 ;
createNode polyDelEdge -n "polyDelEdge38";
	rename -uid "89E3EC8E-420F-77AF-58BB-798EA7594EA2";
	setAttr ".ics" -type "componentList" 2 "e[122]" "e[126]";
	setAttr ".cv" yes;
createNode polyTweak -n "polyTweak175";
	rename -uid "03A31BDB-4BF8-3BEB-A56D-289854CCBD94";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[48]" -type "float3" -0.012415143 0 -0.0019575236 ;
	setAttr ".tk[49]" -type "float3" 0 0 0.060110148 ;
	setAttr ".tk[53]" -type "float3" 0 0 -0.060110148 ;
	setAttr ".tk[54]" -type "float3" -0.012415143 0 0.0019575236 ;
	setAttr ".tk[58]" -type "float3" -0.10402904 0.036196042 0.12661149 ;
	setAttr ".tk[59]" -type "float3" 0.078765005 0.036578473 0.25038645 ;
	setAttr ".tk[60]" -type "float3" 0.018758459 -0.036578473 -5.2866147e-09 ;
	setAttr ".tk[61]" -type "float3" 0.078765005 0.036578473 -0.25038621 ;
	setAttr ".tk[62]" -type "float3" -0.10402904 0.036196917 -0.12661189 ;
	setAttr ".tk[63]" -type "float3" -0.14706562 0.035814583 -2.4733802e-07 ;
createNode polySoftEdge -n "polySoftEdge112";
	rename -uid "D3B7D0E7-4018-0D57-1CA2-51BF922C8325";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 11.581288345989952 0 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak176";
	rename -uid "5C35DAB2-4096-EF3B-35E5-6992672F2EEF";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[49]" -type "float3" 0 0 0.073719606 ;
	setAttr ".tk[53]" -type "float3" 0 0 -0.073719606 ;
	setAttr ".tk[57]" -type "float3" -0.17326935 0 0 ;
	setAttr ".tk[58]" -type "float3" 0.017089635 0.017091962 0 ;
	setAttr ".tk[59]" -type "float3" 0.0095024155 0.012120266 0 ;
	setAttr ".tk[60]" -type "float3" 0.014616289 0.072544001 0 ;
	setAttr ".tk[61]" -type "float3" 0.0095024155 0.012120266 0 ;
	setAttr ".tk[62]" -type "float3" 0.017089635 0.017091962 0 ;
	setAttr ".tk[63]" -type "float3" 0.0070290705 0.067572303 0 ;
createNode polySoftEdge -n "polySoftEdge113";
	rename -uid "C298DD17-46E4-6E14-9631-E58E92C39740";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[48]" "e[53:55]" "e[112]" "e[116]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 11.581288345989952 0 1;
	setAttr ".a" 0;
createNode polySphere -n "polySphere9";
	rename -uid "1D07CFAD-4D1B-9509-339A-30BBD94238BA";
	setAttr ".sa" 6;
	setAttr ".sh" 6;
createNode polySoftEdge -n "polySoftEdge114";
	rename -uid "712C2C09-462A-295D-976C-2CA9BEA74EAD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.08086615573533544 0 0 0 0 0.08086615573533544 0 0
		 0 0 0.08086615573533544 0 -0.51891058167040682 12.012766064214878 0.56411667549122957 1;
	setAttr ".a" 180;
createNode polyPlanarProj -n "polyPlanarProj74";
	rename -uid "A5F6C016-4DD7-495A-4574-D3B95986D289";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:35]";
	setAttr ".ix" -type "matrix" 0.08086615573533544 0 0 0 0 0.08086615573533544 0 0
		 0 0 0.08086615573533544 0 -0.51891058167040682 12.024276948843848 0.56411667549122957 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.51891058683395386 12.024276733398438 0.56411665678024292 ;
	setAttr ".ps" -type "double2" 0.16173231147067085 0.16173231147067213 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV198";
	rename -uid "0DF3A911-44AF-6C5A-061F-66BD207ED742";
	setAttr ".uopa" yes;
	setAttr -s 32 ".uvtk[0:31]" -type "float2" 0.14151005 0.086155772 0.36316371
		 0.086155772 0.44429481 -0.076107211 0.060378991 -0.076107211 0.47399113 0.086155772
		 0.636253 -0.076107211 0.36316371 0.086155772 0.44429481 -0.076107211 0.14151005 0.086155772
		 0.060379229 -0.076107211 0.030683137 0.086155772 -0.13157879 -0.076107211 0.47399065
		 -0.29775429 0.030682899 -0.29775429 0.69564474 -0.29775429 0.47399113 -0.29775429
		 0.030683137 -0.29775429 -0.19097078 -0.29775429 0.44429481 -0.51940817 0.060378991
		 -0.51940817 0.636253 -0.51940817 0.44429481 -0.51940817 0.060379229 -0.51940817 -0.13157879
		 -0.51940817 0.36316371 -0.68167114 0.14151005 -0.68167114 0.47399113 -0.68167114
		 0.36316371 -0.68167114 0.14151005 -0.68167114 0.030683137 -0.68167114 0.25233701
		 0.14554667 0.25233701 -0.74106205;
createNode polySphere -n "polySphere10";
	rename -uid "D4FF70A6-4257-6B73-3A5D-338D357E8C04";
	setAttr ".sa" 6;
	setAttr ".sh" 6;
createNode polyPlanarProj -n "polyPlanarProj75";
	rename -uid "4F3328EA-4447-C64B-6DAF-5F925FAB5962";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:35]";
	setAttr ".ix" -type "matrix" 0 0 -0.42720079212960477 0 0 0.42720079212960477 0 0
		 0.42720079212960477 0 0 0 -2.5453392281185239 11.53112499254622 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -2.5453393459320068 11.531125068664551 0 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 0.73993354011110313 0.58858777388897188 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak177";
	rename -uid "479819D1-4BDE-B993-4878-538AB19749BA";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk[0:31]" -type "float3"  -0.077777758 0.59018058 0
		 0.077777758 0.59018058 0 0.15555555 0.59018058 0 0.077777699 0.59018058 0 -0.077777773
		 0.59018058 0 -0.15555555 0.59018058 0 -0.13471517 0.34074095 0 0.13471505 0.34074095
		 0 0.26943025 0.34074095 0 0.13471514 0.34074095 0 -0.13471512 0.34074095 0 -0.26943025
		 0.34074095 0 -0.15555552 -5.6075099e-14 0 0.15555552 -8.6999344e-14 0 0.31111109
		 -1.0246146e-13 0 0.1555554 -8.699935e-14 0 -0.15555555 -5.6075102e-14 0 -0.31111109
		 -4.061299e-14 0 -0.13471517 -0.34074095 0 0.13471505 -0.34074095 0 0.26943025 -0.34074095
		 0 0.13471514 -0.34074095 0 -0.13471512 -0.34074095 0 -0.26943025 -0.34074095 0 -0.077777758
		 -0.59018058 0 0.077777758 -0.59018058 0 0.15555555 -0.59018058 0 0.077777699 -0.59018058
		 0 -0.077777773 -0.59018058 0 -0.15555555 -0.59018058 0 4.7224686e-14 0.68148184 0
		 4.7224686e-14 -0.68148184 0;
createNode polyPlanarProj -n "polyPlanarProj76";
	rename -uid "E7EE5084-46CA-043B-9EE5-CDBEF58BE8F4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:35]";
	setAttr ".ix" -type "matrix" 0 0 -0.42720079212960477 0 0 0.42720079212960477 0 0
		 0.42720079212960477 0 0 0 -2.5453392281185239 11.53112499254622 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -2.5453393459320068 11.531125068664551 0 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 0.62882831252406302 0.54022474456880998 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak178";
	rename -uid "7CCA0929-433A-5BC9-1CF4-F0B4614F8D68";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk[6:23]" -type "float3"  -0.02323629 0.012405598 0.1096502
		 0.023236275 0.012405598 0.10965025 0.046472553 0.012405598 1.8571921e-08 0.023236282
		 0.012405598 -0.1096502 -0.023236273 0.012405598 -0.10965025 -0.046472553 0.012405598
		 1.8571921e-08 -0.028302299 -8.8812014e-15 0.13003835 0.028302269 -8.8812014e-15 0.13003835
		 0.056604538 -2.9191895e-16 1.9590349e-08 0.028302299 8.2973518e-15 -0.13003835 -0.028302267
		 8.2973518e-15 -0.13003835 -0.056604538 -2.9191895e-16 1.9590349e-08 -0.02323629 -0.012405598
		 0.1096502 0.023236275 -0.012405598 0.10965025 0.046472553 -0.012405598 1.8571921e-08
		 0.023236282 -0.012405598 -0.1096502 -0.023236273 -0.012405598 -0.10965025 -0.046472553
		 -0.012405598 1.8571921e-08;
createNode polyTweakUV -n "polyTweakUV199";
	rename -uid "FCFD83B3-4D40-65C5-A85C-3386457B7849";
	setAttr ".uopa" yes;
	setAttr -s 32 ".uvtk[0:31]" -type "float2" -0.18087432 -0.63378495 -0.18087399
		 -0.42606103 -0.079684824 -0.36404192 -0.079685152 -0.69580406 -0.39220285 -0.32219911
		 -0.39220285 -0.19816098 -0.60353154 -0.42606094 -0.70472074 -0.36404186 -0.60353154
		 -0.63378483 -0.70472091 -0.69580388 -0.39220285 -0.73764682 -0.39220285 -0.86168486
		 -0.033009887 -0.3392674 -0.033009887 -0.72057867 -0.39220285 -0.14861175 -0.75139582
		 -0.33926719 -0.75139582 -0.72057849 -0.39220285 -0.91123408 -0.079684824 -0.36404192
		 -0.079685152 -0.695804 -0.39220285 -0.19816098 -0.70472074 -0.36404186 -0.70472091
		 -0.69580388 -0.39220285 -0.86168486 -0.18087399 -0.42606103 -0.18087432 -0.63378495
		 -0.39220285 -0.32219911 -0.60353154 -0.42606091 -0.60353154 -0.63378483 -0.39220285
		 -0.7376467 -0.39220285 -0.5299229 -0.39220285 -0.5299229;
createNode polySoftEdge -n "polySoftEdge115";
	rename -uid "3300E728-4385-4A15-0928-E0A376CC6CA7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0 0 -0.42720079212960477 0 0 0.42720079212960477 0 0
		 0.42720079212960477 0 0 0 -2.5453392281185239 11.53112499254622 0 1;
	setAttr ".a" 180;
createNode polySphere -n "polySphere11";
	rename -uid "2EC9BF00-4C0D-7359-1E4E-46B8E6020217";
	setAttr ".sa" 6;
	setAttr ".sh" 6;
createNode objectSet -n "set51";
	rename -uid "3A690007-4F2B-B50A-420F-C29D8DEA0BB1";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr -s 2 ".gn";
createNode groupId -n "groupId283";
	rename -uid "4B5B7A79-44A0-1692-65D9-42821EAC74D4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts123";
	rename -uid "639EBEFE-4302-4225-9E0F-A6BDD649784B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 11 "e[0:1]" "e[5:7]" "e[11:13]" "e[17:19]" "e[23:25]" "e[29:32]" "e[35:38]" "e[41:44]" "e[47:50]" "e[53:56]" "e[59]";
createNode polyTweak -n "polyTweak179";
	rename -uid "84EF631B-422D-68FC-B5AF-189C5FF4C172";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk[0:31]" -type "float3"  -0.13420753 0.36061782 0.35317814
		 0.1342074 0.36061782 0.35317823 0.26841486 0.36061782 4.7026866e-08 0.13420747 0.36061782
		 -0.27331075 -0.13420743 0.36061782 -0.27331075 -0.26841486 0.36061782 0 -0.24121125
		 0.18974908 0.6701656 0.24121094 0.18974908 0.67016572 0.48242211 0.18974908 7.9936285e-08
		 0.24121115 0.18974908 -0.48546612 -0.24121103 0.18974908 -0.48546615 -0.48242211
		 0.18974908 -3.5947476e-09 -0.26142234 0 0.78619027 0.26142207 0 0.78619045 0.5228442
		 0 9.2394387e-08 0.26142222 0 -0.53697753 -0.2614221 0 -0.53697753 -0.5228442 0 0
		 -0.24121125 -0.18974908 0.6701656 0.24121094 -0.18974908 0.67016572 0.48242211 -0.18974908
		 7.9936285e-08 0.24121115 -0.18974908 -0.48546612 -0.24121103 -0.18974908 -0.48546615
		 -0.48242211 -0.18974908 -3.5947476e-09 -0.13420753 -0.36061782 0.35317814 0.1342074
		 -0.36061782 0.35317823 0.26841486 -0.36061782 4.7026866e-08 0.13420747 -0.36061782
		 -0.27331075 -0.13420743 -0.36061782 -0.27331075 -0.26841486 -0.36061782 0 0 0.40083912
		 0 0 -0.40083912 0;
createNode deleteComponent -n "deleteComponent37";
	rename -uid "3C1CA7A2-4BCF-9627-87B5-4CB43194E584";
	setAttr ".dc" -type "componentList" 6 "f[0:1]" "f[5:7]" "f[11:13]" "f[17:19]" "f[23:25]" "f[29]";
createNode polySoftEdge -n "polySoftEdge116";
	rename -uid "7665915D-409A-7748-1B97-32A49493E828";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0 1 0 0 -1 0 0 0 0 0 1 0 0 10.740205231275281 1.6389555225542465 1;
	setAttr ".a" 180;
createNode polyPlanarProj -n "polyPlanarProj77";
	rename -uid "9E3A4BA1-420D-9C77-1F31-2E9A2675AD0A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:20]";
	setAttr ".ix" -type "matrix" 0 1 0 0 -1 0 0 0 0 0 1 0 0 10.740205231275281 1.6389555225542465 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 10.740204811096191 1.7635622024536133 ;
	setAttr ".ps" -type "double2" 1.1983218193054199 0.95431160926818848 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV200";
	rename -uid "94C2F105-4B6A-6484-D1C9-6DA85B22CD11";
	setAttr ".uopa" yes;
	setAttr -s 24 ".uvtk[0:23]" -type "float2" -0.22949034 -0.19625777 -0.22949034
		 -0.30021852 -0.096945152 -0.23197573 -0.096945152 -0.059774637 -0.22949034 -0.50813848
		 -0.096945152 -0.57638127 -0.22949034 -0.61209923 -0.096945152 -0.74858236 0.11376877
		 -0.18997997 0.11376877 0.024218619 0.11376877 -0.61837703 0.11376877 -0.83257556
		 0.32448271 -0.23197573 0.32448271 -0.059774637 0.32448271 -0.57638127 0.32448271
		 -0.74858236 0.45702782 -0.30021852 0.45702782 -0.19625777 0.45702782 -0.50813848
		 0.45702782 -0.61209923 -0.29316506 -0.4041785 0.45702782 -0.50813848 0.45702782 -0.30021852
		 0.52070254 -0.4041785;
createNode deleteComponent -n "deleteComponent38";
	rename -uid "C225903B-414D-7C00-2ED8-0BA515EAC122";
	setAttr ".dc" -type "componentList" 2 "f[15:16]" "f[20]";
createNode groupId -n "groupId284";
	rename -uid "2622A748-475D-94FB-C92A-96B64EB77BF7";
	setAttr ".ihi" 0;
createNode polyPlanarProj -n "polyPlanarProj78";
	rename -uid "D478ADEC-47BC-107A-AAD3-9083DA972243";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:67]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 11.581288345989952 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 5.9604644775390625e-08 11.747494697570801 2.9802322387695312e-08 ;
	setAttr ".ps" -type "double2" 1.8518517017364502 2.2545629739761353 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV201";
	rename -uid "F0402AC8-42F0-8E73-525D-FCB0A63D270C";
	setAttr ".uopa" yes;
	setAttr -s 64 ".uvtk[0:63]" -type "float2" -0.78024876 -0.50293899 -0.70064199
		 -0.50293899 -0.70064199 -0.54561287 -0.8481465 -0.54561287 -0.62103534 -0.50293899
		 -0.55313754 -0.54561287 -0.5964005 -0.50293899 -0.50749129 -0.54561287 -0.62103534
		 -0.50293899 -0.55313754 -0.54561287 -0.70064199 -0.50293899 -0.70064199 -0.54561287
		 -0.78024876 -0.50293899 -0.8481465 -0.54561287 -0.80488354 -0.50293899 -0.89379275
		 -0.54561287 -0.70064199 -0.59769654 -0.88322228 -0.59769654 -0.51806176 -0.59769654
		 -0.46156096 -0.59769654 -0.51806176 -0.59769654 -0.70064199 -0.59769654 -0.88322234
		 -0.59769654 -0.93972307 -0.59769654 -0.70064199 -0.66946971 -0.89826554 -0.66946971
		 -0.5030185 -0.66946971 -0.44186258 -0.66946971 -0.5030185 -0.66946971 -0.70064199
		 -0.66946971 -0.89826554 -0.66946971 -0.95942152 -0.66946971 -0.70064199 -0.74124277
		 -0.88322228 -0.74124277 -0.51806176 -0.74124277 -0.46156096 -0.74124277 -0.51806176
		 -0.74124277 -0.70064199 -0.74124277 -0.88322234 -0.74124277 -0.93972307 -0.74124277
		 -0.70064199 -0.79332644 -0.8481465 -0.79332644 -0.55313754 -0.79332644 -0.50749129
		 -0.79332644 -0.55313754 -0.79332644 -0.70064199 -0.79332644 -0.8481465 -0.79332644
		 -0.89379275 -0.79332644 -0.70064199 -0.83600026 -0.77677888 -0.83600026 -0.62103534
		 -0.83600026 -0.5964005 -0.83600026 -0.62103534 -0.83600026 -0.70064199 -0.83600026
		 -0.77677888 -0.83600026 -0.80488354 -0.83600026 -0.70064199 -0.48921835 -0.65221637
		 -0.84972095 -0.71620232 -0.91206574 -0.73154384 -0.90073293 -0.76721334 -0.90166551
		 -0.78203851 -0.91113323 -0.76721334 -0.90166551 -0.73154384 -0.90073293;
createNode polyTweak -n "polyTweak180";
	rename -uid "E5602EFF-41C7-C4BC-3D6A-B8AE56FC8FA7";
	setAttr ".uopa" yes;
	setAttr -s 22 ".tk[0:21]" -type "float3"  4.6566129e-10 4.6566129e-10
		 -4.0317252e-09 -1.1641532e-10 -4.6566129e-10 -0.044476029 5.8207661e-10 4.6566129e-10
		 -0.044476029 3.4924597e-10 0 3.3597787e-09 -2.3283064e-10 6.9849193e-10 4.0317345e-09
		 1.3969839e-09 1.3969839e-09 -0.073671117 0 -9.3132257e-10 -0.073671103 0 5.8207661e-11
		 1.6799301e-10 1.1641532e-10 -6.9849193e-10 2.0158673e-09 -2.3283064e-09 -9.3132257e-10
		 -0.091637805 9.3132257e-10 -2.7939677e-09 -0.091637857 -1.1641532e-10 6.9849193e-10
		 -2.0158584e-09 0 -5.8207661e-11 -1.6798443e-10 -2.3283064e-09 2.7939677e-09 -0.073671103
		 0 2.7939677e-09 -0.073671117 2.3283064e-10 -6.9849193e-10 -4.0317252e-09 -3.4924597e-10
		 0 -3.3597671e-09 -9.3132257e-10 -1.8626451e-09 -0.044476029 0 0 -0.044476029 -4.6566129e-10
		 -4.6566129e-10 4.0317345e-09 0 4.6566129e-10 2.68782e-09 0 -4.6566129e-10 -2.6878169e-09;
createNode transformGeometry -n "transformGeometry66";
	rename -uid "6BF1268E-41CF-0997-7B83-CBB904597723";
	setAttr ".txf" -type "matrix" 0.26988637511503677 0.9525847204086092 0.1405122591495768 0
		 -0.96152360247006963 0.2588402931516075 0.092054682304431104 0 0.051319649455598748 -0.15995015812821831 0.98579016047763046 0
		 0.24502480945478261 11.317549888524816 0.77067948646939577 1;
createNode transformGeometry -n "transformGeometry67";
	rename -uid "DBC8E444-4D3D-A945-BE62-BEBC040777E5";
	setAttr ".txf" -type "matrix" 0.32199993070430727 -0.0093974394488479107 -0.15182554631092543 0
		 0.074472976091319087 0.31966992288091994 0.13815997970393931 0 0.13263892419990272 -0.15667192566473528 0.29100530450488449 0
		 -0.80760749664530451 11.989424227832513 0.44423905031032063 1;
createNode transformGeometry -n "transformGeometry68";
	rename -uid "DDA4BEA1-446E-7C8B-0C1C-95A6EFF00288";
	setAttr ".txf" -type "matrix" 0.080254595400704828 -0.0086975071229448888 -0.0047841854402829037 0
		 0.0081854591943328978 0.08003315611851311 -0.0081870216134527669 0 0.0056154535220766496 0.0076408399386163452 0.080308277220877855 0
		 -0.49135015143694133 12.024276948843848 0.5832901814222613 1;
createNode transformGeometry -n "transformGeometry69";
	rename -uid "3BA6BEDE-444B-DF48-58E1-E19C23BECB2E";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 11.581288345989952 0 1;
createNode transformGeometry -n "transformGeometry70";
	rename -uid "58F85520-4E05-B05A-E9B1-088DF127A73F";
	setAttr ".txf" -type "matrix" 0.81820542735062374 0.037654929489952853 -0.5736915416311188 0
		 -0.072705281165523508 0.99661861904144089 -0.038278848866879607 0 0.5703102846211221 0.073030366732188309 0.81817647533422566 0
		 -1.1975369517972372 -0.92377955707482695 -0.052072918070868189 1;
createNode transformGeometry -n "transformGeometry71";
	rename -uid "DCF2FEB9-4B5B-B424-1486-7487EA8AE724";
	setAttr ".txf" -type "matrix" 0.81820542735062374 0.037654929489952853 -0.5736915416311188 0
		 -0.072705281165523508 0.99661861904144089 -0.038278848866879607 0 0.5703102846211221 0.073030366732188309 0.81817647533422566 0
		 -1.1975369517972372 -0.92377955707482695 -0.052072918070868189 1;
createNode transformGeometry -n "transformGeometry72";
	rename -uid "FD752EC1-4543-ADFB-0254-598F4F6CBD50";
	setAttr ".txf" -type "matrix" 0.81820542735062374 0.037654929489952853 -0.5736915416311188 0
		 -0.072705281165523508 0.99661861904144089 -0.038278848866879607 0 0.5703102846211221 0.073030366732188309 0.81817647533422566 0
		 -1.1975369517972372 -0.92377955707482695 -0.052072918070868189 1;
createNode transformGeometry -n "transformGeometry73";
	rename -uid "007F29C4-4122-8323-9B59-B49F483AC4B4";
	setAttr ".txf" -type "matrix" 0.81820542735062374 0.037654929489952853 -0.5736915416311188 0
		 -0.072705281165523508 0.99661861904144089 -0.038278848866879607 0 0.5703102846211221 0.073030366732188309 0.81817647533422566 0
		 -1.1975369517972372 -0.92377955707482695 -0.052072918070868189 1;
createNode transformGeometry -n "transformGeometry74";
	rename -uid "17E3DAFD-40C1-928C-8A6A-F99748F6F255";
	setAttr ".txf" -type "matrix" 0.81946396909841457 0 0 0 0 0.81946396909841457 0 0
		 0 0 0.81946396909841457 0 -0.35608027742587223 1.7440108008636983 -0.08348518939639793 1;
createNode transformGeometry -n "transformGeometry75";
	rename -uid "108018AB-408A-D2F4-1DAA-65B14F7E5198";
	setAttr ".txf" -type "matrix" 0.81946396909841457 0 0 0 0 0.81946396909841457 0 0
		 0 0 0.81946396909841457 0 -0.35608027742587223 1.7440108008636983 -0.08348518939639793 1;
createNode transformGeometry -n "transformGeometry76";
	rename -uid "6A37F6F0-4E0C-774E-ED8B-7FABD760CED0";
	setAttr ".txf" -type "matrix" 0.81946396909841457 0 0 0 0 0.81946396909841457 0 0
		 0 0 0.81946396909841457 0 -0.35608027742587223 1.7440108008636983 -0.08348518939639793 1;
createNode transformGeometry -n "transformGeometry77";
	rename -uid "E6E949BA-44C8-774E-6B7B-9FA00C8115C5";
	setAttr ".txf" -type "matrix" 0.81946396909841457 0 0 0 0 0.81946396909841457 0 0
		 0 0 0.81946396909841457 0 -0.35608027742587223 1.7440108008636983 -0.08348518939639793 1;
createNode polyTweak -n "polyTweak181";
	rename -uid "1AE37053-4345-D6E0-F6EE-0B829F0398A3";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[10]" -type "float3" 0 0 -0.075125754 ;
	setAttr ".tk[11]" -type "float3" 0 0 -0.075125754 ;
	setAttr ".tk[12]" -type "float3" 0 0 -0.075125754 ;
	setAttr ".tk[13]" -type "float3" 0 0 -0.075125754 ;
	setAttr ".tk[14]" -type "float3" 0 0 -0.075125754 ;
	setAttr ".tk[15]" -type "float3" 0 0 -0.075125754 ;
	setAttr ".tk[16]" -type "float3" 0 0 -0.075125754 ;
	setAttr ".tk[17]" -type "float3" 0 0 -0.075125754 ;
	setAttr ".tk[18]" -type "float3" 0 0 -0.075125754 ;
	setAttr ".tk[19]" -type "float3" 0 0 -0.075125754 ;
	setAttr ".tk[24]" -type "float3" 0 0 -0.075125754 ;
	setAttr ".tk[25]" -type "float3" 0 0 -0.075125754 ;
createNode transformGeometry -n "transformGeometry78";
	rename -uid "3370338A-4323-11F6-D6EE-A18D63DE1257";
	setAttr ".txf" -type "matrix" -1 1.2246467991473532e-16 0 0 -1.2246467991473532e-16 -1 0 0
		 0 0 1 0 2.8984825611114506 4.3397367390868169 0.075125772901229126 1;
createNode polyTweak -n "polyTweak182";
	rename -uid "294E116A-4599-BF5B-56BD-EDBE15519153";
	setAttr ".uopa" yes;
	setAttr -s 13 ".tk[0:12]" -type "float3"  -0.5987857 -0.75787437 -0.45658115
		 -0.59623992 -0.67827207 -0.511621 -0.62747133 -0.64640027 -0.55842483 -0.68410981
		 -0.67079896 -0.5844512 -0.75097924 -0.74493003 -0.58272648 -0.81016332 -0.8489309
		 -0.55371284 -0.84580302 -0.95493388 -0.50518417 -0.8483485 -1.034535646 -0.45014462
		 -0.81711781 -1.066407084 -0.40334079 -0.76047903 -1.042009473 -0.37731475 -0.6936093
		 -0.96787721 -0.37903926 -0.63442564 -0.86387724 -0.40805319 -0.72229445 -0.85640401
		 -0.48088288;
createNode transformGeometry -n "transformGeometry79";
	rename -uid "94800CB5-4A3B-D829-B1B9-B5B0E00AD51F";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 -0.57571937146074337 1;
createNode transformGeometry -n "transformGeometry80";
	rename -uid "ADE1E4BD-46C7-B83F-0059-8D9529C5250D";
	setAttr ".txf" -type "matrix" 4.5832447744792528 0 0 0 0 4.5832447744792528 0 0
		 0 0 4.5832447744792528 0 0 9.6358827551834292 -0.17641165160584538 1;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 32 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 34 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId109.id" "coinShape.iog.og[0].gid";
connectAttr "lambert10SG.mwc" "coinShape.iog.og[0].gco";
connectAttr "groupId111.id" "coinShape.iog.og[1].gid";
connectAttr "lambert11SG.mwc" "coinShape.iog.og[1].gco";
connectAttr "polyTweakUV71.out" "coinShape.i";
connectAttr "groupId110.id" "coinShape.ciog.cog[0].cgid";
connectAttr "polyTweakUV71.uvtk[0]" "coinShape.uvst[0].uvtw";
connectAttr "groupId265.id" "cabinetShape.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "cabinetShape.iog.og[0].gco";
connectAttr "groupId267.id" "cabinetShape.iog.og[1].gid";
connectAttr "lambert25SG.mwc" "cabinetShape.iog.og[1].gco";
connectAttr "groupId268.id" "cabinetShape.iog.og[2].gid";
connectAttr "lambert26SG.mwc" "cabinetShape.iog.og[2].gco";
connectAttr "transformGeometry53.og" "cabinetShape.i";
connectAttr "groupId266.id" "cabinetShape.ciog.cog[0].cgid";
connectAttr "transformGeometry54.og" "water_overlayShape.i";
connectAttr "transformGeometry55.og" "fishShape.i";
connectAttr "transformGeometry56.og" "ad_topShape.i";
connectAttr "transformGeometry57.og" "logo_bottomShape.i";
connectAttr "transformGeometry58.og" "waterbaseShape.i";
connectAttr "groupId275.id" "dispenserknobShape.iog.og[0].gid";
connectAttr "set49.mwc" "dispenserknobShape.iog.og[0].gco";
connectAttr "groupId276.id" "dispenserknobShape.iog.og[1].gid";
connectAttr "lambert25SG.mwc" "dispenserknobShape.iog.og[1].gco";
connectAttr "groupId278.id" "dispenserknobShape.iog.og[2].gid";
connectAttr "lambert3SG.mwc" "dispenserknobShape.iog.og[2].gco";
connectAttr "transformGeometry78.og" "dispenserknobShape.i";
connectAttr "groupId277.id" "dispenserknobShape.ciog.cog[0].cgid";
connectAttr "transformGeometry60.og" "squareknobShape.i";
connectAttr "groupId269.id" "spinnerknobShape.iog.og[0].gid";
connectAttr "set46.mwc" "spinnerknobShape.iog.og[0].gco";
connectAttr "groupId270.id" "spinnerknobShape.iog.og[1].gid";
connectAttr "set47.mwc" "spinnerknobShape.iog.og[1].gco";
connectAttr "transformGeometry61.og" "spinnerknobShape.i";
connectAttr "groupId271.id" "coinknobShape.iog.og[0].gid";
connectAttr "set48.mwc" "coinknobShape.iog.og[0].gco";
connectAttr "groupId272.id" "coinknobShape.iog.og[1].gid";
connectAttr "lambert25SG.mwc" "coinknobShape.iog.og[1].gco";
connectAttr "groupId274.id" "coinknobShape.iog.og[2].gid";
connectAttr "lambert3SG.mwc" "coinknobShape.iog.og[2].gco";
connectAttr "transformGeometry62.og" "coinknobShape.i";
connectAttr "groupId273.id" "coinknobShape.ciog.cog[0].cgid";
connectAttr "transformGeometry63.og" "leafShape1.i";
connectAttr "polyTweakUV195.uvtk[0]" "leafShape1.uvst[0].uvtw";
connectAttr "groupId280.id" "lilypadShape1.iog.og[0].gid";
connectAttr "set50.mwc" "lilypadShape1.iog.og[0].gco";
connectAttr "groupId279.id" "lilypad2Shape.iog.og[0].gid";
connectAttr "set50.mwc" "lilypad2Shape.iog.og[0].gco";
connectAttr "transformGeometry79.og" "lilypad2Shape.i";
connectAttr "polyTweakUV196.uvtk[0]" "lilypad2Shape.uvst[0].uvtw";
connectAttr "groupId281.id" "bigleafShape.iog.og[0].gid";
connectAttr "lambert16SG.mwc" "bigleafShape.iog.og[0].gco";
connectAttr "transformGeometry65.og" "bigleafShape.i";
connectAttr "polyTweakUV197.uvtk[0]" "bigleafShape.uvst[0].uvtw";
connectAttr "groupId282.id" "bigleafShape.ciog.cog[0].cgid";
connectAttr "transformGeometry80.og" "waterfallShape.i";
connectAttr "groupId284.id" "r_wingShape.iog.og[0].gid";
connectAttr "set51.mwc" "r_wingShape.iog.og[0].gco";
connectAttr "groupId283.id" "l_wingShape.iog.og[0].gid";
connectAttr "set51.mwc" "l_wingShape.iog.og[0].gco";
connectAttr "transformGeometry74.og" "l_wingShape.i";
connectAttr "polyTweakUV200.uvtk[0]" "l_wingShape.uvst[0].uvtw";
connectAttr "transformGeometry75.og" "beakShape.i";
connectAttr "polyTweakUV199.uvtk[0]" "beakShape.uvst[0].uvtw";
connectAttr "transformGeometry76.og" "l_eyeShape.i";
connectAttr "polyTweakUV198.uvtk[0]" "l_eyeShape.uvst[0].uvtw";
connectAttr "transformGeometry77.og" "baseShape.i";
connectAttr "polyTweakUV201.uvtk[0]" "baseShape.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert7SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert8SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert9SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert10SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert11SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert12SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert13SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert14SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert15SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert16SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert17SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert18SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert19SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert20SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert21SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert22SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert23SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert24SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert25SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert26SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert27SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert28SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert7SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert8SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert9SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert10SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert11SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert12SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert13SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert14SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert15SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert16SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert17SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert18SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert19SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert20SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert21SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert22SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert23SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert24SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert25SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert26SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert27SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert28SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "skin.oc" "lambert2SG.ss";
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "skin.msg" "materialInfo1.m";
connectAttr "black.oc" "lambert3SG.ss";
connectAttr "coinknobShape.iog.og[2]" "lambert3SG.dsm" -na;
connectAttr "dispenserknobShape.iog.og[2]" "lambert3SG.dsm" -na;
connectAttr "l_eyeShape.iog" "lambert3SG.dsm" -na;
connectAttr "r_eyeShape.iog" "lambert3SG.dsm" -na;
connectAttr "groupId274.msg" "lambert3SG.gn" -na;
connectAttr "groupId278.msg" "lambert3SG.gn" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "black.msg" "materialInfo2.m";
connectAttr "red.oc" "lambert4SG.ss";
connectAttr "cabinetShape.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "cabinetShape.ciog.cog[0]" "lambert4SG.dsm" -na;
connectAttr "l_wingShape.iog" "lambert4SG.dsm" -na;
connectAttr "r_wingShape.iog" "lambert4SG.dsm" -na;
connectAttr "groupId265.msg" "lambert4SG.gn" -na;
connectAttr "groupId266.msg" "lambert4SG.gn" -na;
connectAttr "lambert4SG.msg" "materialInfo3.sg";
connectAttr "red.msg" "materialInfo3.m";
connectAttr "white.oc" "lambert5SG.ss";
connectAttr "lambert5SG.msg" "materialInfo4.sg";
connectAttr "white.msg" "materialInfo4.m";
connectAttr ":lambert1.oc" "lambert1SG.ss";
connectAttr "lambert1SG.msg" "materialInfo5.sg";
connectAttr ":lambert1.msg" "materialInfo5.m";
connectAttr "metal.oc" "lambert6SG.ss";
connectAttr "lambert6SG.msg" "materialInfo6.sg";
connectAttr "metal.msg" "materialInfo6.m";
connectAttr "green.oc" "lambert7SG.ss";
connectAttr "lambert7SG.msg" "materialInfo7.sg";
connectAttr "green.msg" "materialInfo7.m";
connectAttr "darkmetal.oc" "blinn1SG.ss";
connectAttr "blinn1SG.msg" "materialInfo8.sg";
connectAttr "darkmetal.msg" "materialInfo8.m";
connectAttr "blue.oc" "lambert8SG.ss";
connectAttr "lambert8SG.msg" "materialInfo9.sg";
connectAttr "blue.msg" "materialInfo9.m";
connectAttr "bluedark.oc" "blinn2SG.ss";
connectAttr "blinn2SG.msg" "materialInfo10.sg";
connectAttr "bluedark.msg" "materialInfo10.m";
connectAttr "fire.oc" "lambert9SG.ss";
connectAttr "lambert9SG.msg" "materialInfo11.sg";
connectAttr "fire.msg" "materialInfo11.m";
connectAttr "polyTweak61.out" "polyBevel3.ip";
connectAttr "coinShape.wm" "polyBevel3.mp";
connectAttr "polyCylinder6.out" "polyTweak61.ip";
connectAttr "polyTweak62.out" "polyExtrudeFace13.ip";
connectAttr "coinShape.wm" "polyExtrudeFace13.mp";
connectAttr "polyBevel3.out" "polyTweak62.ip";
connectAttr "polyTweak63.out" "polySoftEdge42.ip";
connectAttr "coinShape.wm" "polySoftEdge42.mp";
connectAttr "polyExtrudeFace13.out" "polyTweak63.ip";
connectAttr "polySoftEdge42.out" "polySoftEdge43.ip";
connectAttr "coinShape.wm" "polySoftEdge43.mp";
connectAttr "polySoftEdge43.out" "polySplit62.ip";
connectAttr "polySplit62.out" "polySplit63.ip";
connectAttr "polySplit63.out" "polyDelEdge6.ip";
connectAttr "polyDelEdge6.out" "polyDelEdge7.ip";
connectAttr "polyDelEdge7.out" "polySplit64.ip";
connectAttr "polySplit64.out" "polySplit65.ip";
connectAttr "polySplit65.out" "polyDelEdge8.ip";
connectAttr "polyDelEdge8.out" "polySplit66.ip";
connectAttr "polySplit66.out" "polySplit67.ip";
connectAttr "polySplit67.out" "polySplit68.ip";
connectAttr "polySplit68.out" "polySplit69.ip";
connectAttr "polySplit69.out" "polySplit70.ip";
connectAttr "polySplit70.out" "polySplit71.ip";
connectAttr "polySplit71.out" "polySplit72.ip";
connectAttr "polySplit72.out" "polySplit73.ip";
connectAttr "polySplit73.out" "polySplit74.ip";
connectAttr "polySplit74.out" "polySplit75.ip";
connectAttr "polySplit75.out" "polyDelEdge9.ip";
connectAttr "polyDelEdge9.out" "polySplit76.ip";
connectAttr "polySplit76.out" "polySplit77.ip";
connectAttr "polySplit77.out" "polySplit78.ip";
connectAttr "polySplit78.out" "polySplit79.ip";
connectAttr "polySplit79.out" "polySplit80.ip";
connectAttr "polySplit80.out" "polySplit81.ip";
connectAttr "polySplit81.out" "polySplit82.ip";
connectAttr "polySplit82.out" "polySplit83.ip";
connectAttr "polySplit83.out" "polyDelEdge10.ip";
connectAttr "polyDelEdge10.out" "polySplit84.ip";
connectAttr "polySplit84.out" "polySplit85.ip";
connectAttr "polySplit85.out" "polyExtrudeFace14.ip";
connectAttr "coinShape.wm" "polyExtrudeFace14.mp";
connectAttr "polyTweak64.out" "polySoftEdge44.ip";
connectAttr "coinShape.wm" "polySoftEdge44.mp";
connectAttr "polyExtrudeFace14.out" "polyTweak64.ip";
connectAttr "polySoftEdge44.out" "transformGeometry22.ig";
connectAttr "cyan.oc" "lambert10SG.ss";
connectAttr "coinShape.iog.og[0]" "lambert10SG.dsm" -na;
connectAttr "coinShape.ciog.cog[0]" "lambert10SG.dsm" -na;
connectAttr "groupId109.msg" "lambert10SG.gn" -na;
connectAttr "groupId110.msg" "lambert10SG.gn" -na;
connectAttr "lambert10SG.msg" "materialInfo12.sg";
connectAttr "cyan.msg" "materialInfo12.m";
connectAttr "transformGeometry22.og" "groupParts50.ig";
connectAttr "groupId109.id" "groupParts50.gi";
connectAttr "groupParts50.og" "groupParts51.ig";
connectAttr "groupId111.id" "groupParts51.gi";
connectAttr "cyandark.oc" "lambert11SG.ss";
connectAttr "coinShape.iog.og[1]" "lambert11SG.dsm" -na;
connectAttr "groupId111.msg" "lambert11SG.gn" -na;
connectAttr "lambert11SG.msg" "materialInfo13.sg";
connectAttr "cyandark.msg" "materialInfo13.m";
connectAttr "groupParts51.og" "polyMapCut35.ip";
connectAttr "polyMapCut35.out" "polyTweakUV65.ip";
connectAttr "polyTweakUV65.out" "polyMapSewMove18.ip";
connectAttr "polyMapSewMove18.out" "polyMapSewMove19.ip";
connectAttr "polyMapSewMove19.out" "polyTweakUV66.ip";
connectAttr "polyTweakUV66.out" "polyMapSewMove20.ip";
connectAttr "polyMapSewMove20.out" "polyMapSewMove21.ip";
connectAttr "polyMapSewMove21.out" "polyTweakUV67.ip";
connectAttr "polyTweakUV67.out" "polyFlipUV6.ip";
connectAttr "coinShape.wm" "polyFlipUV6.mp";
connectAttr "polyFlipUV6.out" "polyTweakUV68.ip";
connectAttr "polyTweakUV68.out" "polyMapCut36.ip";
connectAttr "polyMapCut36.out" "polyTweakUV69.ip";
connectAttr "polyTweakUV69.out" "polyMapSewMove22.ip";
connectAttr "polyMapSewMove22.out" "polyTweakUV70.ip";
connectAttr "polyTweakUV70.out" "polyPlanarProj28.ip";
connectAttr "coinShape.wm" "polyPlanarProj28.mp";
connectAttr "polyPlanarProj28.out" "polyTweakUV71.ip";
connectAttr "purple.oc" "lambert12SG.ss";
connectAttr "lambert12SG.msg" "materialInfo14.sg";
connectAttr "purple.msg" "materialInfo14.m";
connectAttr "bone.oc" "lambert13SG.ss";
connectAttr "lambert13SG.msg" "materialInfo15.sg";
connectAttr "bone.msg" "materialInfo15.m";
connectAttr "grey.oc" "lambert14SG.ss";
connectAttr "lambert14SG.msg" "materialInfo16.sg";
connectAttr "grey.msg" "materialInfo16.m";
connectAttr "orange.oc" "lambert15SG.ss";
connectAttr "lambert15SG.msg" "materialInfo17.sg";
connectAttr "orange.msg" "materialInfo17.m";
connectAttr "lime.oc" "lambert16SG.ss";
connectAttr "ad_topShape.iog" "lambert16SG.dsm" -na;
connectAttr "leafShape2.iog" "lambert16SG.dsm" -na;
connectAttr "leafShape1.iog" "lambert16SG.dsm" -na;
connectAttr "leafShape3.iog" "lambert16SG.dsm" -na;
connectAttr "leafShape4.iog" "lambert16SG.dsm" -na;
connectAttr "leafShape5.iog" "lambert16SG.dsm" -na;
connectAttr "leafShape6.iog" "lambert16SG.dsm" -na;
connectAttr "leafShape7.iog" "lambert16SG.dsm" -na;
connectAttr "leafShape8.iog" "lambert16SG.dsm" -na;
connectAttr "leafShape9.iog" "lambert16SG.dsm" -na;
connectAttr "leafShape10.iog" "lambert16SG.dsm" -na;
connectAttr "lilypad2Shape.iog" "lambert16SG.dsm" -na;
connectAttr "lilypadShape1.iog" "lambert16SG.dsm" -na;
connectAttr "bigleafShape.iog.og[0]" "lambert16SG.dsm" -na;
connectAttr "groupId281.msg" "lambert16SG.gn" -na;
connectAttr "lambert16SG.msg" "materialInfo18.sg";
connectAttr "lime.msg" "materialInfo18.m";
connectAttr "brown.oc" "lambert17SG.ss";
connectAttr "lambert17SG.msg" "materialInfo19.sg";
connectAttr "brown.msg" "materialInfo19.m";
connectAttr "sesame.oc" "lambert18SG.ss";
connectAttr "lambert18SG.msg" "materialInfo20.sg";
connectAttr "sesame.msg" "materialInfo20.m";
connectAttr "yellow.oc" "lambert19SG.ss";
connectAttr "logo_bottomShape.iog" "lambert19SG.dsm" -na;
connectAttr "beakShape.iog" "lambert19SG.dsm" -na;
connectAttr "l_legShape.iog" "lambert19SG.dsm" -na;
connectAttr "r_legShape.iog" "lambert19SG.dsm" -na;
connectAttr "lambert19SG.msg" "materialInfo21.sg";
connectAttr "yellow.msg" "materialInfo21.m";
connectAttr "beige.oc" "lambert20SG.ss";
connectAttr "lambert20SG.msg" "materialInfo22.sg";
connectAttr "beige.msg" "materialInfo22.m";
connectAttr "salmon.oc" "lambert21SG.ss";
connectAttr "lambert21SG.msg" "materialInfo23.sg";
connectAttr "salmon.msg" "materialInfo23.m";
connectAttr "magenta.oc" "lambert22SG.ss";
connectAttr "lambert22SG.msg" "materialInfo24.sg";
connectAttr "magenta.msg" "materialInfo24.m";
connectAttr "greener.oc" "lambert23SG.ss";
connectAttr "lambert23SG.msg" "materialInfo25.sg";
connectAttr "greener.msg" "materialInfo25.m";
connectAttr "brow.oc" "lambert24SG.ss";
connectAttr "lambert24SG.msg" "materialInfo26.sg";
connectAttr "brow.msg" "materialInfo26.m";
connectAttr "polyTweak134.out" "polyExtrudeFace22.ip";
connectAttr "cabinetShape.wm" "polyExtrudeFace22.mp";
connectAttr "polyCube10.out" "polyTweak134.ip";
connectAttr "polyExtrudeFace22.out" "polySplitRing14.ip";
connectAttr "cabinetShape.wm" "polySplitRing14.mp";
connectAttr "polySplitRing14.out" "polySplitRing15.ip";
connectAttr "cabinetShape.wm" "polySplitRing15.mp";
connectAttr "polySplitRing15.out" "polySplitRing16.ip";
connectAttr "cabinetShape.wm" "polySplitRing16.mp";
connectAttr "polyTweak135.out" "polySplitRing17.ip";
connectAttr "cabinetShape.wm" "polySplitRing17.mp";
connectAttr "polySplitRing16.out" "polyTweak135.ip";
connectAttr "polySplitRing17.out" "polyTweak136.ip";
connectAttr "polyTweak136.out" "polySplit127.ip";
connectAttr "polySplit127.out" "polySplit128.ip";
connectAttr "polySplit128.out" "polyDelEdge25.ip";
connectAttr "polyDelEdge25.out" "polyDelEdge26.ip";
connectAttr "polyDelEdge26.out" "polySplit129.ip";
connectAttr "polySplit129.out" "polySplit130.ip";
connectAttr "polySplit130.out" "polyDelEdge27.ip";
connectAttr "polyDelEdge27.out" "polySplit131.ip";
connectAttr "polySplit131.out" "polyDelEdge28.ip";
connectAttr "polyDelEdge28.out" "polySplit132.ip";
connectAttr "polySplit132.out" "polySplit133.ip";
connectAttr "polyTweak137.out" "polyExtrudeFace23.ip";
connectAttr "cabinetShape.wm" "polyExtrudeFace23.mp";
connectAttr "polySplit133.out" "polyTweak137.ip";
connectAttr "polyExtrudeFace23.out" "polyDelEdge29.ip";
connectAttr "polyDelEdge29.out" "polySplit134.ip";
connectAttr "polySplit134.out" "polySplit135.ip";
connectAttr "polySplit135.out" "polyDelEdge30.ip";
connectAttr "polyTweak138.out" "polySoftEdge80.ip";
connectAttr "cabinetShape.wm" "polySoftEdge80.mp";
connectAttr "polyDelEdge30.out" "polyTweak138.ip";
connectAttr "polySoftEdge80.out" "polySoftEdge81.ip";
connectAttr "cabinetShape.wm" "polySoftEdge81.mp";
connectAttr "polyTweak139.out" "polyExtrudeFace24.ip";
connectAttr "cabinetShape.wm" "polyExtrudeFace24.mp";
connectAttr "polySoftEdge81.out" "polyTweak139.ip";
connectAttr "polyTweak140.out" "polySoftEdge82.ip";
connectAttr "cabinetShape.wm" "polySoftEdge82.mp";
connectAttr "polyExtrudeFace24.out" "polyTweak140.ip";
connectAttr "polySoftEdge82.out" "polySplit136.ip";
connectAttr "polyTweak141.out" "polySoftEdge83.ip";
connectAttr "cabinetShape.wm" "polySoftEdge83.mp";
connectAttr "polySplit136.out" "polyTweak141.ip";
connectAttr "polySoftEdge83.out" "polySoftEdge84.ip";
connectAttr "cabinetShape.wm" "polySoftEdge84.mp";
connectAttr "polyTweak142.out" "polySoftEdge85.ip";
connectAttr "cabinetShape.wm" "polySoftEdge85.mp";
connectAttr "polySoftEdge84.out" "polyTweak142.ip";
connectAttr "polySoftEdge85.out" "polySoftEdge86.ip";
connectAttr "cabinetShape.wm" "polySoftEdge86.mp";
connectAttr "polySoftEdge86.out" "polySoftEdge87.ip";
connectAttr "cabinetShape.wm" "polySoftEdge87.mp";
connectAttr "polySoftEdge87.out" "polySoftEdge88.ip";
connectAttr "cabinetShape.wm" "polySoftEdge88.mp";
connectAttr "polySoftEdge88.out" "polySoftEdge89.ip";
connectAttr "cabinetShape.wm" "polySoftEdge89.mp";
connectAttr "polySoftEdge89.out" "polySoftEdge90.ip";
connectAttr "cabinetShape.wm" "polySoftEdge90.mp";
connectAttr "polySoftEdge90.out" "polySoftEdge91.ip";
connectAttr "cabinetShape.wm" "polySoftEdge91.mp";
connectAttr "polySoftEdge91.out" "polySoftEdge92.ip";
connectAttr "cabinetShape.wm" "polySoftEdge92.mp";
connectAttr "polySoftEdge92.out" "polySoftEdge93.ip";
connectAttr "cabinetShape.wm" "polySoftEdge93.mp";
connectAttr "polySoftEdge93.out" "polySoftEdge94.ip";
connectAttr "cabinetShape.wm" "polySoftEdge94.mp";
connectAttr "polySoftEdge94.out" "polySoftEdge95.ip";
connectAttr "cabinetShape.wm" "polySoftEdge95.mp";
connectAttr "polySoftEdge95.out" "polySoftEdge96.ip";
connectAttr "cabinetShape.wm" "polySoftEdge96.mp";
connectAttr "polySoftEdge96.out" "polySoftEdge97.ip";
connectAttr "cabinetShape.wm" "polySoftEdge97.mp";
connectAttr "polySoftEdge97.out" "polySoftEdge98.ip";
connectAttr "cabinetShape.wm" "polySoftEdge98.mp";
connectAttr "polySoftEdge98.out" "polyDelEdge31.ip";
connectAttr "wood.oc" "lambert25SG.ss";
connectAttr "groupId267.msg" "lambert25SG.gn" -na;
connectAttr "groupId272.msg" "lambert25SG.gn" -na;
connectAttr "groupId273.msg" "lambert25SG.gn" -na;
connectAttr "groupId276.msg" "lambert25SG.gn" -na;
connectAttr "groupId277.msg" "lambert25SG.gn" -na;
connectAttr "cabinetShape.iog.og[1]" "lambert25SG.dsm" -na;
connectAttr "spinnerknobShape.iog" "lambert25SG.dsm" -na;
connectAttr "coinknobShape.iog.og[1]" "lambert25SG.dsm" -na;
connectAttr "coinknobShape.ciog.cog[0]" "lambert25SG.dsm" -na;
connectAttr "squareknobShape.iog" "lambert25SG.dsm" -na;
connectAttr "dispenserknobShape.iog.og[1]" "lambert25SG.dsm" -na;
connectAttr "dispenserknobShape.ciog.cog[0]" "lambert25SG.dsm" -na;
connectAttr "lambert25SG.msg" "materialInfo27.sg";
connectAttr "wood.msg" "materialInfo27.m";
connectAttr "polyDelEdge31.out" "groupParts110.ig";
connectAttr "groupId265.id" "groupParts110.gi";
connectAttr "groupParts110.og" "groupParts111.ig";
connectAttr "groupId267.id" "groupParts111.gi";
connectAttr "glass.oc" "lambert26SG.ss";
connectAttr "groupId268.msg" "lambert26SG.gn" -na;
connectAttr "cabinetShape.iog.og[2]" "lambert26SG.dsm" -na;
connectAttr "lambert26SG.msg" "materialInfo28.sg";
connectAttr "glass.msg" "materialInfo28.m";
connectAttr "groupParts111.og" "groupParts112.ig";
connectAttr "groupId268.id" "groupParts112.gi";
connectAttr "polyPlane1.out" "polyExtrudeEdge7.ip";
connectAttr "water_overlayShape.wm" "polyExtrudeEdge7.mp";
connectAttr "polyExtrudeEdge7.out" "polySplitRing18.ip";
connectAttr "water_overlayShape.wm" "polySplitRing18.mp";
connectAttr "polyTweak143.out" "polyExtrudeEdge8.ip";
connectAttr "water_overlayShape.wm" "polyExtrudeEdge8.mp";
connectAttr "polySplitRing18.out" "polyTweak143.ip";
connectAttr "polyTweak144.out" "polySoftEdge99.ip";
connectAttr "water_overlayShape.wm" "polySoftEdge99.mp";
connectAttr "polyExtrudeEdge8.out" "polyTweak144.ip";
connectAttr "water.oc" "lambert27SG.ss";
connectAttr "water_overlayShape.iog" "lambert27SG.dsm" -na;
connectAttr "waterbaseShape.iog" "lambert27SG.dsm" -na;
connectAttr "waterfallShape.iog" "lambert27SG.dsm" -na;
connectAttr "lambert27SG.msg" "materialInfo29.sg";
connectAttr "water.msg" "materialInfo29.m";
connectAttr "polyTweak145.out" "polyExtrudeEdge9.ip";
connectAttr "water_overlayShape.wm" "polyExtrudeEdge9.mp";
connectAttr "polySoftEdge99.out" "polyTweak145.ip";
connectAttr "polyTweak146.out" "polyBevel4.ip";
connectAttr "spinnerknobShape.wm" "polyBevel4.mp";
connectAttr "polyCylinder11.out" "polyTweak146.ip";
connectAttr "polyBevel4.out" "polySplit137.ip";
connectAttr "polySplit137.out" "polyExtrudeFace25.ip";
connectAttr "spinnerknobShape.wm" "polyExtrudeFace25.mp";
connectAttr "polyTweak147.out" "polyDelEdge32.ip";
connectAttr "polyExtrudeFace25.out" "polyTweak147.ip";
connectAttr "polyDelEdge32.out" "polySplit138.ip";
connectAttr "polySplit138.out" "polySplit139.ip";
connectAttr "polySplit139.out" "deleteComponent29.ig";
connectAttr "deleteComponent29.og" "polyCloseBorder8.ip";
connectAttr "polyCloseBorder8.out" "polySplit140.ip";
connectAttr "polySplit140.out" "polySplit141.ip";
connectAttr "polySplit141.out" "polyDelEdge33.ip";
connectAttr "polyDelEdge33.out" "polySoftEdge100.ip";
connectAttr "spinnerknobShape.wm" "polySoftEdge100.mp";
connectAttr "polySoftEdge100.out" "polySoftEdge101.ip";
connectAttr "spinnerknobShape.wm" "polySoftEdge101.mp";
connectAttr "polySoftEdge101.out" "polySoftEdge102.ip";
connectAttr "spinnerknobShape.wm" "polySoftEdge102.mp";
connectAttr "groupId269.msg" "set46.gn" -na;
connectAttr "spinnerknobShape.iog.og[0]" "set46.dsm" -na;
connectAttr "polySoftEdge102.out" "groupParts113.ig";
connectAttr "groupId269.id" "groupParts113.gi";
connectAttr "groupParts113.og" "deleteComponent30.ig";
connectAttr "groupId270.msg" "set47.gn" -na;
connectAttr "spinnerknobShape.iog.og[1]" "set47.dsm" -na;
connectAttr "deleteComponent30.og" "groupParts114.ig";
connectAttr "groupId270.id" "groupParts114.gi";
connectAttr "groupParts114.og" "polyTweak148.ip";
connectAttr "polyTweak148.out" "deleteComponent31.ig";
connectAttr "polyTweak149.out" "polyBevel5.ip";
connectAttr "coinknobShape.wm" "polyBevel5.mp";
connectAttr "polyCylinder12.out" "polyTweak149.ip";
connectAttr "groupId271.msg" "set48.gn" -na;
connectAttr "coinknobShape.iog.og[0]" "set48.dsm" -na;
connectAttr "polyBevel5.out" "groupParts115.ig";
connectAttr "groupId271.id" "groupParts115.gi";
connectAttr "groupParts115.og" "polyTweak150.ip";
connectAttr "polyTweak150.out" "deleteComponent32.ig";
connectAttr "deleteComponent32.og" "polySplit142.ip";
connectAttr "polySplit142.out" "polySplit143.ip";
connectAttr "polySplit143.out" "polyDelEdge34.ip";
connectAttr "polyDelEdge34.out" "polySplit144.ip";
connectAttr "polySplit144.out" "polySplit145.ip";
connectAttr "polySplit145.out" "polySplit146.ip";
connectAttr "polySplit146.out" "polyDelEdge35.ip";
connectAttr "polyDelEdge35.out" "polyExtrudeFace26.ip";
connectAttr "coinknobShape.wm" "polyExtrudeFace26.mp";
connectAttr "polyTweak151.out" "polySoftEdge103.ip";
connectAttr "coinknobShape.wm" "polySoftEdge103.mp";
connectAttr "polyExtrudeFace26.out" "polyTweak151.ip";
connectAttr "polySoftEdge103.out" "polySoftEdge104.ip";
connectAttr "coinknobShape.wm" "polySoftEdge104.mp";
connectAttr "polySoftEdge104.out" "groupParts116.ig";
connectAttr "groupId272.id" "groupParts116.gi";
connectAttr "groupParts116.og" "groupParts117.ig";
connectAttr "groupId274.id" "groupParts117.gi";
connectAttr "polyTweak152.out" "polyBevel6.ip";
connectAttr "squareknobShape.wm" "polyBevel6.mp";
connectAttr "polyCube11.out" "polyTweak152.ip";
connectAttr "polyBevel6.out" "polyTweak153.ip";
connectAttr "polyTweak153.out" "deleteComponent33.ig";
connectAttr "polyTweak154.out" "polySoftEdge105.ip";
connectAttr "squareknobShape.wm" "polySoftEdge105.mp";
connectAttr "deleteComponent33.og" "polyTweak154.ip";
connectAttr "polySoftEdge105.out" "polySoftEdge106.ip";
connectAttr "squareknobShape.wm" "polySoftEdge106.mp";
connectAttr "polySoftEdge106.out" "deleteComponent34.ig";
connectAttr "deleteComponent34.og" "polyCloseBorder9.ip";
connectAttr "polyCloseBorder9.out" "polyBevel7.ip";
connectAttr "squareknobShape.wm" "polyBevel7.mp";
connectAttr "polyBevel7.out" "polySoftEdge107.ip";
connectAttr "squareknobShape.wm" "polySoftEdge107.mp";
connectAttr "polyTweak155.out" "polyDelEdge36.ip";
connectAttr "polyCube12.out" "polyTweak155.ip";
connectAttr "polyDelEdge36.out" "polySplit147.ip";
connectAttr "polySplit147.out" "polySplit148.ip";
connectAttr "polyTweak156.out" "polyDelEdge37.ip";
connectAttr "polySplit148.out" "polyTweak156.ip";
connectAttr "polyDelEdge37.out" "polySplit149.ip";
connectAttr "polySplit149.out" "polySplit150.ip";
connectAttr "groupId275.msg" "set49.gn" -na;
connectAttr "dispenserknobShape.iog.og[0]" "set49.dsm" -na;
connectAttr "polySplit150.out" "groupParts118.ig";
connectAttr "groupId275.id" "groupParts118.gi";
connectAttr "groupParts118.og" "polyTweak157.ip";
connectAttr "polyTweak157.out" "deleteComponent35.ig";
connectAttr "deleteComponent35.og" "polyExtrudeFace27.ip";
connectAttr "dispenserknobShape.wm" "polyExtrudeFace27.mp";
connectAttr "polyTweak158.out" "polySoftEdge108.ip";
connectAttr "dispenserknobShape.wm" "polySoftEdge108.mp";
connectAttr "polyExtrudeFace27.out" "polyTweak158.ip";
connectAttr "polySoftEdge108.out" "polySoftEdge109.ip";
connectAttr "dispenserknobShape.wm" "polySoftEdge109.mp";
connectAttr "polySoftEdge109.out" "polySplit151.ip";
connectAttr "polySplit151.out" "groupParts119.ig";
connectAttr "groupId276.id" "groupParts119.gi";
connectAttr "groupParts119.og" "groupParts120.ig";
connectAttr "groupId278.id" "groupParts120.gi";
connectAttr "polyTweak159.out" "polyMergeVert29.ip";
connectAttr "ad_topShape.wm" "polyMergeVert29.mp";
connectAttr "polyPlane4.out" "polyTweak159.ip";
connectAttr "groupParts120.og" "polyTweak160.ip";
connectAttr "polyTweak160.out" "transformGeometry49.ig";
connectAttr "polySoftEdge107.out" "polyTweak161.ip";
connectAttr "polyTweak161.out" "transformGeometry50.ig";
connectAttr "deleteComponent31.og" "polyTweak162.ip";
connectAttr "polyTweak162.out" "transformGeometry51.ig";
connectAttr "groupParts117.og" "transformGeometry52.ig";
connectAttr "polyTweak163.out" "polyPlanarProj71.ip";
connectAttr "leafShape1.wm" "polyPlanarProj71.mp";
connectAttr "polyPlane6.out" "polyTweak163.ip";
connectAttr "polyPlanarProj71.out" "polyTweakUV195.ip";
connectAttr "groupId279.msg" "set50.gn" -na;
connectAttr "groupId280.msg" "set50.gn" -na;
connectAttr "lilypad2Shape.iog.og[0]" "set50.dsm" -na;
connectAttr "lilypadShape1.iog.og[0]" "set50.dsm" -na;
connectAttr "polyCylinder13.out" "groupParts121.ig";
connectAttr "groupId279.id" "groupParts121.gi";
connectAttr "groupParts121.og" "deleteComponent36.ig";
connectAttr "deleteComponent36.og" "polyTweakUV196.ip";
connectAttr "polyTweak164.out" "polyPlanarProj72.ip";
connectAttr "bigleafShape.wm" "polyPlanarProj72.mp";
connectAttr "polyPlane7.out" "polyTweak164.ip";
connectAttr "polyPlanarProj72.out" "polyPlanarProj73.ip";
connectAttr "bigleafShape.wm" "polyPlanarProj73.mp";
connectAttr "polyPlanarProj73.out" "polyTweakUV197.ip";
connectAttr "polyTweakUV197.out" "groupParts122.ig";
connectAttr "groupId281.id" "groupParts122.gi";
connectAttr "groupParts112.og" "polyTweak165.ip";
connectAttr "polyTweak165.out" "transformGeometry53.ig";
connectAttr "polyExtrudeEdge9.out" "polyTweak166.ip";
connectAttr "polyTweak166.out" "transformGeometry54.ig";
connectAttr "polyPlane2.out" "polyTweak167.ip";
connectAttr "polyTweak167.out" "transformGeometry55.ig";
connectAttr "polyMergeVert29.out" "polyTweak168.ip";
connectAttr "polyTweak168.out" "transformGeometry56.ig";
connectAttr "polyPlane3.out" "polyTweak169.ip";
connectAttr "polyTweak169.out" "transformGeometry57.ig";
connectAttr "polyPlane5.out" "transformGeometry58.ig";
connectAttr "transformGeometry49.og" "transformGeometry59.ig";
connectAttr "transformGeometry50.og" "transformGeometry60.ig";
connectAttr "transformGeometry51.og" "transformGeometry61.ig";
connectAttr "transformGeometry52.og" "transformGeometry62.ig";
connectAttr "polyTweakUV195.out" "polyTweak170.ip";
connectAttr "polyTweak170.out" "transformGeometry63.ig";
connectAttr "polyTweakUV196.out" "transformGeometry64.ig";
connectAttr "groupParts122.og" "polyTweak171.ip";
connectAttr "polyTweak171.out" "transformGeometry65.ig";
connectAttr "polyTweak172.out" "polyExtrudeEdge10.ip";
connectAttr "waterfallShape.wm" "polyExtrudeEdge10.mp";
connectAttr "polyPlane8.out" "polyTweak172.ip";
connectAttr "polyExtrudeEdge10.out" "polySoftEdge110.ip";
connectAttr "waterfallShape.wm" "polySoftEdge110.mp";
connectAttr "bird.oc" "lambert28SG.ss";
connectAttr "baseShape.iog" "lambert28SG.dsm" -na;
connectAttr "lambert28SG.msg" "materialInfo30.sg";
connectAttr "bird.msg" "materialInfo30.m";
connectAttr "polyTweak173.out" "polySoftEdge111.ip";
connectAttr "baseShape.wm" "polySoftEdge111.mp";
connectAttr "polySphere8.out" "polyTweak173.ip";
connectAttr "polyTweak174.out" "polyExtrudeFace28.ip";
connectAttr "baseShape.wm" "polyExtrudeFace28.mp";
connectAttr "polySoftEdge111.out" "polyTweak174.ip";
connectAttr "polyTweak175.out" "polyDelEdge38.ip";
connectAttr "polyExtrudeFace28.out" "polyTweak175.ip";
connectAttr "polyTweak176.out" "polySoftEdge112.ip";
connectAttr "baseShape.wm" "polySoftEdge112.mp";
connectAttr "polyDelEdge38.out" "polyTweak176.ip";
connectAttr "polySoftEdge112.out" "polySoftEdge113.ip";
connectAttr "baseShape.wm" "polySoftEdge113.mp";
connectAttr "polySphere9.out" "polySoftEdge114.ip";
connectAttr "l_eyeShape.wm" "polySoftEdge114.mp";
connectAttr "polySoftEdge114.out" "polyPlanarProj74.ip";
connectAttr "l_eyeShape.wm" "polyPlanarProj74.mp";
connectAttr "polyPlanarProj74.out" "polyTweakUV198.ip";
connectAttr "polyTweak177.out" "polyPlanarProj75.ip";
connectAttr "beakShape.wm" "polyPlanarProj75.mp";
connectAttr "polySphere10.out" "polyTweak177.ip";
connectAttr "polyTweak178.out" "polyPlanarProj76.ip";
connectAttr "beakShape.wm" "polyPlanarProj76.mp";
connectAttr "polyPlanarProj75.out" "polyTweak178.ip";
connectAttr "polyPlanarProj76.out" "polyTweakUV199.ip";
connectAttr "polyTweakUV199.out" "polySoftEdge115.ip";
connectAttr "beakShape.wm" "polySoftEdge115.mp";
connectAttr "groupId283.msg" "set51.gn" -na;
connectAttr "groupId284.msg" "set51.gn" -na;
connectAttr "l_wingShape.iog.og[0]" "set51.dsm" -na;
connectAttr "r_wingShape.iog.og[0]" "set51.dsm" -na;
connectAttr "polySphere11.out" "groupParts123.ig";
connectAttr "groupId283.id" "groupParts123.gi";
connectAttr "groupParts123.og" "polyTweak179.ip";
connectAttr "polyTweak179.out" "deleteComponent37.ig";
connectAttr "deleteComponent37.og" "polySoftEdge116.ip";
connectAttr "l_wingShape.wm" "polySoftEdge116.mp";
connectAttr "polySoftEdge116.out" "polyPlanarProj77.ip";
connectAttr "l_wingShape.wm" "polyPlanarProj77.mp";
connectAttr "polyPlanarProj77.out" "polyTweakUV200.ip";
connectAttr "polyTweakUV200.out" "deleteComponent38.ig";
connectAttr "polySoftEdge113.out" "polyPlanarProj78.ip";
connectAttr "baseShape.wm" "polyPlanarProj78.mp";
connectAttr "polyPlanarProj78.out" "polyTweakUV201.ip";
connectAttr "deleteComponent38.og" "polyTweak180.ip";
connectAttr "polyTweak180.out" "transformGeometry66.ig";
connectAttr "polySoftEdge115.out" "transformGeometry67.ig";
connectAttr "polyTweakUV198.out" "transformGeometry68.ig";
connectAttr "polyTweakUV201.out" "transformGeometry69.ig";
connectAttr "transformGeometry66.og" "transformGeometry70.ig";
connectAttr "transformGeometry67.og" "transformGeometry71.ig";
connectAttr "transformGeometry68.og" "transformGeometry72.ig";
connectAttr "transformGeometry69.og" "transformGeometry73.ig";
connectAttr "transformGeometry70.og" "transformGeometry74.ig";
connectAttr "transformGeometry71.og" "transformGeometry75.ig";
connectAttr "transformGeometry72.og" "transformGeometry76.ig";
connectAttr "transformGeometry73.og" "transformGeometry77.ig";
connectAttr "transformGeometry59.og" "polyTweak181.ip";
connectAttr "polyTweak181.out" "transformGeometry78.ig";
connectAttr "transformGeometry64.og" "polyTweak182.ip";
connectAttr "polyTweak182.out" "transformGeometry79.ig";
connectAttr "polySoftEdge110.out" "transformGeometry80.ig";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "lambert1SG.pa" ":renderPartition.st" -na;
connectAttr "lambert6SG.pa" ":renderPartition.st" -na;
connectAttr "lambert7SG.pa" ":renderPartition.st" -na;
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "lambert8SG.pa" ":renderPartition.st" -na;
connectAttr "blinn2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert9SG.pa" ":renderPartition.st" -na;
connectAttr "lambert10SG.pa" ":renderPartition.st" -na;
connectAttr "lambert11SG.pa" ":renderPartition.st" -na;
connectAttr "lambert12SG.pa" ":renderPartition.st" -na;
connectAttr "lambert13SG.pa" ":renderPartition.st" -na;
connectAttr "lambert14SG.pa" ":renderPartition.st" -na;
connectAttr "lambert15SG.pa" ":renderPartition.st" -na;
connectAttr "lambert16SG.pa" ":renderPartition.st" -na;
connectAttr "lambert17SG.pa" ":renderPartition.st" -na;
connectAttr "lambert18SG.pa" ":renderPartition.st" -na;
connectAttr "lambert19SG.pa" ":renderPartition.st" -na;
connectAttr "lambert20SG.pa" ":renderPartition.st" -na;
connectAttr "lambert21SG.pa" ":renderPartition.st" -na;
connectAttr "lambert22SG.pa" ":renderPartition.st" -na;
connectAttr "lambert23SG.pa" ":renderPartition.st" -na;
connectAttr "lambert24SG.pa" ":renderPartition.st" -na;
connectAttr "lambert25SG.pa" ":renderPartition.st" -na;
connectAttr "lambert26SG.pa" ":renderPartition.st" -na;
connectAttr "lambert27SG.pa" ":renderPartition.st" -na;
connectAttr "lambert28SG.pa" ":renderPartition.st" -na;
connectAttr "skin.msg" ":defaultShaderList1.s" -na;
connectAttr "black.msg" ":defaultShaderList1.s" -na;
connectAttr "red.msg" ":defaultShaderList1.s" -na;
connectAttr "white.msg" ":defaultShaderList1.s" -na;
connectAttr "metal.msg" ":defaultShaderList1.s" -na;
connectAttr "green.msg" ":defaultShaderList1.s" -na;
connectAttr "darkmetal.msg" ":defaultShaderList1.s" -na;
connectAttr "blue.msg" ":defaultShaderList1.s" -na;
connectAttr "bluedark.msg" ":defaultShaderList1.s" -na;
connectAttr "fire.msg" ":defaultShaderList1.s" -na;
connectAttr "cyan.msg" ":defaultShaderList1.s" -na;
connectAttr "cyandark.msg" ":defaultShaderList1.s" -na;
connectAttr "purple.msg" ":defaultShaderList1.s" -na;
connectAttr "bone.msg" ":defaultShaderList1.s" -na;
connectAttr "grey.msg" ":defaultShaderList1.s" -na;
connectAttr "orange.msg" ":defaultShaderList1.s" -na;
connectAttr "lime.msg" ":defaultShaderList1.s" -na;
connectAttr "brown.msg" ":defaultShaderList1.s" -na;
connectAttr "sesame.msg" ":defaultShaderList1.s" -na;
connectAttr "yellow.msg" ":defaultShaderList1.s" -na;
connectAttr "beige.msg" ":defaultShaderList1.s" -na;
connectAttr "salmon.msg" ":defaultShaderList1.s" -na;
connectAttr "magenta.msg" ":defaultShaderList1.s" -na;
connectAttr "greener.msg" ":defaultShaderList1.s" -na;
connectAttr "brow.msg" ":defaultShaderList1.s" -na;
connectAttr "wood.msg" ":defaultShaderList1.s" -na;
connectAttr "glass.msg" ":defaultShaderList1.s" -na;
connectAttr "water.msg" ":defaultShaderList1.s" -na;
connectAttr "bird.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "fishShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "bigleafShape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId282.msg" ":initialShadingGroup.gn" -na;
// End of gachamachine.ma
