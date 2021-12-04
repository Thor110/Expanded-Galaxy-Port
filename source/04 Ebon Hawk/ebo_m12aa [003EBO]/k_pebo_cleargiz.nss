void main() {
	ApplyEffectToObject(0, EffectChoke(), OBJECT_SELF, 0.0);
	DelayCommand(0.5, ClearAllActions());
}

