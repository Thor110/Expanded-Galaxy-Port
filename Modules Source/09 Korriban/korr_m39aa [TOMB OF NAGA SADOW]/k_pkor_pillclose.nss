void main() {
	object oPC = GetFirstPC();
	object oK39_plc_pillcomp = GetObjectByTag("k39_plc_pillcomp", 0);
	ActionPauseConversation();
	AssignCommand(oPC, ActionMoveToObject(oK39_plc_pillcomp, 0, 1.0));
	ActionWait(1.5);
	ActionResumeConversation();
}

