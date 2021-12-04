int StartingConditional() {
	if (((GetGlobalBoolean("DAN_TSENT") == 1) || (GetGlobalBoolean("DAN_ST") == 1))) {
		return 0;
	}
	return 1;
}

