void main() {
	object oPC = GetFirstPC();
	object oSta_way_gameend = GetObjectByTag("sta_way_gameend", 0);
	ActionPauseConversation();
	AssignCommand(oPC, ActionMoveToObject(oSta_way_gameend, 1, 1.0));
	DelayCommand(1.0, ActionMoveToObject(oSta_way_gameend, 1, 1.0));
	ActionWait(6.0);
	ActionResumeConversation();
}

