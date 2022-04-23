void main() {
	ActionPauseConversation();
	ActionMoveToObject(GetObjectByTag("dan14aa_wp_elise02", 0), 1, 1.0);
	AssignCommand(GetObjectByTag("dan14_c8692", 0), ActionMoveToObject(GetObjectByTag("dan14aa_wp_elise02", 0), 0, 1.0));
	ActionResumeConversation();
}

