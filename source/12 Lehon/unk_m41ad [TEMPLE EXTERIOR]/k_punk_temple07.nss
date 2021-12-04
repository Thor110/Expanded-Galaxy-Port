void main() {
	ActionPauseConversation();
	SetFacingPoint(GetPosition(GetObjectByTag("templeend", 0)));
	ActionPlayAnimation(4, 1.0, 0.0);
	SetGlobalFadeIn(1.5, 2.0, 0.0, 0.0, 0.0);
	ActionWait(3.0);
	ActionResumeConversation();
}

