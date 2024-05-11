int StartingConditional() {
	int int1 = GetGlobalBoolean("EBO_PUZZLE3");
	int nGlobal = GetGlobalNumber("EBO_PC_RIDDLE");
	if (((int1 == 0) && (nGlobal != 0))) {
		return 1;
	}
	return 0;
}

