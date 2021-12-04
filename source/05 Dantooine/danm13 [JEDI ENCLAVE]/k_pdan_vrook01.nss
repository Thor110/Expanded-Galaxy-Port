int StartingConditional() {
	int int1 = ((GetGlobalBoolean("DAN_NEMOB_DONE") == 1) && (GetGlobalBoolean("DAN_VROOKB_DONE") == 0));
	if (int1) {
		SetGlobalBoolean("DAN_VROOKB_DONE", 1);
	}
	return int1;
}

