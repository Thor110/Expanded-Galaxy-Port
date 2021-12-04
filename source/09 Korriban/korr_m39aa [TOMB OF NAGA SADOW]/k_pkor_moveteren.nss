void main() {
	object oNPC = GetPartyMemberByIndex(0);
	object oK39_way_traptere = GetObjectByTag("k39_way_traptere", 0);
	ActionPauseConversation();
	AssignCommand(oNPC, ActionMoveToObject(oK39_way_traptere, 0, 1.0));
	ActionWait(2.0);
	ActionResumeConversation();
}

