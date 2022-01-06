void main() {
	ActionPauseConversation();
	AssignCommand(GetObjectByTag("unk41_redrak4", 0), ActionMoveToObject(GetObjectByTag("rakmove", 0), 0, 0.2));
	SetGlobalFadeOut(0.0, 4.0, 0.0, 0.0, 0.0);
	ActionWait(4.0);
	ActionResumeConversation();
}

