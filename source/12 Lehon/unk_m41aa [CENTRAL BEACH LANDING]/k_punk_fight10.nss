void main() {
	ActionPauseConversation();
	AssignCommand(GetObjectByTag("unk41_rancor2", 0), ActionPlayAnimation(107, 1.0, 0.0));
	ActionWait(2.0);
	ActionResumeConversation();
}

