void main() {
	SetGlobalNumber("K_STAR_MAP", 10);
	SetGlobalBoolean("DAN_STARMAP_DONE", 1);
	ActionPauseConversation();
	ActionDoCommand(SignalEvent(GetObjectByTag("dan15_starmap", 0), EventUserDefined(10)));
}

