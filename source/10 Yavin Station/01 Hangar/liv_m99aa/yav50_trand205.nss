void main() {
	ActionPauseConversation();
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	SetPartyLeader((-1));
	DelayCommand(0.1, AssignCommand(GetPartyMemberByIndex(0), ActionJumpToLocation(GetLocation(GetObjectByTag("wp201", 0)))));
	DelayCommand(0.1, AssignCommand(GetPartyMemberByIndex(1), ActionJumpToLocation(GetLocation(GetObjectByTag("wp202", 0)))));
	DelayCommand(0.1, AssignCommand(GetPartyMemberByIndex(2), ActionJumpToLocation(GetLocation(GetObjectByTag("wp203", 0)))));
	DelayCommand(0.4, AssignCommand(GetPartyMemberByIndex(0), ActionMoveToLocation(GetLocation(GetObjectByTag("wp204", 0)), 0)));
	DelayCommand(0.4, AssignCommand(GetPartyMemberByIndex(1), ActionMoveToLocation(GetLocation(GetObjectByTag("wp205", 0)), 0)));
	DelayCommand(0.4, AssignCommand(GetPartyMemberByIndex(2), ActionMoveToLocation(GetLocation(GetObjectByTag("wp206", 0)), 0)));
	AssignCommand(GetObjectByTag("yav47_suvam", 0), ActionJumpToLocation(GetLocation(GetObjectByTag("suvam101", 0))));
	AssignCommand(GetObjectByTag("yav47_suvam", 0), SetFacingPoint(GetPosition(GetObjectByTag("yav47_trand01", 0))));
	SetGlobalFadeIn(0.5, 0.5, 0.0, 0.0, 0.0);
	ActionResumeConversation();
}

