void main() {
	object oPC = GetFirstPC();
	object oLWeapItem = GetItemInSlot(5, oPC);
	if (GetIsObjectValid(oLWeapItem)) {
		AssignCommand(oPC, ActionUnequipItem(oLWeapItem, 0));
	}
	object oRWeapItem = GetItemInSlot(4, oPC);
	if (GetIsObjectValid(oRWeapItem)) {
		AssignCommand(oPC, ActionUnequipItem(oRWeapItem, 0));
	}
}

