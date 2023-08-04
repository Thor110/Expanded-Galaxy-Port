void main() {
	SetGlobalNumber("K_STAR_MAP", 10);
	SetGlobalNumber("DAN_BASTILA_ZONE", 4);
	SetGlobalBoolean("DAN_STARMAP_DONE", 1);
	ActionPauseConversation();
	ActionPlayAnimation(200, 1.0, 13.1);
	ActionResumeConversation();
}

