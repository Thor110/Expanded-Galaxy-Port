void main() {
	object oSta_sith1 = GetObjectByTag("sta_sith1", 0);
	object oSta_sith2 = GetObjectByTag("sta_sith2", 0);
	object oSta_sith3 = GetObjectByTag("sta_sith3", 0);
	object oSta_way_sithwlk1 = GetObjectByTag("sta_way_sithwlk1", 0);
	object oSta_way_sithwlk2 = GetObjectByTag("sta_way_sithwlk2", 0);
	object oSta_way_sithwlk3 = GetObjectByTag("sta_way_sithwlk3", 0);
	ActionPauseConversation();
	AssignCommand(oSta_sith1, ActionMoveToObject(oSta_way_sithwlk1, 0, 1.0));
	DelayCommand(0.2, AssignCommand(oSta_sith2, ActionMoveToObject(oSta_way_sithwlk2, 0, 1.0)));
	DelayCommand(0.7, AssignCommand(oSta_sith3, ActionMoveToObject(oSta_way_sithwlk3, 0, 1.0)));
	ActionWait(3.0);
	ActionResumeConversation();
}

