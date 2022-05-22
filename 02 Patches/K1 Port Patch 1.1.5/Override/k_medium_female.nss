int StartingConditional() {
	object oPC = GetFirstPC();
	return ((GetLevelByClass(0, oPC) > 0) && (GetGender(oPC) == 1));
}

