int StartingConditional() {
	return (((IsNPCPartyMember(6) == 1) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("mission", 0)) <= 5.0)) && (GetGlobalNumber("kas_freyyrstate") > 0));
}

