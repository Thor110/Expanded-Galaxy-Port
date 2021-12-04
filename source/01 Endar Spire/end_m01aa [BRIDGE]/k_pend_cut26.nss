void main() {
	ActionPauseConversation();
	ActionDoCommand(SignalEvent(GetObjectByTag("end_bandon", 0), EventUserDefined(5)));
	DelayCommand(2.0, SetDialogPlaceableCamera(7));
}

