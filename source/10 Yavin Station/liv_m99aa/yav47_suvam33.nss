int StartingConditional() {
	int int1 = ((GetGlobalNumber("YAV_SUVAM") >= 5) && (GetGlobalBoolean("YAV_SUVAMA") == 1));
	if (int1) {
		SetGlobalBoolean("YAV_SUVAMA", 0);
	}
	return int1;
}

