void main() {
	object oDan14_rickard = GetObjectByTag("dan14_rickard", 0);
	ActionPauseConversation();
	ActionTakeItem(GetItemPossessedBy(oDan14_rickard, "dan14_nothing"), oDan14_rickard);
	ActionResumeConversation();
}

