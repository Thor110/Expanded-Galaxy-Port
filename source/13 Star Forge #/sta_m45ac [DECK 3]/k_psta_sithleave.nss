void main() {
	object oSta_sith1 = GetObjectByTag("sta_sith1", 0);
	object oSta_sith2 = GetObjectByTag("sta_sith2", 0);
	object oSta_sith3 = GetObjectByTag("sta_sith3", 0);
	object oSta_way_wait = GetObjectByTag("sta_way_wait", 0);
	object oSta_way_wait2 = GetObjectByTag("sta_way_wait2", 0);
	object oSta_way_wait3 = GetObjectByTag("sta_way_wait3", 0);
	object oSta45c_malak = GetObjectByTag("sta45c_malak", 0);
	object oNearestSta_bastila = GetNearestObjectByTag("sta_bastila", OBJECT_SELF, 1);
	object oSta_way_bastwait = GetObjectByTag("sta_way_bastwait", 0);
	location location1 = GetLocation(GetObjectByTag("STA_BAST_JUMP", 0));
	AssignCommand(oSta45c_malak, ActionMoveToLocation(location1, 0));
	ActionPauseConversation();
	AssignCommand(oSta_sith1, ActionMoveToObject(oSta_way_wait, 0, 1.0));
	AssignCommand(oSta_sith2, ActionMoveToObject(oSta_way_wait2, 0, 1.0));
	AssignCommand(oSta_sith3, ActionMoveToObject(oSta_way_wait3, 0, 1.0));
	ActionWait(2.0);
	ActionResumeConversation();
}

