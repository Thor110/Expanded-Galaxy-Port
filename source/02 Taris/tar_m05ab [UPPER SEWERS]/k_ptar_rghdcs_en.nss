void main() {
	object oAreaObject = GetFirstObjectInArea(OBJECT_INVALID, 1);
	while (GetIsObjectValid(oAreaObject)) {
		if ((GetTag(oAreaObject) == "tar05_kathhound")) {
			ChangeToStandardFaction(oAreaObject, 3);
		}
		oAreaObject = GetNextObjectInArea(OBJECT_INVALID, 1);
	}
}

