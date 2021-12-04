void main() {
	ActionPauseConversation();
	SetGlobalFadeIn(0.0, 0.5, 0.0, 0.0, 0.0);
	SetLightsaberPowered(GetPCSpeaker(), 1, 1, 1);
	SetLightsaberPowered(OBJECT_SELF, 1, 1, 0);
	SetNPCAIStyle(OBJECT_SELF, 2);
	ActionWait(1.5);
	ActionResumeConversation();
}

