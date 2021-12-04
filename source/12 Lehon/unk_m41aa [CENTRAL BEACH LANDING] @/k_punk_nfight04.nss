void main() {
	ActionPauseConversation();
	AssignCommand(GetObjectByTag("unk41_blk4", 0), SetFacingPoint(GetPosition(GetFirstPC())));
	AssignCommand(GetObjectByTag("unk41_blk1", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("black1wp", 0)), 1));
	AssignCommand(GetObjectByTag("unk41_blk1", 0), ActionDoCommand(SetFacingPoint(GetPosition(GetFirstPC()))));
	ActionWait(3.0);
	ActionResumeConversation();
}

