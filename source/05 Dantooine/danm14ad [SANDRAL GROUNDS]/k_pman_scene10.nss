void main() {
	ActionPauseConversation();
	ActionWait(1.5);
	ActionResumeConversation();
	SignalEvent(GetObjectByTag("dan14_nurik", 0), EventUserDefined(60));
}

