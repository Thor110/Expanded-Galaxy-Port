void main() {
	object oVision_malak = GetObjectByTag("vision_malak", 0);
	object oPC = GetFirstPC();
	ActionDoCommand(SetCommandable(1, oVision_malak));
	AssignCommand(oVision_malak, SetFacingPoint(GetPosition(oPC)));
	AssignCommand(oVision_malak, SetLockOrientationInDialog(oVision_malak, 0));
}

