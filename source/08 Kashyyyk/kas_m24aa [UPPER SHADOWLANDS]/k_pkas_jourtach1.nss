void main() {
	if ((GetJournalEntry("kas24_removepoachers") == 0)) {
		AddJournalQuestEntry("kas24_tachpoaching", 10, 0);
	}
	if ((GetJournalEntry("kas24_removepoachers") > 0)) {
		AddJournalQuestEntry("kas24_tachpoaching", 20, 0);
	}
}

