int StartingConditional() {
	int int1 = ((GetGlobalBoolean("DAN_RUINS_GONE") == 1) && (GetGlobalBoolean("DAN_STARMAP_DONE") == 0));
	return int1;
}

