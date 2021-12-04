void main() {
	object oPC = GetFirstPC();
	object object3 = GetItemPossessedBy(OBJECT_SELF, "tat18_wraidplate");
	ActionPauseConversation();
	ActionGiveItem(object3, oPC);
	ActionResumeConversation();
}

