void main() {
	ClearAllActions();
	ActionPauseConversation();
	ActionMoveToObject(GetObjectByTag("end_wp_pchurt01", 0), 0, 1.0);
	ActionResumeConversation();
}

