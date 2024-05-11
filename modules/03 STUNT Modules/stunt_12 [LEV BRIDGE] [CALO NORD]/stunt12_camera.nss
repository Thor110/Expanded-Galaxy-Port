void main() {
	object oStunt12_malak = GetObjectByTag("stunt12_malak", 0);
	object oStunt12_wp_04 = GetWaypointByTag("stunt12_wp_04");
	ActionPauseConversation();
	DelayCommand(3.2, ActionResumeConversation());
	object oStunt12_sith2 = GetObjectByTag("stunt12_sith2", 0);
	DelayCommand(0.2, AssignCommand(oStunt12_sith2, PlayAnimation(5, 1.0, 3.0)));
	SetLockOrientationInDialog(oStunt12_malak, 1);
	DelayCommand(2.9, AssignCommand(oStunt12_malak, ActionMoveToObject(oStunt12_wp_04, 0, 1.0)));
	DelayCommand(1.7, SetDialogPlaceableCamera(9));
}
