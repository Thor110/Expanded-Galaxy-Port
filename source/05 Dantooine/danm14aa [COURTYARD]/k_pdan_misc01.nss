int StartingConditional() {
	int int1 = (GetGlobalBoolean("DAN_GARF_DONE") == 0);
	if (int1) {
		SetGlobalBoolean("DAN_GARF_DONE", 1);
	}
	return int1;
}

