int StartingConditional() {
	int nGlobal = GetGlobalNumber("K_CAPTURED_LEV");
	if ((nGlobal == 5)) {
		SetGlobalNumber("K_CURRENT_PLANET", 40);
		return 1;
	}
	return 0;
}

