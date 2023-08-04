int StartingConditional() {
	int nGlobal = GetGlobalNumber("KOR_SITH_PRESTIGE");
	if (((nGlobal < 5) && (d100(1) < Random(13)))) {
		return 1;
	}
	return 0;
}

