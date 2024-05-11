void main() {
	object oPC = GetFirstPC();
	TakeGoldFromCreature(500, oPC, 0);
	SetGlobalBoolean("tat_SharinaPaidFull", 1);
}

