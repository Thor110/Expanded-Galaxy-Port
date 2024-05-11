void main() {
	object oSta_45darthMalak = GetObjectByTag("sta_45darthMalak", 0);
	object oNearestBp_malak_target = GetNearestObjectByTag("bp_malak_target", oSta_45darthMalak, 1);
	object oNearestBp_jedi_target = GetNearestObjectByTag("bp_jedi_target", OBJECT_SELF, 1);
	object oNearestSta_plc_captive = GetNearestObjectByTag("sta_plc_captive", OBJECT_SELF, 1);
	ActionPauseConversation();
	DelayCommand(1.2, ActionResumeConversation());
	ApplyEffectToObject(1, EffectBeam(2029, oNearestBp_jedi_target, 1, 0), oNearestSta_plc_captive, 1.2);
	DelayCommand(0.1, ApplyEffectToObject(0, EffectVisualEffect(1009, 0), oNearestSta_plc_captive, 0.0));
	AssignCommand(oNearestSta_plc_captive, DelayCommand(1.1, PlayAnimation(201, 1.0, 0.0)));
}
