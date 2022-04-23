void main() {
	object oNPC = GetPartyMemberByIndex(0);
	object object3 = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	object oTat18_10droid_01 = GetObjectByTag("tat18_10droid_01", 0);
	object oTat18_10droid_02 = GetObjectByTag("tat18_10droid_02", 0);
	object oTat18_10droid_03 = GetObjectByTag("tat18_10droid_03", 0);
	object oTat18_10droid_04 = GetObjectByTag("tat18_10droid_04", 0);
	object oTat18_10tanis_01 = GetObjectByTag("tat18_10tanis_01", 0);
	ApplyEffectToObject(0, EffectDamage(20, 8, 0), oNPC, 0.0);
	ApplyEffectToObject(0, EffectDamage(20, 8, 0), object3, 0.0);
	ApplyEffectToObject(0, EffectDamage(20, 8, 0), object5, 0.0);
	if (GetIsObjectValid(oTat18_10droid_01)) {
		DelayCommand(0.1, ApplyEffectToObject(0, EffectVisualEffect(3003, 0), oTat18_10droid_01, 0.0));
		DelayCommand(0.5, ApplyEffectToObject(0, EffectDamage(GetCurrentHitPoints(oTat18_10droid_01), 8, 0), oTat18_10droid_01, 0.0));
	}
	if (GetIsObjectValid(oTat18_10droid_02)) {
		DelayCommand(0.2, ApplyEffectToObject(0, EffectVisualEffect(3003, 0), oTat18_10droid_02, 0.0));
		DelayCommand(0.5, ApplyEffectToObject(0, EffectDamage(GetCurrentHitPoints(oTat18_10droid_02), 8, 0), oTat18_10droid_02, 0.0));
	}
	if (GetIsObjectValid(oTat18_10droid_03)) {
		DelayCommand(0.3, ApplyEffectToObject(0, EffectVisualEffect(3003, 0), oTat18_10droid_03, 0.0));
		DelayCommand(0.5, ApplyEffectToObject(0, EffectDamage(GetCurrentHitPoints(oTat18_10droid_03), 8, 0), oTat18_10droid_03, 0.0));
	}
	if (GetIsObjectValid(oTat18_10droid_04)) {
		DelayCommand(0.2, ApplyEffectToObject(0, EffectVisualEffect(3003, 0), oTat18_10droid_04, 0.0));
		DelayCommand(0.5, ApplyEffectToObject(0, EffectDamage(GetCurrentHitPoints(oTat18_10droid_04), 8, 0), oTat18_10droid_04, 0.0));
	}
	if (GetIsObjectValid(oTat18_10tanis_01)) {
		DelayCommand(0.5, ApplyEffectToObject(0, EffectDamage(GetCurrentHitPoints(oTat18_10tanis_01), 8, 0), oTat18_10tanis_01, 0.0));
	}
}

