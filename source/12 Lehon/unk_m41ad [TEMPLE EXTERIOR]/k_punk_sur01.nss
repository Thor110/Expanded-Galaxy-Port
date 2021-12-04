void main() {
	ActionPauseConversation();
	ActionMoveToLocation(GetLocation(GetObjectByTag("durosleave", 0)), 1);
	ActionResumeConversation();
}

