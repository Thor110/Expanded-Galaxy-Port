void main() {
	if ((GetIsPC(GetEnteringObject()) == 1)) {
		if ((IsAvailableCreature(0) == 0)) {
			AddAvailableNPCByTemplate(0, "p_bastilla");
		}
		if ((IsNPCPartyMember(0) == 0)) {
			SpawnAvailableNPC(0, GetLocation(GetObjectByTag("WP01", 0)));
		}
    SetPartyLeader(0xFFFFFFFF);
		AssignCommand(GetObjectByTag("Bastila", 0), ClearAllEffects());
		AssignCommand(GetObjectByTag("CutStart", 0), ActionStartConversation(GetFirstPC(), "m44aa_c02", 0, 0, 1, "", "", "", "", "", ""));
		DelayCommand(0.3, PlayRoomAnimation("StuntRoom44aa", 2));
		DelayCommand(2.6, PlayRoomAnimation("StuntRoom44aa", 1));
	}
}

