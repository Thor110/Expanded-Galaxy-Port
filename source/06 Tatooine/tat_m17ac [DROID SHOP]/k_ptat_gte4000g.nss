int StartingConditional() {
	object oPC = GetFirstPC();
	if ((GetGold(oPC) >= 4000)) {
		return 1;
	}
	else {
		return 0;
	}
}

