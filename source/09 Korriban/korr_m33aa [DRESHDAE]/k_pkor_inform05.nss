int StartingConditional() {
	int int1 = GetGlobalBoolean("kas_ChuundarDead");
	if (((int1 == 1) && (d100(1) < Random(11)))) {
		return 1;
	}
	return 0;
}

