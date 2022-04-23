int StartingConditional() {
	object oPC = GetFirstPC();
	if ((GetGold(oPC) >= 400)) {
		return 1;
	}
	else {
		return 0;
	}
}

