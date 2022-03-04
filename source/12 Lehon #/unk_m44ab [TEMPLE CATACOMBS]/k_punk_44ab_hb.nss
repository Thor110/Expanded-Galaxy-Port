void main() {
	object object1;
	if ((!GetGlobalBoolean("UNK_COLDOFF"))) {
		ApplyEffectToObject(0, EffectDamage(3, 32, 0), GetFirstPC(), 0.0);
	}
}

