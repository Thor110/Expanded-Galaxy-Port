int StartingConditional() {
	if ((GetGlobalBoolean("DAN_NSENT") == 1)) {
		return 0;
	}
	return 1;
}

