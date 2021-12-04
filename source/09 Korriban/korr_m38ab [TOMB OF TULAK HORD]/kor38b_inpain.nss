void main() {
	object oPC = GetFirstPC();
	object oNPC = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	ActionPauseConversation();
	AssignCommand(oPC, ClearAllActions());
	AssignCommand(oPC, ActionPlayAnimation(22, 1.0, 30.0));
	ClearAllActions();
	ActionPlayAnimation(13, 0.5, 1.0);
	if (GetIsObjectValid(oNPC)) {
		AssignCommand(oNPC, ClearAllActions());
		AssignCommand(oNPC, ActionPlayAnimation(22, 1.0, 30.0));
	}
	if (GetIsObjectValid(object5)) {
		AssignCommand(object5, ClearAllActions());
		AssignCommand(object5, ActionPlayAnimation(22, 1.0, 30.0));
	}
	ActionResumeConversation();
}

