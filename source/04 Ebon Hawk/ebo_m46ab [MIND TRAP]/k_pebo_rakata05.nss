int StartingConditional() {
	int int1 = GetGlobalBoolean("EBO_PUZZLE4");
	int nGlobal = GetGlobalNumber("EBO_PC_RIDDLE");
	if (((int1 == 0) && (nGlobal >= 2))) {
		return 1;
	}
	return 0;
}

