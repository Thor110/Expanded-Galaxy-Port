int StartingConditional() {
	int int1 = ((GetGlobalBoolean("DAN_VANDARB_DONE") == 0) && (GetGlobalBoolean("KOR_BELAYA") == 1));
	if (int1) {
		SetGlobalBoolean("DAN_VANDARB_DONE", 1);
	}
	return int1;
}

