void main() {
	object oPC = GetFirstPC();
	ActionPauseConversation();
	ActionWait(2.0);
	vector struct2 = Vector(272.65, 58.8, 9.02);
	location location1 = Location(struct2, 0.0);
	AssignCommand(oPC, ActionForceMoveToLocation(location1, 0, 30.0));
	AssignCommand(oPC, SetLockOrientationInDialog(oPC, 0));
	ActionResumeConversation();
}

