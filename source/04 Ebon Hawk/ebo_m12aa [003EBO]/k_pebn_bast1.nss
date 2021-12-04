void main() {
	object oK_ROMANCE_PC = GetWaypointByTag("K_ROMANCE_PC");
	object oK_ROMANCE_BASTILA = GetWaypointByTag("K_ROMANCE_BASTILA");
	if ((GetIsObjectValid(oK_ROMANCE_PC) && GetIsObjectValid(oK_ROMANCE_BASTILA))) {
		object oPC = GetFirstPC();
		object oBastila2 = GetObjectByTag("bastila2", 0);
		AssignCommand(oBastila2, ActionMoveToObject(oK_ROMANCE_BASTILA, 0, 1.0));
		AssignCommand(oPC, ActionMoveToObject(oK_ROMANCE_PC, 0, 1.0));
	}
}

