void main() {
	ActionPauseConversation();
	ActionDoCommand(SignalEvent(GetObjectByTag("end_door07", 0), EventUserDefined(0)));
}

