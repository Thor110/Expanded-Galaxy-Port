void main() {
	object oSta_jedivic1 = GetObjectByTag("sta_jedivic1", 0);
	object oSta_jedivic2 = GetObjectByTag("sta_jedivic2", 0);
	unknown unknown1 = EventUserDefined(345);
	ActionPauseConversation();
	ActionCastFakeSpellAtObject(11, oSta_jedivic1, 0);
	ActionCastFakeSpellAtObject(11, oSta_jedivic2, 0);
	effect efBeam = EffectBeam(2026, OBJECT_SELF, 0, 0);
	ApplyEffectToObject(1, efBeam, oSta_jedivic1, 2.0);
	ApplyEffectToObject(1, efBeam, oSta_jedivic2, 2.0);
	DelayCommand(2.0, ApplyEffectToObject(0, EffectDeath(0, 1), oSta_jedivic1, 0.0));
	DelayCommand(2.0, ApplyEffectToObject(0, EffectDeath(0, 1), oSta_jedivic2, 0.0));
	ActionResumeConversation();
}

