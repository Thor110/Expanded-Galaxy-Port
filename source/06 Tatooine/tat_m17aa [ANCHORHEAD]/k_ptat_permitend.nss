int StartingConditional() {
	object oSpeaker = GetPCSpeaker();
	object object3 = GetItemPossessedBy(oSpeaker, "tat17_huntpermit");
	if (((GetIsObjectValid(object3) == 1) && (GetGlobalBoolean("tat_TuskenDead") == 0))) {
		return 1;
	}
	else {
		return 0;
	}
}

