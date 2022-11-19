void main() {
	ActionPauseConversation();
	ActionWait(3.0);
	object oPC = GetFirstPC();
	object oTrooper3 = GetObjectByTag("trooper3", 0);
	object oTrooper2 = GetObjectByTag("trooper2", 0);
	AssignCommand(oTrooper3, SetFacingPoint(GetPosition(GetObjectByTag("revan_bastila", 0))));
	AssignCommand(oTrooper3, SetLockOrientationInDialog(oTrooper3, 1));
	AssignCommand(oTrooper2, SetFacingPoint(GetPosition(GetObjectByTag("revan_bastila", 0))));
	AssignCommand(oTrooper2, SetLockOrientationInDialog(oTrooper2, 1));
	ActionResumeConversation();
}

