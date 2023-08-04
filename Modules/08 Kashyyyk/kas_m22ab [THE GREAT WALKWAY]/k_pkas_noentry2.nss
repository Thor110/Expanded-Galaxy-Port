void main() {
	object oNPC = GetPartyMemberByIndex(0);
	object object3 = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	object oKas22_townenter = GetObjectByTag("kas22_townenter", 0);
	object oKas22_townenter2 = GetObjectByTag("kas22_townenter2", 0);
	object oKas22_townenter3 = GetObjectByTag("kas22_townenter3", 0);
	AssignCommand(oNPC, ActionJumpToObject(oKas22_townenter, 1));
	AssignCommand(object3, ActionJumpToObject(oKas22_townenter2, 1));
	AssignCommand(object5, ActionJumpToObject(oKas22_townenter3, 1));
}

