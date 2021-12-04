int StartingConditional() {
	int int1 = ((GetGlobalBoolean("UNK_RedConch") == 1) && GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), "punk_conch")));
	return int1;
}

