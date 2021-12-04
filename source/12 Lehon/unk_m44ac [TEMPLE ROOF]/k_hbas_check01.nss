int StartingConditional() {
	int int1 = ((GetGlobalNumber("G_FinalChoice") == 1) && ((GetGlobalBoolean("UNK_DISRUPT_OFF") == 0) || (GetGlobalBoolean("UNK_SHIELD_OFF") == 0)));
	return int1;
}

