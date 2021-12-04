void main() {
	if ((GetIsPC(GetEnteringObject()) == 1)) {
		SetPartyLeader(0xFFFFFFFF);
		AssignCommand(GetObjectByTag("CutStart", 0), ActionStartConversation(GetFirstPC(), "m01aa_c05", 0, 0, 1, "", "", "", "", "", "", 0));
		PlayRoomAnimation("StuntRoom01aa1", 2);
	}
}

