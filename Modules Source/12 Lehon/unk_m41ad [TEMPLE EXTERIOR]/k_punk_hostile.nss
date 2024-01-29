void main() {
	object oAreaObject = GetFirstObjectInArea(GetArea(GetFirstPC()), 1);
	if ((GetEnteringObject() == GetFirstPC())) {
		if (GetIsObjectValid(GetObjectByTag("unk41_rakguide", 0))) {
			while ((oAreaObject != OBJECT_INVALID)) {
				if (((GetStandardFaction(oAreaObject) == 1) || (GetStandardFaction(oAreaObject) == 3))) {
					DestroyObject(oAreaObject, 0.0, 1, 0.0);
				}
				oAreaObject = GetNextObjectInArea(GetArea(GetFirstPC()), 1);
			}
		}
	}
}

