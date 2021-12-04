void main() {
	ActionPauseConversation();
	ActionWait(3.0);
	ActionResumeConversation();
	SignalEvent(GetObjectByTag("dan14_nurik", 0), EventUserDefined(70));
}

