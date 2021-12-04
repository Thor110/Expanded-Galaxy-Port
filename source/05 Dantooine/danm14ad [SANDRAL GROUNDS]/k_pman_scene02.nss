void main() {
	ActionPauseConversation();
	ActionWait(4.0);
	ActionResumeConversation();
	AssignCommand(GetObjectByTag("dan14_ahlan", 0), ActionMoveToObject(GetObjectByTag("dan14ad_wp_alhan_01", 0), 1, 1.0));
	AssignCommand(GetObjectByTag("dan14ad_drd01", 0), ActionMoveToObject(GetObjectByTag("dan14ad_wp_droida_01", 0), 1, 1.0));
	AssignCommand(GetObjectByTag("dan14ad_drd02", 0), ActionMoveToObject(GetObjectByTag("dan14ad_wp_droidb_01", 0), 1, 1.0));
	AssignCommand(GetObjectByTag("dan14_shen", 0), ActionMoveToObject(GetObjectByTag("dan14ad_wp_alhan_01", 0), 1, 1.0));
}

