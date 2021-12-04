void main() {
	object oTat18_landspeedr = GetObjectByTag("tat18_landspeedr", 0);
	object oSwooopidle = GetObjectByTag("swooopidle", 0);
	SetGlobalFadeIn(0.0, 3.0, 0.0, 0.0, 0.0);
	DestroyObject(oTat18_landspeedr, 0.0, 1, 0.0);
	SoundObjectStop(oSwooopidle);
	DestroyObject(OBJECT_SELF, 0.0, 1, 0.0);
}

