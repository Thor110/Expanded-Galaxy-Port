int StartingConditional() {
	int int1 = GetGlobalBoolean("MAN_HRAKERT_DONE");
	if (int1) {
		SetGlobalBoolean("MAN_HRAKERT_DONE", 0);
	}
	return int1;
}

