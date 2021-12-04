void main() {
	ActionPauseConversation();
	ActionDoCommand(SignalEvent(GetObjectByTag("end_bandon", 0), EventUserDefined(25)));
	ActionWait(4.0);
	ActionResumeConversation();
}

