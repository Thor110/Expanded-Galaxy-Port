int StartingConditional() {
	int int1 = GetGlobalBoolean("EBO_SASHA_SEENOW");
	int int3 = GetGlobalBoolean("EBO_SASHA_STARBIG");
	int int5 = GetGlobalBoolean("EBO_SASHA_ALLSAFE");
	if ((((int1 == 1) && (int3 == 1)) && (int5 == 1))) {
		return 1;
	}
	return 0;
}

