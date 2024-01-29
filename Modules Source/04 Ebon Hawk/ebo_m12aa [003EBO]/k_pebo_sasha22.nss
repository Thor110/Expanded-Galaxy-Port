int StartingConditional() {
	int int1 = GetGlobalBoolean("EBO_SASHA_STORY");
	int int3 = (Random(5) + 1);
	if ((int1 == 0)) {
		if ((int3 > 1)) {
			return 1;
		}
	}
	return 0;
}

