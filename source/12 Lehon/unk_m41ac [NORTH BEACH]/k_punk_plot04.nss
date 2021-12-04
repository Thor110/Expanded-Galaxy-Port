void main() {
	ActionPauseConversation();
	ActionMoveToLocation(GetLocation(GetObjectByTag("plotmove3", 0)), 1);
	ActionWait(2.0);
	ActionResumeConversation();
}

