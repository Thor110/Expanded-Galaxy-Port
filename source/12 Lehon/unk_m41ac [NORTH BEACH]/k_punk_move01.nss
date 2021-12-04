void main() {
	ActionPauseConversation();
	SetGlobalFadeIn(0.0, 0.5, 0.0, 0.0, 0.0);
	AssignCommand(GetPCSpeaker(), ActionMoveToLocation(GetLocation(GetObjectByTag("playermove", 0)), 0));
	ActionWait(3.0);
	ActionResumeConversation();
}

