void main() {
	object oPC = GetFirstPC();
	object oNPC = GetPartyMemberByIndex(0);
	object object5 = GetPartyMemberByIndex(1);
	object object7 = GetPartyMemberByIndex(2);
	object object9 = GetItemPossessedBy(OBJECT_SELF, "kas24_droidhead");
	CreateItemOnObject("kas24_droidhead", oPC, 1);
	if ((GetDistanceToObject(oNPC) < 7.0)) {
		ActionDoCommand(ApplyEffectToObject(0, EffectDamage(10, 8, 0), oNPC, 0.0));
	}
	if ((GetDistanceToObject(object5) < 7.0)) {
		ActionDoCommand(ApplyEffectToObject(0, EffectDamage(10, 8, 0), object5, 0.0));
	}
	if ((GetDistanceToObject(object7) < 7.0)) {
		ActionDoCommand(ApplyEffectToObject(0, EffectDamage(10, 8, 0), object7, 0.0));
	}
	ActionDoCommand(ApplyEffectAtLocation(0, EffectVisualEffect(3003, 0), GetLocation(OBJECT_SELF), 0.0));
	DestroyObject(OBJECT_SELF, 0.5, 1, 0.0);
}

