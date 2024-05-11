void main() {
	object object3 = GetObjectByTag("bastila", 0);
	object oRWeapItem = GetItemInSlot(4, GetFirstPC());
	object object4 = GetItemInSlot(4, object3);
	AssignCommand(GetFirstPC(), ActionUnequipItem(oRWeapItem, 1));
	AssignCommand(object3, ActionUnequipItem(object4, 1));
	DelayCommand(1.0, DestroyObject(oRWeapItem, 0.0, 0, 0.0));
	DelayCommand(1.0, DestroyObject(object4, 0.0, 0, 0.0));
}
