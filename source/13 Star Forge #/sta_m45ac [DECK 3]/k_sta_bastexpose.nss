void main() {
	object oPC = GetFirstPC();
	object oLWeapItem = GetItemInSlot(5, oPC);
	SetGlobalNumber("Sta_BastConversion", (GetGlobalNumber("Sta_BastConversion") + 2));
}

