void main() {
	effect efVisual = EffectVisualEffect(7000, 0);
	DelayCommand(2.75, ApplyEffectToObject(2, efVisual, GetFirstPC(), 0.0));
	effect effect3 = EffectVisualEffect(7000, 0);
	DelayCommand(0.0, ApplyEffectToObject(1, effect3, GetObjectByTag("Dodonna", 0), 2.75));
}

