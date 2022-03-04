int StartingConditional() {
	object oSpeaker = GetPCSpeaker();
	object object3 = GetItemPossessedBy(oSpeaker, "kas24_bowcasbolt");
	if (((GetIsObjectValid(object3) == 0) && (GetJournalEntry("kas23_rorworr") > 5))) {
		return 1;
	}
	else {
		return 0;
	}
}

