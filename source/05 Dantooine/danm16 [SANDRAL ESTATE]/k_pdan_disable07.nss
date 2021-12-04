int StartingConditional() {
	if (((GetGlobalBoolean("DAN_CSENT") == 1) || (GetGlobalBoolean("DAN_CS") == 1))) {
		return 0;
	}
	return 1;
}

