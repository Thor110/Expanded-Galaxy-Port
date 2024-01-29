void main() {
	object oNearestSta_jedi_conv = GetNearestObjectByTag("sta_jedi_conv", OBJECT_SELF, 1);
	object oNearestSta_malak_drain = GetNearestObjectByTag("sta_malak_drain", OBJECT_SELF, 1);
	object oSta_45darthMalak = GetObjectByTag("sta_45darthMalak", 0);
	object oPC = GetFirstPC();
	int nGlobal = GetGlobalNumber("STA_MALAK_TALK");
	int int3 = GetGlobalBoolean("STA_MALAK_DRAIN");
	if (((int3 == 1) && GetIsObjectValid(oNearestSta_malak_drain))) {
		if ((GetDistanceToObject(oNearestSta_malak_drain) > 2.0)) {
			AssignCommand(oSta_45darthMalak, ActionMoveToObject(oNearestSta_malak_drain, 1, 1.0));
		}
		else {
			if ((!GetIsInConversation(oNearestSta_jedi_conv))) {
				AssignCommand(oPC, ClearAllActions());
				AssignCommand(oNearestSta_jedi_conv, ActionStartConversation(oNearestSta_jedi_conv, "", 0, 0, 0, "", "", "", "", "", ""));
			}
		}
	}
}

