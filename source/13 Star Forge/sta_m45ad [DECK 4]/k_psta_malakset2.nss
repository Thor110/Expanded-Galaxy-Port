// Prototypes
void sub1(float floatParam1);

void sub1(float floatParam1) {
	ActionPauseConversation();
	DelayCommand(floatParam1, ActionResumeConversation());
}

void main() {
	object oSta_45darthMalak = GetObjectByTag("sta_45darthMalak", 0);
	object oNearestSta_pc_cutscene_jump = GetNearestObjectByTag("sta_pc_cutscene_jump", oSta_45darthMalak, 1);
	object oPC = GetFirstPC();
	location location1 = GetLocation(oNearestSta_pc_cutscene_jump);
	sub1(1.0);
	int int1 = (GetGlobalNumber("STA_MALAK_TALK") + 1);
	SetCommandable(1, oSta_45darthMalak);
	AssignCommand(oPC, ClearAllActions());
	DelayCommand(0.1, AssignCommand(oPC, JumpToLocation(location1)));
	DelayCommand(0.3, AssignCommand(oSta_45darthMalak, SetFacingPoint(GetPosition(oPC))));
	SetGlobalNumber("STA_MALAK_TALK", int1);
}

