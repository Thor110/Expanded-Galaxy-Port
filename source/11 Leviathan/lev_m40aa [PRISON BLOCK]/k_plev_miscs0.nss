void main() {
	ActionPauseConversation();
	ActionMoveToObject(GetObjectByTag("mission", 0), 0, 1.0);
	ActionResumeConversation();
}

