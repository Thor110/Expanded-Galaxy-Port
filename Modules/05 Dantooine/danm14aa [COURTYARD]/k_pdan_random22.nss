int StartingConditional() {
	int int1 = (GetGlobalNumber("DAN_RANDOM") == 2);
	if (int1) {
		SetGlobalNumber("DAN_RANDOM", d8(1));
	}
	return int1;
}

