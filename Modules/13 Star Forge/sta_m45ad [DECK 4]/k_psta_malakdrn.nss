// Prototypes
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	ActionPauseConversation();
	object oSta_plc_captive = GetObjectByTag("sta_plc_captive", 0);
	SetPlotFlag(oSta_plc_captive, 0);
	effect efBeam = EffectBeam(2029, OBJECT_SELF, 0, 0);
	ActionCastFakeSpellAtObject(15, oSta_plc_captive, 0);
	ApplyEffectToObject(1, efBeam, oSta_plc_captive, 1.0);
	int nMaxHP = GetMaxHitPoints(OBJECT_SELF);
	int nCurHP = GetCurrentHitPoints(OBJECT_SELF);
	effect efHeal = EffectHeal((nMaxHP - nCurHP));
	DelayCommand(1.0, ApplyEffectToObject(0, efHeal, OBJECT_SELF, 0.0));
	int nMaxFP = GetMaxForcePoints(OBJECT_SELF);
	int nCurFP = GetCurrentForcePoints(OBJECT_SELF);
	effect effect5 = EffectHealForcePoints((nMaxFP - nCurFP));
	DelayCommand(1.0, ApplyEffectToObject(0, effect5, OBJECT_SELF, 0.0));
	DelayCommand(2.0, AssignCommand(oSta_plc_captive, ActionPlayAnimation(201, 1.0, 0.0)));
	SetGlobalNumber("STA_MALAK_JEDI", 1);
	ActionWait(4.0);
	ActionDoCommand(sub1("Third node", 6, 6, 5.0));
	ActionResumeConversation();
}

