void main() {
	effect efBeam = EffectBeam(2038, GetObjectByTag("DarthMalak", 0), 4, 0);
	effect effect3 = EffectBeam(2038, GetObjectByTag("DarthMalak", 0), 3, 0);
	effect efVisual = EffectVisualEffect(1021, 0);
	DelayCommand(0.0, ApplyEffectToObject(1, efBeam, GetObjectByTag("Invisible", 0), 1.5));
	DelayCommand(0.0, ApplyEffectToObject(1, effect3, GetObjectByTag("Invisible", 0), 1.5));
	DelayCommand(0.0, PlayRoomAnimation("StuntRoom44aa", 2));
	DelayCommand(1.5, PlayRoomAnimation("StuntRoom44aa", 1));
	DelayCommand(2.0, ApplyEffectToObject(1, efBeam, GetObjectByTag("Bastila", 0), 3.0));
	DelayCommand(2.0, ApplyEffectToObject(1, effect3, GetObjectByTag("Bastila", 0), 3.0));
	DelayCommand(3.0, PlayRoomAnimation("StuntRoom44aa", 2));
	DelayCommand(2.0, ApplyEffectToObject(0, efVisual, GetObjectByTag("Bastila", 0), 0.0));
	DelayCommand(2.7, ApplyEffectToObject(0, efVisual, GetObjectByTag("Bastila", 0), 0.0));
	DelayCommand(3.4, ApplyEffectToObject(0, efVisual, GetObjectByTag("Bastila", 0), 0.0));
	DelayCommand(4.1, ApplyEffectToObject(0, efVisual, GetObjectByTag("Bastila", 0), 0.0));
}

