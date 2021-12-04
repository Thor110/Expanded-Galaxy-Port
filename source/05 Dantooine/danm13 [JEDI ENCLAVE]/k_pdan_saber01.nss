int StartingConditional() {
	int int1 = GetGlobalBoolean("DAN_DORAK_DONE");
	if (int1) {
		SetGlobalBoolean("DAN_DORAK_DONE", 0);
	}
	return int1;
}

