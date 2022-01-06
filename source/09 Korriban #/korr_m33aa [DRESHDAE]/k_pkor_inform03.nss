int StartingConditional() {
	int nGlobal = GetGlobalNumber("man_ManaanRaceState");
	if (((nGlobal == 3) && (d100(1) < Random(11)))) {
		return 1;
	}
	return 0;
}

