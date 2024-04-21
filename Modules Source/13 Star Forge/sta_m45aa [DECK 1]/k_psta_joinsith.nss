void main() {
	object oSta45a_Sith01 = GetObjectByTag("sta45a_Sith01", 0);
	object oSta45a_Sith02 = GetObjectByTag("sta45a_Sith02", 0);
	object oSta45a_Sith03 = GetObjectByTag("sta45a_Sith03", 0);
	object oSta45a_Sith04 = GetObjectByTag("sta45a_Sith04", 0);
	object oSta_Jedi002 = GetObjectByTag("sta_Jedi002", 0);
	object oSta_Jedi003 = GetObjectByTag("sta_Jedi003", 0);
	object oSta_Jedi004 = GetObjectByTag("sta_Jedi004", 0);
	object oSta_way_sithjed2 = GetObjectByTag("sta_way_sithjed2", 0);
	object oSta_way_sithjed3 = GetObjectByTag("sta_way_sithjed3", 0);
	object oSta_way_sithjed4 = GetObjectByTag("sta_way_sithjed4", 0);
	object oSta_way_sithjedi = GetObjectByTag("sta_way_sithjedi", 0);
	object oSta45a_sta45d = GetObjectByTag("sta45a_sta45d", 0);
	ActionPauseConversation();
	DelayCommand(6.0, ActionResumeConversation());
	AssignCommand(oSta45a_sta45d, ActionOpenDoor(oSta45a_sta45d));
	DelayCommand(3.3, SetLightsaberPowered(oSta45a_Sith01, 1, 1, 1));
	DelayCommand(4.2, SetLightsaberPowered(oSta45a_Sith02, 1, 1, 1));
	DelayCommand(5.1, SetLightsaberPowered(oSta45a_Sith03, 1, 1, 1));
	DelayCommand(5.4, SetLightsaberPowered(oSta45a_Sith04, 1, 1, 1));
	DelayCommand(1.8, AssignCommand(oSta45a_Sith01, ActionMoveToObject(oSta_way_sithjedi, 1, 1.0)));
	DelayCommand(2.2, AssignCommand(oSta45a_Sith02, ActionMoveToObject(oSta_way_sithjed2, 1, 1.0)));
	DelayCommand(2.4, AssignCommand(oSta45a_Sith03, ActionMoveToObject(oSta_way_sithjed3, 1, 1.0)));
	DelayCommand(2.0, AssignCommand(oSta45a_Sith04, ActionMoveToObject(oSta_way_sithjed4, 1, 1.0)));
	DelayCommand(2.7, SetDialogPlaceableCamera(13));
}
