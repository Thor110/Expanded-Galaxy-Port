void main() {
	int nMaxHP = GetMaxHitPoints(OBJECT_SELF);
	int nCurHP = GetCurrentHitPoints(OBJECT_SELF);
	if ((nCurHP < nMaxHP)) {
		ApplyEffectToObject(0, EffectHeal((nMaxHP - nCurHP)), OBJECT_SELF, 0.0);
	}
}

