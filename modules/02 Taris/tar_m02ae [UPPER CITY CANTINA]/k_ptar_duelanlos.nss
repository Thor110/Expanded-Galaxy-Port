int StartingConditional() {
	int int1 = ((GetGlobalBoolean("Tar_DuelOver") == 1) && (GetGlobalBoolean("Tar_DuelLost") == 1));
	return int1;
}

