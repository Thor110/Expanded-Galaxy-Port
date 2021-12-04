void main() {
	object oK_ROMANCE_PC = GetWaypointByTag("K_ROMANCE_PC");
	object oK_ROMANCE_BASTILA = GetWaypointByTag("K_ROMANCE_BASTILA");
	object oPC = GetFirstPC();
	object oBastila = GetObjectByTag("bastila", 0);
	ActionPauseConversation();
	AssignCommand(oPC, JumpToObject(oK_ROMANCE_PC, 0));
	AssignCommand(oBastila, JumpToObject(oK_ROMANCE_BASTILA, 0));
	ActionWait(1.0);
	ActionResumeConversation();
}

