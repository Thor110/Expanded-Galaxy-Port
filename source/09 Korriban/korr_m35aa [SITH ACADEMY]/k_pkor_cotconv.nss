void main() {
	object object1 = GetLastUsedBy();
	object object3 = GetItemPossessedBy(object1, "k35_itm_sithdevc");
	if (((!GetGlobalBoolean("KOR_UTHAR_POISON")) && GetIsObjectValid(object3))) {
		ActionStartConversation(object1, "", 0, 0, 0, "", "", "", "", "", "");
	}
}

