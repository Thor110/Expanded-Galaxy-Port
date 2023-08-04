int StartingConditional() {
	int int1 = GetGlobalBoolean("EBO_SASHA_NAME");
	int nGlobal = GetGlobalNumber("EBO_SASHA_PLOT");
	if (((int1 == 0) && (nGlobal == 3))) {
		return 1;
	}
	return 0;
}

