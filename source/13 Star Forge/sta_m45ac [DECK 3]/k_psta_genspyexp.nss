void main() {
	effect efVisual = EffectVisualEffect(3007, 0);
	location location1 = GetLocation(OBJECT_SELF);
	ActionPauseConversation();
	ApplyEffectAtLocation(0, efVisual, location1, 0.0);
	DelayCommand(0.5, ApplyEffectAtLocation(0, efVisual, location1, 0.0));
	DelayCommand(1.0, ApplyEffectAtLocation(0, efVisual, location1, 0.0));
	object oK45c_way_explosi = GetObjectByTag("k45c_way_explosi", 0);
	location location3 = GetLocation(oK45c_way_explosi);
	ApplyEffectAtLocation(2, efVisual, location3, 0.0);
	ActionWait(3.0);
	ActionResumeConversation();
}

