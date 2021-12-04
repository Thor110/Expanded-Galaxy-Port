void main() {
	ActionPauseConversation();
	AssignCommand(GetPartyMemberByIndex(0), ActionMoveToObject(GetObjectByTag("spot", 0), 0, 1.0));
	AssignCommand(GetPartyMemberByIndex(1), ActionMoveToObject(GetObjectByTag("spot", 0), 0, 1.0));
	AssignCommand(GetPartyMemberByIndex(2), ActionMoveToObject(GetObjectByTag("spot", 0), 0, 1.0));
	ActionWait(1.0);
	ActionResumeConversation();
}

