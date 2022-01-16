void main() {
	ActionPauseConversation();
	object oPC = GetFirstPC();
	CreateItemOnObject("k35_itm_sithdata", oPC, 1);
	ActionResumeConversation();
	SetGlobalNumber("KOR_BETRAYAL", 2);
}

