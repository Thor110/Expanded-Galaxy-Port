int StartingConditional() {
	if ((GetGlobalNumber("tat_SandHistory") > 5)) {
		return 1;
	}
	else {
		return 0;
	}
}

