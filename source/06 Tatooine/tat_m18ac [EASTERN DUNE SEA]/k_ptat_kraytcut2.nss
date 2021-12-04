void main() {
	object oPC = GetFirstPC();
	object oTat18_wp_player3 = GetWaypointByTag("tat18_wp_player3");
	AssignCommand(oPC, ActionMoveToObject(oTat18_wp_player3, 0, 1.0));
}

