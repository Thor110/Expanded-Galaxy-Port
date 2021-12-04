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
void sub6(object objectParam1, location locationParam2);
void sub5();
void sub4(object objectParam1, object objectParam2, object objectParam3);
void sub3(object objectParam1, int intParam2, int intParam3);
void sub2(string stringParam1, int intParam2, int intParam3, float floatParam4);
int sub1();

void sub6(object objectParam1, location locationParam2) {
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

void sub5() {
	int int1 = 0;
	object oNPC = GetPartyMemberByIndex(int1);
	while (GetIsObjectValid(oNPC)) {
		if ((GetCurrentHitPoints(oNPC) < 1)) {
			ApplyEffectToObject(0, EffectResurrection(), oNPC, 0.0);
			ApplyEffectToObject(0, EffectHeal(1), oNPC, 0.0);
		}
		(int1++);
		oNPC = GetPartyMemberByIndex(int1);
	}
}

void sub4(object objectParam1, object objectParam2, object objectParam3) {
	object oNPC = GetPartyMemberByIndex(0);
	object object3 = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	sub5();
	if (GetIsObjectValid(oNPC)) {
		sub6(oNPC, GetLocation(objectParam1));
		AssignCommand(oNPC, SetFacing(GetFacing(objectParam1)));
	}
	if (GetIsObjectValid(object3)) {
		sub6(object3, GetLocation(objectParam2));
		DelayCommand(0.3, AssignCommand(object3, SetFacing(GetFacing(objectParam2))));
	}
	if (GetIsObjectValid(object5)) {
		sub6(object5, GetLocation(objectParam3));
		DelayCommand(0.3, AssignCommand(object5, SetFacing(GetFacing(objectParam3))));
	}
}

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

void sub2(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

int sub1() {
	object oUnk41_blk4 = GetObjectByTag("unk41_blk4", 0);
	object oUnk41_blk5 = GetObjectByTag("unk41_blk5", 0);
	object oUnk41_blk1 = GetObjectByTag("unk41_blk1", 0);
	object oUnk41_blk2 = GetObjectByTag("unk41_blk2", 0);
	object oUnk41_blk3 = GetObjectByTag("unk41_blk3", 0);
	if (((((((!GetIsObjectValid(oUnk41_blk4)) || GetIsDead(oUnk41_blk4)) && ((!GetIsObjectValid(oUnk41_blk5)) || GetIsDead(oUnk41_blk5))) && ((!GetIsObjectValid(oUnk41_blk1)) || GetIsDead(oUnk41_blk1))) && ((!GetIsObjectValid(oUnk41_blk2)) || GetIsDead(oUnk41_blk2))) && ((!GetIsObjectValid(oUnk41_blk3)) || GetIsDead(oUnk41_blk3)))) {
		return 1;
	}
	return 0;
}

void main() {
	int int1 = GetUserDefinedEventNumber();
	if ((int1 == 10)) {
		if (sub1()) {
			sub2(("K_PUNK_BEACH_RESET = " + IntToString(GetGlobalBoolean("K_PUNK_BEACH_RESET"))), 5, 5, 3.0);
			if ((GetGlobalBoolean("K_PUNK_BEACH_RESET") == 0)) {
				SetGlobalBoolean("K_PUNK_BEACH_RESET", 1);
				sub2("ithorians", 5, 5, 1.0);
				SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
				sub3(OBJECT_SELF, 7, 1);
				SetPartyLeader((-1));
				sub4(GetWaypointByTag("PUNK_DUROS_01"), GetWaypointByTag("PUNK_DUROS_02"), GetWaypointByTag("PUNK_DUROS_03"));
				CreateObject(1, "unk41_ithor01", GetLocation(GetObjectByTag("d1", 0)), 0);
				CreateObject(1, "unk41_ithor02", GetLocation(GetObjectByTag("d2", 0)), 0);
				sub2("teleporting", 5, 7, 1.0);
				NoClicksFor(1.0);
				DelayCommand(0.5, sub4(GetObjectByTag("i1wp", 0), GetObjectByTag("i2wp", 0), GetObjectByTag("i3wp", 0)));
				sub2("conversation", 5, 8, 1.0);
				DelayCommand(1.0, AssignCommand(GetObjectByTag("invish", 0), ActionStartConversation(GetFirstPC(), "unk41_ithor01", 0, 0, 1, "", "", "", "", "", "")));
			}
		}
	}
}

