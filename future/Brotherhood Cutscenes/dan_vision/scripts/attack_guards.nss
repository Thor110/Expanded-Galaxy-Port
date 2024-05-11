void main() {
	ChangeToStandardFaction(GetObjectByTag("guard1", 0), 1);
	ChangeToStandardFaction(GetObjectByTag("guard2", 0), 1);
	ChangeToStandardFaction(GetObjectByTag("guard3", 0), 1);
	object oOld_droid = GetObjectByTag("old_droid", 0);
	AssignCommand(oOld_droid, SetLockOrientationInDialog(oOld_droid, 1));
}

