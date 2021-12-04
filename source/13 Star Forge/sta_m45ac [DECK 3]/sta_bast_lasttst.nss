int StartingConditional() {
	int int1;
	if ((GetGlobalBoolean("K_PSTA_BASTSAVE") == 1)) {
		return 1;
	}
	else {
		return 0;
	}
}

