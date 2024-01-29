void main() {
	ActionPauseConversation();
	AssignCommand(GetObjectByTag("unk41_blk4", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("rancorwp", 0)), 0));
	ActionWait(5.5);
	ActionResumeConversation();
}

