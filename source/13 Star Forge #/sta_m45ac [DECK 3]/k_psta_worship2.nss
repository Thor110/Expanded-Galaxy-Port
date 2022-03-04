void main() {
	object oSta_bastila = GetObjectByTag("sta_bastila", 0);
	object oSta_way_bastwait = GetObjectByTag("sta_way_bastwait", 0);
	DelayCommand(1.0, ApplyEffectToObject(0, EffectVisualEffect(1015, 0), oSta_bastila, 0.0));
	DelayCommand(4.0, ApplyEffectToObject(0, EffectVisualEffect(1015, 0), oSta_bastila, 0.0));
	DelayCommand(7.0, ApplyEffectToObject(0, EffectVisualEffect(1015, 0), oSta_bastila, 0.0));
	DelayCommand(10.0, ApplyEffectToObject(0, EffectVisualEffect(1015, 0), oSta_bastila, 0.0));
	DelayCommand(13.0, ApplyEffectToObject(0, EffectVisualEffect(1015, 0), oSta_bastila, 0.0));
}

