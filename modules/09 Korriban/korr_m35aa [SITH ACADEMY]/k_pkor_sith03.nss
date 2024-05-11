int StartingConditional() {
	int int1 = GetGlobalBoolean("KOR_JORAK_MEET");
	if (((int1 == 0) && (d100(1) < Random(25)))) {
		return 1;
	}
	return 0;
}

