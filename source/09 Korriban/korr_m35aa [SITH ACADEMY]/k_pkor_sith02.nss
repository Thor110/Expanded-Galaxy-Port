int StartingConditional() {
	int nGlobal = GetGlobalNumber("KOR_RENEGADE_DEAL");
	if (((nGlobal < 3) && (d100(1) < Random(25)))) {
		return 1;
	}
	return 0;
}

