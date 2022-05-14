int StartingConditional() {
	int int1 = ((GetGlobalBoolean("G_Paz_JustPlayed") == 1) && (GetLastPazaakResult() == 1));
	if (int1) {
		AddJournalQuestEntry("k_pazaak", 99, 0);
		SetGlobalBoolean("G_Paz_JustPlayed", 0);
		int nGlobal = GetGlobalNumber("YAV_SUVAM_NUM");
		SetGlobalNumber("YAV_SUVAM_NUM", (nGlobal + 1));
	}
	return int1;
}

