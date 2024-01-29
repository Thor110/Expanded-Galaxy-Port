void main() {
	object oKas22_eliexit = GetWaypointByTag("kas22_eliexit");
	SetGlobalFadeOut(0.0, 3.0, 0.0, 0.0, 0.0);
	ActionPauseConversation();
	ActionMoveToObject(oKas22_eliexit, 1, 1.0);
	ActionResumeConversation();
}

