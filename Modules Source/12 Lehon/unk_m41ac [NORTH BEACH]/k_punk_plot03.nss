void main() {
	ActionPauseConversation();
	ActionJumpToLocation(GetLocation(GetObjectByTag("plotmove2", 0)));
	AssignCommand(GetPartyMemberByIndex(0), ActionJumpToLocation(GetLocation(GetObjectByTag("plotpc0", 0))));
	AssignCommand(GetPartyMemberByIndex(1), ActionJumpToLocation(GetLocation(GetObjectByTag("plotpc1", 0))));
	AssignCommand(GetPartyMemberByIndex(2), ActionJumpToLocation(GetLocation(GetObjectByTag("plotpc2", 0))));
	CreateObject(64, "reward", GetLocation(GetObjectByTag("plotchest", 0)), 0);
	SetGlobalFadeIn(0.5, 0.5, 0.0, 0.0, 0.0);
	ActionPlayAnimation(10, 1.0, 1.0);
	ActionResumeConversation();
}

