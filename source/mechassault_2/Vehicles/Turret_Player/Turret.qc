// Created by Crowbar 0.56

$modelname "mechassault_2/vehicles/pov_turret.mdl"
$attachment "muzzle" "Muzzle" 0.00 22.00 3.00 rotate -10 90 0
$attachment "airboat_seat_bone" "airboat_seat_bone" 0.00 0.00 0.00 rotate 0 0 -90
$bonemerge "airboat_seat_bone"
$scale 32
//$origin 0 0 -38 0

$BodyGroup "Base"
{
	studio "Turret Player Mesh.smd"
	studio "Turret Player Mesh_Damaged.smd"
	studio "Turret Player Mesh_Off.smd"
}




$surfaceprop "metalvehicle"

$contents "solid"

$illumposition -1.971 -4.53 10.738

$cdmaterials "models\mechassault_2\vehicles\military\Turret_Player\"

$texturegroup "skinfamilies"
{
	{ "Turret"  	"Emission"     }
	{ "Turret_MP"	"Emission_MP" }
}

// RAGDOLL


$weightlist weights_rotate {

"Turret Base" 0
"Turr Rotat" 1
"Turret"	0

}


$weightlist weights_random {

"Turret Base" 0
"Turr Rotat" 1
"Turret"	0

}

$PoseParameter "aim_pitch" -1 1 0
$PoseParameter "aim_yaw" -180 180 0

// RAGDOLL



$Animation "a_idle" 		"turret_anims\reference.smd" {
	fps 15
	loop
}
$Animation "aim_mid_center" "turret_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_mid_left" "turret_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_mid_right" "turret_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_center" "turret_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_left" "turret_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_up_right" "turret_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_center" "turret_anims\aim_mid_center.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_left" "turret_anims\aim_mid_left.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "aim_down_right" "turret_anims\aim_mid_right.smd" {
	fps 15
	loop
	subtract "a_idle" 0
}
$Animation "a_fire" "turret_anims\fire.smd" {
	fps 40
	subtract "a_idle" 0
}
$Animation "a_open" "turret_anims\open_hatch.smd" {
	fps 30
	subtract "a_idle" 0
}
$Animation "a_close" "turret_anims\close_hatch.smd" {
	fps 30
	subtract "a_idle" 0
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

$sequence "fire" {
	"a_fire"
	activity "ACT_RANGE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 40
	delta
	walkframe 165 LX LY
}

$sequence "power_up" {
	"a_close"
	activity "ACT_OBJ_STARTUP" 1
	fadein 0.2
	fadeout 0.2
	delta
	fps 30
}

$sequence "power_down" {
	"a_open"
	activity "ACT_OBJ_DISMANTLING" 1
	fadein 0.2
	fadeout 0.2
	delta
	fps 30
}

$sequence "power_down_pose" {
	"turret_anims\hatch_opened.smd"
	activity "ACT_OBJ_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "idle" {
	"turret_anims\reference.smd"
	activity "ACT_IDLE" 1
	addlayer	"aimlayer_generic"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$Sequence "reference" {
	"turret_anims\reference.smd"
	fadein 1
	fadeout 1
	fps 10
}
$Sequence "ragdoll" {
	"turret_anims\reference.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}



$collisionjoints "Turret_Player_physics.smd"
{
	$mass 1000
	$inertia 10
	$damping 0.5
	$rotdamping 1.5
	$rootbone "Turret Base"


}

$scale 0.9
// .qc block generated by HLMV begins.

$surfaceprop "metalvehicle"


$hboxset "default"

$hbox 0 "Turret Base"	   -42.25   -9.36  -47.32    43.61   28.82   42.85
$hbox 0 "Turr Rotat"	   -15.58  -10.30  -14.31    15.93   40.24   15.65
$hbox 0 "Turret"	   -20.24  -69.15  -18.55    20.61  113.81   42.44
$hbox 0 "Muzzle"	    -6.32   -1.81   -5.17     6.50   22.42    8.66
$hbox 0 "Flap L"	    -2.64  -19.67  -33.54     8.87   16.86    6.14
$hbox 0 "Flap R"	   -11.28  -19.67  -33.40     0.23   16.86    6.28
$hbox 0 "Controls"	   -11.81   -6.77   -5.04    11.76    1.67   18.72

// .qc block generated by HLMV ends.

