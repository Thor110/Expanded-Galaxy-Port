void main() {
	object object1 = GetModuleItemAcquired();
	object oHolocron = GetObjectByTag("holocron", 0);
	object oBastila = GetObjectByTag("bastila", 0);
	object oPC = GetFirstPC();
	int int1 = GetGlobalBoolean("K_SWG_BASTILA_HOLO");
	if ((((int1 == 0) && (object1 == oHolocron)) && GetIsObjectValid(oBastila))) {
		AssignCommand(oBastila, ActionStartConversation(oPC, "tat18_bastila", 0, 0, 0, "", "", "", "", "", ""));
	}
}

