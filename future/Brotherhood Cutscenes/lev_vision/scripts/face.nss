void main() {
	object oPC = GetFirstPC();
	object oAdin = GetObjectByTag("adin", 0);
	object oAdin_1 = GetObjectByTag("adin_1", 0);
	object oAdin_2 = GetObjectByTag("adin_2", 0);
	DelayCommand(0.1, AssignCommand(GetFirstPC(), SetFacingPoint(Vector(298.62, 54.97, 0.0))));
	DelayCommand(0.1, AssignCommand(oPC, SetLockOrientationInDialog(oPC, 1)));
	DelayCommand(0.1, AssignCommand(oAdin, SetFacingPoint(Vector(182.82, 66.72, 0.0))));
	DelayCommand(0.1, AssignCommand(oPC, SetLockOrientationInDialog(oAdin, 1)));
	DelayCommand(0.1, AssignCommand(oAdin_1, SetFacingPoint(Vector(182.82, 67.64, 0.0))));
	DelayCommand(0.1, AssignCommand(oPC, SetLockOrientationInDialog(oAdin_1, 1)));
	DelayCommand(0.1, AssignCommand(oAdin_2, SetFacingPoint(Vector(182.82, 65.74, 0.0))));
	DelayCommand(0.1, AssignCommand(oPC, SetLockOrientationInDialog(oAdin_2, 1)));
}

