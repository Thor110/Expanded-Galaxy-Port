void main() {
	ActionPauseConversation();
	ActionWait(11.0);
	ActionResumeConversation();
	DelayCommand(1.5, SetDialogPlaceableCamera(8));
	DelayCommand(3.0, SetDialogPlaceableCamera(11));
	DelayCommand(7.0, SetDialogPlaceableCamera(2));
}

