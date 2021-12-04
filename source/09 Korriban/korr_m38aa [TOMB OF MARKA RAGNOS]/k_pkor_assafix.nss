void main() {
	object oPC = GetFirstPC();
	ActionPauseConversation();
	AssignCommand(oPC, ActionPlayAnimation(11, 1.0, 2.0));
	ActionResumeConversation();
}

