void main() {
	if ((GetIsPC(GetEnteringObject()) == 1)) {
		SetPartyLeader(0xFFFFFFFF);
		AssignCommand(GetFirstPC(), ActionStartConversation(GetObjectByTag("DarthMalak", 0), "m40ab_c01", 0, 0, 1, "", "", "", "", "", ""));
	}
}

