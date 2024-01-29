// Globals
	int intGLOB_1 = 0;
	int intGLOB_12 = 11;
	int intGLOB_13 = 12;
	int intGLOB_14 = 13;
	int intGLOB_15 = 14;
	int intGLOB_16 = 15;
	int intGLOB_17 = 16;
	int intGLOB_18 = 17;
	int intGLOB_19 = 18;
	int intGLOB_20 = 19;
// Prototypes
void sub3(string stringParam1, int intParam2, int intParam3);
void sub2(object objectParam1, int intParam2, int intParam3);
int sub1(object objectParam1, int intParam2);

void sub3(string stringParam1, int intParam2, int intParam3) {
	location location1 = GetLocation(GetNearestObjectByTag(stringParam1, OBJECT_SELF, 1));
	effect efVisual = EffectVisualEffect(3003, 0);
	effect effect3 = EffectVisualEffect(6002, 0);
	ApplyEffectAtLocation(0, efVisual, location1, 0.0);
	if (intParam2) {
		ApplyEffectToObject(0, effect3, GetFirstPC(), 0.0);
	}
	if (intParam3) {
		PlayRumblePattern(14);
	}
}

void sub2(object objectParam1, int intParam2, int intParam3) {
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

int sub1(object objectParam1, int intParam2) {
	int nLocalBool;
	if ((((intParam2 >= 0) && (intParam2 <= 19)) && GetIsObjectValid(objectParam1))) {
		nLocalBool = GetLocalBoolean(objectParam1, intParam2);
		if ((nLocalBool > 0)) {
			return 1;
		}
	}
	return 0;
}

void main() {
	if ((IsObjectPartyMember(GetEnteringObject()) && (sub1(OBJECT_SELF, intGLOB_1) == 0))) {
		sub2(OBJECT_SELF, intGLOB_1, 1);
		sub3("end_explode01", 1, 1);
		ApplyEffectToObject(0, EffectDeath(0, 1), GetNearestObjectByTag("end_weld", OBJECT_SELF, 1), 0.0);
		SoundObjectStop(GetNearestObjectByTag("DroidWelding", OBJECT_SELF, 1));
	}
}

