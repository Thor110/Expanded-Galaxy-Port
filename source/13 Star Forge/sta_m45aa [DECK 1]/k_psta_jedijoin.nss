void main() {
	object oNPC = GetPartyMemberByIndex(0);
	object object3 = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	object oSta_way_player = GetObjectByTag("sta_way_player", 0);
	object oSta_way_player2 = GetObjectByTag("sta_way_player2", 0);
	object oSta_Jedi001 = GetObjectByTag("sta_Jedi001", 0);
	ActionPauseConversation();
	AssignCommand(oNPC, ClearAllActions());
	AssignCommand(oNPC, ActionMoveToObject(oSta_Jedi001, 1, 1.0));
	AssignCommand(object3, ClearAllActions());
	DelayCommand(1.0, AssignCommand(object3, ActionMoveToObject(oSta_way_player, 1, 1.0)));
	AssignCommand(object5, ClearAllActions());
	DelayCommand(2.0, AssignCommand(object5, ActionMoveToObject(oSta_way_player2, 1, 1.0)));
	ActionWait(3.0);
	ActionResumeConversation();
}

