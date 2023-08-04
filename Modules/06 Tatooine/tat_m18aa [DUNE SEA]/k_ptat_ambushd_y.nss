int StartingConditional() {
	if ((GetGlobalNumber("tat_AmbushDead") >= 12)) {
		return 1;
	}
	else {
		return 0;
	}
}

