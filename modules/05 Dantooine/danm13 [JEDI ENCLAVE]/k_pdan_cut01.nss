void main() {
	object oPC = GetFirstPC();
	object object3 = GetObjectByTag("bastila", 0);
	object object5 = CreateItemOnObject("dan13_practice", oPC, 1);
	object object7 = CreateItemOnObject("dan13_practice", object3, 1);
	AssignCommand(oPC, ActionUnequipItem(GetItemInSlot(5, oPC), 1));
	AssignCommand(oPC, ActionUnequipItem(GetItemInSlot(4, oPC), 1));
	AssignCommand(object3, ActionUnequipItem(GetItemInSlot(5, object3), 1));
	AssignCommand(object3, ActionUnequipItem(GetItemInSlot(4, object3), 1));
	AssignCommand(oPC, ActionEquipItem(object5, 4, 1));
	AssignCommand(object3, ActionEquipItem(object7, 4, 1));
}

