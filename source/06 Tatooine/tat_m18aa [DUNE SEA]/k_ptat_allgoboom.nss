void main() {
	object oTat18_10droid_01 = GetObjectByTag("tat18_10droid_01", 0);
	object oTat18_10droid_02 = GetObjectByTag("tat18_10droid_02", 0);
	object oTat18_10droid_03 = GetObjectByTag("tat18_10droid_03", 0);
	object oTat18_10droid_04 = GetObjectByTag("tat18_10droid_04", 0);
	if (GetIsObjectValid(oTat18_10droid_01)) {
		DelayCommand(0.5, ApplyEffectToObject(0, EffectVisualEffect(3003, 0), oTat18_10droid_01, 0.0));
	}
	if (GetIsObjectValid(oTat18_10droid_02)) {
		DelayCommand(0.2, ApplyEffectToObject(0, EffectVisualEffect(3003, 0), oTat18_10droid_02, 0.0));
	}
	if (GetIsObjectValid(oTat18_10droid_03)) {
		DelayCommand(0.8, ApplyEffectToObject(0, EffectVisualEffect(3003, 0), oTat18_10droid_03, 0.0));
	}
	if (GetIsObjectValid(oTat18_10droid_04)) {
		DelayCommand(0.4, ApplyEffectToObject(0, EffectVisualEffect(3003, 0), oTat18_10droid_04, 0.0));
	}
}

