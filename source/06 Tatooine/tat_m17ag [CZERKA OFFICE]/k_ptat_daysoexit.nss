void main() {
	object oTat17ag_exit = GetWaypointByTag("tat17ag_exit");
	ActionPauseConversation();
	SetGlobalFadeOut(0.0, 3.0, 0.0, 0.0, 0.0);
	SetGlobalBoolean("tat_DaysoTiff", 1);
	DelayCommand(3.0, ClearAllActions());
	DelayCommand(3.0, ActionResumeConversation());
	ActionMoveToObject(oTat17ag_exit, 0, 1.0);
}

