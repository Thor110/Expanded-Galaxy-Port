void main() {
	ActionPauseConversation();
	ActionMoveToObject(GetObjectByTag("lev40_wpjedi2", 0), 0, 1.0);
	ActionWait(2.0);
	ActionResumeConversation();
}

