void main() {
	object oNPC = GetPartyMemberByIndex(0);
	object object3 = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	object oK39_way_grenade = GetObjectByTag("k39_way_grenade", 0);
	location location1 = GetLocation(oK39_way_grenade);
	location location3 = GetLocation(oNPC);
	effect efVisual = EffectVisualEffect(3006, 0);
	PlayRumblePattern(14);
	ApplyEffectAtLocation(0, efVisual, location1, 0.0);
	ActionPauseConversation();
	if (GetIsObjectValid(oNPC)) {
		AssignCommand(oNPC, ClearAllActions());
		AssignCommand(oNPC, ActionPlayAnimation(26, 1.0, 8.0));
	}
	if (GetIsObjectValid(object3)) {
		AssignCommand(object3, ClearAllActions());
		AssignCommand(object3, ActionPlayAnimation(30, 1.0, (-1.0)));
	}
	if (GetIsObjectValid(object5)) {
		AssignCommand(object5, ClearAllActions());
		AssignCommand(object5, ActionPlayAnimation(30, 1.0, (-1.0)));
	}
	ActionWait(1.0);
	ActionResumeConversation();
}

