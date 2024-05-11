void main() {
	object oPC = GetFirstPC();
	ActionPauseConversation();
	location location1 = GetLocation(GetObjectByTag("sta_pc_start", 0));
	AssignCommand(oPC, ClearAllActions());
	AssignCommand(oPC, JumpToLocation(location1));
	object oSta_way_player = GetObjectByTag("sta_way_player", 0);
	SetLockOrientationInDialog(OBJECT_SELF, 1);
	SetFacing(GetFacing(GetObjectByTag("sta_way_player", 0)));
	PlayAnimation(1, 1.0, (-1.0));
	DelayCommand(0.5, AssignCommand(oPC, ActionMoveToObject(oSta_way_player, 0, 1.0)));
	ActionWait(3.4);
	ActionResumeConversation();
}

