int StartingConditional() {
	int nGlobal = GetGlobalNumber("EBO_PC_RIDDLE");
	if ((nGlobal >= 4)) {
		return 1;
	}
	return 0;
}

