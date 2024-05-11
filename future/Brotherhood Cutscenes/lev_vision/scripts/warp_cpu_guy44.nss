void main() {
	object oCpu_guy = GetObjectByTag("cpu_guy", 0);
	object oG_sithcomm003 = GetObjectByTag("g_sithcomm003", 0);
	object oWp_cpu4 = GetWaypointByTag("wp_cpu4");
	vector struct2 = Vector(293.32, 55.02, 9.0);
	location location1 = Location(struct2, 0.0);
	AssignCommand(oCpu_guy, ActionForceMoveToLocation(location1, 1, 30.0));
	AssignCommand(oCpu_guy, SetFacingPoint(GetPosition(GetFirstPC())));
}

