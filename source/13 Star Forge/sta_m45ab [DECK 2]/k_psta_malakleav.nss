void main() {
	object oSta45b_malak = GetObjectByTag("sta45b_malak", 0);
	object oSta_way_malaleav = GetObjectByTag("sta_way_malaleav", 0);
	ActionPauseConversation();
	AssignCommand(oSta45b_malak, ClearAllActions());
	AssignCommand(oSta45b_malak, DelayCommand(0.2, ActionMoveToObject(oSta_way_malaleav, 0, 1.0)));
	ActionWait(3.0);
	ActionResumeConversation();
}

