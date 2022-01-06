int StartingConditional() {
	int int1 = (((GetGlobalNumber("DAN_RANDOM") == 2) && (GetGlobalBoolean("DAN_JUHANI_PLOT") > 1)) && (GetGlobalNumber("DAN_ROMANCE_PLOT") < 3));
	if (int1) {
		SetGlobalNumber("DAN_RANDOM", d8(1));
	}
	return int1;
}

