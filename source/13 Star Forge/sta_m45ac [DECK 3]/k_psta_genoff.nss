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
void sub1(object objectParam1, int intParam2, int intParam3);

void sub1(object objectParam1, int intParam2, int intParam3) {
	int nLevel = GetHitDice(GetFirstPC());
	if ((intParam3 == 1)) {
		if (((((intParam2 == intGLOB_12) || (intParam2 == intGLOB_17)) || (intParam2 == intGLOB_18)) || (intParam2 == intGLOB_19))) {
			GiveXPToCreature(GetFirstPC(), (nLevel * 15));
		}
		else {
			if ((((intParam2 == intGLOB_13) || (intParam2 == intGLOB_20)) || (intParam2 == intGLOB_16))) {
				GiveXPToCreature(GetFirstPC(), (nLevel * 20));
			}
			else {
				if (((intParam2 == intGLOB_14) || (intParam2 == intGLOB_15))) {
					GiveXPToCreature(GetFirstPC(), (nLevel * 10));
				}
			}
		}
	}
	if ((((intParam2 >= 0) && (intParam2 <= 19)) && GetIsObjectValid(objectParam1))) {
		if (((intParam3 == 1) || (intParam3 == 0))) {
			SetLocalBoolean(objectParam1, intParam2, intParam3);
		}
	}
}

void main() {
	object oK45_plc_wardroid = GetObjectByTag("k45_plc_wardroid", 0);
	object oK45_plc_assdroid = GetObjectByTag("k45_plc_assdroid", 0);
	object oK45_plc_mk2droid = GetObjectByTag("k45_plc_mk2droid", 0);
	object oK45_plc_mk4droid = GetObjectByTag("k45_plc_mk4droid", 0);
	object oK45_plc_prbdroid = GetObjectByTag("k45_plc_prbdroid", 0);
	object oK45_plc_excharge = GetObjectByTag("k45_plc_excharge", 0);
	unknown unknown1 = EventUserDefined(245);
	sub1(OBJECT_SELF, intGLOB_1, 1);
	SignalEvent(oK45_plc_wardroid, unknown1);
	SignalEvent(oK45_plc_assdroid, unknown1);
	SignalEvent(oK45_plc_mk2droid, unknown1);
	SignalEvent(oK45_plc_mk4droid, unknown1);
	SignalEvent(oK45_plc_prbdroid, unknown1);
	SignalEvent(oK45_plc_excharge, unknown1);
	SetGlobalBoolean("STA_MALAK_START", 0);
	SetGlobalBoolean("STA_GEN_OFF", 1);
	SetGlobalNumber("STA_GENERATORS", 6);
	object oSta45c_sta45d = GetObjectByTag("sta45c_sta45d", 0);
	SetLocked(oSta45c_sta45d, 0);
}

