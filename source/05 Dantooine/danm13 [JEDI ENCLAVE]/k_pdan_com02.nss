int StartingConditional() {
	int int1 = ((GetGlobalBoolean("DAN_KARALC_DONE") == 0) && (GetGlobalBoolean("Kas_ChuunderDead") == 1));
	if (int1) {
		SetGlobalBoolean("DAN_KARALC_DONE", 1);
	}
	return int1;
}

