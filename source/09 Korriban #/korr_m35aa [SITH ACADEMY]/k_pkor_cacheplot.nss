int StartingConditional() {
	int int1 = ((GetGlobalNumber("KOR_TORT_END") != 4) && ((GetGlobalBoolean("KOR_TORTURE_TELL") == 1) || (GetGlobalBoolean("KOR_TORTURE_DRUG") == 1)));
	return int1;
}

