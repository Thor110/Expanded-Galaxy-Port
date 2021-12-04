void main() {
	ActionPauseConversation();
	AssignCommand(GetPartyMemberByIndex(0), ActionMoveToLocation(GetLocation(GetObjectByTag("playerend", 0)), 0));
	AssignCommand(GetPartyMemberByIndex(1), ActionMoveToLocation(GetLocation(GetObjectByTag("final1wp2", 0)), 0));
	AssignCommand(GetPartyMemberByIndex(2), ActionMoveToLocation(GetLocation(GetObjectByTag("final2wp2", 0)), 0));
	ActionWait(4.0);
	ActionResumeConversation();
}

