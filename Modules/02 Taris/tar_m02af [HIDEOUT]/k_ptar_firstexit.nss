void main() {
  AddJournalQuestEntry("k_rapidtransit", 1, 0);
  CreateItemOnObject("taris_armband",GetFirstPC(),1,0);
	//DestroyObject(GetObjectByTag("carth", 0), 0.0, 1, 0.0);
	DelayCommand(0.5, ShowPartySelectionGUI("k_ptar_exitapt", 2, 0xFFFFFFFF));
}

