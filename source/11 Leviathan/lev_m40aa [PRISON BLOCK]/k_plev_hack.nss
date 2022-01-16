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
void sub2(object objectParam1, int intParam2, int intParam3);
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub2(object objectParam1, int intParam2, int intParam3) {
	int int1;
	if (((!GetIsObjectValid(objectParam1)) || (intParam2 == 0))) {
		return;
	}
	if (intParam3) {
		intParam2 = (-intParam2);
	}
	int1 = GetItemStackSize(objectParam1);
	if ((intParam2 > 0)) {
		SetItemStackSize(objectParam1, (int1 + intParam2));
	}
	else {
		if (((int1 + intParam2) <= 0)) {
			SetItemStackSize(objectParam1, 1);
			DestroyObject(objectParam1, 0.0, 1, 0.0);
		}
		else {
			SetItemStackSize(objectParam1, (int1 + intParam2));
		}
	}
}

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	object object1 = GetItemPossessedBy(GetFirstPC(), "k_computer_spike");
	int int1;
	int int2 = 99;
	int int3;
	if (GetIsObjectValid(object1)) {
		int1 = GetItemStackSize(object1);
		int3 = (int1 - int2);
		if ((int1 < int2)) {
			int3 = (-int3);
		}
		sub1(("ADDING SPIKES-" + IntToString(int3)), 5, 5, 5.0);
		sub2(object1, int3, (int2 <= int1));
		SetGlobalNumber("LEV_SPIKES", int1);
	}
	else {
		if ((int2 > 0)) {
			object1 = CreateItemOnObject("g_i_progspike01", GetFirstPC(), 1);
			int1 = GetItemStackSize(object1);
			int3 = (int1 - int2);
			if ((int1 < int2)) {
				int3 = (-int3);
			}
			sub1(("CREATING SPIKES-" + IntToString(int3)), 5, 5, 5.0);
			sub2(object1, int3, (int2 <= int1));
			SetGlobalNumber("LEV_SPIKES", 0);
		}
	}
	DestroyObject(GetItemPossessedBy(GetFirstPC(), "tar09_icebreaker"), 0.0, 1, 0.0);
}

