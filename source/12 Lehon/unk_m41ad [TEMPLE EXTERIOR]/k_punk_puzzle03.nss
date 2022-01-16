int StartingConditional() {
	int int1 = ((GetGlobalNumber("UNK_PUZD_FINAL") == 3) && (GetGlobalNumber("UNK_PUZE_FINAL") == 3));
	if (int1) {
		SetGlobalNumber("UNK_PUZF_FINAL", 1);
	}
	return int1;
}

