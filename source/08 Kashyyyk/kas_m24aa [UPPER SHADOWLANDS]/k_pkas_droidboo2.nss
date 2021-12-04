void main() {
	ActionDoCommand(ApplyEffectToObject(0, EffectDamage(GetCurrentHitPoints(OBJECT_SELF), 8, 0), OBJECT_SELF, 0.0));
	SetCommandable(0, OBJECT_SELF);
}

