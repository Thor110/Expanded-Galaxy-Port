void main() {
	object object1 = GetItemPossessedBy(GetFirstPC(), "dan16_key");
	int int1 = 1;
	object oNearest = GetNearestObject(8, OBJECT_SELF, int1);
	while (GetIsObjectValid(oNearest)) {
		SetLocked(oNearest, 1);
		AssignCommand(oNearest, ActionCloseDoor(oNearest));
		(int1++);
		oNearest = GetNearestObject(8, OBJECT_SELF, int1);
	}
	DestroyObject(object1, 0.0, 0, 0.0);
}

