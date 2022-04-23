int StartingConditional() {
	int int1 = ((GetGlobalBoolean("DAN_VROOKBB_DONE") == 0) && (GetGlobalBoolean("KOR_BELAYA") == 1));
	if (int1) {
		SetGlobalBoolean("DAN_VROOKBB_DONE", 1);
	}
	return int1;
}

