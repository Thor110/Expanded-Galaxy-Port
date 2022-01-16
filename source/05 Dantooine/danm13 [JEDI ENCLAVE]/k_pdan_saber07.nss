int StartingConditional() {
	int int1 = GetGlobalBoolean("DAN_SABER_DONE");
	if (int1) {
		SetGlobalBoolean("DAN_SABER_DONE", 0);
	}
	return int1;
}

