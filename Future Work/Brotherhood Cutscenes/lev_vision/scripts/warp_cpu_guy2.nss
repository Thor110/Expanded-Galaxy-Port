void main() {
	object oCpu_guy = GetObjectByTag("cpu_guy", 0);
	object oWp_cpu2 = GetWaypointByTag("wp_cpu2");
	AssignCommand(oCpu_guy, JumpToObject(oWp_cpu2, 1));
	vector struct2 = Vector(246.88, 54.9, 0.0);
	location location1 = Location(struct2, 0.0);
	CreateObject(1, "injured_guy", location1, 0);
}

