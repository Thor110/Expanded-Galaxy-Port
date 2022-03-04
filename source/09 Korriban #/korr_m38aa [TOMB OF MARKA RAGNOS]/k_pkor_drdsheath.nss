void main() {
	object oLWeapItem = GetItemInSlot(5, OBJECT_SELF);
	if (GetIsObjectValid(oLWeapItem)) {
		ActionUnequipItem(oLWeapItem, 0);
	}
	object oRWeapItem = GetItemInSlot(4, OBJECT_SELF);
	if (GetIsObjectValid(oRWeapItem)) {
		ActionUnequipItem(oRWeapItem, 0);
	}
}

