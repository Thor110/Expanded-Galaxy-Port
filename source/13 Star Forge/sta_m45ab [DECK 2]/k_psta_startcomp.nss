void main() {
	object oNPC = GetPartyMemberByIndex(0);
	if ((oNPC == GetLastUsedBy())) {
		ActionStartConversation(oNPC, "", 0, 1, 0, "", "", "", "", "", "");
	}
}

