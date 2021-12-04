void main() {
	object oTat18_komadexit = GetWaypointByTag("tat18_komadexit");
	ActionPauseConversation();
	DelayCommand(3.0, ActionResumeConversation());
	SetGlobalFadeOut(0.0, 3.0, 0.0, 0.0, 0.0);
	ActionMoveToObject(oTat18_komadexit, 1, 1.0);
}

