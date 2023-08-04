void main() {
	object oNPC = GetPartyMemberByIndex(0);
	object object3 = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	AssignCommand(oNPC, ActionPlayAnimation(116, 1.0, 3.0));
	AssignCommand(object3, ActionPlayAnimation(116, 1.0, 3.0));
	AssignCommand(object5, ActionPlayAnimation(116, 1.0, 3.0));
}

