void main() {
	if ((GetJournalEntry("tat17ae_signingnico") == 50)) {
		AddJournalQuestEntry("tat17ae_signingnico", 55, 0);
	}
	else {
		AddJournalQuestEntry("tat17ae_signingnico", 30, 0);
	}
}

