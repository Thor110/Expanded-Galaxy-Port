void main() {
	object object1 = CreateItemOnObject("g_a_jedirobe01", GetFirstPC(), 1);
	AssignCommand(GetFirstPC(), ActionUnequipItem(GetItemInSlot(1, OBJECT_SELF), 0));
	AssignCommand(GetFirstPC(), ActionEquipItem(object1, 1, 1));
}

