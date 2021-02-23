AddCSLuaFile()

hook.Add("EntityEmitSound", "mechassault", function(snd)
	if snd.OriginalSoundName == "MA2_Mech.Step" then
		snd.SoundName = string.format("mechassault_2/mechs/mech_step_%s.ogg", math.random(1, 4)) -- We just want something random, not mech_step_1 through 4 in order

		return true
	end
end)

sound.Add({
	name = "MA2_Mech.Step",
	channel = CHAN_AUTO,
	volume = 1,
	level = 100,
	pitch = {95, 110},
	sound = {
		"mechassault_2/mechs/mech_step_1.ogg",
		"mechassault_2/mechs/mech_step_2.ogg",
		"mechassault_2/mechs/mech_step_3.ogg",
		"mechassault_2/mechs/mech_step_4.ogg"
	}
})

local sounds = {
	{"MA2_Weapon.PulseLaser1", Sound("mechassault_2/weapons/pulse_laser_lvl1.ogg")},
	{"MA2_Weapon.PulseLaser2", Sound("mechassault_2/weapons/pulse_laser_lvl2.ogg")},
	{"MA2_Weapon.PulseLaser3", Sound("mechassault_2/weapons/pulse_laser_lvl3.ogg")},
	{"MA2_Weapon.Javelin1", Sound("mechassault_2/weapons/javelin_lvl1.ogg")},
	{"MA2_Weapon.Javelin2", Sound("mechassault_2/weapons/javelin_lvl2.ogg")},
	{"MA2_Weapon.Javelin3", Sound("mechassault_2/weapons/javelin_lvl3.ogg")},
	{"MA2_Weapon.Crossbow1", Sound("mechassault_2/weapons/crossbow_lvl1.ogg")},
	{"MA2_Weapon.Crossbow2", Sound("mechassault_2/weapons/crossbow_lvl2.ogg")},
	{"MA2_Weapon.Crossbow3", Sound("mechassault_2/weapons/crossbow_lvl3.ogg")},
	{"MA2_Weapon.Autocannon1", Sound("mechassault_2/weapons/autocannon_lvl1.ogg")},
	{"MA2_Weapon.Autocannon2", Sound("mechassault_2/weapons/autocannon_lvl2.ogg")},
	{"MA2_Weapon.Autocannon3", Sound("mechassault_2/weapons/autocannon_lvl3.ogg")}
}

for _, v in pairs(sounds) do
	sound.Add({
		name = v[1],
		channel = CHAN_WEAPON,
		volume = 1,
		level = 140,
		pitch = {95, 110},
		sound = v[2]
	})
end

sound.Add({
	name = "MA2_Weapon.MissileHit",
	channel = CHAN_WEAPON,
	volume = 1,
	level = 140,
	pitch = {95, 110},
	sound = {
		Sound("mechassault_2/weapons/explosion_generic_1.ogg"),
		Sound("mechassault_2/weapons/explosion_generic_2.ogg"),
		Sound("mechassault_2/weapons/explosion_generic_3.ogg"),
		Sound("mechassault_2/weapons/explosion_generic_4.ogg")
	}
})
