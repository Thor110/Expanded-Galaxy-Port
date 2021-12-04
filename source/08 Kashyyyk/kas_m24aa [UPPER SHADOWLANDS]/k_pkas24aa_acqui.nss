void main() {
	object oPC = GetFirstPC();
	object object3 = GetModuleItemAcquired();
	if (((GetTag(object3) == "kas24_droidhead") && GetIsObjectValid(GetItemPossessedBy(oPC, "kas24_droidhead")))) {
		if ((GetJournalEntry("kas22_EliMatton") > 20)) {
			AddJournalQuestEntry("kas22_EliMatton", 37, 0);
		}
		else {
			AddJournalQuestEntry("kas22_EliMatton", 34, 0);
		}
	}
	if (((GetTag(object3) == "kas24_bowcasbolt") && GetIsObjectValid(GetItemPossessedBy(oPC, "kas24_bowcasbolt")))) {
		if (((GetJournalEntry("kas23_mainwookplot") == 130) || (GetJournalEntry("kas23_mainwookplot") == 140))) {
			AddJournalQuestEntry("kas23_Rorworr", 80, 0);
		}
		else {
			if ((GetJournalEntry("kas23_Rorworr") > 5)) {
				AddJournalQuestEntry("kas23_Rorworr", 20, 0);
			}
			else {
				AddJournalQuestEntry("kas23_Rorworr", 30, 0);
			}
		}
	}
}

