void main() {
	if (((GetGlobalNumber("k_genoharadan") == 60) && GetIsPC(GetEnteringObject()))) {
		SetGlobalNumber("k_genoharadan", 70);
		AssignCommand(GetObjectByTag("Hulas", 0), ActionStartConversation(GetPartyMemberByIndex(0), "", 0, 0, 1, "", "", "", "", "", ""));
	}
}

