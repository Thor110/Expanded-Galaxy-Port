int StartingConditional() {
	object oPC = GetFirstPC();
	if ((GetGold(oPC) >= 2500)) {
		return 1;
	}
	else {
		return 0;
	}
}

