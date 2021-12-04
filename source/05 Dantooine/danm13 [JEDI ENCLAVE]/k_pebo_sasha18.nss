int StartingConditional() {
	int int1 = GetGlobalBoolean("EBO_SASHA_SEENOW");
	int int3 = GetGlobalBoolean("EBO_SASHA_STARBIG");
	int int5 = GetGlobalBoolean("EBO_SASHA_ALLSAFE");
	int int7 = (Random(5) + 1);
	if ((((int1 == 0) || (int3 == 0)) || (int5 == 0))) {
		return 1;
	}
	return 0;
}

