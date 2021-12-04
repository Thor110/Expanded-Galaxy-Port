void main() {
	object oPC = GetFirstPC();
	object oMission = GetObjectByTag("Mission", 0);
	object oTat17_missionspn = GetWaypointByTag("tat17_missionspn");
	object oTat17_pcplace = GetWaypointByTag("tat17_pcplace");
	if ((IsNPCPartyMember(6) == 1)) {
		AssignCommand(oMission, ClearAllActions());
		AssignCommand(oMission, ActionJumpToObject(oTat17_missionspn, 1));
		AssignCommand(oMission, SetFacing(GetFacing(oTat17_missionspn)));
	}
	AssignCommand(oPC, ClearAllActions());
	AssignCommand(oPC, ActionJumpToObject(oTat17_pcplace, 1));
	AssignCommand(oPC, SetFacing(GetFacing(oTat17_pcplace)));
}

