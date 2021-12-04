void main() {
	ActionPauseConversation();
	SetLightsaberPowered(OBJECT_SELF, 1, 1, 1);
	ActionWait(2.0);
	ActionResumeConversation();
}

