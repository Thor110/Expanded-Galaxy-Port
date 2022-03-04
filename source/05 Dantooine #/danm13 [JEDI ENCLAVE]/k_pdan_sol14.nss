void main() {
	SetGlobalBoolean("G_Paz_JustPlayed", 0);
	if ((GetLastPazaakResult() == 1)) {
		AddJournalQuestEntry("k_pazaak", 99, 0);
	}
}

