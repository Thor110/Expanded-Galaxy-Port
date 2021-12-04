void main() {
	ActionPauseConversation();
	object oK39_plc_pillar1 = GetObjectByTag("k39_plc_pillar1", 0);
	object oK39_plc_pillar = GetObjectByTag("k39_plc_pillar", 0);
	effect efBeam = EffectBeam(2038, oK39_plc_pillar, 0, 0);
	ApplyEffectToObject(1, efBeam, oK39_plc_pillar1, 1.0);
	ActionWait(1.0);
	ActionResumeConversation();
}

