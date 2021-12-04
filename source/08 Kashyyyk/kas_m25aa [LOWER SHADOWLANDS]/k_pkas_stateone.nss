int StartingConditional() {
	if ((GetGlobalNumber("kas_freyyrstate") == 1)) {
		return 1;
	}
	else {
		return 0;
	}
}

