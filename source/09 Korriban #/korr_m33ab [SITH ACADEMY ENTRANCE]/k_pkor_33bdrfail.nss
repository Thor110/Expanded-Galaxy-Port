void main() {
	object oPC = GetFirstPC();
	if (GetGlobalBoolean("KOR_END_HOSTILE")) {
		SetGlobalNumber("KOR_DOOR33B", 2);
	}
	else {
		SetGlobalNumber("KOR_DOOR33B", 1);
	}
	ActionStartConversation(oPC, "", 0, 0, 0, "", "", "", "", "", "");
}

