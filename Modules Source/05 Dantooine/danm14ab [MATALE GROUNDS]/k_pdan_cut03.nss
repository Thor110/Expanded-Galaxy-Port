void main() {
	object oDanm14aa_WP_alhan_02 = GetObjectByTag("danm14aa_WP_alhan_02", 0);
	object oDan14_ahlan = CreateObject(1, "dan14_ahlan", GetLocation(GetObjectByTag("danm14aa_WP_alhan_01", 0)), 0);
	AssignCommand(oDan14_ahlan, ActionWait(0.5));
	AssignCommand(oDan14_ahlan, ActionMoveToObject(oDanm14aa_WP_alhan_02, 0, 1.0));
	ActionPauseConversation();
	ActionWait(5.0);
	ActionResumeConversation();
	ExecuteScript("k_pman_player21", GetFirstPC(), 0xFFFFFFFF);
}

