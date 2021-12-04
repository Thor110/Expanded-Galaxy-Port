void main() {
	ActionPauseConversation();
	ActionDoCommand(SignalEvent(GetObjectByTag("end_trask", 0), EventUserDefined(600)));
}

