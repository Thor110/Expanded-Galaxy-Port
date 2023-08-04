void main() {
	object object1 = GetItemPossessedBy(OBJECT_SELF, "datapad");
	if ((!GetIsObjectValid(object1))) {
		object oPC = GetFirstPC();
		object object5 = GetItemPossessedBy(oPC, "datapad");
		if (GetIsObjectValid(object5)) {
			ActionTakeItem(object5, oPC);
		}
	}
}

