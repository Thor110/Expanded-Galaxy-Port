void main() {
	object oSta_bastila = GetObjectByTag("sta_bastila", 0);
	object oSta_carth = GetObjectByTag("sta_carth", 0);
	object oPC = GetFirstPC();
	object oSta_way_bast_end = GetObjectByTag("sta_way_bast_end", 0);
	object oSta_way_bast_pc = GetObjectByTag("sta_way_bast_pc", 0);
	ActionPauseConversation();
	DelayCommand(3.5, ActionResumeConversation());
	if (GetIsObjectValid(oSta_bastila)) {
		SetLockHeadFollowInDialog(oSta_bastila, 1);
		AssignCommand(oSta_bastila, ActionMoveToObject(oSta_way_bast_end, 1, 1.0));
	}
	if (GetIsObjectValid(oSta_carth)) {
		SetLockHeadFollowInDialog(oSta_carth, 1);
		AssignCommand(oSta_carth, ActionMoveToObject(oSta_way_bast_end, 1, 1.0));
	}
	DelayCommand(0.1, AssignCommand(oPC, ActionMoveToObject(oSta_way_bast_pc, 1, 1.0)));
}
