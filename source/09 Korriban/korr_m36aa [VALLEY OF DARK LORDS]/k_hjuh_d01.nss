int StartingConditional() {
	int nGlobal = GetGlobalNumber("KOR_WHO_DAK");
	if ((nGlobal == 2)) {
		return 1;
	}
	return 0;
}

