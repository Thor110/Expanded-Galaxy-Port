void main() {
	object oKas24_dernexit = GetWaypointByTag("kas24_dernexit");
	SetGlobalFadeOut(0.0, 3.0, 0.0, 0.0, 0.0);
	ActionPauseConversation();
	ActionMoveToObject(oKas24_dernexit, 0, 1.0);
	ActionResumeConversation();
}

