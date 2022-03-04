int StartingConditional() {
	int int1 = ((GetGlobalNumber("Unk_redvill") == 1) && (GetGlobalBoolean("UNK_GUARD") == 0));
	if (int1) {
		SetGlobalBoolean("UNK_GUARD", 1);
	}
	return int1;
}

