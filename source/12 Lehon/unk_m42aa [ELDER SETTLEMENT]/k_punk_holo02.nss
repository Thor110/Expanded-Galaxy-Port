void main() {
	ActionPauseConversation();
	CreateObject(1, "holo", GetLocation(GetObjectByTag("holowp", 0)), 0);
	AssignCommand(GetPartyMemberByIndex(0), SetFacingPoint(GetPosition(GetObjectByTag("holowp", 0))));
	AssignCommand(GetPartyMemberByIndex(1), SetFacingPoint(GetPosition(GetObjectByTag("holowp", 0))));
	AssignCommand(GetPartyMemberByIndex(2), SetFacingPoint(GetPosition(GetObjectByTag("holowp", 0))));
	ActionWait(0.5);
	ActionResumeConversation();
}

