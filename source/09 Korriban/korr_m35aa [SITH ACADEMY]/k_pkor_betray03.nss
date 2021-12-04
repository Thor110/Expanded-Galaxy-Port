void main() {
	ActionPauseConversation();
	object oSpeaker = GetPCSpeaker();
	CreateItemOnObject("k35_itm_uthrpass", oSpeaker, 1);
	CreateItemOnObject("k35_itm_sithdevc", oSpeaker, 1);
	ActionResumeConversation();
	SetGlobalNumber("KOR_BETRAYAL", 3);
}

