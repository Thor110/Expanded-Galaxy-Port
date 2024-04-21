// Prototypes
int sub1(object objectParam1);

int sub1(object objectParam1) {
	int int1;
	object oNPC;
	object oBodyItem = GetItemInSlot(1, objectParam1);
	if ((!GetIsObjectValid(objectParam1))) {
		int1 = 0;
		while ((int1 < GetPartyMemberCount())) {
			oNPC = GetPartyMemberByIndex(int1);
			oBodyItem = GetItemInSlot(1, oNPC);
			if ((GetTag(oBodyItem) == "ptar_sitharmor")) {
				return 1;
			}
			(int1++);
		}
		return 0;
	}
	return (GetTag(oBodyItem) == "ptar_sitharmor");
}

int StartingConditional() {
	int int1 = (sub1(OBJECT_INVALID) && (!GetGlobalBoolean("TAR_DISGUISEXP")));
	return int1;
}
