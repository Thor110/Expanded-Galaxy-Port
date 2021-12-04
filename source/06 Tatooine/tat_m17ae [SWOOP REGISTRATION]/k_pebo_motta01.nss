int StartingConditional() {
	int nGlobal = GetGlobalNumber("EBO_MYSTERY_BOX");
	if (((nGlobal >= 1) && (nGlobal <= 98))) {
		return 1;
	}
	return 0;
}

