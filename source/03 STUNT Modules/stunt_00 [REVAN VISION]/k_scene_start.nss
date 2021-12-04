/*
void main() {
	if ((GetIsPC(GetEnteringObject()) == 1)) {
		SetPartyLeader(0xFFFFFFFF);
		AssignCommand(GetFirstPC(), ClearAllEffects());
		AssignCommand(GetObjectByTag("CutStart", 0), ActionStartConversation(GetFirstPC(), "cut00_convers", 0, 0, 1, "", "", "", "", "", ""));
		//AssignCommand(GetFirstPC(), ActionStartConversation(GetFirstPC(), "cut00_convers", 0, 0, 1, "", "", "", "", "", ""));
		AssignCommand(GetObjectByTag("Light01", 0), ActionPlayAnimation(209, 1.0, 0.0));
	}
}
*/
void main() {
	if ((GetIsPC(GetEnteringObject()) == 1)) {
		SetPartyLeader(0xFFFFFFFF);
		AssignCommand(GetFirstPC(), ClearAllEffects());
		AssignCommand(GetObjectByTag("CutStart", 0), ActionStartConversation(GetFirstPC(), "cut00_convers", 0, 0, 1, "", "", "", "", "", ""));
		AssignCommand(GetObjectByTag("Light01", 0), ActionPlayAnimation(209, 1.0, 0.0));
	}
}

