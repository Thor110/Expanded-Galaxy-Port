int StartingConditional() {
	if ((GetGlobalBoolean("tat_StarmapFound") == 1)) {
		return 0;
	}
	else {
		return 1;
	}
}

