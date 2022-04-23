int StartingConditional() {
	int int1 = (GetGlobalNumber("EBO_LURARKA") > 0);
	int nGlobal = GetGlobalNumber("K_KOTOR_MASTER");
	if (((int1 > 0) && (nGlobal < 20))) {
		return 1;
	}
	return 0;
}

