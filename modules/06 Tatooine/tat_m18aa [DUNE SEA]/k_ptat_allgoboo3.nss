void main() {
	object oTat18_10droid_01 = GetObjectByTag("tat18_10droid_01", 0);
	object oTat18_10droid_02 = GetObjectByTag("tat18_10droid_02", 0);
	object oTat18_10droid_03 = GetObjectByTag("tat18_10droid_03", 0);
	object oTat18_10droid_04 = GetObjectByTag("tat18_10droid_04", 0);
	if (GetIsObjectValid(oTat18_10droid_01)) {
		ApplyEffectToObject(0, EffectDamage(GetCurrentHitPoints(oTat18_10droid_01), 8, 0), oTat18_10droid_01, 0.0);
	}
	if (GetIsObjectValid(oTat18_10droid_02)) {
		ApplyEffectToObject(0, EffectDamage(GetCurrentHitPoints(oTat18_10droid_02), 8, 0), oTat18_10droid_02, 0.0);
	}
	if (GetIsObjectValid(oTat18_10droid_03)) {
		ApplyEffectToObject(0, EffectDamage(GetCurrentHitPoints(oTat18_10droid_03), 8, 0), oTat18_10droid_03, 0.0);
	}
	if (GetIsObjectValid(oTat18_10droid_04)) {
		ApplyEffectToObject(0, EffectDamage(GetCurrentHitPoints(oTat18_10droid_04), 8, 0), oTat18_10droid_04, 0.0);
	}
}

