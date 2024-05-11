void main() {
	ActionPauseConversation();
	ExecuteScript("k_pdan_player03", GetFirstPC(), 0xFFFFFFFF);
	ActionWait(6.0);
	ActionResumeConversation();
	DelayCommand(2.0, SetDialogPlaceableCamera(37));
}

