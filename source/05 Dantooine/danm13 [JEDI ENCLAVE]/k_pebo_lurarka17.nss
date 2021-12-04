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
void sub3(int intParam1);
void sub2(object objectParam1, int intParam2);
void sub1(object objectParam1);

void sub3(int intParam1) {
	object oSW_EXIT = GetWaypointByTag("SW_EXIT");
	object oK_EXIT = GetWaypointByTag("K_EXIT");
	if ((GetIsObjectValid(oSW_EXIT) && GetIsObjectValid(oK_EXIT))) {
		if ((GetDistanceBetween(OBJECT_SELF, oSW_EXIT) > GetDistanceBetween(OBJECT_SELF, oK_EXIT))) {
			oSW_EXIT = oK_EXIT;
		}
	}
	else {
		if ((GetIsObjectValid(oK_EXIT) && (!GetIsObjectValid(oSW_EXIT)))) {
			oSW_EXIT = oK_EXIT;
		}
	}
	ActionForceMoveToObject(oSW_EXIT, intParam1, 1.0, 30.0);
	ActionDoCommand(SetCommandable(1, OBJECT_SELF));
	ActionDoCommand(DestroyObject(OBJECT_SELF, 0.0, 0, 0.0));
	SetCommandable(0, OBJECT_SELF);
}

void sub2(object objectParam1, int intParam2) {
	int nAlign = GetGoodEvilValue(objectParam1);
	int int3;
	if ((((intParam2 == intGLOB_22) || (intParam2 == intGLOB_23)) || (intParam2 == intGLOB_24))) {
		int3 = 3;
	}
	else {
		int3 = 2;
	}
	int int4;
	int int5;
	if ((nAlign >= 85)) {
		int5 = 1;
	}
	else {
		if (((nAlign < 85) && (nAlign > 60))) {
			int5 = 2;
		}
		else {
			if (((nAlign <= 60) && (nAlign >= 40))) {
				int5 = 3;
			}
			else {
				if (((nAlign < 40) && (nAlign >= 15))) {
					int5 = 4;
				}
				else {
					int5 = 5;
				}
			}
		}
	}
	int4 = ((int5 + intParam2) * 2);
	if ((int4 < 0)) {
		int4 = (int4 * (-1));
	}
	if ((int4 == 0)) {
		int4 = 1;
	}
	if (((int5 == 1) && (intParam2 == intGLOB_25))) {
		int4 = 1;
	}
	else {
		if (((int5 == 5) && (intParam2 == intGLOB_24))) {
			int4 = 1;
		}
	}
	AurPostString(("Hit = " + IntToString(int4)), 5, 5, 4.0);
	AdjustAlignment(objectParam1, int3, int4);
}

void sub1(object objectParam1) {
	sub2(objectParam1, intGLOB_26);
}

void main() {
	sub1(GetFirstPC());
	sub3(0);
	object oSasha = GetObjectByTag("sasha", 0);
	DelayCommand(1.0, AssignCommand(oSasha, sub3(0)));
}

