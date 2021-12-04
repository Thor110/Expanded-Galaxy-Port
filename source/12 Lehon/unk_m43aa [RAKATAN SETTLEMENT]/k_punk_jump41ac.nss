void main() {
	ActionPauseConversation();
	AssignCommand(GetPartyMemberByIndex(0), ActionMoveToObject(GetObjectByTag("playerwp", 0), 0, 0.2));
	AssignCommand(GetPartyMemberByIndex(1), ActionMoveToObject(GetObjectByTag("pm1wp", 0), 0, 0.2));
	AssignCommand(GetPartyMemberByIndex(2), ActionMoveToObject(GetObjectByTag("pm2wp", 0), 0, 0.2));
	DelayCommand(3.0, SetGlobalFadeOut(0.0, 5.0, 0.0, 0.0, 0.0));
	ActionWait(8.0);
	ActionResumeConversation();
}

