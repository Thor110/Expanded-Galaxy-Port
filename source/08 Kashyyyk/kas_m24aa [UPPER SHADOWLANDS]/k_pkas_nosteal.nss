int StartingConditional() {
	if ((GetGlobalBoolean("kas_CzerkaSteal") == 0)) {
		return 1;
	}
	else {
		return 0;
	}
}

