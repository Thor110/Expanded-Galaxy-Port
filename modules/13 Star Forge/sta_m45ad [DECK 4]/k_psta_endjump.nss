void main() {
	object oPC = GetFirstPC();
	object oSta_45darthMalak = GetObjectByTag("sta_45darthMalak", 0);
	location location1 = GetLocation(GetObjectByTag("sta_pc_dead", 0));
	location location3 = GetLocation(GetObjectByTag("sta_malak_dead", 0));
	ActionPauseConversation();
	DelayCommand(3.0, ActionResumeConversation());
	SetCommandable(1, oSta_45darthMalak);
	AssignCommand(oSta_45darthMalak, PlayAnimation(32, 1.0, (-1.0)));
	DelayCommand(0.2, AssignCommand(oPC, JumpToLocation(location1)));
	DelayCommand(0.2, AssignCommand(oSta_45darthMalak, JumpToLocation(location3)));
	DelayCommand(0.5, AssignCommand(oPC, JumpToLocation(location1)));
	DelayCommand(0.5, AssignCommand(oSta_45darthMalak, JumpToLocation(location3)));
}
