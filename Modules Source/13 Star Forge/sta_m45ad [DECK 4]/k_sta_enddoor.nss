// Prototypes
void sub1(float floatParam1);

void sub1(float floatParam1) {
	ActionPauseConversation();
	DelayCommand(floatParam1, ActionResumeConversation());
}

void main() {
	location location1 = GetLocation(GetObjectByTag("wp_final_pc_walk", 0));
	object oSta_end_walk_to = GetObjectByTag("sta_end_walk_to", 0);
	object oPC = GetFirstPC();
	object oK45_door_end = GetObjectByTag("k45_door_end", 0);
	sub1(3.0);
	SetLockHeadFollowInDialog(oPC, 1);
	AssignCommand(oPC, JumpToLocation(location1));
	DelayCommand(1.0, SetGlobalFadeIn(0.0, 0.5, 0.0, 0.0, 0.0));
	DelayCommand(1.0, AssignCommand(oK45_door_end, ActionOpenDoor(OBJECT_SELF)));
	DelayCommand(1.5, AssignCommand(oPC, ActionMoveToLocation(GetLocation(oSta_end_walk_to), 0)));
}

