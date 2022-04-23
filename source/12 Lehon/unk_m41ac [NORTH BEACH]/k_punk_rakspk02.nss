void main() {
	ActionPauseConversation();
	AssignCommand(GetObjectByTag("unk41_blk1", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("blk1wp", 0)), 1));
	AssignCommand(GetObjectByTag("unk41_blk1", 0), ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("playerwp2", 0)))));
	AssignCommand(GetObjectByTag("unk41_blk2", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("blk2wp", 0)), 1));
	AssignCommand(GetObjectByTag("unk41_blk2", 0), ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("playerwp2", 0)))));
	AssignCommand(GetObjectByTag("unk41_blk3", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("blk3wp", 0)), 1));
	AssignCommand(GetObjectByTag("unk41_blk3", 0), ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("playerwp2", 0)))));
	AssignCommand(GetObjectByTag("unk41_blk4", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("blk4wp", 0)), 1));
	AssignCommand(GetObjectByTag("unk41_blk4", 0), ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("playerwp2", 0)))));
	AssignCommand(GetObjectByTag("unk41_rancor01", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("rancor01wp", 0)), 1));
	AssignCommand(GetObjectByTag("unk41_rancor01", 0), ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("playerwp2", 0)))));
	AssignCommand(GetObjectByTag("unk41_rancor02", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("rancor02wp", 0)), 1));
	AssignCommand(GetObjectByTag("unk41_rancor02", 0), ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("playerwp2", 0)))));
	AssignCommand(GetObjectByTag("unk41_rancord", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("br2", 0)), 0));
	AssignCommand(GetObjectByTag("unk41_rancord", 0), ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("playerwp2", 0)))));
	ActionWait(3.0);
	ActionResumeConversation();
}

