void main() {
	ActionPauseConversation();
	SetGlobalFadeOut(0.0, 3.0, 0.0, 0.0, 0.0);
	DelayCommand(3.0, ActionResumeConversation());
}

