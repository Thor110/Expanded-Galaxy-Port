// Prototypes
effect sub1();

effect sub1() {
	effect efBeam = EffectBeam(2038, GetObjectByTag("end_zap01", 0), 1, 0);
	return EffectLinkEffects(EffectDamage(5, 8, 0), efBeam);
}

void main() {
	ApplyEffectToObject(0, sub1(), OBJECT_SELF, 0.0);
	SetGlobalNumber("END_TRASK_DLG", 10);
}

