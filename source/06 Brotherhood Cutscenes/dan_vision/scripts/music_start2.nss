void main() {
	ActionPauseConversation();
	ActionWait(2.0);
	object oArea = GetArea(OBJECT_SELF);
	int int1 = 47;
	int int2 = 0;
	MusicBattleStop(oArea);
	MusicBattleChange(oArea, int2);
	MusicBackgroundStop(oArea);
	MusicBackgroundChangeDay(oArea, int1);
	MusicBackgroundChangeNight(oArea, int1);
	MusicBackgroundPlay(oArea);
	ActionResumeConversation();
}

