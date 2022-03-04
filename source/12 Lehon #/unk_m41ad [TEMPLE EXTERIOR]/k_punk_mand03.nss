void main() {
	ActionPauseConversation();
	SetGlobalFadeIn(0.0, 0.5, 0.0, 0.0, 0.0);
	AssignCommand(GetPartyMemberByIndex(0), ActionMoveToLocation(GetLocation(GetObjectByTag("playerwp", 0)), 0));
	AssignCommand(GetPartyMemberByIndex(0), ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("ambush01", 0)))));
	AssignCommand(GetPartyMemberByIndex(1), ActionMoveToLocation(GetLocation(GetObjectByTag("pm1wp", 0)), 0));
	AssignCommand(GetPartyMemberByIndex(1), ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("ambush01", 0)))));
	AssignCommand(GetPartyMemberByIndex(2), ActionMoveToLocation(GetLocation(GetObjectByTag("pm2wp", 0)), 0));
	AssignCommand(GetPartyMemberByIndex(2), ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("ambush01", 0)))));
	ActionWait(3.0);
	ActionResumeConversation();
}

