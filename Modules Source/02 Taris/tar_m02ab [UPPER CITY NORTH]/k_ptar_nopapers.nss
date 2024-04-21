// Prototypes
int sub1(object objectParam1);

int sub1(object objectParam1) {
	int nLocalBool;
	if (GetIsObjectValid(objectParam1)) {
		nLocalBool = GetLocalBoolean(objectParam1, 10);
		if ((nLocalBool > 0)) {
			return 1;
		}
	}
	return 0;
}

int StartingConditional() {
	int int1;
	int int2 = (GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), "ptar_sithpapers")) || GetGlobalBoolean("TAR_SITHARMOR"));
	(!int2);
	int1 = (int2 || (!sub1(OBJECT_SELF)));
	return int1;
}
