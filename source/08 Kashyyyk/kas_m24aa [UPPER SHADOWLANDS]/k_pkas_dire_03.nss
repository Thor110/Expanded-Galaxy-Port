void main() {
	object oPC = GetFirstPC();
	object oEntering = GetEnteringObject();
	object oKas22_dire_03 = GetWaypointByTag("kas22_dire_03");
	location location1 = GetLocation(oKas22_dire_03);
	int int1 = ((GetLevelByPosition(1, oPC) + GetLevelByPosition(2, oPC)) + GetLevelByPosition(3, oPC));
	if ((IsObjectPartyMember(oEntering) == 1)) {
		if ((int1 > 11)) {
			if ((int1 > 14)) {
				CreateObject(1, "kas24_katarn03", location1, 0);
			}
			CreateObject(1, "kas2_katarn_02", location1, 0);
			CreateObject(1, "kas2_katarn_02", location1, 0);
			CreateObject(1, "kas24_katarn03", location1, 0);
		}
		else {
			CreateObject(1, "kas2_katarn_01", location1, 0);
			CreateObject(1, "kas2_katarn_01", location1, 0);
			CreateObject(1, "kas2_katarn_02", location1, 0);
		}
		DestroyObject(OBJECT_SELF, 0.0, 0, 0.0);
	}
}

