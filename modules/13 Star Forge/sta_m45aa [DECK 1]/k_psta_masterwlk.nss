void main() {
	object oSithMaster = GetObjectByTag("SithMaster", 0);
	object oSta45a_way_malak = GetObjectByTag("sta45a_way_malak", 0);
	ActionPauseConversation();
	AssignCommand(oSithMaster, ActionMoveToObject(oSta45a_way_malak, 0, 1.0));
	ActionWait(4.0);
	ActionResumeConversation();
}

