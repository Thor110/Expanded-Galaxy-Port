void main() {
	object oNearestUnk44_shielddrd = GetNearestObjectByTag("unk44_shielddrd", OBJECT_SELF, 1);
	ApplyEffectToObject(2, EffectAbilityDecrease(1, (-10)), oNearestUnk44_shielddrd, 0.0);
}

