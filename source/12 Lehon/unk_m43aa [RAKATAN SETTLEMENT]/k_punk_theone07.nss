void main() {
	ActionPauseConversation();
	AssignCommand(GetPartyMemberByIndex(0), ClearAllActions());
	AssignCommand(GetPartyMemberByIndex(1), ClearAllActions());
	AssignCommand(GetPartyMemberByIndex(2), ClearAllActions());
	DelayCommand(0.1, AssignCommand(GetPartyMemberByIndex(0), ActionMoveToLocation(GetLocation(GetObjectByTag("playermove", 0)), 0)));
	DelayCommand(0.1, AssignCommand(GetPartyMemberByIndex(1), ActionMoveToLocation(GetLocation(GetObjectByTag("pm1wp2", 0)), 0)));
	DelayCommand(0.1, AssignCommand(GetPartyMemberByIndex(2), ActionMoveToLocation(GetLocation(GetObjectByTag("pm2wp2", 0)), 0)));
	SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
	ActionWait(3.0);
	ActionResumeConversation();
}

