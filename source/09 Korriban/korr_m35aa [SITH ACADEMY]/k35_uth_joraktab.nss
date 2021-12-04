int StartingConditional() {
	int nValid;
	object oPC = GetFirstPC();
	object object3 = GetItemPossessedBy(oPC, "kor_itm_sithtabl");
	nValid = GetIsObjectValid(object3);
	return nValid;
}

