void main() {
	object oNPC = GetPartyMemberByIndex(1);
	object object3 = GetPartyMemberByIndex(2);
	if (GetIsObjectValid(oNPC)) {
		AssignCommand(oNPC, ClearAllEffects());
	}
	if (GetIsObjectValid(object3)) {
		AssignCommand(oNPC, ClearAllEffects());
	}
}

