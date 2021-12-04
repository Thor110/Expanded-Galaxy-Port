void main() {
	int nGlobal;
	if ((GetLastPazaakResult() == 1)) {
		nGlobal = GetGlobalNumber("DAN_SOLAA_NUM");
		SetGlobalNumber("DAN_SOLAA_NUM", (nGlobal + 1));
	}
	AssignCommand(GetObjectByTag("dan13_solaa", 0), ActionStartConversation(GetFirstPC(), "dan13_solaa", 0, 0, 0, "", "", "", "", "", "", 0));
}

