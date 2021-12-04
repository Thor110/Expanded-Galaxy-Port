int StartingConditional() {
	if ((GetGlobalNumber("tat_SandHistory") > 2)) {
		return 1;
	}
	else {
		return 0;
	}
}

