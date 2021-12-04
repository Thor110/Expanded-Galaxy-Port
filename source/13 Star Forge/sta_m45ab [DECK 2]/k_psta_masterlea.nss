void main() {
	object oNearestSithMaster = GetNearestObjectByTag("SithMaster", OBJECT_SELF, 1);
	object oSta_way_mastleav = GetObjectByTag("sta_way_mastleav", 0);
	ActionPauseConversation();
	AssignCommand(oNearestSithMaster, ActionMoveToObject(oSta_way_mastleav, 0, 1.0));
	ActionWait(3.0);
	ActionResumeConversation();
}

