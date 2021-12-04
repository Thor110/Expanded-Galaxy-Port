void main() {
	ActionPauseConversation();
	effect efVisual = EffectVisualEffect(4003, 0);
	object oK39_way_grenade = GetObjectByTag("k39_way_grenade", 0);
	location location1 = GetLocation(oK39_way_grenade);
	ApplyEffectAtLocation(1, efVisual, location1, 2.0);
	ActionResumeConversation();
}

