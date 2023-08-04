void main() {
	object oPC = GetFirstPC();
	object oK39_way_player = GetObjectByTag("k39_way_player", 0);
	ActionPauseConversation();
	AssignCommand(oPC, ActionMoveToObject(oK39_way_player, 0, 1.0));
	ActionWait(2.0);
	ActionResumeConversation();
}

