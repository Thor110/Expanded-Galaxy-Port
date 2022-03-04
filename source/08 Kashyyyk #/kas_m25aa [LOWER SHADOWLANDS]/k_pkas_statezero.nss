int StartingConditional() {
	if ((GetGlobalNumber("kas_freyyrstate") == 0)) {
		return 1;
	}
	else {
		return 0;
	}
}

