void main() {
	ActionPauseConversation();
	AssignCommand(GetObjectByTag("unk41_raguider", 0), ActionMoveToObject(GetObjectByTag("redexit", 0), 1, 1.0));
	ActionWait(2.0);
	ActionResumeConversation();
}

