int StartingConditional() {
	int int1 = (GetGlobalNumber("YAV_SUVAM") == 4);
	if (int1) {
		SetGlobalNumber("YAV_SUVAM", 5);
	}
	return int1;
}

