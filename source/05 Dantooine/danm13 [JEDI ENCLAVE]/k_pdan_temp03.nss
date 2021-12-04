int StartingConditional() {
	int int1 = (GetGlobalBoolean("DAN_TEMP2") == 0);
	if (int1) {
		SetGlobalBoolean("DAN_TEMP2", 1);
	}
	return int1;
}

