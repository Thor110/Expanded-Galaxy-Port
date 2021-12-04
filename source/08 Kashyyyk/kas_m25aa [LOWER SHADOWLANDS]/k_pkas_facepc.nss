void main() {
	object oPC = GetFirstPC();
	object oNPC = GetPartyMemberByIndex(0);
	object object5 = GetPartyMemberByIndex(1);
	object object7 = GetPartyMemberByIndex(2);
	object oKas25_wp_compu1 = GetWaypointByTag("kas25_wp_compu1");
	object oKas25_wp_compu2 = GetWaypointByTag("kas25_wp_compu2");
	object oKas25_wp_compu3 = GetWaypointByTag("kas25_wp_compu3");
	AssignCommand(oNPC, JumpToObject(oKas25_wp_compu1, 1));
	AssignCommand(object5, JumpToObject(oKas25_wp_compu2, 1));
	AssignCommand(object7, JumpToObject(oKas25_wp_compu3, 1));
	DelayCommand(0.5, SetFacingPoint(GetPosition(oPC)));
}

