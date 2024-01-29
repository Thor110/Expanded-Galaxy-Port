void main() {
	ActionPauseConversation();
	SetFacingPoint(GetPosition(GetObjectByTag("unk42_wpworship2", 0)));
	ClearAllActions();
	ActionPlayAnimation(4, 1.0, 0.0);
	ActionWait(2.0);
	ActionResumeConversation();
}

