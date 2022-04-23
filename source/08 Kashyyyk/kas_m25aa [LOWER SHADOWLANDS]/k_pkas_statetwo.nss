int StartingConditional() {
	if ((GetGlobalNumber("kas_freyyrstate") == 2)) {
		return 1;
	}
	else {
		return 0;
	}
}

