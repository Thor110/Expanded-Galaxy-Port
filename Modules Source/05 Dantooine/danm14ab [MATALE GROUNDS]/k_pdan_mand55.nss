void main() {
	int int1 = GetUserDefinedEventNumber();
	switch (int1) {
		case 100:
			ActionWait(3.0);
			ActionStartConversation(GetFirstPC(), "dan14ab_cut01", 0, 0, 1, "", "", "", "", "", "");
			break;
		case 1007:
			{
				int nGlobal = GetGlobalNumber("DAN_MAND_STATE");
				if (((nGlobal > 1) && (nGlobal < 5))) {
					CreateItemOnObject(("g_mandat" + IntToString((nGlobal - 1))), OBJECT_SELF, 1);
				}
				SetGlobalNumber("DAN_MAND_STATE", (nGlobal + 1));
				AddJournalQuestEntry("dan_raiders", 30, 0);
			}
			break;
	}
}

