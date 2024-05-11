void main() {
	object oKas24_poachexit = GetWaypointByTag("kas24_poachexit");
	object oKas24_wraid = GetObjectByTag("kas24_wraid", 0);
	object oAreaObject = GetFirstObjectInArea(GetArea(OBJECT_SELF), 1);
	while (GetIsObjectValid(oAreaObject)) {
		if (((GetTag(oAreaObject) == "kas24_pgener_01") || (GetTag(oAreaObject) == "kas24_poffice_01"))) {
			AssignCommand(oAreaObject, DelayCommand(1.0, ActionMoveToObject(oKas24_poachexit, 1, 1.0)));
		}
		oAreaObject = GetNextObjectInArea(GetArea(OBJECT_SELF), 1);
	}
	AssignCommand(oKas24_wraid, ActionMoveToObject(oKas24_poachexit, 1, 1.0));
}

