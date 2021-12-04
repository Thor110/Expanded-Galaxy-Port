void main() {
	object oEntering = GetEnteringObject();
	if ((GetIsPC(oEntering) == 1)) {
		DoSinglePlayerAutoSave();
		DestroyObject(OBJECT_SELF, 0.0, 0, 0.0);
	}
}

