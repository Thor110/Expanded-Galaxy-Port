void main() {
	object oPC = GetFirstPC();
	object oKor38b_mekel = GetObjectByTag("kor38b_mekel", 0);
	object oNPC = GetPartyMemberByIndex(1);
	object object7 = GetPartyMemberByIndex(2);
	ActionPauseConversation();
	AssignCommand(oPC, ClearAllActions());
	AssignCommand(oPC, ActionPlayAnimation(22, 1.0, 30.0));
	if (GetIsObjectValid(oKor38b_mekel)) {
		AssignCommand(oKor38b_mekel, ClearAllActions());
		AssignCommand(oKor38b_mekel, ActionPlayAnimation(22, 1.0, 30.0));
	}
	if (GetIsObjectValid(oNPC)) {
		AssignCommand(oNPC, ClearAllActions());
		AssignCommand(oNPC, ActionPlayAnimation(22, 1.0, 30.0));
	}
	if (GetIsObjectValid(object7)) {
		AssignCommand(object7, ClearAllActions());
		AssignCommand(object7, ActionPlayAnimation(22, 1.0, 30.0));
	}
	ActionResumeConversation();
}

