void main() {
	ActionPauseConversation();
	ActionWait(3.0);
	ActionResumeConversation();
	AssignCommand(GetFirstPC(), ClearAllActions());
	AssignCommand(GetFirstPC(), ActionMoveToObject(GetObjectByTag("wp_dan_cut3", 0), 1, 1.0));
}

