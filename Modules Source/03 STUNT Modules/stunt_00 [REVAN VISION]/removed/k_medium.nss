int StartingConditional() {
	object oPC = GetFirstPC();
	return ((GetLevelByClass(1, oPC) > 0) && (GetGender(oPC) == 0));
}

