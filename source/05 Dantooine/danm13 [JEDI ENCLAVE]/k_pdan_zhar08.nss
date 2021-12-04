void main() {
	ActionPauseConversation();
	ExecuteScript("k_pdan_player03", GetFirstPC(), 0xFFFFFFFF);
	ActionWait(12.0);
	ActionResumeConversation();
	DelayCommand(2.0, SetDialogPlaceableCamera(37));
	DelayCommand(6.0, SetDialogPlaceableCamera(2));
}

