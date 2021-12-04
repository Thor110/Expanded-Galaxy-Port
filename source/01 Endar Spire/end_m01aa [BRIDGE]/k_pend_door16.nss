void main() {
	SetPartyLeader(0xFFFFFFFF);
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	DelayCommand(0.1, SetGlobalFadeIn(0.0, 0.5, 0.0, 0.0, 0.0));
	SetGlobalNumber("End_TraskTalk",10);
	NoClicksFor(0.4);
	DelayCommand(0.2, AssignCommand(GetObjectByTag("end_jedicut", 0), ActionStartConversation(GetFirstPC(), "", 0, 1, 0, "", "", "", "", "", "")));
}
