int StartingConditional() {
	object oSpeaker = GetPCSpeaker();
	object object3 = GetItemPossessedBy(oSpeaker, "g_i_pazdeck");
	if ((GetIsObjectValid(object3) == 0)) {
		return 1;
	}
	else {
		return 0;
	}
}

