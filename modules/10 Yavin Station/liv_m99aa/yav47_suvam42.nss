void main() {
	ActionPauseConversation();
	ActionMoveToLocation(GetLocation(GetObjectByTag("yav50_airlock", 0)), 1);
	ActionResumeConversation();
}

