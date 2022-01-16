void main() {
	object oDan14_nurik = CreateObject(1, "dan14_nurik", GetLocation(GetObjectByTag("dan14ad_wp_nurik_01", 0)), 0);
	object oDan14ad_drd03 = CreateObject(1, "dan14ad_drd03", GetLocation(GetObjectByTag("dan14ad_wp_droidc_01", 0)), 0);
	object oDan14ad_drd04 = CreateObject(1, "dan14ad_drd04", GetLocation(GetObjectByTag("dan14ad_wp_droidd_01", 0)), 0);
	DelayCommand(0.5, AssignCommand(oDan14_nurik, ActionMoveToObject(GetObjectByTag("dan14ad_wp_nurik_02", 0), 0, 1.0)));
	DelayCommand(0.5, AssignCommand(oDan14ad_drd03, ActionMoveToObject(GetObjectByTag("dan14ad_wp_droidc_02", 0), 0, 1.0)));
	DelayCommand(0.5, AssignCommand(oDan14ad_drd04, ActionMoveToObject(GetObjectByTag("dan14ad_wp_droidd_02", 0), 0, 1.0)));
	ActionPauseConversation();
	ActionWait(6.0);
	ActionResumeConversation();
}

