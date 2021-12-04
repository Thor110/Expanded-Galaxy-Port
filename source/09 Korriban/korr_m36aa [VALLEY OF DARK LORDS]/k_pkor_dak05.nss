int StartingConditional() {
	int nGlobal = GetGlobalNumber("KOR_WHO_DAK");
	if (((nGlobal < 2) && IsNPCPartyMember(5))) {
		return 1;
	}
	return 0;
}

