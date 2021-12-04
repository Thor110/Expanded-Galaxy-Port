void main() {
	object oPC = GetFirstPC();
	AssignCommand(oPC, ActionUnequipItem(GetItemInSlot(4, oPC), 0));
	AssignCommand(oPC, ActionUnequipItem(GetItemInSlot(5, oPC), 0));
}

