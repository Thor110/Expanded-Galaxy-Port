void main() {
	object oPC = GetFirstPC();
	object object3 = GetItemPossessedBy(oPC, "kas24_tachgland");
	DestroyObject(object3, 0.0, 0, 0.0);
}

