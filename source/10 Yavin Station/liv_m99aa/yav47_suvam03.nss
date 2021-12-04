int StartingConditional() {
	int int1 = (GetGlobalNumber("YAV_SUVAM") == 1);
	if (int1) {
		SetGlobalNumber("YAV_SUVAM", 2);
		SetGlobalBoolean("YAV_SUVAMA", 0);
	}
	return int1;
}

