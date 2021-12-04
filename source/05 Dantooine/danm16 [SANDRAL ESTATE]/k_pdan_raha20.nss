void main() {
	SetGlobalBoolean("DAN_RAHA_AGREE", 1);
	ActionPauseConversation();
	ActionJumpToObject(GetObjectByTag("dan16_raha01", 0), 1);
	ActionForceMoveToObject(GetObjectByTag("dan16_raha02", 0), 1, 1.0, 6.0);
	ActionResumeConversation();
	ActionDoCommand(DestroyObject(OBJECT_SELF, 0.0, 0, 0.0));
	SetCommandable(0, OBJECT_SELF);
}

