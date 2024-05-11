void main() {
	int nGlobal = GetGlobalNumber("K_SWG_BASTILA");
	SetGlobalNumber("K_SWG_BASTILA", 99);
	object oK_ROMANCE_PC = GetWaypointByTag("K_ROMANCE_PC");
	object oK_ROMANCE_RUNAWAY = GetWaypointByTag("K_ROMANCE_RUNAWAY");
	object oPC = GetFirstPC();
	object oBastila = GetObjectByTag("bastila", 0);
	DelayCommand(3.0, AssignCommand(oBastila, ClearAllActions()));
	ActionPauseConversation();
	AssignCommand(oBastila, ActionMoveToObject(oK_ROMANCE_RUNAWAY, 0, 1.0));
	DelayCommand(2.1, ActionResumeConversation());
}

