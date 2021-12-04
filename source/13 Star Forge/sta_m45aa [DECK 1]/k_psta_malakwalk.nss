void main() {
	object oSta45a_malak = GetObjectByTag("sta45a_malak", 0);
	object oSta45a_way_malak = GetObjectByTag("sta45a_way_malak", 0);
	ActionPauseConversation();
	AssignCommand(oSta45a_malak, ActionMoveToObject(oSta45a_way_malak, 0, 1.0));
	ActionWait(3.0);
	ActionResumeConversation();
}

