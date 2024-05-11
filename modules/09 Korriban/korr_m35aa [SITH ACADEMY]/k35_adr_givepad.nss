void main() {
	object oPC = GetFirstPC();
	object object3 = GetItemPossessedBy(oPC, "k35_itm_sithdata");
	if (GetIsObjectValid(object3)) {
		SetGlobalBoolean("KOR_YUTH_POISON", 1);
		ActionTakeItem(object3, oPC);
		object oK35_way_entrance = GetObjectByTag("k35_way_entrance", 0);
		ActionMoveToObject(oK35_way_entrance, 1, 1.0);
		ActionDoCommand(DestroyObject(OBJECT_SELF, 0.0, 0, 0.0));
		SetCommandable(0, OBJECT_SELF);
	}
}

