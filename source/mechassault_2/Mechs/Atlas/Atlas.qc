// Created by Crowbar 0.56

$modelname "mechassault_2/mechs/atlas.mdl"
$scale	1.37

$attachment "pulse_laser_R1" "joint_rgun" -50.00 -117.00 -25.50 rotate -0 -90 0
$attachment "pulse_laser_R2" "joint_rgun" -50.00 -122.00 -1.50 rotate -0 -90 0
$attachment "pulse_laser_R3" "joint_rgun" -31.00 -75.00 30.50 rotate -0 -90 0
$attachment "pulse_laser_R4" "joint_rgun" -6.00 -90.00 30.50 rotate -0 -90 0
$attachment "pulse_laser_L1" "joint_lgun" 47.00 -117.00 -25.50 rotate -0 -90 0
$attachment "pulse_laser_L2" "joint_lgun" 47.00 -122.00 -1.50 rotate -0 -90 0
$attachment "pulse_laser_L3" "joint_lgun" 29.00 -75.00 30.50 rotate -0 -90 0
$attachment "pulse_laser_L4" "joint_lgun" 4.00 -90.00 30.50 rotate -0 -90 0
$attachment "rocketpod_L" "joint_torso" -45.00 -52.00 15.00 rotate -0 -90 0
$attachment "rocketpod_R" "joint_torso" 45.00 -52.00 15.00 rotate -0 -90 0
$attachment "reactor_core" "joint_torso" 0.00 0.00 0.00 rotate -0 -90 0
$attachment "battlearmor_attach" "joint_torso" 0.00 80.15 0.00 rotate -0 -90 0
$scale 40
//$origin 0 0 0 0

$BodyGroup "Legs"
{
	studio "Atlas_Lower_Half.smd"
}
$BodyGroup "Torso"
{
	studio "Atlas_Upper_Half.smd"
}	


$surfaceprop "metalvehicle"

$contents "solid"

$illumposition -1.971 -4.53 10.738

$cdmaterials "models\mechassault_2\mechs\atlas\"

$texturegroup "skinfamilies"
{
	{ "atlas"      	 		 "Atlas_Guns"		"Atlas_Hands"		"Reac_Glow"}
	{ "Prometheus"      	 "Prometheus_Guns"	"Prometheus_Hands"	"Reac_Glow"}
	{ "atlas_MP"      	 		 "Atlas_Guns_MP"		"Atlas_Hands_MP"		"Reac_GlowMP"}
	{ "Prometheus_MP"      	 "Prometheus_Guns_MP"	"Prometheus_Hands_MP"	"Reac_GlowMP"}
}

$weightlist weights_proportions {

"joint_ROOT" 0
"joint_hipbelow" 1
"joint_ruleg" 1
"joint_luleg" 1

}

$weightlist weights_damage_arms {

"joint_torso" 0
"joint_ruarm" 1
"joint_luarm" 1

}

$weightlist weights_damage_upper {

"joint_ROOT" 0
"joint_torso" 1
"joint_hipabove" 1
"joint_ruarm" 1
"joint_luarm" 1
}

$PoseParameter "aim_pitch" -1 1 0
$PoseParameter "aim_yaw" -180 180 0
$poseparameter "move_y" -1 1 loop 0
$poseparameter "move_x" -1 1 loop 0

// RAGDOLL


$Animation "a_idle" "atlas_anims\atl_base.smd" {
	fps 15
	loop
}
$Animation "aim_mid_center" "atlas_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_mid_left" "atlas_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_mid_right" "atlas_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_center" "atlas_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_left" "atlas_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_right" "atlas_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_center" "atlas_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_left" "atlas_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_right" "atlas_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_land" "atlas_anims\atl_landstand.smd" {
	fps 30
	subtract "a_idle" 0
}
$Animation "a_hit_back" "atlas_anims\atl_hitback.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_hit_front" "atlas_anims\atl_hitfront.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_hit_left" "atlas_anims\atl_hitleft.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_hit_right" "atlas_anims\atl_hitright.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}

$Animation "a_walk_N" "atlas_anims\atl_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 45

$Animation "a_walk_NW" "atlas_anims\atl_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 -45

