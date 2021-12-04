int StartingConditional() {
	int int1 = ((GetGlobalBoolean("DAN_HANDONF_DONE") == 0) || (GetGlobalBoolean("DAN_RICKARDF_DONE") == 0));
	return int1;
}

