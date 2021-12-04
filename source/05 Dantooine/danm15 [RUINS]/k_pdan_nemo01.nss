void main() {
	SetIsDestroyable(0, 0, 1);
	DelayCommand(1.0, ApplyEffectToObject(0, EffectDeath(0, 1), OBJECT_SELF, 0.0));
}

