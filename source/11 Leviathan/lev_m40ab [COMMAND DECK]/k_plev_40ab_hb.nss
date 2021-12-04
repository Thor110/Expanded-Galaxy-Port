void main() {
	if (GetGlobalBoolean("LEV_SPACEWALKING")) {
		ApplyEffectToObject(0, EffectDamage(1000, 8, 0), GetFirstPC(), 0.0);
	}
}

