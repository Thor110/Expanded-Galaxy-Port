void main() {
	object oDan14_handon = GetObjectByTag("dan14_handon", 0);
	ActionPauseConversation();
	ActionTakeItem(GetItemPossessedBy(oDan14_handon, "dan14_nothing"), oDan14_handon);
	ActionResumeConversation();
}

