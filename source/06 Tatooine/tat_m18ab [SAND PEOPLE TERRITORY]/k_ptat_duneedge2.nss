void main() {
	object oEntering = GetEnteringObject();
	object oPC = GetFirstPC();
	object oNearestTat18_duneedge2 = GetNearestObjectByTag("tat18_duneedge2", oEntering, 1);
	if ((IsObjectPartyMember(oEntering) == 1)) {
		SetPartyLeader(0xFFFFFFFF);
		AssignCommand(oNearestTat18_duneedge2, ActionStartConversation(oPC, "", 0, 0, 1, "", "", "", "", "", ""));
	}
}

