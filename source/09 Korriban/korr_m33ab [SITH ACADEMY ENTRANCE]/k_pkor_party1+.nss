int StartingConditional() {
	object oNPC = GetPartyMemberByIndex(1);
	object object3 = GetPartyMemberByIndex(2);
	if ((GetIsObjectValid(oNPC) || GetIsObjectValid(object3))) {
		return 1;
	}
	return 0;
}

