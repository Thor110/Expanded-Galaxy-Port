int StartingConditional() {
	object oSpeaker = GetPCSpeaker();
	object object3 = GetItemPossessedBy(oSpeaker, "tat18_dragonprl");
	object object5 = GetItemPossessedBy(oSpeaker, "tat18_wraidplate");
	object object7 = GetItemPossessedBy(oSpeaker, "tat17_wraidplate");
	if ((((GetIsObjectValid(object3) == 1) || (GetIsObjectValid(object7) == 1)) || (GetIsObjectValid(object5) == 1))) {
		return 1;
	}
	else {
		return 0;
	}
}

