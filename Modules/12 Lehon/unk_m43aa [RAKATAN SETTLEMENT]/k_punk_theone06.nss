void main() {
	ActionPauseConversation();
	AssignCommand(GetPartyMemberByIndex(0), ActionMoveToLocation(GetLocation(GetObjectByTag("priswp2", 0)), 0));
	AssignCommand(GetPartyMemberByIndex(1), ActionMoveToLocation(GetLocation(GetObjectByTag("priswp21", 0)), 0));
	AssignCommand(GetPartyMemberByIndex(2), ActionMoveToLocation(GetLocation(GetObjectByTag("priswp22", 0)), 0));
	SetGlobalFadeOut(2.0, 1.0, 0.0, 0.0, 0.0);
	ActionWait(3.5);
	ActionResumeConversation();
}

