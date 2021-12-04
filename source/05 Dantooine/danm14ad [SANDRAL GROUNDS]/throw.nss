void main() {
	ChangeToStandardFaction(GetLastAttacker(OBJECT_SELF), 5);
	ApplyEffectToObject(0, EffectDeath(0, 1), OBJECT_SELF, 0.0);
}

