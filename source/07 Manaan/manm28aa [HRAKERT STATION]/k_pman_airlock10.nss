int StartingConditional() {
	int int1 = (GetIsObjectValid(GetPartyMemberByIndex(1)) || GetIsObjectValid(GetPartyMemberByIndex(2)));
	return int1;
}

