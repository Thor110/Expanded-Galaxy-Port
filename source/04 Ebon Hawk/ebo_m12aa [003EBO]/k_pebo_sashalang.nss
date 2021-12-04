int StartingConditional() {
	int int1 = GetGlobalBoolean("EBO_SASHA_NAME");
	int int3 = GetGlobalBoolean("EBO_SASHA_LANG");
	if (((int1 == 1) && (int3 == 0))) {
		return 1;
	}
	return 0;
}

