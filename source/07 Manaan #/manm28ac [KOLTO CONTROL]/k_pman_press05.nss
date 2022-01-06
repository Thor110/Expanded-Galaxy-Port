void main() {
	object oNPC = GetPartyMemberByIndex(1);
	object object3 = GetPartyMemberByIndex(2);
	if (GetIsObjectValid(oNPC)) {
		AssignCommand(oNPC, ClearAllActions());
		AssignCommand(oNPC, JumpToObject(GetObjectByTag("wp_man26ac_party01", 0), 1));
	}
	if (GetIsObjectValid(object3)) {
		AssignCommand(object3, ClearAllActions());
		AssignCommand(object3, JumpToObject(GetObjectByTag("wp_man26ac_party02", 0), 1));
	}
}

