void main() {
	object object1 = CreateItemOnObject("g_a_jedirobe01", GetFirstPC(), 1);
	ActionUnequipItem(GetItemInSlot(1, OBJECT_SELF), 0);
	ActionEquipItem(object1, 1, 1);
}

