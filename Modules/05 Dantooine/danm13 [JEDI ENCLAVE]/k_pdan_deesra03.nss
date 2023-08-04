int StartingConditional() {
	int int1 = (((GetGlobalBoolean("DAN_Deesra") == 0) && (GetGlobalNumber("DAN_JEDI_PLOT") >= 7)) && (GetGlobalBoolean("G_Lightside_Plot") == 0));
	if (int1) {
		SetGlobalBoolean("DAN_Deesra", 1);
	}
	return int1;
}

