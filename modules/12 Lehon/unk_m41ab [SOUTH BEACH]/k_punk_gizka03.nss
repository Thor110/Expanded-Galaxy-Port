void main() {
	ActionPauseConversation();
	AssignCommand(GetObjectByTag("unk41_gizkax", 0), ActionMoveToObject(GetObjectByTag("gizkaend", 0), 0, 0.2));
	ActionWait(3.0);
	ActionResumeConversation();
}

