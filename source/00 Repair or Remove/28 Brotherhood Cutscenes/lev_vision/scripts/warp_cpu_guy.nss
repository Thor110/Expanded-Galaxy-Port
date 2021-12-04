void main() {
	object oCpu_guy = GetObjectByTag("cpu_guy", 0);
	object oWp_cpu = GetWaypointByTag("wp_cpu");
	AssignCommand(oCpu_guy, JumpToObject(oWp_cpu, 1));
}

