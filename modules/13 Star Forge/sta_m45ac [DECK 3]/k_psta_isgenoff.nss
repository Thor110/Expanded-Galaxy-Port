int StartingConditional() {
	int int1 = ((GetGlobalBoolean("STA_GEN_OFF") != 1) && (GetGlobalBoolean("STA_GEN_DESTROYED") != 1));
	return int1;
}

