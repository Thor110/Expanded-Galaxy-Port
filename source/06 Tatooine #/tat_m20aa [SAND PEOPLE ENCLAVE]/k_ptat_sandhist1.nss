int StartingConditional() {
	if ((GetGlobalNumber("tat_SandHistory") > 0)) {
		return 1;
	}
	else {
		return 0;
	}
}

