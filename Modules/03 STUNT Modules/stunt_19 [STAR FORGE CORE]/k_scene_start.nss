void main() {
	//if ((GetIsPC(GetEnteringObject()) == 1)) {
		SetPartyLeader(0xFFFFFFFF);
		AssignCommand(GetObjectByTag("CutStart", 0), ActionStartConversation(GetFirstPC(), "19", 0, 0, 1, "", "", "", "", "", ""));
		DelayCommand(1.0, PlayRoomAnimation("m45ad_02b", 1));
	//}
}

