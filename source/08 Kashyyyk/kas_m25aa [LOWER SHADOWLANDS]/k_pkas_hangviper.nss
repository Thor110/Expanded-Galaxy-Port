void main() {
	object oPC = GetFirstPC();
	object object3 = GetItemPossessedBy(oPC, "kas25_kinrathbod");
	object oKas25_ritualmark = GetObjectByTag("kas25_ritualmark", 0);
	object oKas25_ritualvine = GetObjectByTag("kas25_ritualvine", 0);
	object oKas25_vinespawn = GetWaypointByTag("kas25_vinespawn");
	object oKas25_wp_wraid = GetWaypointByTag("kas25_wp_wraid");
	location location1 = GetLocation(oKas25_vinespawn);
	location location3 = GetLocation(oKas25_wp_wraid);
	if ((GetJournalEntry("kas23_mainwookplot") < 60)) {
		AddJournalQuestEntry("kas23_mainwookplot", 55, 0);
	}
	else {
		AddJournalQuestEntry("kas23_mainwookplot", 85, 0);
	}
	DestroyObject(object3, 0.0, 0, 0.0);
	DestroyObject(oKas25_ritualvine, 0.0, 0, 0.0);
	CreateObject(64, "kas25_vipervine", location1, 0);
	CreateObject(1, "kas25_wraid", location3, 0);
}

