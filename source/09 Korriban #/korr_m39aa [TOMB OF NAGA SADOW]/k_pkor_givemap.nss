void main() {
	object oPC = GetFirstPC();
	object object3 = GetItemPossessedBy(oPC, "kor_starpad");
	if ((!GetIsObjectValid(object3))) {
		CreateItemOnObject("kor_starpad", oPC, 1);
	}
}

