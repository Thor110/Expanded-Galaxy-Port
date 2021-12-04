int StartingConditional() {
	if ((GetGlobalNumber("tat_SandHistory") > 1)) {
		return 1;
	}
	else {
		return 0;
	}
}

