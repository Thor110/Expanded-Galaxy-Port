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
void sub3(object objectParam1, int intParam2, int intParam3);
void sub2(object objectParam1, location locationParam2);
int sub1(object objectParam1, int intParam2);

void sub3(object objectParam1, int intParam2, int intParam3) {
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

void sub2(object objectParam1, location locationParam2) {
	if ((!GetIsObjectValid(objectParam1))) {
		return;
	}
	if ((GetCurrentHitPoints(objectParam1) < 1)) {
		ApplyEffectToObject(0, EffectResurrection(), objectParam1, 0.0);
		ApplyEffectToObject(0, EffectHeal(1), objectParam1, 0.0);
	}
	SetCommandable(1, objectParam1);
	AssignCommand(objectParam1, ClearAllActions());
	AssignCommand(objectParam1, ActionJumpToLocation(locationParam2));
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
	if ((sub1(OBJECT_SELF, intGLOB_1) == 0)) {
		object oK37_way_freedon = GetObjectByTag("k37_way_freedon", 0);
		object oNPC = GetPartyMemberByIndex(1);
		object object5 = GetPartyMemberByIndex(2);
		if (GetIsObjectValid(oNPC)) {
			SetGlobalFadeOut(1.0, 1.0, 0.0, 0.0, 0.0);
			object oK37_way_pc1 = GetObjectByTag("k37_way_pc1", 0);
			location location1 = GetLocation(oK37_way_pc1);
			sub2(oNPC, location1);
			if (GetIsObjectValid(object5)) {
				object oK37_way_pc2 = GetObjectByTag("k37_way_pc2", 0);
				location location3 = GetLocation(oK37_way_pc2);
				sub2(object5, location3);
			}
			SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
		}
		location location5 = GetLocation(oK37_way_freedon);
		object oK37_snd_appear = GetObjectByTag("k37_snd_appear", 0);
		CreateObject(1, "kor37_freedon", location5, 0);
		SoundObjectPlay(oK37_snd_appear);
		object oK37_dr_freedon = GetObjectByTag("k37_dr_freedon", 0);
		AssignCommand(oK37_dr_freedon, ActionCloseDoor(oK37_dr_freedon));
		AssignCommand(oK37_dr_freedon, ActionDoCommand(SetLocked(oK37_dr_freedon, 1)));
		sub3(OBJECT_SELF, intGLOB_1, 1);
	}
}

