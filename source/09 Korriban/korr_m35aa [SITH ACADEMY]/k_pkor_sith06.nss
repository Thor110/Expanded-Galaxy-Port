int StartingConditional() {
	int nGlobal = GetGlobalNumber("KOR_RENEGADE_DEAL");
	if (((nGlobal > 1) && (d100(1) < Random(25)))) {
		return 1;
	}
	return 0;
}

