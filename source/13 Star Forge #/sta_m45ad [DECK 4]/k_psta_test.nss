void main() {
	object oNearestBp_jedi_target = GetNearestObjectByTag("bp_jedi_target", OBJECT_SELF, 1);
	object oNearestSta_plc_captive = GetNearestObjectByTag("sta_plc_captive", OBJECT_SELF, 1);
	object object5 = GetLastUsedBy();
	AssignCommand(object5, ActionCastFakeSpellAtObject(25, oNearestBp_jedi_target, 0));
	DelayCommand(0.90000004, ApplyEffectToObject(1, EffectBeam(2029, object5, 2, 0), oNearestBp_jedi_target, 0.5));
	DelayCommand(1.3, ApplyEffectToObject(1, EffectBeam(2029, oNearestBp_jedi_target, 1, 0), oNearestSta_plc_captive, 1.2));
	DelayCommand(1.6, ApplyEffectToObject(0, EffectVisualEffect(1009, 0), oNearestSta_plc_captive, 0.0));
	DelayCommand(2.2, AssignCommand(oNearestSta_plc_captive, PlayAnimation(201, 1.0, 0.0)));
	DelayCommand(1.6, ApplyEffectToObject(0, EffectVisualEffect(1009, 0), object5, 0.0));
}

