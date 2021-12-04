void main() {
	effect efVisual = EffectVisualEffect(7002, 0);
	ApplyEffectToObject(1, efVisual, GetObjectByTag("DarthRevan", 0), 9.0);
	effect effect3 = EffectVisualEffect(7001, 0);
	DelayCommand(9.0, ApplyEffectToObject(1, effect3, GetObjectByTag("DarthRevan", 0), 15.0));
}

