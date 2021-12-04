int StartingConditional() {
	object oPC = GetFirstPC();
	if ((GetGold(oPC) >= 5000)) {
		return 1;
	}
	else {
		return 0;
	}
}

