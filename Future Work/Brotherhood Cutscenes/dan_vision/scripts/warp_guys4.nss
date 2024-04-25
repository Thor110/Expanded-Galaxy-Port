void main() {
	object oVision_malak = GetObjectByTag("vision_malak", 0);
	object oVision_channa = GetObjectByTag("vision_channa", 0);
	object oRevan_fake = GetObjectByTag("revan_fake", 0);
	object oPC = GetFirstPC();
	object oWp_malak5 = GetWaypointByTag("wp_malak5");
	object oWp_revan4 = GetWaypointByTag("wp_revan4");
	ActionDoCommand(SetCommandable(1, oVision_malak));
	AssignCommand(oPC, JumpToObject(oVision_channa, 1));
	AssignCommand(oVision_malak, JumpToObject(oWp_malak5, 1));
	AssignCommand(oRevan_fake, JumpToObject(oWp_revan4, 1));
	AssignCommand(oVision_malak, SetFacingPoint(GetPosition(GetFirstPC())));
	AssignCommand(oRevan_fake, SetFacingPoint(GetPosition(GetObjectByTag("dan15_starmap", 0))));
	AssignCommand(oVision_malak, SetLockOrientationInDialog(oVision_malak, 1));
	AssignCommand(oRevan_fake, SetLockOrientationInDialog(oRevan_fake, 1));
}

