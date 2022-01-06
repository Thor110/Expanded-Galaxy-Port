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
void sub3(object objectParam1, object objectParam2);
void sub2(int intParam1);
void sub1(object objectParam1);

void sub3(object objectParam1, object objectParam2) {
	object oInvItem;
	if (((!GetIsObjectValid(objectParam1)) || (!GetIsObjectValid(objectParam2)))) {
		return;
	}
	if (GetIsObjectValid(oInvItem = GetItemInSlot(10, objectParam1))) {
		GiveItem(oInvItem, objectParam2);
	}
	if (GetIsObjectValid(oInvItem = GetItemInSlot(1, objectParam1))) {
		GiveItem(oInvItem, objectParam2);
	}
	if (GetIsObjectValid(oInvItem = GetItemInSlot(3, objectParam1))) {
		GiveItem(oInvItem, objectParam2);
	}
	if (GetIsObjectValid(oInvItem = GetItemInSlot(0, objectParam1))) {
		GiveItem(oInvItem, objectParam2);
	}
	if (GetIsObjectValid(oInvItem = GetItemInSlot(9, objectParam1))) {
		GiveItem(oInvItem, objectParam2);
	}
	if (GetIsObjectValid(oInvItem = GetItemInSlot(7, objectParam1))) {
		GiveItem(oInvItem, objectParam2);
	}
	if (GetIsObjectValid(oInvItem = GetItemInSlot(5, objectParam1))) {
		GiveItem(oInvItem, objectParam2);
	}
	if (GetIsObjectValid(oInvItem = GetItemInSlot(8, objectParam1))) {
		GiveItem(oInvItem, objectParam2);
	}
	if (GetIsObjectValid(oInvItem = GetItemInSlot(4, objectParam1))) {
		GiveItem(oInvItem, objectParam2);
	}
	oInvItem = GetFirstItemInInventory(objectParam1);
	while (GetIsObjectValid(oInvItem)) {
		GiveItem(oInvItem, objectParam2);
		oInvItem = GetFirstItemInInventory(objectParam1);
	}
}

void sub2(int intParam1) {
	SwitchPlayerCharacter(intParam1);
	switch (intParam1) {
		case 3:
			break;
			sub3(GetFirstPC(), GetObjectByTag("lev40_patgear", 0));
			break;
			sub3(GetFirstPC(), GetObjectByTag("lev40_ptylocker", 0));
			break;
		case 7:
		case 5:
		case 1:
		default:
	}
}

void sub1(object objectParam1) {
	switch (GetGlobalNumber("lev_escape")) {
		case 1:
			sub2(6);
			break;
		case 2:
			sub2(7);
			break;
		case 3:
			sub2(4);
			break;
		case 4:
			sub2(1);
			break;
		case 5:
			sub2(5);
			break;
		case 6:
			sub2(3);
			break;
	}
	AssignCommand(GetFirstPC(), ActionJumpToObject(objectParam1, 0));
}

void main() {
	object oLev40_wpescape6;
	object object2 = OBJECT_SELF;
	DelayCommand(10.0, DestroyObject(object2, 0.0, 1, 0.0));
	switch (GetGlobalNumber("lev_escape")) {
		case 1:
			oLev40_wpescape6 = GetObjectByTag("lev40_wpescape1", 0);
			break;
		case 2:
			oLev40_wpescape6 = GetObjectByTag("lev40_wpescape2", 0);
			break;
		case 3:
			oLev40_wpescape6 = GetObjectByTag("lev40_wpescape3", 0);
			break;
		case 4:
			oLev40_wpescape6 = GetObjectByTag("lev40_wpescape4", 0);
			break;
		case 5:
			oLev40_wpescape6 = GetObjectByTag("lev40_wpescape5", 0);
			break;
		case 6:
			oLev40_wpescape6 = GetObjectByTag("lev40_wpescape6", 0);
			break;
	}
	DelayCommand(0.2, sub1(oLev40_wpescape6));
	DelayCommand(0.2, SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0));
}

