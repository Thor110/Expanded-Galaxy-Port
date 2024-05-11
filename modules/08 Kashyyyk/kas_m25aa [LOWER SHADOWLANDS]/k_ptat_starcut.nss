void main() {
	object oK_TAT_STAR_MAP = GetObjectByTag("K_TAT_STAR_MAP", 0);
	ActionPauseConversation();
	DelayCommand(11.0, ActionResumeConversation());
	SetGlobalBoolean("tat_StarmapFound", 1);
	ExecuteScript("k_pla_actmap", oK_TAT_STAR_MAP, 0xFFFFFFFF);
}

