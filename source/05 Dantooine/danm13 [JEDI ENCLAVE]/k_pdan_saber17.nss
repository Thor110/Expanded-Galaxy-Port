void main() {
	ActionPauseConversation();
	ActionDoCommand(ExecuteScript("k_pdan_player01", GetFirstPC(), 0xFFFFFFFF));
	DelayCommand(2.0, SetDialogPlaceableCamera(30));
}

