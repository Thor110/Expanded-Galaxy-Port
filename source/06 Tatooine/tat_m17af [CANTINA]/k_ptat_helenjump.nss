void main() {
	object oTat17_helenawp1 = GetWaypointByTag("tat17_helenawp1");
	object oTat17_helenawp2 = GetWaypointByTag("tat17_helenawp2");
	object oTat17_helenawp3 = GetWaypointByTag("tat17_helenawp3");
	object oNPC = GetPartyMemberByIndex(0);
	object object9 = GetPartyMemberByIndex(1);
	object object11 = GetPartyMemberByIndex(2);
	AssignCommand(oNPC, JumpToObject(oTat17_helenawp1, 1));
	AssignCommand(object9, JumpToObject(oTat17_helenawp2, 1));
	AssignCommand(object11, JumpToObject(oTat17_helenawp3, 1));
}

