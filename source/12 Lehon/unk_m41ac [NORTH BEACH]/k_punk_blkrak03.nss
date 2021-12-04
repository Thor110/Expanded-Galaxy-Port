void main() {
	ActionPauseConversation();
	SetFacingPoint(GetPosition(GetPCSpeaker()));
	SetGlobalFadeIn(0.0, 2.0, 0.0, 0.0, 0.0);
	ActionWait(2.0);
	ActionResumeConversation();
}

