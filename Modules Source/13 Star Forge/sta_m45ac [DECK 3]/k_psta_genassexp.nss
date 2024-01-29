void main() {
	effect efVisual = EffectVisualEffect(3009, 0);
	location location1 = GetLocation(OBJECT_SELF);
	ActionPauseConversation();
	ApplyEffectAtLocation(0, efVisual, location1, 0.0);
	DelayCommand(0.5, ApplyEffectAtLocation(0, efVisual, location1, 0.0));
	DelayCommand(1.0, ApplyEffectAtLocation(0, efVisual, location1, 0.0));
	object oSta_way_assdroid = GetObjectByTag("sta_way_assdroid", 0);
	location location3 = GetLocation(oSta_way_assdroid);
	ApplyEffectAtLocation(2, efVisual, location3, 0.0);
	ActionWait(3.0);
	ActionResumeConversation();
}

