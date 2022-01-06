int StartingConditional() {
	object oSpeaker = GetPCSpeaker();
	object object3 = GetItemPossessedBy(oSpeaker, "G_w_Vbroswrd05");
	if ((GetIsObjectValid(object3) == 1)) {
		return 1;
	}
	else {
		return 0;
	}
}

