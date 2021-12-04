void main() {
	object oPC = GetFirstPC();
	object oKas18_ambush_drd = GetObjectByTag("kas18_ambush_drd", 0);
	ActionPauseConversation();
	DelayCommand(1.0, ActionResumeConversation());
	DestroyObject(oKas18_ambush_drd, 1.5, 1, 0.0);
	ApplyEffectAtLocation(0, EffectVisualEffect(3003, 0), GetLocation(oKas18_ambush_drd), 0.0);
	ApplyEffectToObject(0, EffectDamage(60, 8, 0), oPC, 0.0);
}

