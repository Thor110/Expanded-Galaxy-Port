void main() {
	object oArea = GetArea(OBJECT_SELF);
	MusicBackgroundStop(oArea);
	DelayCommand(0.1, MusicBattlePlay(oArea));
	ActionPauseConversation();
	DelayCommand(12.2, ActionResumeConversation());
	DelayCommand(2.6, SetDialogPlaceableCamera(14));
	DelayCommand(5.9, SetDialogPlaceableCamera(15));
	DelayCommand(8.8, SetDialogPlaceableCamera(16));
}
