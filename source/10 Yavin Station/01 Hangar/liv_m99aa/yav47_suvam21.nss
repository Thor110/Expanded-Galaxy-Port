int StartingConditional() {
	int int1;
	SetGlobalBoolean("YAV_SUVAMH", 1);
	ClearAllActions();
	int1 = ((GetGlobalBoolean("G_Paz_JustPlayed") == 1) && (GetGlobalNumber("YAV_SUVAM_NUM") >= 10));
	if (int1) {
		SetGlobalBoolean("G_Paz_JustPlayed", 0);
	}
	return int1;
}