$Animation "a_walk_NE" "atlas_anims\atl_walk.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 90
$Animation "a_walk_W" "atlas_anims\atl_walk.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 0 -90
$Animation "a_walk_E" "atlas_anims\atl_walk.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 0 180
$Animation "a_walk_S" "atlas_anims\atl_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 135
$Animation "a_walk_SW" "atlas_anims\atl_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 -135
$Animation "a_walk_SE" "atlas_anims\atl_walk.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}

$origin 0 0 0 0
$Animation "a_run_N" "atlas_anims\atl_run.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 45
$Animation "a_run_NW" "atlas_anims\atl_run.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 -45
$Animation "a_run_NE" "atlas_anims\atl_run.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 90
$Animation "a_run_W" "atlas_anims\atl_run.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 0 -90
$Animation "a_run_E" "atlas_anims\atl_run.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 0 180
$Animation "a_run_S" "atlas_anims\atl_run.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 135
$Animation "a_run_SW" "atlas_anims\atl_run.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 -135
$Animation "a_run_SE" "atlas_anims\atl_run.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}

$origin 0 0 0 0
$Animation "a_walk_limp_N" "atlas_anims\atl_rgimp.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 45
$Animation "a_walk_limp_NW" "atlas_anims\atl_rgimp.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 -45
$Animation "a_walk_limp_NE" "atlas_anims\atl_rgimp.smd" {
	fps 15
	loop
	walkframe 68 LX LY
}
$origin 0 0 0 90
$Animation "a_walk_limp_W" "atlas_anims\atl_rgimp.smd" {
	fps 15
	loop
	walkframe 32 LX LY
}
$origin 0 0 0 -90
$Animation "a_walk_limp_E" "atlas_anims\atl_rgimp.smd" {
	fps 15
	loop
	walkframe 36 LX LY
}
$origin 0 0 0 180
$Animation "a_walk_limp_S" "atlas_anims\atl_rgimp.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 135
$Animation "a_walk_limp_SW" "atlas_anims\atl_rgimp.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}
$origin 0 0 0 -135
$Animation "a_walk_limp_SE" "atlas_anims\atl_rgimp.smd" {
	fps 15
	loop
	walkframe 38 LX LY
}

$origin 0 0 0 0

