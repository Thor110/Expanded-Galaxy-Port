void main() {
	object oNearestTat18_tanisexit = GetNearestObjectByTag("tat18_tanisexit", OBJECT_SELF, 1);
	object oTat18_10droid_01 = GetObjectByTag("tat18_10droid_01", 0);
	object oTat18_10droid_02 = GetObjectByTag("tat18_10droid_02", 0);
	object oTat18_10droid_03 = GetObjectByTag("tat18_10droid_03", 0);
	object oTat18_10droid_04 = GetObjectByTag("tat18_10droid_04", 0);
	ActionPauseConversation();
	SetGlobalFadeOut(0.0, 3.0, 0.0, 0.0, 0.0);
	AssignCommand(oTat18_10droid_01, ClearAllActions());
	AssignCommand(oTat18_10droid_01, DelayCommand(2.0, ActionMoveToObject(oNearestTat18_tanisexit, 1, 1.0)));
	AssignCommand(oTat18_10droid_02, ClearAllActions());
	AssignCommand(oTat18_10droid_02, DelayCommand(2.0, ActionMoveToObject(oNearestTat18_tanisexit, 1, 1.0)));
	AssignCommand(oTat18_10droid_03, ClearAllActions());
	AssignCommand(oTat18_10droid_03, DelayCommand(2.0, ActionMoveToObject(oNearestTat18_tanisexit, 1, 1.0)));
	AssignCommand(oTat18_10droid_04, ClearAllActions());
	AssignCommand(oTat18_10droid_04, DelayCommand(2.0, ActionMoveToObject(oNearestTat18_tanisexit, 1, 1.0)));
	ActionMoveToObject(oNearestTat18_tanisexit, 1, 1.0);
	ActionResumeConversation();
}

