void main() {
	AssignCommand(GetFirstPC(), ActionMoveToObject(GetObjectByTag("ebo_showmap", 0), 0, 1.0));
	ActionPauseConversation();
	ActionWait(2.0);
	ActionResumeConversation();
}

