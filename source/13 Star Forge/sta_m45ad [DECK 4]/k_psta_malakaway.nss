void main() {
	object oPC = GetFirstPC();
	object oSta_45darthMalak = GetObjectByTag("sta_45darthMalak", 0);
	ActionPauseConversation();
	AssignCommand(oSta_45darthMalak, ActionMoveAwayFromObject(oPC, 0, 20.0));
	ActionWait(3.0);
	ActionResumeConversation();
}

