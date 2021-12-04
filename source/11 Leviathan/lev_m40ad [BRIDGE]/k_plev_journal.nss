void main() {
	AddJournalQuestEntry("k_swg_carthtalk", 3, 1);
	if ((GetGender(GetFirstPC()) == 0)) {
		AddJournalQuestEntry("k_swg_carthtalk", 99, 0);
	}
}

