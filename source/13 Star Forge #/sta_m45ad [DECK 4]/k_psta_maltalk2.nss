void main() {
	object oNearestSta_malak_drain = GetNearestObjectByTag("sta_malak_drain", OBJECT_SELF, 1);
	int nCurHP = GetCurrentHitPoints(OBJECT_SELF);
	int nCurFP = GetCurrentForcePoints(OBJECT_SELF);
	object oNearestSta_jedi_conv = GetNearestObjectByTag("sta_jedi_conv", OBJECT_SELF, 1);
	int nGlobal = GetGlobalNumber("STA_MALAK_JEDI");
	object oPC = GetFirstPC();
	object oSta_invis_conv_2 = GetObjectByTag("sta_invis_conv_2", 0);
	string sName = GetName(oNearestSta_malak_drain);
	object object9 = GetObjectByTag(("sta_plc_captive" + sName), 0);
	if (GetIsObjectValid(oNearestSta_malak_drain)) {
		if ((GetDistanceToObject(oNearestSta_malak_drain) <= 5.0)) {
			AssignCommand(oPC, ClearAllActions());
			AssignCommand(oNearestSta_jedi_conv, ActionStartConversation(oNearestSta_jedi_conv, "", 0, 0, 0, "", "", "", "", "", ""));
		}
		else {
			ActionMoveToObject(oNearestSta_malak_drain, 1, 1.0);
		}
	}
	else {
		if (((nCurHP <= 10) && (!GetIsInConversation(OBJECT_SELF)))) {
			DelayCommand(1.0, AssignCommand(oSta_invis_conv_2, ActionStartConversation(oSta_invis_conv_2, "", 0, 0, 0, "", "", "", "", "", "")));
		}
	}
}

