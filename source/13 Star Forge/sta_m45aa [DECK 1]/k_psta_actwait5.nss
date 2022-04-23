// Prototypes
void sub1(float floatParam1);

void sub1(float floatParam1) {
	ActionPauseConversation();
	DelayCommand(floatParam1, ActionResumeConversation());
}

void main() {
	object oArea = GetArea(OBJECT_SELF);
	MusicBackgroundStop(oArea);
	DelayCommand(0.1, MusicBattlePlay(oArea));
	sub1(12.2);
	DelayCommand(2.6, SetDialogPlaceableCamera(14));
	DelayCommand(5.9, SetDialogPlaceableCamera(15));
	DelayCommand(8.8, SetDialogPlaceableCamera(16));
}

