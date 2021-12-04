void main() {
	CreateItemOnObject("tat_starpad", GetFirstPC(), 1);
	ActionPauseConversation();
	ActionWait(3.0);
	ActionResumeConversation();
}

