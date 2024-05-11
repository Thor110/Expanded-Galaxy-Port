void main() {
	ActionPauseConversation();
	ActionWait(3.0);
	object oCpu_guy = GetObjectByTag("cpu_guy", 0);
	object oWp_revan = GetWaypointByTag("wp_revan");
	object oPC = GetFirstPC();
	vector struct2 = Vector(272.25, 59.66, 9.0);
	location location1 = Location(struct2, 0.0);
	vector struct4 = Vector(270.93, 59.62, 9.0);
	location location3 = Location(struct4, 0.0);
	AssignCommand(oCpu_guy, ActionForceMoveToLocation(location1, 1, 30.0));
	AssignCommand(oCpu_guy, ActionPlayAnimation(15, 1.0, (-1.0)));
	AssignCommand(oPC, JumpToObject(oWp_revan, 1));
	SetLockOrientationInDialog(oCpu_guy, 1);
	ActionResumeConversation();
}

