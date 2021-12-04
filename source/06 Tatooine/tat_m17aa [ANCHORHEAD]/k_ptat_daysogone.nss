void main() {
	object oTat17_daysoexit = GetWaypointByTag("tat17_daysoexit");
	ActionPauseConversation();
	SetGlobalFadeOut(0.0, 3.0, 0.0, 0.0, 0.0);
	ActionMoveToObject(oTat17_daysoexit, 0, 1.0);
	DelayCommand(3.0, ActionResumeConversation());
}

