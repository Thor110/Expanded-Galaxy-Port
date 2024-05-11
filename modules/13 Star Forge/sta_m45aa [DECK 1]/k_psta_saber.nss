void main() {
	object oSta_Jedi002 = GetObjectByTag("sta_Jedi002", 0);
	object oSta_Jedi003 = GetObjectByTag("sta_Jedi003", 0);
	object oSta_Jedi004 = GetObjectByTag("sta_Jedi004", 0);
	object oSta_way_jed8 = GetObjectByTag("sta_way_jed8", 0);
	object oSta_way_jed9 = GetObjectByTag("sta_way_jed9", 0);
	ActionPauseConversation();
	DelayCommand(5.0, ActionResumeConversation());
	AssignCommand(GetObjectByTag("sta_Jedi001", 0), PlayAnimation(101, 1.0, 0.0));
	DelayCommand(1.0, AssignCommand(oSta_Jedi002, ActionEquipMostDamagingMelee(OBJECT_INVALID, 0)));
	DelayCommand(1.0, AssignCommand(oSta_Jedi003, ActionEquipMostDamagingMelee(OBJECT_INVALID, 0)));
	DelayCommand(1.5, AssignCommand(oSta_Jedi004, ActionEquipMostDamagingMelee(OBJECT_INVALID, 0)));
	DelayCommand(1.5, AssignCommand(oSta_Jedi003, ActionMoveToLocation(GetLocation(oSta_way_jed8), 1)));
	DelayCommand(2.0, AssignCommand(oSta_Jedi004, ActionMoveToLocation(GetLocation(oSta_way_jed9), 1)));
}
