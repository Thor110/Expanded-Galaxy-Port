void main() {
	object oNearestSta_bastila = GetNearestObjectByTag("sta_bastila", OBJECT_SELF, 1);
	object oPC = GetFirstPC();
	object oSta_way_gameend = GetObjectByTag("sta_way_gameend", 0);
	ActionPauseConversation();
	if (GetIsObjectValid(oNearestSta_bastila)) {
		AssignCommand(oNearestSta_bastila, ActionMoveToObject(oSta_way_gameend, 1, 1.0));
	}
	DelayCommand(1.0, AssignCommand(oPC, ActionMoveToObject(oSta_way_gameend, 1, 1.0)));
	DelayCommand(2.0, ActionMoveToObject(oSta_way_gameend, 1, 1.0));
	ActionWait(6.0);
	ActionResumeConversation();
}

