int StartingConditional() {
	int nGlobal = GetGlobalNumber("K_KOTOR_MASTER");
	if ((nGlobal == 30)) {
		SetGlobalNumber("K_KOTOR_MASTER", 40);
		return 1;
	}
	return 0;
}

