void main() {
	object oPC = GetFirstPC();
	TakeGoldFromCreature(700, oPC, 0);
	SetGlobalBoolean("tat_SharinaPaidFull", 1);
}

