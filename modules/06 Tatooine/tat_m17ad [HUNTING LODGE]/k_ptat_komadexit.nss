void main() {
	object oTat17ad_exit = GetWaypointByTag("tat17ad_exit");
	SetGlobalFadeOut(0.0, 3.0, 0.0, 0.0, 0.0);
	ActionPauseConversation();
	ActionMoveToObject(oTat17ad_exit, 0, 1.0);
	ActionResumeConversation();
}

