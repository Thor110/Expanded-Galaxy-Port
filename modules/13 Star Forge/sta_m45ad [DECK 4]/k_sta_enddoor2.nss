void main() {
	location location1 = GetLocation(GetObjectByTag("wp_final_pc_walk", 0));
	object oWp_transabort = GetObjectByTag("wp_transabort", 0);
	object oPC = GetFirstPC();
	object oK45_door_end = GetObjectByTag("k45_door_end", 0);
	ActionPauseConversation();
	DelayCommand(3.0, ActionResumeConversation());
	DelayCommand(2.5, SetGlobalFadeOut(0.0, 0.5, 0.0, 0.0, 0.0));
}
