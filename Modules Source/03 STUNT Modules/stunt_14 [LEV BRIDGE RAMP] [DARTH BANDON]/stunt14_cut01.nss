void main() {
	object oStunt14_saul = GetObjectByTag("stunt14_saul", 0);
	object oStunt14_wp_01 = GetWaypointByTag("stunt14_wp_01");
	ActionPauseConversation();
	DelayCommand(3.9, ActionResumeConversation());
}
