int StartingConditional() {
	int nGlobal = GetGlobalNumber("K_SWG_HELENA");
	if (((nGlobal == 3) && (!IsNPCPartyMember(0)))) {
		return 1;
	}
	return 0;
}

