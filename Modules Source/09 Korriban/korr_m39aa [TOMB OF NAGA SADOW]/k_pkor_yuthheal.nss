void main() {
	int nMaxHP = GetMaxHitPoints(OBJECT_SELF);
	effect efHeal = EffectHeal(nMaxHP);
	ApplyEffectToObject(2, efHeal, OBJECT_SELF, 0.0);
}

