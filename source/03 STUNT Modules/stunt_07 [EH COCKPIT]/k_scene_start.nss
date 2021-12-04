void main() {
	if ((GetIsPC(GetEnteringObject()) == 1)) {
		if ((IsAvailableCreature(2) == 0)) {
			AurPostString("Adding Carth to Party", 5, 14, 1.0);
			AddAvailableNPCByTemplate(2, "p_carth");
		}
		if ((IsNPCPartyMember(2) == 0)) {
			AurPostString("Spawning Carth", 5, 15, 1.0);
			SpawnAvailableNPC(2, GetLocation(GetObjectByTag("WP01", 0)));
		}
		if ((IsAvailableCreature(0) == 0)) {
			AddAvailableNPCByTemplate(0, "p_bastilla");
		}
		if ((IsNPCPartyMember(0) == 0)) {
			SpawnAvailableNPC(0, GetLocation(GetObjectByTag("WP01", 0)));
		}
		SetPartyLeader(0xFFFFFFFF);
		//AssignCommand(GetFirstPC(), ClearAllEffects());
		AssignCommand(GetObjectByTag("Bastila", 0), ClearAllEffects());
		AssignCommand(GetObjectByTag("Carth", 0), ClearAllEffects());
		PlayRoomAnimation("m12aa_01q", 9);
		AssignCommand(GetObjectByTag("CutStart", 0), ActionStartConversation(GetFirstPC(), "scene_start", 0, 0, 1, "", "", "", "", "", ""));
	}
}

