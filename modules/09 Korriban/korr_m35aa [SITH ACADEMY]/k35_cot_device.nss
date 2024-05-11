void main() {
	object object1 = GetItemPossessedBy(OBJECT_SELF, "k35_itm_sithdevc");
	if (GetIsObjectValid(object1)) {
		SetGlobalBoolean("KOR_UTHAR_POISON", 1);
	}
}

