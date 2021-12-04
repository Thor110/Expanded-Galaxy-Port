int StartingConditional() {
	int nGlobal = GetGlobalNumber("K_CAPTURED_LEV");
	if (((nGlobal == 0) || (nGlobal == 10))) {
		return 1;
	}
	return 0;
}

