void main() {
	SetAreaUnescapable(1);
	SetGlobalNumber("END_TRASK_DLG", 7);
	AssignCommand(GetPartyMemberByIndex(1), ClearAllActions());
	AssignCommand(GetPartyMemberByIndex(1), ActionStartConversation(GetFirstPC(), "", 0, 0, 1, "", "", "", "", "", ""));
}

