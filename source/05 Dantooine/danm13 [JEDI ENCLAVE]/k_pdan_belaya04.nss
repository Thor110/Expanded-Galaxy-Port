int StartingConditional() {
	int int1 = ((GetGlobalNumber("DAN_ROMANCE_PLOT") == 4) && (GetGlobalBoolean("DAN_BELAYAS_DONE") == 0));
	if (int1) {
		SetGlobalBoolean("DAN_BELAYAS_DONE", 1);
	}
	return int1;
}

