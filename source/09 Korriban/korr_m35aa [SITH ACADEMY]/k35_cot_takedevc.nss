void main() {
	ActionPauseConversation();
	object oPC = GetFirstPC();
	object object3 = GetItemPossessedBy(oPC, "k35_itm_sithdevc");
	DestroyObject(object3, 0.0, 0, 0.0);
	ActionResumeConversation();
	SetGlobalBoolean("KOR_UTHAR_POISON", 1);
}

