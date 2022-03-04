void main() {
	ActionPauseConversation();
	AssignCommand(GetPCSpeaker(), ActionMoveToObject(GetObjectByTag("carth", 0), 1, 1.0));
	ActionWait(1.0);
	ActionResumeConversation();
}

