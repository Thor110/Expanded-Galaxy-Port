void main() {
	object oNPC = GetPartyMemberByIndex(0);
	object object3 = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	object oKas22_baskenter = GetObjectByTag("kas22_baskenter", 0);
	object oKas22_baskenter2 = GetObjectByTag("kas22_baskenter2", 0);
	object oKas22_baskenter3 = GetObjectByTag("kas22_baskenter3", 0);
	AssignCommand(oNPC, ActionJumpToObject(oKas22_baskenter, 1));
	AssignCommand(object3, ActionJumpToObject(oKas22_baskenter2, 1));
	AssignCommand(object5, ActionJumpToObject(oKas22_baskenter3, 1));
}

