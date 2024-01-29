int StartingConditional() {
	int int1 = ((GetGlobalBoolean("DAN_KARALS_DONE") == 0) && (GetGlobalNumber("man_ManaanRaceState") == 3));
	if (int1) {
		SetGlobalBoolean("DAN_KARALS_DONE", 1);
	}
	return int1;
}

