void main() {
	ActionPauseConversation();
	ActionWait(6.0);
	ActionResumeConversation();
	AssignCommand(GetPartyMemberByIndex(0), ActionMoveToObject(GetObjectByTag("wp_tomb", 0), 0, 1.0));
	DelayCommand(2.5, SetGlobalFadeOut(0.0, 0.25, 0.0, 0.0, 0.0));
	DelayCommand(2.75, SetGlobalFadeIn(0.0, 0.25, 0.0, 0.0, 0.0));
	DelayCommand(2.75, SetDialogPlaceableCamera(7));
	DelayCommand(4.5, SetGlobalFadeOut(0.0, 0.25, 0.0, 0.0, 0.0));
	DelayCommand(4.75, SetGlobalFadeIn(0.0, 0.25, 0.0, 0.0, 0.0));
	DelayCommand(4.75, SetDialogPlaceableCamera(8));
}

