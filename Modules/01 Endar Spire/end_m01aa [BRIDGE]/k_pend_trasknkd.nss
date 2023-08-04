void main() {
	object oSlotItem;
	int int1;
	ClearAllActions();
	int1 = 17;
	while ((int1 >= 0)) {
		oSlotItem = GetItemInSlot(int1, OBJECT_SELF);
		if (GetIsObjectValid(oSlotItem)) {
			ActionUnequipItem(oSlotItem, 1);
		}
		(int1--);
	}
}

