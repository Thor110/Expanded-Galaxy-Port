int StartingConditional() {
	object oPC = GetFirstPC();
	return ((GetLevelByClass(2, oPC) > 0) && (GetGender(oPC) == 1));
}

