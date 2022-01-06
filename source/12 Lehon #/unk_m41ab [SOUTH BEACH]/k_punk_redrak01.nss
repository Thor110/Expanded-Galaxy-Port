void main() {
	ActionPauseConversation();
	SetGlobalFadeIn(0.5, 1.0, 0.0, 0.0, 0.0);
	AssignCommand(GetPCSpeaker(), ClearAllActions());
	AssignCommand(GetPCSpeaker(), ActionMoveToLocation(GetLocation(GetObjectByTag("playermove", 0)), 0));
	AssignCommand(GetPCSpeaker(), ActionDoCommand(DelayCommand(0.1, SetFacingPoint(GetPosition(GetObjectByTag("rak1move", 0))))));
	AssignCommand(GetPartyMemberByIndex(1), ActionMoveToLocation(GetLocation(GetObjectByTag("pm1wp2", 0)), 0));
	AssignCommand(GetPartyMemberByIndex(1), ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("rak1move", 0)))));
	AssignCommand(GetPartyMemberByIndex(2), ActionMoveToLocation(GetLocation(GetObjectByTag("pm2wp2", 0)), 0));
	AssignCommand(GetPartyMemberByIndex(2), ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("rak1move", 0)))));
	ActionWait(3.0);
	ActionResumeConversation();
}

