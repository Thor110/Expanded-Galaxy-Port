void main() {
	ActionPauseConversation();
	DelayCommand(1.5, AssignCommand(GetPartyMemberByIndex(0), ActionMoveToObject(GetObjectByTag("bast1", 0), 1, 1.0)));
	ActionMoveToLocation(GetLocation(GetObjectByTag("bast1", 0)), 1);
	ActionResumeConversation();
}

