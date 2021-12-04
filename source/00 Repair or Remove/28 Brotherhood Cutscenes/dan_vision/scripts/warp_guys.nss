void main() {
	ActionPauseConversation();
	ActionWait(3.0);
	object oVision_malak = GetObjectByTag("vision_malak", 0);
	object oVision_channa = GetObjectByTag("vision_channa", 0);
	object oPC = GetFirstPC();
	object oWp_malak = GetWaypointByTag("wp_malak");
	object oWp_channa = GetWaypointByTag("wp_channa");
	object oWp_revan = GetWaypointByTag("wp_revan");
	ActionDoCommand(SetCommandable(1, oVision_malak));
	AssignCommand(oVision_malak, JumpToObject(oWp_malak, 1));
	AssignCommand(oVision_channa, JumpToObject(oWp_channa, 1));
	DelayCommand(1.0, AssignCommand(oPC, JumpToObject(oWp_revan, 1)));
	AssignCommand(oVision_malak, SetFacingPoint(GetPosition(GetObjectByTag("old_droid", 0))));
	AssignCommand(oVision_channa, SetFacingPoint(GetPosition(GetObjectByTag("old_droid", 0))));
	AssignCommand(oPC, SetFacingPoint(GetPosition(GetObjectByTag("old_droid", 0))));
	AssignCommand(oVision_malak, SetLockOrientationInDialog(oVision_malak, 1));
	AssignCommand(oVision_channa, SetLockOrientationInDialog(oVision_channa, 1));
	AssignCommand(oPC, SetLockOrientationInDialog(oPC, 1));
	ActionResumeConversation();
}

