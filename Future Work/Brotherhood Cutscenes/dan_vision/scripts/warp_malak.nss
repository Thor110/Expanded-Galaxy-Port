void main() {
	ActionPauseConversation();
	ActionWait(2.0);
	object oVision_malak = GetObjectByTag("vision_malak", 0);
	object oVision_channa = GetObjectByTag("vision_channa", 0);
	object oPC = GetFirstPC();
	object oWp_malak2 = GetWaypointByTag("wp_malak2");
	object oWp_channa = GetWaypointByTag("wp_channa");
	object oWp_revan = GetWaypointByTag("wp_revan");
	ActionDoCommand(SetCommandable(1, oVision_malak));
	AssignCommand(oVision_malak, JumpToObject(oWp_malak2, 1));
	ActionResumeConversation();
}

