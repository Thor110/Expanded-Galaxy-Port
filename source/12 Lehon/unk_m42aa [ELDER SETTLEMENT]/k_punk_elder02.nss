void main() {
	ActionPauseConversation();
	ActionMoveToLocation(GetLocation(GetObjectByTag("eld2", 0)), 0);
	ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("playermove", 0))));
	AssignCommand(GetObjectByTag("unk42_redelder2", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("eld1", 0)), 0));
	AssignCommand(GetObjectByTag("unk42_redelder2", 0), ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("playermove", 0)))));
	AssignCommand(GetObjectByTag("unk42_redelder3", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("eld3", 0)), 0));
	AssignCommand(GetObjectByTag("unk42_redelder3", 0), ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("playermove", 0)))));
	SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
	ActionWait(2.0);
	ActionResumeConversation();
}

