void main() {
	SetLocked(OBJECT_SELF, 0);
	ActionOpenDoor(OBJECT_SELF);
	SetGlobalNumber("END_TRASK_DLG", 31);
	DestroyObject(GetObjectByTag("Carth", 0), 0.0, 0, 0.0);
}

