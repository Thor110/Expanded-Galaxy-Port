void main() {
	object oPC = GetFirstPC();
	object oSta45a_sta45d = GetObjectByTag("sta45a_sta45d", 0);
	object oSta_way_pcend5 = GetObjectByTag("sta_way_pcend5", 0);
	object oSta_bastila = GetObjectByTag("sta_bastila", 0);
	object oSta_carth = GetObjectByTag("sta_carth", 0);
	ActionPauseConversation();
	DelayCommand(4.6, ActionResumeConversation());
	SetLockHeadFollowInDialog(oPC, 1);
	SetLightsaberPowered(oSta_bastila, 1, 1, 0);
	AssignCommand(oSta45a_sta45d, ActionOpenDoor(OBJECT_SELF));
	DelayCommand(1.5, AssignCommand(oSta_bastila, ActionMoveToObject(oSta_way_pcend5, 1, 1.0)));
	DelayCommand(3.3, SetDialogPlaceableCamera(31));
	DelayCommand(3.8, AssignCommand(oSta45a_sta45d, ActionCloseDoor(OBJECT_SELF)));
}
