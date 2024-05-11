int StartingConditional() {
	int int1 = GetGlobalBoolean("EBO_SASHA_YUM");
	int int3 = GetGlobalBoolean("EBO_SASHA_SUNHIGH");
	int int5 = (Random(5) + 1);
	if (((int1 == 0) || (int3 == 0))) {
		return 1;
	}
	return 0;
}

