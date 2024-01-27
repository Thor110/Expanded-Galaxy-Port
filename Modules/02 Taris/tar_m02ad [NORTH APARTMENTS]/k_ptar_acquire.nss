void main() {
	object oPC = GetFirstPC();
	object object3 = GetModuleItemAcquired();
	if ((((GetTag(object3) == "ptar_sitharmor") && (GetGlobalBoolean("Tar_Sith_XP") == 0)) && GetIsObjectValid(GetItemPossessedBy(oPC, "ptar_sitharmor")))) {
		GivePlotXP("tar_misc", 30);
		SetGlobalBoolean("Tar_Sith_XP", 1);
	}
}
