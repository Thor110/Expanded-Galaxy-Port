void main() {
	ActionPauseConversation();
	ActionWait(1.5);
	SetFacingPoint(GetPosition(GetObjectByTag("yav47_trand01", 0)));
	ActionResumeConversation();
}

