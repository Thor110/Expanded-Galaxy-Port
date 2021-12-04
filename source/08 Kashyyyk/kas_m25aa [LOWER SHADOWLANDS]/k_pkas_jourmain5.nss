void main() {
	if ((GetJournalEntry("kas23_mainwookplot") == 92)) {
		AddJournalQuestEntry("kas23_mainwookplot", 93, 0);
	}
	else {
		AddJournalQuestEntry("kas23_mainwookplot", 75, 0);
	}
}

