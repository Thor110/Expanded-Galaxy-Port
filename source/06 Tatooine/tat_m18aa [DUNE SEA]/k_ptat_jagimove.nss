void main() {
	object oTat18_jagithug01 = GetObjectByTag("tat18_jagithug01", 0);
	object oTat18_jagithug02 = GetObjectByTag("tat18_jagithug02", 0);
	object oTat18_jagimove = GetWaypointByTag("tat18_jagimove");
	object oTat18_thug1move = GetWaypointByTag("tat18_thug1move");
	object oTat18_thug2move = GetWaypointByTag("tat18_thug2move");
	AssignCommand(oTat18_jagithug01, ActionMoveToObject(oTat18_thug1move, 0, 1.0));
	AssignCommand(oTat18_jagithug02, ActionMoveToObject(oTat18_thug2move, 0, 1.0));
	ActionMoveToObject(oTat18_jagimove, 0, 1.0);
}

