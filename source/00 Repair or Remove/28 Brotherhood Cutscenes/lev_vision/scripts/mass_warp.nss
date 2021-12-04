void main() {
	ActionPauseConversation();
	ActionWait(2.0);
	object oSith_guy = GetObjectByTag("sith_guy", 0);
	object oSith_guy2 = GetObjectByTag("sith_guy2", 0);
	object oSith_guy3 = GetObjectByTag("sith_guy3", 0);
	object oSith_guy4 = GetObjectByTag("sith_guy4", 0);
	object oSith_guy_side1 = GetObjectByTag("sith_guy_side1", 0);
	object oSith_guy_side2 = GetObjectByTag("sith_guy_side2", 0);
	object oSith_guy_main = GetObjectByTag("sith_guy_main", 0);
	object oWp_s1 = GetWaypointByTag("wp_s1");
	object oWp_s2 = GetWaypointByTag("wp_s2");
	object oWp_s3 = GetWaypointByTag("wp_s3");
	object oWp_s4 = GetWaypointByTag("wp_s4");
	object oWp_s5 = GetWaypointByTag("wp_s5");
	object oWp_s6 = GetWaypointByTag("wp_s6");
	object oWp_s7 = GetWaypointByTag("wp_s7");
	AssignCommand(oSith_guy, JumpToLocation(Location(Vector(243.0, 56.86, 0.0), 180.0)));
	AssignCommand(oSith_guy2, JumpToLocation(Location(Vector(244.33, 53.34, 0.0), 180.0)));
	AssignCommand(oSith_guy3, JumpToLocation(Location(Vector(250.14, 53.5, 0.0), 180.0)));
	AssignCommand(oSith_guy4, JumpToLocation(Location(Vector(253.51, 56.75, 0.0), 180.0)));
	AssignCommand(oSith_guy_side1, JumpToLocation(Location(Vector(240.63, 55.0, 0.0), 180.0)));
	AssignCommand(oSith_guy_side2, JumpToLocation(Location(Vector(246.28, 56.61, 0.0), 180.0)));
	AssignCommand(oSith_guy_main, JumpToLocation(Location(Vector(256.36, 55.3, 0.0), 180.0)));
	ActionResumeConversation();
}

