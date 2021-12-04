void main() {
	ActionPauseConversation();
	ActionMoveToLocation(GetLocation(GetObjectByTag("priswp1", 0)), 1);
	ActionResumeConversation();
}

