void main() {
	ActionPauseConversation();
	ActionWait(3.0);
	ActionResumeConversation();
	AssignCommand(GetObjectByTag("dan14_ahlan", 0), ActionMoveToObject(GetObjectByTag("dan14ad_wp_alhan_02", 0), 0, 1.0));
	AssignCommand(GetObjectByTag("dan14ad_drd01", 0), ActionMoveToObject(GetObjectByTag("dan14ad_wp_droida_02", 0), 0, 1.0));
	AssignCommand(GetObjectByTag("dan14ad_drd02", 0), ActionMoveToObject(GetObjectByTag("dan14ad_wp_droidb_02", 0), 0, 1.0));
}

