void main() {
	ActionPauseConversation();
	AssignCommand(GetPCSpeaker(), ActionMoveToLocation(GetLocation(GetObjectByTag("invish", 0)), 0));
	AssignCommand(GetObjectByTag("unk41_rancor2", 0), SetFacingPoint(GetPosition(GetObjectByTag("rancmove", 0))));
	AssignCommand(GetObjectByTag("unk41_blackrak4", 0), SetFacingPoint(GetPosition(GetObjectByTag("rancmove", 0))));
	SetGlobalFadeIn(0.0, 2.0, 0.0, 0.0, 0.0);
	ActionWait(6.0);
	ActionResumeConversation();
}

