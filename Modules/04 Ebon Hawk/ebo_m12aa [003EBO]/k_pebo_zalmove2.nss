void main() {
	ActionMoveToObject(GetObjectByTag("pebn_zaalbar2", 0), 1, 1.0);
	ActionPauseConversation();
	ActionWait(1.2);
	ActionResumeConversation();
}

