int StartingConditional() {
	int int1 = ((GetGlobalBoolean("DAN_KARALK_DONE") == 0) && (GetGlobalNumber("KOR_FINAL_TEST") > 3));
	if (int1) {
		SetGlobalBoolean("DAN_KARALK_DONE", 1);
	}
	return int1;
}

