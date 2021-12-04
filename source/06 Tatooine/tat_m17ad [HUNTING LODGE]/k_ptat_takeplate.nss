void main() {
	object oPC = GetFirstPC();
	object object3 = GetItemPossessedBy(oPC, "tat18_wraidplate");
	ActionPauseConversation();
	ActionTakeItem(object3, oPC);
	ActionResumeConversation();
}

