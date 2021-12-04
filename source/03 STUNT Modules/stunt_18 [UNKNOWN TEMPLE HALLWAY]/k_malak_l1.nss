void main() {
	effect efBeam = EffectBeam(2038, GetObjectByTag("DarthMalak", 0), 4, 0);
	effect efVisual = EffectVisualEffect(1028, 0);
	DelayCommand(2.3, ApplyEffectToObject(1, efBeam, GetObjectByTag("Bastila", 0), 2.0));
	DelayCommand(2.3, PlayRoomAnimation("StuntRoom44aa", 2));
	DelayCommand(4.3, PlayRoomAnimation("StuntRoom44aa", 1));
	DelayCommand(2.3, PlayRoomAnimation("StuntRoom44aa", 3));
	DelayCommand(2.3, ApplyEffectToObject(0, efVisual, GetObjectByTag("Bastila", 0), 0.0));
	DelayCommand(3.0, ApplyEffectToObject(0, efVisual, GetObjectByTag("Bastila", 0), 0.0));
	DelayCommand(3.7, ApplyEffectToObject(0, efVisual, GetObjectByTag("Bastila", 0), 0.0));
}

