int StartingConditional() {
	if ((GetGlobalNumber("tat_SandHistory") > 3)) {
		return 1;
	}
	else {
		return 0;
	}
}

