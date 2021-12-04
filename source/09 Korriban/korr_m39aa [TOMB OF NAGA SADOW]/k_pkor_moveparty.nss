void main() {
	object oNPC = GetPartyMemberByIndex(0);
	object object3 = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	object oK39_way_trappc0 = GetObjectByTag("k39_way_trappc0", 0);
	object oK39_way_trappc1 = GetObjectByTag("k39_way_trappc1", 0);
	object oK39_way_trappc2 = GetObjectByTag("k39_way_trappc2", 0);
	ActionPauseConversation();
	AssignCommand(oNPC, ActionMoveToObject(oK39_way_trappc0, 0, 1.0));
	if (GetIsObjectValid(object3)) {
		DelayCommand(0.5, AssignCommand(object3, ActionMoveToObject(oK39_way_trappc1, 0, 1.0)));
	}
	if (GetIsObjectValid(object5)) {
		DelayCommand(0.5, AssignCommand(object5, ActionMoveToObject(oK39_way_trappc2, 0, 1.0)));
	}
	ActionWait(3.0);
	ActionResumeConversation();
}

