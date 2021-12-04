void main() {
	object oSta45a_assault = GetObjectByTag("sta45a_assault", 0);
	object oSta45a_assault2 = GetObjectByTag("sta45a_assault2", 0);
	object oSta45a_assault3 = GetObjectByTag("sta45a_assault3", 0);
	object oSta45a_way_droid = GetObjectByTag("sta45a_way_droid", 0);
	object oSta45a_way_droid2 = GetObjectByTag("sta45a_way_droid2", 0);
	object oSta45a_way_droid3 = GetObjectByTag("sta45a_way_droid3", 0);
	object oSta45a_malak = GetObjectByTag("sta45a_malak", 0);
	object oSta45a_way_mallv = GetObjectByTag("sta45a_way_mallv", 0);
	AssignCommand(oSta45a_malak, ActionJumpToObject(oSta45a_way_mallv, 1));
	ActionPauseConversation();
	AssignCommand(oSta45a_assault, ActionMoveToObject(oSta45a_way_droid, 1, 1.0));
	ActionWait(4.5);
	ActionResumeConversation();
}

