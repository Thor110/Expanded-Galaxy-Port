int StartingConditional() {
	int int1 = ((GetGlobalBoolean("DAN_VANDARR_DONE") == 1) && (GetGlobalBoolean("DAN_VANDAR_DONE") == 0));
	if (int1) {
		SetGlobalBoolean("DAN_VANDAR_DONE", 1);
	}
	return int1;
}

