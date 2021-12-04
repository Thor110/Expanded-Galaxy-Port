int StartingConditional() {
	int int1 = ((GetGlobalBoolean("STA_GEN_FRIEND") != 1) && (GetGlobalBoolean("STA_GEN_DESTROYED") != 1));
	return int1;
}

