void main() {
	object oStunt12_malak = GetObjectByTag("stunt12_malak", 0);
	object oStunt12_wp_04 = GetWaypointByTag("stunt12_wp_04");
	ActionPauseConversation();
	DelayCommand(3.1, ActionResumeConversation());
	SetLockOrientationInDialog(oStunt12_malak, 1);
}
