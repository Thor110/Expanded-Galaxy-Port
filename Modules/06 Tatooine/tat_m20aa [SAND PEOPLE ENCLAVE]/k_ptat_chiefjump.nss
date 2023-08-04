void main() {
	object oNPC = GetPartyMemberByIndex(0);
	object object3 = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	object oTat20_wp_chief = GetWaypointByTag("tat20_wp_chief");
	object oTat20_wp_chief2 = GetWaypointByTag("tat20_wp_chief2");
	object oTat20_wp_chief3 = GetWaypointByTag("tat20_wp_chief3");
	AssignCommand(oNPC, JumpToObject(oTat20_wp_chief, 1));
	AssignCommand(object3, JumpToObject(oTat20_wp_chief2, 1));
	AssignCommand(object5, JumpToObject(oTat20_wp_chief3, 1));
}

