void main() {
	object oNPC = GetPartyMemberByIndex(0);
	object object3 = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	ActionPauseConversation();
	if (GetIsObjectValid(oNPC)) {
		AssignCommand(oNPC, ClearAllActions());
		AssignCommand(oNPC, ActionPlayAnimation(23, 1.0, 30.0));
	}
	if (GetIsObjectValid(object3)) {
		AssignCommand(object3, ClearAllActions());
		DelayCommand(0.5, AssignCommand(object3, ActionPlayAnimation(23, 1.0, 30.0)));
	}
	if (GetIsObjectValid(object5)) {
		AssignCommand(object5, ClearAllActions());
		DelayCommand(1.0, AssignCommand(object5, ActionPlayAnimation(23, 1.0, 30.0)));
	}
	ActionWait(3.0);
	ActionResumeConversation();
}

