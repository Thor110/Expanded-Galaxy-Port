void main() {
	ActionPauseConversation();
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	SetGlobalFadeIn(0.0, 0.5, 0.0, 0.0, 0.0);
	AssignCommand(GetFirstPC(), ActionMoveToLocation(GetLocation(GetObjectByTag("playermove", 0)), 0));
	ActionWait(2.0);
	ActionResumeConversation();
}

