void main() {
	location location1 = GetLocation(GetObjectByTag("STA_JUMP0_WP", 0));
	location location3 = GetLocation(GetObjectByTag("sta_lastassoc_jump_wp", 0));
	object oPC = GetFirstPC();
	object oNPC = GetPartyMemberByIndex(1);
	object oK45_door_malak = GetObjectByTag("k45_door_malak", 0);
	object oSta_jedivic1 = GetObjectByTag("sta_jedivic1", 0);
	object oSta_jedivic2 = GetObjectByTag("sta_jedivic2", 0);
	SetPartyLeader(0xFFFFFFFF);
	ActionPauseConversation();
	AssignCommand(oK45_door_malak, ActionOpenDoor(oK45_door_malak));
	ActionWait(1.9);
	ActionResumeConversation();
	AssignCommand(oPC, ClearAllActions());
	AssignCommand(oPC, JumpToLocation(location1));
	AssignCommand(oNPC, ClearAllActions());
	AssignCommand(oNPC, JumpToLocation(location3));
	AssignCommand(oSta_jedivic1, PlayAnimation(116, 1.0, 999.0));
	DelayCommand(0.2, AssignCommand(oSta_jedivic2, PlayAnimation(116, 1.0, 999.0)));
}

