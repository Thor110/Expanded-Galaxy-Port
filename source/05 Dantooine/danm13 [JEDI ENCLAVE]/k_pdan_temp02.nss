int StartingConditional() {
	int int1 = GetGlobalBoolean("DAN_TEMP");
	if (int1) {
		SetGlobalBoolean("DAN_TEMP", 0);
	}
	return int1;
}

