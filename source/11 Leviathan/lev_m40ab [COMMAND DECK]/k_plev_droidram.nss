void main() {
	SetGlobalBoolean("lev_ramdroid", 1);
	ActionMoveToObject(GetObjectByTag("lev_storage", 0), 0, 0.5);
	ActionDoCommand(SetLocked(GetObjectByTag("lev40_storage", 0), 0));
	ActionDoCommand(ActionOpenDoor(GetObjectByTag("lev40_storage", 0)));
	SetGlobalBoolean("Lev_storage", 1);
	ActionDoCommand(ApplyEffectToObject(0, EffectDamage(100, 8, 0), OBJECT_SELF, 0.0));
}

