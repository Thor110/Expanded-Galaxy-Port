void main() {
	object oKas24_joleetrig = GetObjectByTag("kas24_joleetrig", 0);
	object oArea = GetArea(OBJECT_SELF);
	MusicBackgroundStop(oArea);
	DelayCommand(0.1, MusicBattlePlay(oArea));
	ActionPauseConversation();
	DestroyObject(oKas24_joleetrig, 0.0, 0, 0.0);
	DelayCommand(4.0, ActionResumeConversation());
}

