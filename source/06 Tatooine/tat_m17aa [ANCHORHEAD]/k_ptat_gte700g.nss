int StartingConditional() {
	object oPC = GetFirstPC();
	if ((GetGold(oPC) >= 700)) {
		return 1;
	}
	else {
		return 0;
	}
}

