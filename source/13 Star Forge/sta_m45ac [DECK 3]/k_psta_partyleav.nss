void main() {
	ActionPauseConversation();
	object oPC = GetFirstPC();
	object oNPC = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	RemoveFromParty(oPC);
	object oSta_way_exit = GetObjectByTag("sta_way_exit", 0);
	AssignCommand(oNPC, ActionMoveToObject(oSta_way_exit, 0, 1.0));
	AssignCommand(object5, ActionMoveToObject(oSta_way_exit, 0, 1.0));
	DelayCommand(3.0, DestroyObject(oNPC, 0.0, 0, 0.0));
	DelayCommand(3.0, DestroyObject(object5, 0.0, 0, 0.0));
	ActionResumeConversation();
}

