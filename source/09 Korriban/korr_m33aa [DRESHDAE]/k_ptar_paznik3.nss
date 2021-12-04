int StartingConditional() {
	int int1 = ((GetGlobalBoolean("G_Paz_JustPlayed") == 1) && (GetGlobalNumber("KOR_PAZTOLL") > 10));
	return int1;
}

