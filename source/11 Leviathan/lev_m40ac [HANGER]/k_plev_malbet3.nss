int StartingConditional() {
	int int1 = ((GetGlobalBoolean("Lev_MalBetray") == 1) && (GetGlobalNumber("Lev_MalTalk") >= 3));
	return int1;
}

