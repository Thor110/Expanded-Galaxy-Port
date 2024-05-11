void main() {
	object oSta45c_malak = GetObjectByTag("sta45c_malak", 0);
	object oNearestSta_bastila = GetNearestObjectByTag("sta_bastila", OBJECT_SELF, 1);
	object oSta_way_bastwait = GetObjectByTag("sta_way_bastwait", 0);
	location location1 = GetLocation(GetObjectByTag("STA_BAST_JUMP", 0));
	ActionPauseConversation();
	SetLockHeadFollowInDialog(oNearestSta_bastila, 1);
	DelayCommand(0.5, AssignCommand(oNearestSta_bastila, ActionMoveToObject(oSta_way_bastwait, 0, 1.0)));
	AssignCommand(oSta45c_malak, ActionMoveToLocation(location1, 0));
	ActionWait(3.8);
	ActionResumeConversation();
}

