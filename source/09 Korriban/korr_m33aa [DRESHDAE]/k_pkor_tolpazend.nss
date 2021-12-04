void main() {
	if ((GetLastPazaakResult() == 0)) {
		SetGlobalNumber("KOR_PAZTOLL", (GetGlobalNumber("KOR_PAZTOLL") + 1));
	}
	if ((GetLastPazaakResult() == 0)) {
		SetGlobalNumber("KOR_PAZTOLL", (GetGlobalNumber("KOR_PAZTOLL") - 1));
	}
	AssignCommand(GetObjectByTag("kor33_toll", 0), ActionStartConversation(GetFirstPC(), "kor33_toll", 0, 0, 0, "", "", "", "", "", ""));
}

