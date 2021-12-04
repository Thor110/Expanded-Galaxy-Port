void main() {
	object oPC = GetFirstPC();
	object object3 = GetItemPossessedBy(oPC, "kas25_mandhelmet");
	if ((GetIsObjectValid(object3) == 1)) {
		CreateItemOnObject("g_w_vbroshort03", oPC, 1);
		DestroyObject(object3, 0.0, 0, 0.0);
	}
}

