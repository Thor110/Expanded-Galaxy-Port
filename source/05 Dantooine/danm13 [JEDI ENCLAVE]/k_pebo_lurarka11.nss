int StartingConditional() {
	int int1 = GetGlobalBoolean("EBO_SASHA_LANG");
	int int3 = GetGlobalBoolean("EBO_SASHA_MANLOREY");
	if (((int1 == 0) && (int3 == 1))) {
		return 1;
	}
	return 0;
}

