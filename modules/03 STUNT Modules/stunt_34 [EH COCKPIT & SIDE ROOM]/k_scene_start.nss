void main() {
	if ((GetIsPC(GetEnteringObject()) == 1)) {
		if ((IsAvailableCreature(2) == 0)) {
			AddAvailableNPCByTemplate(2, "p_carth");
		}
		if ((IsNPCPartyMember(2) == 0)) {
			SpawnAvailableNPC(2, GetLocation(GetObjectByTag("WP01", 0)));
		}
		SetPartyLeader(0xFFFFFFFF);
		AssignCommand(GetObjectByTag("CutStart", 0), ActionStartConversation(GetFirstPC(), "m12aa_c03_carth", 0, 0, 1, "", "", "", "", "", ""));
		AssignCommand(GetFirstPC(), ClearAllEffects());
		AssignCommand(GetObjectByTag("Carth", 0), ClearAllEffects());
		RemoveAvailableNPC(0);
	}
}

