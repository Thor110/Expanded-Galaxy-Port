void main() {
	object oPC = GetFirstPC();
	SetGlobalNumber("STA_DOOR45B", 1);
	ActionStartConversation(oPC, "", 0, 0, 0, "", "", "", "", "", "");
}

