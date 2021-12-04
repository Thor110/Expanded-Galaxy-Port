void main() {
	ActionPauseConversation();
	ActionWait(3.0);
	object oPC = GetFirstPC();
	object oCpu_guy = GetObjectByTag("cpu_guy", 0);
	AssignCommand(oPC, SetFacingPoint(Vector(290.58, 55.08, 9.0)));
	ActionResumeConversation();
}

