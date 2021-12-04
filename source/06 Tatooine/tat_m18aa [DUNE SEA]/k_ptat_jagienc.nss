void main() {
	object oEntering = GetEnteringObject();
	object oTat18_jagispawn = GetWaypointByTag("tat18_jagispawn");
	object oTat18_thug1spawn = GetWaypointByTag("tat18_thug1spawn");
	object oTat18_thug2spawn = GetWaypointByTag("tat18_thug2spawn");
	location location1 = GetLocation(oTat18_jagispawn);
	location location3 = GetLocation(oTat18_thug1spawn);
	location location5 = GetLocation(oTat18_thug2spawn);
	if ((((GetIsPC(oEntering) == 1) && IsNPCPartyMember(1)) && (GetGlobalBoolean("K_MESS_CANDEROUS") == 1))) {
		object oG_jagi = CreateObject(1, "g_jagi", location1, 0);
		object oTat18_jagithug01 = CreateObject(1, "tat18_jagithug01", location3, 0);
		object oTat18_jagithug02 = CreateObject(1, "tat18_jagithug02", location5, 0);
		AssignCommand(oG_jagi, ActionStartConversation(oEntering, "", 0, 0, 1, "", "", "", "", "", ""));
		DestroyObject(OBJECT_SELF, 0.0, 0, 0.0);
	}
}

