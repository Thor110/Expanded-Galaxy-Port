void main() {
	object oEntering = GetEnteringObject();
	object oPC = GetFirstPC();
	object oTat17_xconser_02 = GetObjectByTag("tat17_xconser_02", 0);
	if ((GetIsPC(oEntering) == 1)) {
		SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
		SetPartyLeader(0xFFFFFFFF);
		AssignCommand(oTat17_xconser_02, ActionStartConversation(oPC, "", 0, 0, 1, "", "", "", "", "", ""));
		DestroyObject(OBJECT_SELF, 0.0, 0, 0.0);
	}
}

