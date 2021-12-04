void main() {
	object oPebn_bastila = GetWaypointByTag("pebn_bastila");
	object oPC = GetFirstPC();
	object oBastila = GetObjectByTag("bastila", 0);
	ActionPauseConversation();
	AssignCommand(oBastila, JumpToObject(oPebn_bastila, 0));
	ActionWait(1.0);
	ActionResumeConversation();
}

