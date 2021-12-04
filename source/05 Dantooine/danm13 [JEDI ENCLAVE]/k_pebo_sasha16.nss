int StartingConditional() {
	int int1 = GetGlobalBoolean("EBO_SASHA_YUM");
	int int3 = GetGlobalBoolean("EBO_SASHA_SUNHIGH");
	if (((int1 == 1) && (int3 == 1))) {
		return 1;
	}
	return 0;
}

