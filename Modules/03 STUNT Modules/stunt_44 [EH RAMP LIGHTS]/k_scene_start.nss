void main() {
	if ((GetIsPC(GetEnteringObject()) == 1)) {
		if ((IsAvailableCreature(0) == 0)) {
			AddAvailableNPCByTemplate(0, "p_bastilla");
		}
		if ((IsNPCPartyMember(0) == 0)) {
			SpawnAvailableNPC(0, GetLocation(GetObjectByTag("WP01", 0)));
		}
		SetPartyLeader(0xFFFFFFFF);
		AssignCommand(GetFirstPC(), ClearAllEffects());
		AssignCommand(GetObjectByTag("Bastila", 0), ClearAllEffects());
		AssignCommand(GetObjectByTag("CutStart", 0), ActionStartConversation(GetFirstPC(), "m12aa_c06", 0, 0, 1, "", "", "", "", "", ""));
	}
}

