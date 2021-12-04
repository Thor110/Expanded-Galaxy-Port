void main() {
	object oPC = GetFirstPC();
	object object3 = GetModuleItemAcquired();
	if (((GetTag(object3) == "kas25_kinrathbod") && GetIsObjectValid(GetItemPossessedBy(oPC, "kas25_kinrathbod")))) {
		if ((GetJournalEntry("kas23_mainwookplot") == 75)) {
			AddJournalQuestEntry("kas23_mainwookplot", 80, 0);
		}
	}
	if (((GetTag(object3) == "kas25_swordblade") && GetIsObjectValid(GetItemPossessedBy(oPC, "kas25_swordblade")))) {
		if ((GetJournalEntry("kas23_mainwookplot") < 85)) {
			AddJournalQuestEntry("kas23_mainwookplot", 92, 0);
		}
		else {
			AddJournalQuestEntry("kas23_mainwookplot", 90, 0);
		}
	}
	if (((GetTag(object3) == "kas25_note") && GetIsObjectValid(GetItemPossessedBy(oPC, "kas25_note")))) {
		AddJournalQuestEntry("kas25_mandalorians", 10, 0);
	}
	if (((GetTag(object3) == "kas25_datapad1") && GetIsObjectValid(GetItemPossessedBy(oPC, "kas25_datapad1")))) {
		AddJournalQuestEntry("kas25_mandalorians", 30, 0);
	}
	if (((GetTag(object3) == "kas25_datapad2") && GetIsObjectValid(GetItemPossessedBy(oPC, "kas25_datapad2")))) {
		AddJournalQuestEntry("kas25_mandalorians", 40, 0);
	}
	if (((GetTag(object3) == "kas25_mandhelmet") && GetIsObjectValid(GetItemPossessedBy(oPC, "kas25_mandhelmet")))) {
		if (((GetIsObjectValid(GetObjectByTag("kas25_hurt_01", 0)) == 1) && (GetGlobalBoolean("KAS_HURT_PLOT") == 1))) {
			AddJournalQuestEntry("kas25_mandalorians", 60, 0);
		}
		else {
			AddJournalQuestEntry("kas25_mandalorians", 50, 0);
		}
	}
}

