int StartingConditional() {
	object oPC = GetFirstPC();
	return (((GetLevelByClass(2, oPC) > 0) && (GetGender(oPC) == 0)) || ((GetLevelByClass(1, oPC) > 0) && (GetGender(oPC) == 1)));
}

