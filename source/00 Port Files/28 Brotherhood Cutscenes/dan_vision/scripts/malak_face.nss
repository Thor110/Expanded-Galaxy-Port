void main() {
	object oVision_malak = GetObjectByTag("vision_malak", 0);
	ActionDoCommand(SetCommandable(1, oVision_malak));
	AssignCommand(oVision_malak, SetFacingPoint(GetPosition(GetObjectByTag("vision_channa", 0))));
	AssignCommand(oVision_malak, SetLockOrientationInDialog(oVision_malak, 0));
}

