int StartingConditional() {
	int int1;
	object oPC = GetFirstPC();
	object oNPC = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	object object7 = GetItemPossessedBy(oPC, "k37_itm_freedont");
	object object9 = GetItemPossessedBy(oNPC, "k37_itm_freedont");
	object object11 = GetItemPossessedBy(object5, "k37_itm_freedont");
	int1 = (((GetIsObjectValid(object7) || GetIsObjectValid(object9)) || GetIsObjectValid(object11)) && (GetGlobalBoolean("KOR_FREEDON_SWORD") == 0));
	return int1;
}

