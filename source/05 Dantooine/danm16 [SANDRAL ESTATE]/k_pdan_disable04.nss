int StartingConditional() {
	if ((GetGlobalBoolean("DAN_SSENT") == 1)) {
		return 0;
	}
	return 1;
}

