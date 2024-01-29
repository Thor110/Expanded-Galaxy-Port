void main() {
	int nGlobal = GetGlobalNumber("END_CARTH_DLG");
	SetGlobalNumber("END_CARTH_DLG", (nGlobal + 1));
	ActionPauseConversation();
	ActionWait(1.5);
	ActionResumeConversation();
	DelayCommand(1.0, SetDialogPlaceableCamera(6));
}

