int StartingConditional() {
	int int1 = ((((GetGlobalNumber("DAN_RANDOM") == 3) && (GetGlobalBoolean("DAN_JUHANI_PLOT") > 1)) && (GetGlobalNumber("DAN_PLANET_PLOT") < 3)) && (GetGlobalBoolean("DAN_STARMAP_DONE") == 0));
	if (int1) {
		SetGlobalNumber("DAN_RANDOM", d8(1));
	}
	return int1;
}

