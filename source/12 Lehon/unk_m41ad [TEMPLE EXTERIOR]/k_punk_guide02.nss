void main() {
	ActionPauseConversation();
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	SetGlobalFadeIn(0.0, 0.5, 0.0, 0.0, 0.0);
	AssignCommand(GetObjectByTag("unk41_rakguider", 0), ActionMoveToObject(GetObjectByTag("guidethreat", 0), 0, 1.0));
	ActionWait(2.0);
	ActionResumeConversation();
}

