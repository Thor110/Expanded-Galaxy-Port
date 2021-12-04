void main() {
	object oKor35_victim = GetObjectByTag("kor35_victim", 0);
	object object3 = GetLastUsedBy();
	if (((!GetIsDead(oKor35_victim)) && GetGlobalBoolean("KOR_PC_INTERROGATE"))) {
		AssignCommand(oKor35_victim, ActionStartConversation(object3, "kor35_victim", 0, 0, 1, "", "", "", "", "", ""));
	}
	else {
		if (GetIsDead(oKor35_victim)) {
			ActionStartConversation(object3, "kor35_nocons", 0, 1, 0, "", "", "", "", "", "");
		}
	}
}

