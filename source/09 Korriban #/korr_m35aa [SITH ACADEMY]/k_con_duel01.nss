int StartingConditional() {
	int nGlobal = GetGlobalNumber("KOR_FINAL_TEST");
	if (((nGlobal == 4) || (nGlobal == 5))) {
		return 0;
	}
	return 1;
}

