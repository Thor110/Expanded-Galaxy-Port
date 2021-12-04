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
void sub3(object objectParam1, location locationParam2);
void sub2();
void sub1(object objectParam1, object objectParam2, object objectParam3);

void sub3(object objectParam1, location locationParam2) {
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

void sub2() {
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

void sub1(object objectParam1, object objectParam2, object objectParam3) {
	object oNPC = GetPartyMemberByIndex(0);
	object object3 = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	sub2();
	if (GetIsObjectValid(oNPC)) {
		sub3(oNPC, GetLocation(objectParam1));
		AssignCommand(oNPC, SetFacing(GetFacing(objectParam1)));
	}
	if (GetIsObjectValid(object3)) {
		sub3(object3, GetLocation(objectParam2));
		DelayCommand(0.3, AssignCommand(object3, SetFacing(GetFacing(objectParam2))));
	}
	if (GetIsObjectValid(object5)) {
		sub3(object5, GetLocation(objectParam3));
		DelayCommand(0.3, AssignCommand(object5, SetFacing(GetFacing(objectParam3))));
	}
}

void main() {
	if ((GetIsPC(GetEnteringObject()) == 1)) {
		if ((!GetIsInConversation(GetFirstPC()))) {
			if ((((((GetGlobalBoolean("UNK_TEMP5") == 0) && (GetGlobalBoolean("UNK_TEMP6") == 0)) && (GetGlobalBoolean("UNK_THEONE") == 0)) || (((GetGlobalBoolean("UNK_TEMP6") == 0) && (GetGlobalBoolean("UNK_BLACKHOSTILE") == 1)) && (GetGlobalBoolean("Unk_Ambush_Temp") == 0))) || (((GetGlobalBoolean("UNK_RED_TALK") == 1) && (GetGlobalBoolean("UNK_TEMP6") == 0)) && (GetGlobalBoolean("UNK_REDHOSTILE") == 0)))) {
				SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
				SetGlobalBoolean("UNK_TEMP5", 1);
				SetGlobalBoolean("Unk_Ambush_Temp", 1);
				if ((GetGlobalBoolean("UNK_BLACKHOSTILE") == 1)) {
					SetGlobalBoolean("UNK_TEMP6", 1);
				}
				SetPartyLeader((-1));
				DelayCommand(0.5, sub1(GetObjectByTag("playerwp1", 0), GetObjectByTag("pm1wp1", 0), GetObjectByTag("pm2wp1", 0)));
				NoClicksFor(1.2);
				DelayCommand(1.0, AssignCommand(GetObjectByTag("invis", 0), ActionStartConversation(GetFirstPC(), "unk41_blackrak", 0, 0, 1, "", "", "", "", "", "")));
			}
		}
	}
}

