int StartingConditional() {
	int int1;
	object object1 = GetLastUsedBy();
	object object3 = GetItemPossessedBy(object1, "kas25_datapad");
	if (GetIsObjectValid(object3)) {
		return 1;
	}
	else {
		return 0;
	}
}

