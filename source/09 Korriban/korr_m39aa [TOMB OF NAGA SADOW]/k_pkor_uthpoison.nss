void main() {
	int nMaxHP = GetMaxHitPoints(OBJECT_SELF);
	int int3 = (nMaxHP / 4);
	effect efDamage = EffectDamage(int3, 8, 0);
	ActionPauseConversation();
	ApplyEffectToObject(0, efDamage, OBJECT_SELF, 0.0);
	ActionPlayAnimation(13, 0.7, 3.0);
	ActionResumeConversation();
}

