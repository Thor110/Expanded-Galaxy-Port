void main() {
	object oNPC = GetPartyMemberByIndex(0);
	object object3 = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	object oTat18_wp_guard1 = GetWaypointByTag("tat18_wp_guard1");
	object oTat18_wp_guard2 = GetWaypointByTag("tat18_wp_guard2");
	object oTat18_wp_guard3 = GetWaypointByTag("tat18_wp_guard3");
	AssignCommand(oNPC, JumpToObject(oTat18_wp_guard1, 1));
	AssignCommand(object3, JumpToObject(oTat18_wp_guard2, 1));
	AssignCommand(object5, JumpToObject(oTat18_wp_guard3, 1));
}

