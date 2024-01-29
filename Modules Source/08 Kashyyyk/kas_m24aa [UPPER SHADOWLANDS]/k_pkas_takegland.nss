void main() {
	object oPC = GetFirstPC();
	object object3 = GetItemPossessedBy(oPC, "kas24_tachgland");
	GiveGoldToCreature(oPC, (GetNumStackedItems(object3) * 10));
	DestroyObject(object3, 0.0, 0, 0.0);
}

