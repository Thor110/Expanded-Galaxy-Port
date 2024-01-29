void main() {
	object oK_ROMANCE_PC = GetWaypointByTag("K_ROMANCE_PC");
	object oK_ROMANCE_BASTILA = GetWaypointByTag("K_ROMANCE_BASTILA");
	object oPC = GetFirstPC();
	object oBastila = GetObjectByTag("bastila", 0);
	DelayCommand(2.0, AssignCommand(oBastila, ClearAllActions()));
	ActionPauseConversation();
	AssignCommand(oBastila, ActionMoveToObject(oK_ROMANCE_BASTILA, 0, 1.0));
	AssignCommand(oPC, ActionMoveToObject(oK_ROMANCE_PC, 0, 1.0));
	DelayCommand(2.1, ActionResumeConversation());
}

