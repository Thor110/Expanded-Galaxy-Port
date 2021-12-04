void main() {
	object oSta_45darthMalak = GetObjectByTag("sta_45darthMalak", 0);
	object oNearestSta_plc_captive4 = GetNearestObjectByTag("sta_plc_captive4", OBJECT_SELF, 1);
	ActionPauseConversation();
	effect efBeam = EffectBeam(2029, oSta_45darthMalak, 0, 0);
	AssignCommand(oSta_45darthMalak, ActionCastFakeSpellAtObject(15, oNearestSta_plc_captive4, 0));
	DelayCommand(1.0, ApplyEffectToObject(1, efBeam, oNearestSta_plc_captive4, 2.0));
	int nMaxHP = GetMaxHitPoints(oSta_45darthMalak);
	int nCurHP = GetCurrentHitPoints(oSta_45darthMalak);
	effect efHeal = EffectHeal((nMaxHP - nCurHP));
	ApplyEffectToObject(0, efHeal, oSta_45darthMalak, 0.0);
	int nMaxFP = GetMaxForcePoints(oSta_45darthMalak);
	int nCurFP = GetCurrentForcePoints(oSta_45darthMalak);
	effect effect5 = EffectHealForcePoints((nMaxFP - nCurFP));
	ApplyEffectToObject(0, effect5, oSta_45darthMalak, 0.0);
	DelayCommand(2.0, AssignCommand(oNearestSta_plc_captive4, ActionPlayAnimation(201, 1.0, 0.0)));
	ActionWait(3.0);
	ActionResumeConversation();
}

