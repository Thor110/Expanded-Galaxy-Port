void main() {
	object oPC = GetFirstPC();
	SetGlobalNumber("STA_DOOR45A", 2);
	ActionStartConversation(oPC, "", 0, 0, 0, "", "", "", "", "", "");
}

