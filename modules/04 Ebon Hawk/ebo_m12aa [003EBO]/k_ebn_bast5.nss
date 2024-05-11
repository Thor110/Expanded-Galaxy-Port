void main() {
	int nGlobal = GetGlobalNumber("K_SWG_BASTILA");
	SetGlobalNumber("K_SWG_BASTILA", (nGlobal + 1));
	object oK_ROMANCE_PC = GetWaypointByTag("K_ROMANCE_PC");
	object oK_ROMANCE_RUNAWAY = GetWaypointByTag("K_ROMANCE_RUNAWAY");
	object oPC = GetFirstPC();
	object oBastila = GetObjectByTag("bastila", 0);
	DelayCommand(2.0, AssignCommand(oBastila, ClearAllActions()));
	ActionPauseConversation();
	AssignCommand(oBastila, ActionMoveToObject(oK_ROMANCE_RUNAWAY, 1, 1.0));
	DelayCommand(2.1, ActionResumeConversation());
}

