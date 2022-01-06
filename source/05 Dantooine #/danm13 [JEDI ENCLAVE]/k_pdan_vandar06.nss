void main() {
	ActionPauseConversation();
	ActionWait(3.0);
	ActionResumeConversation();
	AssignCommand(GetFirstPC(), ClearAllActions());
	AssignCommand(GetFirstPC(), ActionMoveToObject(GetObjectByTag("dan13_WP_council", 0), 1, 1.0));
	DelayCommand(2.0, SetDialogPlaceableCamera(8));
}

