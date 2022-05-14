int StartingConditional() {
	int int1 = (((GetGlobalNumber("YAV_SUVAM") == 3) && (GetGlobalNumber("K_STAR_MAP") < 50)) && (GetGlobalBoolean("YAV_SUVAMA") == 1));
	if (int1) {
		SetGlobalBoolean("YAV_SUVAMA", 0);
	}
	return int1;
}

