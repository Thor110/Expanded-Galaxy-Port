int StartingConditional() {
	int int1 = ((GetGlobalNumber("DAN_BOLOOK_STATE") == 1) && ((GetGlobalBoolean("Dan_RickRelate") == 0) || (GetGlobalBoolean("Dan_HandRelate") == 0)));
	return int1;
}

