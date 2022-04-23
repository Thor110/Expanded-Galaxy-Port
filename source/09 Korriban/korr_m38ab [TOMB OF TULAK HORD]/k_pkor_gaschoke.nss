void main() {
	object oNPC = GetPartyMemberByIndex(0);
	object object3 = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	ActionPauseConversation();
	if (GetIsObjectValid(oNPC)) {
		AssignCommand(oNPC, ClearAllActions());
		AssignCommand(oNPC, ActionPlayAnimation(116, 1.0, 10.0));
	}
	if (GetIsObjectValid(object3)) {
		if (((GetTag(object3) != "HK47") && (GetTag(object3) != "T3M4"))) {
			AssignCommand(object3, ClearAllActions());
			AssignCommand(object3, ActionPlayAnimation(116, 1.0, 10.0));
		}
		else {
			effect efVisual = EffectVisualEffect(1007, 0);
			ApplyEffectToObject(0, efVisual, object3, 1.0);
		}
	}
	if (GetIsObjectValid(object5)) {
		if (((GetTag(object5) != "HK47") && (GetTag(object5) != "T3M4"))) {
			AssignCommand(object5, ClearAllActions());
			AssignCommand(object5, ActionPlayAnimation(116, 1.0, 10.0));
		}
		else {
			effect effect3 = EffectVisualEffect(1007, 0);
			ApplyEffectToObject(0, effect3, object5, 1.0);
		}
	}
	ActionWait(3.0);
	ActionResumeConversation();
}

