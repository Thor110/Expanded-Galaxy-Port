int StartingConditional() {
	int int1 = (((GetGlobalBoolean("Lev_MalBetray") == 1) && (GetGlobalBoolean("Lev_MalBetray_2") == 0)) && (GetGlobalNumber("Lev_MalTalk") != 4));
	return int1;
}

