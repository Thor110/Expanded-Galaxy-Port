void main() {
	AssignCommand(GetObjectByTag("tar03_bekcs2", 0), ActionMoveToObject(GetObjectByTag("tar03_wpbeks", 0), 1, 1.0));
	AssignCommand(GetObjectByTag("tar03_vulkcut2", 0), ActionMoveToObject(GetObjectByTag("tar03_wpvulkars", 0), 1, 1.0));
	ActionPauseConversation();
	ActionWait(8.0);
	ActionResumeConversation();
}

