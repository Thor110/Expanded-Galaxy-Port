void main() {
	object object1 = GetItemPossessedBy(GetObjectByTag("Bastila", 0), "bast_temp_saber");
	DelayCommand(1.0, DestroyObject(object1, 0.0, 0, 0.0));
	DelayCommand(4.0, DestroyObject(object1, 0.0, 0, 0.0));
	object oRWeapItem = GetItemInSlot(4, GetObjectByTag("Carth", 0));
	if ((GetTag(oRWeapItem) == "carth_temp_gun")) {
		DestroyObject(oRWeapItem, 0.0, 0, 0.0);
	}
}

