void main() {
	object oSta_force_cage = GetObjectByTag("sta_force_cage", 0);
	object oSta_armor_container = GetObjectByTag("sta_armor_container", 0);
	string string1 = "g_a_class9001";
	effect efVisual = EffectVisualEffect(1046, 0);
	effect effect3 = EffectVisualEffect(2044, 0);
	ActionPauseConversation();
	DelayCommand(6.5, ActionResumeConversation());
	SetLocked(oSta_armor_container, 0);
	AssignCommand(oSta_armor_container, ClearAllEffects());
	CreateItemOnObject(string1, oSta_armor_container, 1);
	DelayCommand(1.4, PlaySound("v_pro_resfrc"));
	DelayCommand(1.5, ApplyEffectAtLocation(0, efVisual, GetLocation(oSta_armor_container), 0.0));
	DelayCommand(3.5, ApplyEffectToObject(2, effect3, oSta_armor_container, 0.0));
	DelayCommand(2.5, AssignCommand(oSta_force_cage, PlayAnimation(202, 1.0, 0.0)));
}
