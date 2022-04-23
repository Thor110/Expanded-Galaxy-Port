void main() {
	ActionPauseConversation();
	ActionMoveToLocation(GetLocation(GetObjectByTag("bast2", 0)), 1);
	SetGlobalFadeOut(2.0, 1.0, 0.0, 0.0, 0.0);
	ActionResumeConversation();
}

