void main() {
	ActionPauseConversation();
	ActionWait(1.0);
	object oPC = GetFirstPC();
	object oRevan_bastila2 = GetObjectByTag("revan_bastila2", 0);
	object oWp_bastiladead = GetWaypointByTag("wp_bastiladead");
	object oWp_revan3 = GetWaypointByTag("wp_revan3");
	AssignCommand(oPC, JumpToObject(oWp_revan3, 1));
	AssignCommand(oRevan_bastila2, JumpToObject(oWp_bastiladead, 1));
	ActionResumeConversation();
}

