void main() {
	object object1 = GetLastOpenedBy();
	if ((GetFirstPC() != object1)) {
		SetPartyLeader(0xFFFFFFFF);
	}
	ExecuteScript("k_pend_trasknkd", GetObjectByTag("end_trask", 0), 0xFFFFFFFF);
	NoClicksFor(0.3);
	DelayCommand(0.1, AssignCommand(GetObjectByTag(("end01_sceneobj03"), 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 1, "", "", "", "", "", "")));
}
