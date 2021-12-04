void main() {
	ActionPauseConversation();
	ActionWait(2.0);
	object oCpu_guy = GetObjectByTag("cpu_guy", 0);
	object oG_sithcomm003 = GetObjectByTag("g_sithcomm003", 0);
	object oWp_cpu4 = GetWaypointByTag("wp_cpu4");
	AssignCommand(oCpu_guy, JumpToObject(oWp_cpu4, 1));
	vector struct2 = Vector(293.32, 55.02, 9.0);
	location location1 = Location(struct2, 0.0);
	ActionResumeConversation();
}

