void main() {
	object oCpu_guy = GetObjectByTag("cpu_guy", 0);
	object oG_sithcomm003 = GetObjectByTag("g_sithcomm003", 0);
	object oWp_cpu3 = GetWaypointByTag("wp_cpu3");
	AssignCommand(oCpu_guy, JumpToObject(oWp_cpu3, 1));
	AssignCommand(oCpu_guy, ActionDoCommand(DestroyObject(oG_sithcomm003, 0.0, 0, 0.0)));
}

