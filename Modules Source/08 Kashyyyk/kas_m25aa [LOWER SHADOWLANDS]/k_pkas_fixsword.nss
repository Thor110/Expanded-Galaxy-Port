void main() {
	object oPC = GetFirstPC();
	object object3 = GetItemPossessedBy(oPC, "kas25_swordblade");
	DestroyObject(object3, 0.0, 0, 0.0);
	CreateItemOnObject("G_w_Vbroswrd05", oPC, 1);
}

