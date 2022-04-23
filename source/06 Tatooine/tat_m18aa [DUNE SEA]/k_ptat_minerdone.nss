void main() {
	object oAreaObject = GetFirstObjectInArea(OBJECT_INVALID, 1);
	while ((GetIsObjectValid(oAreaObject) == 1)) {
		if (((((GetTag(oAreaObject) == "tat18_13craw1_01") || (GetTag(oAreaObject) == "tat18_13craw1_02")) || (GetTag(oAreaObject) == "tat18_13craw1_03")) || (GetTag(oAreaObject) == "tat18_13craw2_01"))) {
			ChangeToStandardFaction(oAreaObject, 5);
		}
		oAreaObject = GetNextObjectInArea(OBJECT_INVALID, 1);
	}
}

