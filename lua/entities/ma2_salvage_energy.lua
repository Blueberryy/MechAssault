DEFINE_BASECLASS("ma2_salvage")
AddCSLuaFile()

ENT.Base 					= "ma2_salvage"

ENT.PrintName 				= "Energy Upgrade"

ENT.Category 				= "MechAssault: Misc"
ENT.Spawnable 				= true

ENT.Model 					= Model("models/mechassault_2/salvage/energy.mdl")

if SERVER then
	function ENT:OnInteract(mech)
		return mech:UpgradeWeapon("Energy")
	end
end
