void main() {
	object oTat17_gandaexit = GetWaypointByTag("tat17_gandaexit");
	ActionPauseConversation();
	SetGlobalFadeOut(0.0, 3.0, 0.0, 0.0, 0.0);
	ActionMoveToObject(oTat17_gandaexit, 0, 1.0);
	DelayCommand(3.0, ActionResumeConversation());
}

