void main() {
	ActionPauseConversation();
	ActionWait(1.5);
	DelayCommand(1.5, AssignCommand(GetObjectByTag("unk41_blackrak3", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("spot", 0)), 0)));
	ActionWait(1.0);
	SetGlobalFadeOut(0.0, 5.0, 0.0, 0.0, 0.0);
	ActionMoveToLocation(GetLocation(GetObjectByTag("spot", 0)), 0);
	ActionWait(3.0);
	ActionResumeConversation();
}

