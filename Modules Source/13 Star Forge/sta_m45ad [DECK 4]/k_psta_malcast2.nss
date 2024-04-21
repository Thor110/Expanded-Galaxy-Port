void main() {
	object oSta_45darthMalak = GetObjectByTag("sta_45darthMalak", 0);
	object oNearestSta_malak_drain = GetNearestObjectByTag("sta_malak_drain", oSta_45darthMalak, 1);
	object oNearestSta_malak_facing = GetNearestObjectByTag("sta_malak_facing", oSta_45darthMalak, 1);
	location location1 = GetLocation(oNearestSta_malak_facing);
	ActionPauseConversation();
	DelayCommand(18.0, ActionResumeConversation());
	SetDialogPlaceableCamera(102);
	AssignCommand(oSta_45darthMalak, ClearAllActions());
	AssignCommand(oSta_45darthMalak, JumpToLocation(location1));
	DelayCommand(3.0, AssignCommand(oSta_45darthMalak, SetFacingPoint(GetPosition(GetFirstPC()))));
	DelayCommand(3.0, SetDialogPlaceableCamera(108));
	DelayCommand(6.0, SetDialogPlaceableCamera(103));
	DelayCommand(9.0, SetDialogPlaceableCamera(104));
	DelayCommand(12.0, SetDialogPlaceableCamera(107));
}
