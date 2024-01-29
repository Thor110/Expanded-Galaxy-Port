void main() {
	object oSta_bastila = GetObjectByTag("sta_bastila", 0);
	object oPC = GetFirstPC();
	ActionPauseConversation();
	AssignCommand(oSta_bastila, ActionMoveToObject(oPC, 0, 1.0));
	ActionWait(3.0);
	ActionResumeConversation();
}

