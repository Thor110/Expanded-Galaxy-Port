int StartingConditional() {
	int int1;
	int nValid = GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), "ptar_sithpapers"));
	int1 = GetGlobalBoolean("TAR_PAPERSSHOWN");
	return int1;
}
