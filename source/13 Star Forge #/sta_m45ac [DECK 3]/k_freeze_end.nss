void main() {
	object oK_sta_sithfreeze = GetObjectByTag("k_sta_sithfreeze", 0);
	object oK_sta_sithfreeze2 = GetObjectByTag("k_sta_sithfreeze2", 0);
	object oK_sta_sithfreeze3 = GetObjectByTag("k_sta_sithfreeze3", 0);
	ChangeToStandardFaction(oK_sta_sithfreeze, 1);
	ChangeToStandardFaction(oK_sta_sithfreeze2, 1);
	ChangeToStandardFaction(oK_sta_sithfreeze3, 1);
	DelayCommand(0.5, AssignCommand(oK_sta_sithfreeze, ActionAttack(GetPartyMemberByIndex(0), 0)));
	DelayCommand(0.5, AssignCommand(oK_sta_sithfreeze2, ActionMoveToObject(GetPartyMemberByIndex(0), 1, 1.0)));
	DelayCommand(0.5, AssignCommand(oK_sta_sithfreeze3, ActionMoveToObject(GetPartyMemberByIndex(0), 1, 1.0)));
}

