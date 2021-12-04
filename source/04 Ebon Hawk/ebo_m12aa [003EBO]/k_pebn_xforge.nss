int StartingConditional() {
	int nGlobal = GetGlobalNumber("K_KOTOR_MASTER");
	if ((nGlobal == 50)) {
		return 1;
	}
	return 0;
}

