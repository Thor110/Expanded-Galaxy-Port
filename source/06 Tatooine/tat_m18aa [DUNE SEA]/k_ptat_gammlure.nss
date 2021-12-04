void main() {
	object oPC = GetFirstPC();
	object oKas18_ambush_drd = GetObjectByTag("kas18_ambush_drd", 0);
	object oEntering = GetEnteringObject();
	if (((GetIsPC(oEntering) == 1) && (GetIsObjectValid(oKas18_ambush_drd) == 1))) {
		AssignCommand(oKas18_ambush_drd, ActionStartConversation(oPC, "tat18_12ambus_01", 0, 0, 1, "", "", "", "", "", ""));
	}
}

