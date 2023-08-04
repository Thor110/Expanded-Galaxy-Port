void main() {
	ActionPauseConversation();
	ActionMoveToLocation(GetLocation(GetObjectByTag("plotmove", 0)), 1);
	SetGlobalFadeOut(1.5, 0.5, 0.0, 0.0, 0.0);
	ActionWait(2.0);
	ActionResumeConversation();
}

