void main() {
	object oSithclone9 = GetObjectByTag("sithclone9", 0);
	object oPC = GetFirstPC();
	vector struct2 = Vector(147.51, 91.66, 4.42);
	location location1 = Location(struct2, 0.0);
	object oMan15_door02 = GetObjectByTag("man15_door02", 0);
	AssignCommand(oPC, SetLockOrientationInDialog(oPC, 1));
	AssignCommand(oPC, ActionForceMoveToLocation(location1, 0, 30.0));
	DelayCommand(2.0, AssignCommand(oMan15_door02, ActionCloseDoor(oMan15_door02)));
	AssignCommand(oMan15_door02, SetLocked(oMan15_door02, 1));
}

