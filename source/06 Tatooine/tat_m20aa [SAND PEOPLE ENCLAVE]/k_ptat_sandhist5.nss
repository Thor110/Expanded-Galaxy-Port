int StartingConditional() {
	if ((GetGlobalNumber("tat_SandHistory") > 4)) {
		return 1;
	}
	else {
		return 0;
	}
}

