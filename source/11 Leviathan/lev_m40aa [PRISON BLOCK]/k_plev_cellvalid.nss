int StartingConditional() {
	int int1 = ((GetGlobalNumber("lev_elevator") == 1) && (GetGlobalNumber("LEV_LEVEL") != 1));
	return int1;
}

