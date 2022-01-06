void main() {
	ActionPauseConversation();
	ChangeToStandardFaction(GetObjectByTag("unk41_blackrak4", 0), 5);
	ChangeToStandardFaction(GetObjectByTag("unk41_blackrak5", 0), 5);
	ChangeToStandardFaction(GetObjectByTag("unk41_redrak1", 0), 5);
	ChangeToStandardFaction(GetObjectByTag("unk41_redrak2", 0), 5);
	ChangeToStandardFaction(GetObjectByTag("unk41_redrak3", 0), 5);
	AssignCommand(GetObjectByTag("unk41_blackrak4", 0), ClearAllActions());
	DelayCommand(0.5, AssignCommand(GetObjectByTag("unk41_blackrak4", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("gizkaend", 0)), 1)));
	AssignCommand(GetObjectByTag("unk41_blackrak5", 0), ClearAllActions());
	DelayCommand(0.5, AssignCommand(GetObjectByTag("unk41_blackrak5", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("gizkaend", 0)), 1)));
	AssignCommand(GetObjectByTag("unk41_redrak1", 0), ClearAllActions());
	AssignCommand(GetObjectByTag("unk41_redrak1", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("gizkaend", 0)), 1));
	AssignCommand(GetObjectByTag("unk41_redrak2", 0), ClearAllActions());
	AssignCommand(GetObjectByTag("unk41_redrak2", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("gizkaend", 0)), 1));
	AssignCommand(GetObjectByTag("unk41_redrak3", 0), ClearAllActions());
	AssignCommand(GetObjectByTag("unk41_redrak3", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("gizkaend", 0)), 1));
	MusicBattleStop(GetArea(OBJECT_SELF));
	DelayCommand(0.1, MusicBackgroundPlay(GetArea(OBJECT_SELF)));
	ActionWait(4.0);
	ActionResumeConversation();
}

