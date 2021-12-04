void main() {
	if ((GetJournalEntry("tat17ag_sandbounty") == 10)) {
		AddJournalQuestEntry("tat17ag_sandbounty", 15, 0);
	}
	else {
		AddJournalQuestEntry("tat17ag_sandbounty", 7, 0);
	}
}

