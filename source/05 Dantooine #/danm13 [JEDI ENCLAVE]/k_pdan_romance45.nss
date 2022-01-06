int StartingConditional() {
	int int1 = ((GetGlobalNumber("DAN_ROMANCE_PLOT") == 7) && (GetGlobalBoolean("DAN_ZHARR_DONE") == 0));
	if (int1) {
		SetGlobalBoolean("DAN_ZHARR_DONE", 1);
	}
	return int1;
}

