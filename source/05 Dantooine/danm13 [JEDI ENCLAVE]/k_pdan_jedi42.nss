int StartingConditional() {
	int int1 = ((GetGlobalNumber("DAN_JEDI_PLOT") == 3) && (GetGlobalBoolean("DAN_ZHARL_DONE") == 0));
	if (int1) {
		SetGlobalBoolean("DAN_ZHARL_DONE", 1);
	}
	return int1;
}

