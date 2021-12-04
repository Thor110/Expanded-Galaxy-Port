void main() {
	object oWP_kas22_janos_01_01 = GetWaypointByTag("WP_kas22_janos_01_01");
	ActionJumpToObject(oWP_kas22_janos_01_01, 1);
	ActionDoCommand(SetFacing(GetFacing(oWP_kas22_janos_01_01)));
}

