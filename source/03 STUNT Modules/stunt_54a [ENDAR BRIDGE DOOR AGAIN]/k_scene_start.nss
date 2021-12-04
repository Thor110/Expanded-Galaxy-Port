void main() {
	if ((GetIsPC(GetEnteringObject()) == 1)) {
		SetPartyLeader(0xFFFFFFFF);
		AssignCommand(GetObjectByTag("CutStart", 0), ActionStartConversation(GetFirstPC(), "m01aa_c04", 0, 0, 1, "", "", "", "", "", ""));
		AssignCommand(GetObjectByTag("EndarSpireScreen", 0), ActionPlayAnimation(204, 1.0, 0.0));
	}
}

