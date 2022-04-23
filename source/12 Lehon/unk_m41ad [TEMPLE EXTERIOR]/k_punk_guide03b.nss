void main() {
	ActionPauseConversation();
	AssignCommand(GetObjectByTag("unk41_raguideb", 0), ActionMoveToObject(GetObjectByTag("blackexit", 0), 1, 1.0));
	ActionWait(2.0);
	ActionResumeConversation();
}

