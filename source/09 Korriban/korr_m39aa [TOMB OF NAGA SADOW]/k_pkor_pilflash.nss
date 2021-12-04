void main() {
	object oK39_plc_pillar1 = GetObjectByTag("k39_plc_pillar1", 0);
	object oK39_plc_pillar = GetObjectByTag("k39_plc_pillar", 0);
	object oK39_plc_pillar2 = GetObjectByTag("k39_plc_pillar2", 0);
	effect efVisual = EffectVisualEffect(4003, 0);
	ActionPauseConversation();
	ApplyEffectToObject(0, efVisual, oK39_plc_pillar1, 0.0);
	ApplyEffectToObject(0, efVisual, oK39_plc_pillar, 0.0);
	ApplyEffectToObject(0, efVisual, oK39_plc_pillar2, 0.0);
	ActionWait(1.0);
	ActionResumeConversation();
}

