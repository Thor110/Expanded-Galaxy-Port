int StartingConditional() {
	object oSpeaker = GetPCSpeaker();
	if ((GetIsObjectValid(GetItemPossessedBy(oSpeaker, "kas25_swordblade")) == 0)) {
		return 1;
	}
	else {
		return 0;
	}
}

