int StartingConditional() {
	int int1 = ((GetGlobalNumber("DAN_PLANET_PLOT") > 1) && (GetGlobalBoolean("DAN_STARMAP_DONE") == 1));
	return int1;
}

