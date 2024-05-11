void main() {
	object oEntering = GetEnteringObject();
	object oPC = GetFirstPC();
	object oNearestTat18_duneedge3 = GetNearestObjectByTag("tat18_duneedge3", oPC, 1);
	if ((GetIsPC(oEntering) == 1)) {
		SetPartyLeader(0xFFFFFFFF);
		AssignCommand(oNearestTat18_duneedge3, ActionStartConversation(oPC, "", 0, 0, 1, "", "", "", "", "", ""));
	}
}

