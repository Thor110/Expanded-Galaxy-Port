void main() {
	ActionPauseConversation();
	AssignCommand(GetPartyMemberByIndex(0), ActionMoveToLocation(GetLocation(GetObjectByTag("playermid", 0)), 0));
	AssignCommand(GetPartyMemberByIndex(1), ActionMoveToLocation(GetLocation(GetObjectByTag("final1wp", 0)), 0));
	AssignCommand(GetPartyMemberByIndex(2), ActionMoveToLocation(GetLocation(GetObjectByTag("final2wp", 0)), 0));
	ActionWait(4.0);
	ActionResumeConversation();
}

