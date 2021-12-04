void main() {
	ActionPauseConversation();
	AssignCommand(GetObjectByTag("unk41_rancor2", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("rancmove", 0)), 0));
	AssignCommand(GetObjectByTag("unk41_blackrak4", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("black4move", 0)), 0));
	AssignCommand(GetObjectByTag("unk41_blackrak4", 0), ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("red1move", 0)))));
	AssignCommand(GetObjectByTag("unk41_blackrak5", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("black5move", 0)), 0));
	AssignCommand(GetObjectByTag("unk41_blackrak5", 0), ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("red1move", 0)))));
	ActionWait(3.0);
	ActionResumeConversation();
}

