int StartingConditional() {
	if (GetIsObjectValid(GetPartyMemberByIndex(1))) {
		return 1;
	}
	else {
		return 0;
	}
}

