int StartingConditional() {
	int nGlobal = GetGlobalNumber("K_KOTOR_MASTER");
	if (((nGlobal > 10) && (nGlobal < 40))) {
		return 1;
	}
	return 0;
}

