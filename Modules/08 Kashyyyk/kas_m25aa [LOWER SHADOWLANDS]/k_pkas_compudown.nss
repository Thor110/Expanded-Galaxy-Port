int StartingConditional() {
	if ((GetGlobalBoolean("kas_ComputerDown") == 1)) {
		return 1;
	}
	else {
		return 0;
	}
}

