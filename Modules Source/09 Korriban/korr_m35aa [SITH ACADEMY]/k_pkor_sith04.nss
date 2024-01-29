int StartingConditional() {
	int nGlobal = GetGlobalNumber("KOR_ROGUE_DROID");
	if (((nGlobal == 0) && (d100(1) < Random(25)))) {
		return 1;
	}
	return 0;
}

