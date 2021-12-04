void main() {
	effect efBeam = EffectBeam(2026, GetObjectByTag("pillar2", 0), 2, 0);
	ApplyEffectToObject(2, efBeam, GetObjectByTag("pillar1", 0), 0.0);
}

