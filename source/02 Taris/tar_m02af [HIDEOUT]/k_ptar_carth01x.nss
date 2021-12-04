void main() {
	SetGlobalNumber("K_CURRENT_PLANET", 10);
	SetGlobalNumber("Tar_Carth", 1);
	SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
	ActionPauseConversation();
	ActionWait(1.0);
	ActionResumeConversation();
}

