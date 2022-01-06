void main() {
	object oUnk44_area05 = GetObjectByTag("unk44_area05", 0);
	object object3 = GetFirstInPersistentObject(oUnk44_area05, 1, 0);
	while (GetIsObjectValid(object3)) {
		ChangeToStandardFaction(object3, 5);
		ApplyEffectToObject(2, EffectSleep(), object3, 0.0);
		object3 = GetNextInPersistentObject(oUnk44_area05, 1, 0);
	}
}

