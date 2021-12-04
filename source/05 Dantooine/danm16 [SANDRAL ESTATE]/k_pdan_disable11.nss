int StartingConditional() {
	if (((GetGlobalBoolean("DAN_RSENT") == 1) || (GetGlobalBoolean("DAN_RE") == 1))) {
		return 0;
	}
	return 1;
}

