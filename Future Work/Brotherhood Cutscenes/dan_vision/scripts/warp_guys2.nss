void main() {
	object oVision_malak = GetObjectByTag("vision_malak", 0);
	object oVision_channa = GetObjectByTag("vision_channa", 0);
	object oPC = GetFirstPC();
	object oSuperdoor = GetObjectByTag("Superdoor", 0);
	object oWp_malak3 = GetWaypointByTag("wp_malak3");
	object oWp_channa2 = GetWaypointByTag("wp_channa2");
	object oWp_revan2 = GetWaypointByTag("wp_revan2");
	ActionDoCommand(SetCommandable(1, oVision_malak));
	AssignCommand(oVision_malak, JumpToObject(oWp_malak3, 1));
	AssignCommand(oVision_channa, JumpToObject(oWp_channa2, 1));
	AssignCommand(oPC, JumpToObject(oWp_revan2, 1));
	AssignCommand(oVision_malak, SetFacingPoint(GetPosition(GetObjectByTag("vision_channa", 0))));
	AssignCommand(oVision_channa, SetFacingPoint(GetPosition(GetFirstPC())));
	AssignCommand(oPC, SetFacingPoint(GetPosition(GetObjectByTag("vision_channa", 0))));
	AssignCommand(oVision_malak, SetLockOrientationInDialog(oVision_malak, 0));
	AssignCommand(oVision_channa, SetLockOrientationInDialog(oVision_channa, 0));
	AssignCommand(oPC, SetLockOrientationInDialog(oPC, 0));
	AssignCommand(oSuperdoor, ActionCloseDoor(oSuperdoor));
}

