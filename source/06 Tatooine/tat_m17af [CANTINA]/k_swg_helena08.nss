int StartingConditional() {
	object oBastila = GetObjectByTag("bastila", 0);
	object object3 = GetItemPossessedBy(oBastila, "holocron");
	if ((!GetIsObjectValid(object3))) {
		return 1;
	}
	return 0;
}

