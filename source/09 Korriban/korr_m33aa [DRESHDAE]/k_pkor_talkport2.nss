// Globals
	int intGLOB_1 = 0;
	int intGLOB_2 = 1;
	int intGLOB_3 = 2;
	int intGLOB_4 = 3;
	int intGLOB_5 = 4;
	int intGLOB_6 = 5;
	int intGLOB_7 = 6;
	int intGLOB_8 = 7;
	int intGLOB_9 = 8;
	int intGLOB_10 = 9;
	int intGLOB_11 = 10;
	int intGLOB_12 = 11;
	int intGLOB_13 = 12;
	int intGLOB_14 = 13;
	int intGLOB_15 = 14;
	int intGLOB_16 = 15;
	int intGLOB_17 = 16;
	int intGLOB_18 = 17;
	int intGLOB_19 = 18;
	int intGLOB_20 = 19;
	int intGLOB_21 = 1100;
	int intGLOB_22 = (-6);
	int intGLOB_23 = (-5);
	int intGLOB_24 = (-4);
	int intGLOB_25 = (-2);
	int intGLOB_26 = (-1);
	int intGLOB_27 = 0;

// Prototypes
int sub3();
int sub2(object objectParam1);
int sub1();

int sub3() {
	object oLWeapItem = GetItemInSlot(5, GetFirstPC());
	object oRWeapItem = GetItemInSlot(4, GetFirstPC());
	object oBodyItem = GetItemInSlot(1, GetFirstPC());
	if ((((((((((GetBaseItemType(oLWeapItem) == 9) || (GetBaseItemType(oLWeapItem) == 8)) || (GetBaseItemType(oLWeapItem) == 10)) || (GetBaseItemType(oRWeapItem) == 9)) || (GetBaseItemType(oRWeapItem) == 8)) || (GetBaseItemType(oRWeapItem) == 10)) || (GetBaseItemType(oBodyItem) == 35)) || (GetBaseItemType(oBodyItem) == 36)) || (GetBaseItemType(oBodyItem) == 37))) {
		return 1;
	}
	return 0;
}

int sub2(object objectParam1) {
	int nLocalBool;
	if (GetIsObjectValid(objectParam1)) {
		nLocalBool = GetLocalBoolean(objectParam1, intGLOB_11);
		if ((nLocalBool > 0)) {
			return 1;
		}
	}
	return 0;
}

int sub1() {
	return sub2(OBJECT_SELF);
}

int StartingConditional() {
	if (((!sub1()) && (!sub3()))) {
		return 1;
	}
	return 0;
}

