int StartingConditional() {
	int int1 = ((GetGlobalNumber("DAN_JEDI_PLOT") < 3) && (GetGlobalBoolean("DAN_JEDI_CODE") == 1));
	return int1;
}

