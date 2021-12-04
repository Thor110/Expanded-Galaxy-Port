int StartingConditional() {
	object object1 = GetItemPossessedBy(GetPCSpeaker(), "W_CRYSTAL");
	return GetIsObjectValid(object1);
}

