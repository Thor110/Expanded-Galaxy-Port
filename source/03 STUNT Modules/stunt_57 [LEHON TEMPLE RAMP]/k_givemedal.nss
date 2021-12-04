void main() {
	effect efVisual = EffectVisualEffect(7000, 0);
	DelayCommand(0.0, ApplyEffectToObject(2, efVisual, GetObjectByTag("Dodonna", 0), 0.0));
}

