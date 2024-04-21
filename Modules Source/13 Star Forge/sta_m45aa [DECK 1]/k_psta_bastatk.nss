void main() {
	object oPC = GetFirstPC();
	object oSta_bastila = GetObjectByTag("sta_bastila", 0);
	object oSta_carth = GetObjectByTag("sta_carth", 0);
	object oSta_way_pcend = GetObjectByTag("sta_way_pcend", 0);
	SetLockOrientationInDialog(oPC, 1);
	AssignCommand(oPC, SetFacing(GetFacing(oSta_way_pcend)));
	ActionPauseConversation();
	DelayCommand(4.2, ActionResumeConversation());
	ChangeToStandardFaction(oSta_carth, 4);
	AssignCommand(oSta_bastila, ClearAllActions());
	DelayCommand(0.1, AssignCommand(oSta_bastila, CutsceneAttack(oSta_carth, 156, 1, 500)));
	DelayCommand(0.7, SetDialogPlaceableCamera(34));
	DelayCommand(1.3199999, SetDialogPlaceableCamera(33));
}
