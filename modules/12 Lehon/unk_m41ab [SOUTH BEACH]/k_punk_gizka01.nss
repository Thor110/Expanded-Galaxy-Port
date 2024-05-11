void main() {
	ActionPauseConversation();
	AssignCommand(GetObjectByTag("unk41_gizkax", 0), ActionMoveToObject(GetObjectByTag("gizkamid", 0), 0, 0.2));
	ActionWait(2.0);
	ActionResumeConversation();
}

