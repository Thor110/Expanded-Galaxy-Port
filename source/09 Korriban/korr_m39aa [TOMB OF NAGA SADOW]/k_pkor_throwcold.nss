void main() {
	ActionPauseConversation();
	object oPC = GetFirstPC();
	effect efVisual = EffectVisualEffect(3009, 0);
	object oK39_way_grenade = GetObjectByTag("k39_way_grenade", 0);
	location location1 = GetLocation(oK39_way_grenade);
	AssignCommand(oPC, ActionPlayAnimation(117, 1.0, 2.0));
	ActionWait(1.0);
	ActionResumeConversation();
}

