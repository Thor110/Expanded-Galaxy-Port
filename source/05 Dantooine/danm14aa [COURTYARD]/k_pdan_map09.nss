int StartingConditional() {
	int int1 = ((GetIsObjectValid(GetItemPossessedBy(GetPCSpeaker(), "dan_map1")) == 0) || (GetIsObjectValid(GetItemPossessedBy(GetPCSpeaker(), "dan_map2")) == 0));
	return int1;
}

