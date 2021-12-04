void main() {
	SetGlobalBoolean("DAN_BELAYA_DEFECT", 1);
	ActionPauseConversation();
	ActionJumpToObject(GetObjectByTag("wp_belaya_flee01", 0), 1);
	ActionMoveToObject(GetObjectByTag("wp_belaya_flee02", 0), 1, 3.0);
	ActionResumeConversation();
}

