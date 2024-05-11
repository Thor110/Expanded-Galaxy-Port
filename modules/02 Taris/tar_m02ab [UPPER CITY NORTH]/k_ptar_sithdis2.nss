// Prototypes
int sub2(object objectParam1);
int sub1(object objectParam1);

int sub2(object objectParam1) {
	int nLocalBool;
	if (GetIsObjectValid(objectParam1)) {
		nLocalBool = GetLocalBoolean(objectParam1, 10);
		if ((nLocalBool > 0)) {
			return 1;
		}
	}
	return 0;
}

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
	return (sub1(OBJECT_INVALID) && (sub2(OBJECT_SELF) == 0));
}
