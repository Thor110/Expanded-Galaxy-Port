void main() {
	object oPC = GetFirstPC();
	object oTat18_kraytdrag = GetObjectByTag("tat18_kraytdrag", 0);
	object oTat18_wp_player3 = GetWaypointByTag("tat18_wp_player3");
	object oTat18_wp_krayt = GetWaypointByTag("tat18_wp_krayt");
	object oTat18_wp_kraytf2 = GetWaypointByTag("tat18_wp_kraytf2");
	location location1 = GetLocation(oTat18_wp_kraytf2);
	AssignCommand(oPC, ActionJumpToObject(oTat18_wp_player3, 1));
	AssignCommand(oPC, ActionMoveToObject(oTat18_wp_krayt, 0, 1.0));
	AssignCommand(oTat18_kraytdrag, ClearAllActions());
	AssignCommand(oTat18_kraytdrag, ActionPlayAnimation(22, 1.0, 2.5));
}

