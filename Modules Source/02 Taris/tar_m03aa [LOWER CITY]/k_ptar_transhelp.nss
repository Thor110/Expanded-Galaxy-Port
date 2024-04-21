void main() {
	if ((GetLocalBoolean(OBJECT_SELF, 10) == 0)) {
		if ((GetGlobalBoolean("TAR_FIRST_SWOOP_USE") == 0)) {
			int int3 = 1;
			object oNearest = GetNearestCreature(3, 1, GetFirstPC(), 1, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF);
			if (GetIsObjectValid(oNearest)) {
				if ((GetDistanceBetween(OBJECT_SELF, oNearest) < 30.0)) {
					int3 = 0;
				}
			}
			if ((int3 == 1)) {
				ShowTutorialWindow(1);
			}
		}
	}
}
