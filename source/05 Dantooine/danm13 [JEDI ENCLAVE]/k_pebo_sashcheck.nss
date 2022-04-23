int StartingConditional() {
	int nInt = GetAbilityScore(GetFirstPC(), 3);
	int int3 = d20(1);
	if ((int3 <= (nInt + 3))) {
		return 1;
	}
	return 0;
}

