void main() {
	object oPC = GetFirstPC();
	SetGlobalNumber("STA_DOOR45A", 1);
	ActionStartConversation(oPC, "", 0, 0, 0, "", "", "", "", "", "");
}

