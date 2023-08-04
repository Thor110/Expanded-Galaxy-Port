void main() {
	object oVision_malak = GetObjectByTag("vision_malak", 0);
	object oPC = GetFirstPC();
	object oWp_malak4 = GetWaypointByTag("wp_malak4");
	object oWp_revan3 = GetWaypointByTag("wp_revan3");
	ActionDoCommand(SetCommandable(1, oVision_malak));
	AssignCommand(oVision_malak, JumpToObject(oWp_malak4, 1));
	AssignCommand(oPC, JumpToObject(oWp_revan3, 1));
	AssignCommand(oVision_malak, SetFacingPoint(GetPosition(GetFirstPC())));
	AssignCommand(oPC, SetFacingPoint(GetPosition(GetObjectByTag("dan15_starmap", 0))));
	AssignCommand(oVision_malak, SetLockOrientationInDialog(oVision_malak, 1));
	AssignCommand(oPC, SetLockOrientationInDialog(oPC, 1));
}

