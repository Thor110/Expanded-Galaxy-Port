int StartingConditional() {
	int int1 = ((GetGlobalNumber("KOR_REBEL_SITH") == 1) && ((!GetGlobalNumber("KOR_RENEGADE_DEAL")) >= 1));
	return int1;
}

