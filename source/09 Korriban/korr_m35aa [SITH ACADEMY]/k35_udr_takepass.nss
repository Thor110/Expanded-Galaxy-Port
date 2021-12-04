void main() {
	object oPC = GetFirstPC();
	object object3 = GetItemPossessedBy(oPC, "k35_itm_uthrpass");
	DestroyObject(object3, 0.0, 0, 0.0);
	ActionDoCommand(SetLocked(OBJECT_SELF, 0));
	ActionOpenDoor(OBJECT_SELF);
}

