void main() {
	object oPC = GetFirstPC();
	object oRevan_bastila2 = GetObjectByTag("revan_bastila2", 0);
	object oRWeapItem = GetItemInSlot(4, oRevan_bastila2);
	AssignCommand(oRevan_bastila2, ActionUnequipItem(oRWeapItem, 4));
}

