void main() {
	object oEntering = GetEnteringObject();
	object oSta_45darthMalak = GetObjectByTag("sta_45darthMalak", 0);
	object oNearestSta_jedi_conv = GetNearestObjectByTag("sta_jedi_conv", OBJECT_SELF, 1);
	object oPC = GetFirstPC();
	object oSta_invis_conv_2 = GetObjectByTag("sta_invis_conv_2", 0);
	int nGlobal = GetGlobalNumber("STA_MALAK_JEDI");
	int int3 = GetGlobalBoolean("STA_MALAK_DRAIN");
	if ((oEntering == oSta_45darthMalak)) {
		if ((int3 == 1)) {
			DelayCommand(0.4, AssignCommand(oPC, ClearAllActions()));
			DelayCommand(0.5, CancelCombat(oPC));
			if ((nGlobal == 0)) {
				DelayCommand(0.5, AssignCommand(oSta_invis_conv_2, ActionStartConversation(oSta_invis_conv_2, "", 0, 0, 0, "", "", "", "", "", "")));
			}
			else {
				DelayCommand(0.5, AssignCommand(oNearestSta_jedi_conv, ActionStartConversation(oNearestSta_jedi_conv, "", 0, 0, 0, "", "", "", "", "", "")));
			}
		}
	}
}

