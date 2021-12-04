int StartingConditional() {
	int int1 = ((GetGlobalNumber("KOR_THRESHOLD") > 9) || (GetGlobalBoolean("KOR_TORTURE_DRUG") == 1));
	return int1;
}

