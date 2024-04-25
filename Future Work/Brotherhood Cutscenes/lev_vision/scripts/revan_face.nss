void main() {
	object oRevan_bastila2 = GetObjectByTag("revan_bastila2", 0);
	object oPC = GetFirstPC();
	AssignCommand(oRevan_bastila2, SetLockOrientationInDialog(oRevan_bastila2, 0));
	AssignCommand(oRevan_bastila2, SetFacingPoint(GetPosition(GetFirstPC())));
	AssignCommand(oPC, SetFacingPoint(GetPosition(oRevan_bastila2)));
}

