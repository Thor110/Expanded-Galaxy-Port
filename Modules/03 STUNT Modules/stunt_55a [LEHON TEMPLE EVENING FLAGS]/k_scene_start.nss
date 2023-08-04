void main() {
	if ((GetIsPC(GetEnteringObject()) == 1)) {
		if ((IsAvailableCreature(0) == 0)) {
			AddAvailableNPCByTemplate(0, "p_bastilla001");
		}
		if ((IsNPCPartyMember(0) == 0)) {
			SpawnAvailableNPC(0, GetLocation(GetObjectByTag("WP01", 0)));
		}
		SetPartyLeader(0xFFFFFFFF);
		AssignCommand(GetObjectByTag("CutStart", 0), ActionStartConversation(GetFirstPC(), "end_55a", 0, 0, 1, "", "", "", "", "", ""));
		AssignCommand(GetFirstPC(), ClearAllEffects());
		AssignCommand(GetObjectByTag("Bastila", 0), ClearAllEffects());
		SetGlobalBoolean("CREDITPLAY", 0);
	}
}

