DEFINE_BASECLASS("ma2_mech")
AddCSLuaFile()

ENT.Base 					= "ma2_mech"

ENT.PrintName 				= "#mechassault.mech.wendigo"

if CLIENT then
	ENT.Category			= language.GetPhrase("mechassault.categories.heavy")
end

ENT.Spawnable 				= true

ENT.Radius 					= 160
ENT.Height 					= 510

ENT.Model 					= Model("models/mechassault_2/mechs/nova_cat.mdl")
ENT.Skin 					= 1

ENT.ViewOffset 				= Vector(-500, 0, 280)

ENT.MaxHealth 				= 3729

ENT.CoreAttachment 			= 6

ENT.WeaponLoadout = {
	{Type = "PPC", Level = 1, Attachments = {1}},
	{Type = "Autocannon", Level = 1, Attachments = {3, 4, 5}}
}

function ENT:GetAnimationSpeeds()
	return 260, 420
end

function ENT:GetSpeeds()
	return 300, 705
end
