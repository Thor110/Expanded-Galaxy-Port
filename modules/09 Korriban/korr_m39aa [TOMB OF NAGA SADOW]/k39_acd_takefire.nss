void main() {
	object oPC = GetFirstPC();
	object object3 = GetItemPossessedBy(oPC, "k39_itm_firegren");
	ActionDoCommand(DestroyObject(object3, 0.0, 0, 0.0));
	object oNPC = GetPartyMemberByIndex(0);
	object object7 = GetPartyMemberByIndex(1);
	object object9 = GetPartyMemberByIndex(2);
	if (GetIsObjectValid(oNPC)) {
		ActionDoCommand(ApplyEffectToObject(0, EffectDeath(0, 1), oNPC, 0.0));
	}
	if (GetIsObjectValid(object7)) {
		ActionDoCommand(ApplyEffectToObject(0, EffectDeath(0, 1), object7, 0.0));
	}
	if (GetIsObjectValid(object9)) {
		ActionDoCommand(ApplyEffectToObject(0, EffectDeath(0, 1), object9, 0.0));
	}
	SetPlotFlag(OBJECT_SELF, 0);
	ActionDoCommand(DestroyObject(OBJECT_SELF, 0.0, 0, 0.0));
}

