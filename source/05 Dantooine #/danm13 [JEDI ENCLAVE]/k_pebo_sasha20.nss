int StartingConditional() {
	int int1 = GetGlobalBoolean("EBO_SASHA_BADS");
	int int3 = (Random(5) + 1);
	if ((int1 == 0)) {
		return 1;
	}
	return 0;
}

