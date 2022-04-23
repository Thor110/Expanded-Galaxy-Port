void main() {
	object oPC = GetFirstPC();
	object oEntering = GetEnteringObject();
	object oKas22_viper_03 = GetWaypointByTag("kas22_viper_03");
	location location1 = GetLocation(oKas22_viper_03);
	int int1 = ((GetLevelByPosition(1, oPC) + GetLevelByPosition(2, oPC)) + GetLevelByPosition(3, oPC));
	if ((IsObjectPartyMember(oEntering) == 1)) {
		if ((int1 > 11)) {
			if ((int1 > 14)) {
				CreateObject(1, "kas22_kinrath_21", location1, 0);
			}
			CreateObject(1, "kas22_kinrath_21", location1, 0);
			CreateObject(1, "kas22_kinrath_05", location1, 0);
			CreateObject(1, "kas22_kinrath_20", location1, 0);
		}
		else {
			CreateObject(1, "kas22_kinrath_05", location1, 0);
			CreateObject(1, "kas22_kinrath_05", location1, 0);
			CreateObject(1, "kas22_kinrath_20", location1, 0);
		}
		DestroyObject(OBJECT_SELF, 0.0, 0, 0.0);
	}
}

