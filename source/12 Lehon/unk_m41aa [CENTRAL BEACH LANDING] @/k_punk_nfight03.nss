void main() {
	ActionPauseConversation();
	AssignCommand(GetObjectByTag("unk41_blk4", 0), ActionPlayAnimation(101, 1.0, 1.0));
	ActionWait(0.8);
	ActionResumeConversation();
}

