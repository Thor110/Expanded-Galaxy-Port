int StartingConditional() {
	int int1 = (((GetGlobalNumber("DAN_ROMANCE_PLOT") == 5) || (GetGlobalNumber("DAN_ROMANCE_PLOT") == 6)) && (GetGlobalBoolean("DAN_VANDARS_DONE") == 0));
	if (int1) {
		SetGlobalBoolean("DAN_VANDARS_DONE", 1);
	}
	return int1;
}

