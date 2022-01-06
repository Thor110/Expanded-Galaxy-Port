void main() {
	object oNPC = GetPartyMemberByIndex(0);
	object object3 = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	object oTat18_10tanis_01 = GetObjectByTag("tat18_10tanis_01", 0);
	if (GetIsObjectValid(oTat18_10tanis_01)) {
		ApplyEffectToObject(0, EffectDamage(GetCurrentHitPoints(oTat18_10tanis_01), 8, 0), oTat18_10tanis_01, 0.0);
	}
	ApplyEffectToObject(0, EffectDamage(20, 8, 0), oNPC, 0.0);
	ApplyEffectToObject(0, EffectDamage(20, 8, 0), object3, 0.0);
	ApplyEffectToObject(0, EffectDamage(20, 8, 0), object5, 0.0);
}

