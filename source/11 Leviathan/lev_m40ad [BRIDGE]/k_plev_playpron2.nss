void main() {
	object oSaulkarath402 = GetObjectByTag("saulkarath402", 0);
	object oCarth = GetObjectByTag("carth", 0);
	object oBastila = GetObjectByTag("bastila", 0);
	object oPC = GetFirstPC();
	location location1 = GetLocation(GetObjectByTag("lev_saulend_wp", 0));
	location location3 = GetLocation(GetObjectByTag("lev_saulend_wp_pc", 0));
	location location5 = GetLocation(GetObjectByTag("lev_saulend_wp_carth", 0));
	location location7 = GetLocation(GetObjectByTag("lev_saulend_wp_bast", 0));
	location location9 = GetLocation(GetObjectByTag("lev_temp1_wp", 0));
	location location11 = GetLocation(GetObjectByTag("lev_temp2_wp", 0));
	location location13 = GetLocation(GetObjectByTag("lev_temp3_wp", 0));
	location location15 = GetLocation(GetObjectByTag("lev_temp1_wp", 0));
	RemovePartyMember(2);
	RemovePartyMember(0);
	SetGlobalBoolean("LEV_SAULDEAD", 1);
	AssignCommand(oPC, ClearAllActions());
	AssignCommand(oCarth, ClearAllActions());
	AssignCommand(oBastila, ClearAllActions());
	DelayCommand(0.2, AssignCommand(oBastila, JumpToLocation(location7)));
	DelayCommand(0.3, AssignCommand(oPC, JumpToLocation(location3)));
	DelayCommand(0.4, AssignCommand(oCarth, JumpToLocation(location5)));
	DelayCommand(0.5, AssignCommand(oSaulkarath402, JumpToLocation(location1)));
	DelayCommand(0.8, AssignCommand(oPC, JumpToLocation(location3)));
	DelayCommand(0.90000004, AssignCommand(oCarth, JumpToLocation(location5)));
	DelayCommand(1.0, AssignCommand(oBastila, JumpToLocation(location7)));
	DelayCommand(1.1, AssignCommand(oSaulkarath402, JumpToLocation(location1)));
	SetPartyLeader((-1));
	SetLockOrientationInDialog(oSaulkarath402, 1);
	DelayCommand(1.0, AssignCommand(oSaulkarath402, PlayAnimation(23, 1.0, (-1.0))));
	ActionPauseConversation();
	ActionWait(2.5);
	ActionResumeConversation();
}

