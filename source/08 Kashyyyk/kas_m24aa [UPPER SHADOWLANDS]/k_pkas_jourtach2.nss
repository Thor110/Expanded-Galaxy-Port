void main() {
	if ((GetJournalEntry("kas24_removepoachers") == 0)) {
		AddJournalQuestEntry("kas24_tachpoaching", 30, 0);
	}
	if ((GetJournalEntry("kas24_removepoachers") > 0)) {
		AddJournalQuestEntry("kas24_tachpoaching", 40, 0);
	}
}

