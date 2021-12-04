void main() {
	if ((GetIsPC(GetEnteringObject()) == 1)) {
		SetPartyLeader(0xFFFFFFFF);
		if ((GetGender(GetFirstPC()) == 0)) {
			CreateObject(1, "n_darthrevan001", GetLocation(GetObjectByTag("WP01", 0)), 0);
		}
		if ((GetGender(GetFirstPC()) == 1)) {
			CreateObject(1, "n_darthrevan003", GetLocation(GetObjectByTag("WP01", 0)), 0);
		}
		DuplicateHeadAppearance(GetObjectByTag("DarthRevan", 0), GetFirstPC());
		AssignCommand(GetObjectByTag("Light01", 0), ActionPlayAnimation(207, 1.0, 0.0));
		AssignCommand(GetObjectByTag("CutStart", 0), ActionStartConversation(GetFirstPC(), "31b_convers", 0, 0, 1, "", "", "", "", "", ""));
	}
}

