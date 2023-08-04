void main() {
	ActionPauseConversation();
	AssignCommand(GetPCSpeaker(), ActionMoveToObject(GetObjectByTag("guardmove", 0), 0, 0.2));
	SetGlobalFadeOut(0.0, 2.0, 0.0, 0.0, 0.0);
	ActionWait(2.0);
	ActionResumeConversation();
}