$sequence "aimlayer_generic" {
	"aim_up_right" "aim_up_center"  "aim_up_left"
	"aim_mid_right" "aim_mid_center"  "aim_mid_left"
	"aim_down_right" "aim_down_center"  "aim_down_left"
	blend "aim_yaw" -180 180
	blend "aim_pitch" -0.1 0.1
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$Sequence "walk" {
	"a_walk_NW"
	"a_walk_N"
	"a_walk_NE"
	"a_walk_W"
	"a_idle"
	"a_walk_E"
	"a_walk_SW"
	"a_walk_S"
	"a_walk_SE"
	activity "ACT_WALK" 1
	addlayer	"aimlayer_generic"
	blend "move_y" -1 1
	blend "move_x" 1 -1
	snap
	loop
	fps 15
	node "movement"
	walkframe 145 LX LY
	{ event AE_CL_PLAYSOUND 2 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 19 "MA2_Mech.Step" }
}

$Sequence "walk_limp" {
	"a_walk_limp_NW"
	"a_walk_limp_N"
	"a_walk_limp_NE"
	"a_walk_limp_W"
	"atlas_anims\atl_standrgimp.smd"
	"a_walk_limp_E"
	"a_walk_limp_SW"
	"a_walk_limp_S"
	"a_walk_limp_SE"
	activity "ACT_WALK_ON_FIRE" 1
	addlayer	"aimlayer_generic"
	blend "move_y" -1 1
	blend "move_x" 1 -1
	snap
	loop
	fps 15
	node "movement"
	walkframe 145 LX LY
	{ event AE_CL_PLAYSOUND 19 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 31 "MA2_Mech.Step" }
}

$Sequence "run" {
	"a_run_NW"
	"a_run_N"
	"a_run_NE"
	"a_run_W"
	"a_idle"
	"a_run_E"
	"a_run_SW"
	"a_run_S"
	"a_run_SE"
	activity "ACT_RUN" 1
	addlayer	"aimlayer_generic"
	blend "move_y" -1 1
	blend "move_x" 1 -1
	snap
	loop
	fps 15
	node "movement"
	walkframe 145 LX LY
	{ event AE_CL_PLAYSOUND 2 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 18 "MA2_Mech.Step" }
}

$Sequence "fall_forward" {
	"atlas_anims\atl_fallforward.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "fall_back" {
	"atlas_anims\atl_fallback.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "fall_left" {
	"atlas_anims\atl_fallleft.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "fall_right" {
	"atlas_anims\atl_fallright.smd"
	activity "ACT_DIESIMPLE" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
}

$Sequence "getup" {
	"atlas_anims\atl_getup.smd"
	activity "ACT_GET_UP_STAND" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
	{ event AE_CL_PLAYSOUND 30 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 55 "MA2_Mech.Step" }
}

$Sequence "getup_right" {
	"atlas_anims\atl_getup.smd"
	activity "ACT_GET_UP_STAND" 1
	fadein 0.3
	fadeout 0.5
	fps 30
	walkframe 145 LX LY
	{ event AE_CL_PLAYSOUND 30 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 55 "MA2_Mech.Step" }
}

$sequence "hit_back" {
	"a_hit_back"
	activity "ACT_FLINCH_CHEST" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
//	weightlist	"weights_damage_upper"
}

$sequence "hit_front" {
	"a_hit_front"
	activity "ACT_FLINCH_CHEST" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
//	weightlist	"weights_damage_upper"
}


$sequence "jump" {
	"atlas_anims\atl_jump.smd"
	activity "ACT_JUMP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	addlayer	"aimlayer_generic"
	loop
	walkframe 145 LX LY
}

$sequence "land" {
//	"atlas_anims\atl_landforward.smd"
	"a_land"
	activity "ACT_LAND" 1
	{ event AE_CL_PLAYSOUND 1 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 2 "MA2_Mech.Step" }
	{ event 1100 1 "event_ma2_mech_step" }
	{ event 1100 2 "event_ma2_mech_step" }
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
}

$sequence "idle" {
	"atlas_anims\atl_base.smd"
	activity "ACT_IDLE" 1
	addlayer	"aimlayer_generic"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "idle_limp" {
	"atlas_anims\atl_standrgimp2.smd"
	activity "ACT_IDLE_ON_FIRE" 1
	addlayer	"aimlayer_generic"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "power_up" {
	"atlas_anims\atl_powerup.smd"
	activity "ACT_OBJ_STARTUP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event AE_CL_PLAYSOUND 22 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 34 "MA2_Mech.Step" }
}

$sequence "power_down" {
	"atlas_anims\atl_powerdown.smd"
	activity "ACT_OBJ_DISMANTLING" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event AE_CL_PLAYSOUND 12 "MA2_Mech.Step" }
	{ event AE_CL_PLAYSOUND 24 "MA2_Mech.Step" }
}

$sequence "power_down_pose" {
	"atlas_anims\atl_poweredoff.smd"
	activity "ACT_OBJ_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}



$Sequence "reference" {
	"Atlas_Upper_Half.smd"
	fadein 1
	fadeout 1
	fps 10
}
$Sequence "ragdoll" {
	"Atlas_Upper_Half.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}


// COLLISION
$collisionjoints "atlas_physics.smd" {

	$mass 90000.0
	$inertia 10.00
	$damping 0.01
	$rotdamping 1.50
	$rootbone "joint_ROOT"
//	$jointmerge "joint_ROOT" "B"
//	$jointmerge "joint_ROOT" "joint_torso"

	$jointconstrain "joint_luleg" x limit -40.00 65.00 0.00
	$jointconstrain "joint_luleg" y limit -5.00 5.00 0.00
	$jointconstrain "joint_luleg" z limit -55.00 32.00 0.00

	$jointconstrain "joint_lgun" x limit -35.00 35.00 0.00
	$jointconstrain "joint_lgun" y limit 0.00 0.00 0.00
	$jointconstrain "joint_lgun" z limit 0.00 0.00 0.00

	$jointconstrain "joint_ruleg" x limit -40.00 65.00 0.00
	$jointconstrain "joint_ruleg" y limit -5.00 5.00 0.00
	$jointconstrain "joint_ruleg" z limit -55.00 32.00 0.00

	$jointconstrain "joint_rgun" x limit -35.00 35.00 0.00
	$jointconstrain "joint_rgun" y limit 0.00 0.00 0.00
	$jointconstrain "joint_rgun" z limit 0.00 0.00 0.00

	$jointconstrain "joint_rankle" x limit -35.00 45.00 0.00
	$jointconstrain "joint_rankle" y limit 0.00 0.00 0.00
	$jointconstrain "joint_rankle" z limit 0.00 0.00 0.00

	$jointconstrain "joint_torso" x limit 0.00 0.00 0.00
	$jointconstrain "joint_torso" y limit 0.00 0.00 0.00
	$jointconstrain "joint_torso" z limit -180.00 180.00 0.00

	$jointconstrain "joint_luarm" x limit 0.00 0.00 0.00
	$jointconstrain "joint_luarm" y limit 0.00 0.00 0.00
	$jointconstrain "joint_luarm" z limit -88.00 48.00 0.00

	$jointconstrain "joint_ruarm" x limit 0.00 0.00 0.00
	$jointconstrain "joint_ruarm" y limit 0.00 0.00 0.00
	$jointconstrain "joint_ruarm" z limit -88.00 48.00 0.00

	$jointconstrain "joint_lankle" x limit -35.00 45.00 0.00
	$jointconstrain "joint_lankle" y limit 0.00 0.00 0.00
	$jointconstrain "joint_lankle" z limit 0.00 0.00 0.00

	$jointcollide joint_rgunabove joint_ruleg
	$jointcollide joint_rgunabove joint_luleg
	$jointcollide joint_lgunabove joint_ruleg
	$jointcollide joint_lgunabove joint_luleg
	$jointcollide joint_rankle joint_ldleg
	$jointcollide joint_lankle joint_rdleg
	$jointcollide joint_lankle joint_rankle
	$jointcollide joint_rdleg joint_ldleg
	$jointcollide joint_ruleg joint_luleg
	$jointcollide joint_rgunabove joint_torso
	$jointcollide joint_lgunabove joint_torso
}
$collisiontext
{
	animatedfriction 
	{
		"animfrictionmin"		"1.000000"
		"animfrictionmax"		"400.000000"
		"animfrictiontimein"		"0.500000"
		"animfrictiontimeout"		"0.300000"
		"animfrictiontimehold"		"0.000000"
	}
	editparams 
	{
		"rootname"		"joint_ROOT"
		"totalmass"		"90.000000"
//		"jointmerge"		"joint_ROOT,B"
//		"jointmerge"		"joint_ROOT,joint_torso"
	}
}

$scale 0.9

// .qc block generated by HLMV begins.

$surfaceprop "metalvehicle"


$hboxset "default"

$hbox 2 "joint_ROOT"	   -47.35  -53.68  -21.85    45.50   63.63   35.55
$hbox 3 "joint_torso"	   -78.53  -68.83    0.00    77.20   86.15  134.39
$hbox 3 "joint_torsoabove"	   -77.00    0.00    0.00    77.00   15.75   70.00
$hbox 4 "joint_luarm"	    -4.43 -110.95  -64.06    83.88   50.82   75.62
$hbox 5 "joint_ruarm"	   -86.28 -146.89  -81.46     2.02   50.47   74.01
$hbox 7 "joint_ruleg"	   -37.52  -59.41  -85.37    20.88   33.22   33.66
$hbox 7 "joint_rgun"	   -23.43  -32.19  -60.04    25.20   68.21   12.51
$hbox 7 "joint_rdleg"	   -36.96  -67.13  -57.62    34.35   22.05   37.01
$hbox 7 "joint_rankle"	   -38.65  -63.75  -22.47    36.01   25.32   11.42
$hbox 6 "joint_luleg"	   -20.89  -59.41  -85.36    37.50   33.22   33.66
$hbox 6 "joint_lgun"	   -25.21  -32.17  -60.02    23.42   68.22   12.52
$hbox 6 "joint_ldleg"	   -34.27  -67.12  -57.63    37.04   22.06   37.01
$hbox 6 "joint_lankle"	   -35.96  -63.78  -22.44    38.70   25.29   11.45

// .qc block generated by HLMV ends.


