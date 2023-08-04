int StartingConditional() {
	int int1 = GetSkillRank(5, GetFirstPC());
	int int3 = GetAbilityModifier(3, GetFirstPC());
	int nGlobal = GetGlobalNumber("KOR_ASSASS_SFG");
	int int7 = (7 + nGlobal);
	int int8 = d20(1);
	if ((((int8 + int1) + int3) >= int7)) {
		SetGlobalNumber("KOR_ASSASS_SFG", (nGlobal + 1));
		return 1;
	}
	return 0;
}

