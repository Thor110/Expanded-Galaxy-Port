void main() {
	object oPC = GetFirstPC();
	object object3 = GetItemPossessedBy(oPC, "kas25_swordblade");
	ActionPauseConversation();
	ActionTakeItem(object3, oPC);
	ActionResumeConversation();
}

