void main() {
	if ((GetJournalEntry("kas22_EliMatton") > 0)) {
		AddJournalQuestEntry("kas22_EliMatton", 30, 0);
	}
	else {
		AddJournalQuestEntry("kas22_EliMatton", 20, 0);
	}
}

