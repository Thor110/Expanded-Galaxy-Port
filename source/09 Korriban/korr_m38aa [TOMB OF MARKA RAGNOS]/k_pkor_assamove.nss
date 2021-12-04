void main() {
	object oPC = GetFirstPC();
	ActionPauseConversation();
	ActionMoveToObject(oPC, 0, 1.0);
	ActionResumeConversation();
}

