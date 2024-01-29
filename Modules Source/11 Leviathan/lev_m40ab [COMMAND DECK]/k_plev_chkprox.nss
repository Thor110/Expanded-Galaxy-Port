int StartingConditional() {
	if (((GetDistanceBetween(OBJECT_SELF, GetPartyMemberByIndex(1)) > 15.0) || (GetDistanceBetween(OBJECT_SELF, GetPartyMemberByIndex(2)) > 15.0))) {
		return 1;
	}
	return 0;
}

