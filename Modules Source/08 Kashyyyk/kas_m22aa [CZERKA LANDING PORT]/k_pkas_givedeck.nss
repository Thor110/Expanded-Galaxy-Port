void main() {
	object oPC = GetFirstPC();
	object object3 = GetItemPossessedBy(OBJECT_SELF, "g_i_pazdeck");
	SetGlobalBoolean("G_PazzakDeck", 1);
	ActionPauseConversation();
	ActionGiveItem(object3, oPC);
	ActionResumeConversation();
}

