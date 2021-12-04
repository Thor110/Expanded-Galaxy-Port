int StartingConditional() {
	if ((GetGlobalBoolean("kas_ZaalbarParty") == 1)) {
		return 1;
	}
	else {
		return 0;
	}
}

