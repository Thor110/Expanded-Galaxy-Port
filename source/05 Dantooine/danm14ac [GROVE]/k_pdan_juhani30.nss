void main() {
	object oDan14_juhani = GetObjectByTag("dan14_juhani", 0);
	ActionPauseConversation();
	ActionDoCommand(SignalEvent(oDan14_juhani, EventUserDefined(20)));
}

