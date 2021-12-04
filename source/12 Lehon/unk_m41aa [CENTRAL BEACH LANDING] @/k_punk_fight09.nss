void main() {
	ActionPauseConversation();
	AssignCommand(GetObjectByTag("unk41_redrak1", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("red1move", 0)), 0));
	AssignCommand(GetObjectByTag("unk41_redrak2", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("red2move", 0)), 0));
	AssignCommand(GetObjectByTag("unk41_redrak3", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("red3move", 0)), 0));
	MusicBackgroundStop(GetArea(OBJECT_SELF));
	DelayCommand(0.1, MusicBattlePlay(GetArea(OBJECT_SELF)));
	ActionWait(5.0);
	ActionResumeConversation();
}

