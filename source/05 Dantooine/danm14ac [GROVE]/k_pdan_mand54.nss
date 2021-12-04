void main() {
	int int1 = GetUserDefinedEventNumber();
	switch (int1) {
		case 1007:
			{
				int nGlobal = GetGlobalNumber("DAN_MAND_STATE");
				SetGlobalNumber("DAN_MAND_STATE", (nGlobal + 1));
				AddJournalQuestEntry("dan_raiders", 35, 0);
				DestroyObject(GetItemPossessedBy(GetPCSpeaker(), "g_mandat1"), 0.0, 0, 0.0);
				DestroyObject(GetItemPossessedBy(GetPCSpeaker(), "g_mandat2"), 0.0, 0, 0.0);
				DestroyObject(GetItemPossessedBy(GetPCSpeaker(), "g_mandat3"), 0.0, 0, 0.0);
			}
			break;
	}
}

