void main() {
	ActionPauseConversation();
	AssignCommand(GetPCSpeaker(), ActionMoveToLocation(GetLocation(GetObjectByTag("carthstart", 0)), 0));
	AssignCommand(GetObjectByTag("cand", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("carthstart", 0)), 0));
	AssignCommand(GetObjectByTag("bastila", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("carthstart", 0)), 0));
	AssignCommand(GetObjectByTag("hk47", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("carthstart", 0)), 0));
	AssignCommand(GetObjectByTag("t3m4", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("carthstart", 0)), 0));
	AssignCommand(GetObjectByTag("zaalbar", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("carthstart", 0)), 0));
	SetGlobalFadeOut(0.0, 3.0, 0.0, 0.0, 0.0);
	ActionWait(3.0);
	ActionResumeConversation();
}

