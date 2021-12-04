int StartingConditional() {
	int int1 = (GetGlobalBoolean("YAV_SUVAMS") == 0);
	if (int1) {
		SetGlobalBoolean("YAV_SUVAMS", 1);
	}
	return int1;
}

