void main() {
	ActionPauseConversation();
	DelayCommand(2.0, ActionResumeConversation());
	int int1 = (GetGlobalNumber("STA_MALAK_TALK") + 1);
	SetGlobalNumber("STA_MALAK_TALK", int1);
	SetFacingPoint(GetPosition(GetFirstPC()));
	SetLockOrientationInDialog(OBJECT_SELF, 0);
}
