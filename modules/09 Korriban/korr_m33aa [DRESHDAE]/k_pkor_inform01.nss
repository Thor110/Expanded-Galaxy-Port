int StartingConditional() {
	int nGlobal = GetGlobalNumber("KOR_FINAL_TEST");
	if ((((nGlobal == 4) || (nGlobal == 7)) && (d100(1) < Random(25)))) {
		return 1;
	}
	return 0;
}

