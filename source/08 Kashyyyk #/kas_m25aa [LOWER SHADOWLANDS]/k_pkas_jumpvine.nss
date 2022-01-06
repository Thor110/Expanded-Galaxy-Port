void main() {
	object oNPC = GetPartyMemberByIndex(0);
	object object3 = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	object oKas25_wp_vine1 = GetWaypointByTag("kas25_wp_vine1");
	object oKas25_wp_vine2 = GetWaypointByTag("kas25_wp_vine2");
	object oKas25_wp_vine3 = GetWaypointByTag("kas25_wp_vine3");
	AssignCommand(oNPC, JumpToObject(oKas25_wp_vine1, 1));
	AssignCommand(object3, JumpToObject(oKas25_wp_vine2, 1));
	AssignCommand(object5, JumpToObject(oKas25_wp_vine3, 1));
}

