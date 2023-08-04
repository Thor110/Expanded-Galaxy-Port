void main() {
	object oNPC = GetPartyMemberByIndex(0);
	object object3 = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	object oNearestTat18_leavekray2 = GetNearestObjectByTag("tat18_leavekray2", oNPC, 1);
	AssignCommand(oNPC, JumpToObject(oNearestTat18_leavekray2, 1));
	AssignCommand(object3, JumpToObject(oNearestTat18_leavekray2, 1));
	AssignCommand(object5, JumpToObject(oNearestTat18_leavekray2, 1));
}

