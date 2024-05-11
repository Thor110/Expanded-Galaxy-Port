int StartingConditional() {
	int nGlobal = GetGlobalNumber("EBO_GIZKA_PLOT");
	int int3 = GetGlobalBoolean("k_at_Ebon_Hawk");
	if ((((nGlobal == 1) || (nGlobal == 2)) && (int3 == 1))) {
		return 1;
	}
	return 0;
}

