int StartingConditional() {
	int int1 = ((GetGlobalBoolean("DAN_CRATISK_DONE") == 0) && (GetGlobalNumber("KOR_FINAL_TEST") == 1));
	if (int1) {
		SetGlobalBoolean("DAN_CRATISK_DONE", 1);
	}
	return int1;
}

