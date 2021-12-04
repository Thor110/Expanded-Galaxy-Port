int StartingConditional() {
	int int1 = GetGlobalBoolean("EBO_RIDDLE5");
	int nGlobal = GetGlobalNumber("EBO_PC_RIDDLE");
	if (((int1 == 0) && (nGlobal >= 3))) {
		return 1;
	}
	return 0;
}

