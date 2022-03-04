void main() {
	object oLev40_gas04 = GetObjectByTag("lev40_gas04", 0);
	object object3;
	int int1;
	object3 = GetFirstInPersistentObject(oLev40_gas04, 1, 0);
	while (GetIsObjectValid(object3)) {
		ApplyEffectToObject(2, EffectSleep(), object3, 0.0);
		object3 = GetNextInPersistentObject(oLev40_gas04, 1, 0);
	}
}

