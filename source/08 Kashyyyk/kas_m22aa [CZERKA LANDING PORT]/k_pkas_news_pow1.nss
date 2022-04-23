int StartingConditional() {
	SetGlobalNumber("tat_NewsBlocks", 0);
	if ((GetGlobalNumber("MAN_PLANET_PLOT") == 4)) {
		SetGlobalNumber("tat_NewsBlocks", (GetGlobalNumber("tat_NewsBlocks") + 1));
	}
	if ((GetGlobalNumber("KOR_FINAL_TEST") > 3)) {
		SetGlobalNumber("tat_NewsBlocks", (GetGlobalNumber("tat_NewsBlocks") + 1));
	}
	if ((GetGlobalNumber("man_ManaanRaceState") == 3)) {
		SetGlobalNumber("tat_NewsBlocks", (GetGlobalNumber("tat_NewsBlocks") + 1));
	}
	if ((GetGlobalBoolean("kas_ChuundarDead") == 1)) {
		SetGlobalNumber("tat_NewsBlocks", (GetGlobalNumber("tat_NewsBlocks") + 1));
	}
	if ((GetGlobalNumber("KOR_FINAL_TEST") > 3)) {
		int int10 = 4;
		int int11 = (GetGlobalNumber("tat_NewsBlocks") + 1);
		int nGlobal = GetGlobalNumber("tat_LinesChecked");
		int int15 = ((int10 * int11) - nGlobal);
		if ((Random(int15) == 0)) {
			SetGlobalNumber("tat_LinesChecked", 0);
			return 1;
		}
		else {
			SetGlobalNumber("tat_LinesChecked", (nGlobal + 1));
			return 0;
		}
	}
	return 0;
}

