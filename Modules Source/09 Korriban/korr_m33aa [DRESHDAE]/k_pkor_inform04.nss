int StartingConditional() {
	int nGlobal = GetGlobalNumber("MAN_PLANET_PLOT");
	if (((nGlobal == 4) && (d100(1) < Random(11)))) {
		return 1;
	}
	return 0;
}

