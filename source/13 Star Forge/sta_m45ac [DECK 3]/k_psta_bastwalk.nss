void main() {
	object oNearestSta_bastila = GetNearestObjectByTag("sta_bastila", OBJECT_SELF, 1);
	object oSta_bast_wp = GetObjectByTag("sta_bast_wp", 0);
	ActionPauseConversation();
	AssignCommand(oNearestSta_bastila, ActionMoveToObject(oSta_bast_wp, 0, 1.0));
	ActionWait(5.0);
	ActionResumeConversation();
}

