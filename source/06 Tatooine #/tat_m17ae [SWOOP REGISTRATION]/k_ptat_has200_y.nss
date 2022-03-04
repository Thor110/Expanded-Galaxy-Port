int StartingConditional() {
	object oPC = GetFirstPC();
	if ((GetGold(oPC) >= 200)) {
		return 1;
	}
	else {
		return 0;
	}
}

