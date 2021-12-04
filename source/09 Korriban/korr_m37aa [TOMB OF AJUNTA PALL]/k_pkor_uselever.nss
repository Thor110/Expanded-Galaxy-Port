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
void sub4();
void sub3(string stringParam1, string stringParam2, object objectParam3);
void sub2(object objectParam1, int intParam2, int intParam3);
int sub1(object objectParam1, int intParam2);

void sub4() {
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

void sub3(string stringParam1, string stringParam2, object objectParam3) {
	object object1 = GetObjectByTag(stringParam1, 0);
	object oPC = GetFirstPC();
	sub4();
	if ((GetIsObjectValid(object1) == 1)) {
		if ((oPC == GetPartyMemberByIndex(0))) {
			AssignCommand(oPC, ClearAllActions());
			AssignCommand(object1, ClearAllActions());
			CancelCombat(oPC);
			AssignCommand(object1, ActionStartConversation(oPC, stringParam2, 0, 0, 1, "", "", "", "", "", ""));
		}
		else {
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			SetPartyLeader(0xFFFFFFFF);
			object oNPC = GetPartyMemberByIndex(1);
			object object8 = GetPartyMemberByIndex(2);
			NoClicksFor(0.7);
			AssignCommand(oPC, ClearAllActions());
			AssignCommand(object1, ClearAllActions());
			CancelCombat(oPC);
			if ((GetIsObjectValid(objectParam3) == 1)) {
				AssignCommand(oPC, DelayCommand(0.2, JumpToObject(objectParam3, 1)));
				AssignCommand(oPC, DelayCommand(0.4, SetFacingPoint(GetPosition(object1))));
			}
			else {
				AssignCommand(oPC, DelayCommand(0.2, JumpToObject(object1, 1)));
			}
			AssignCommand(oNPC, DelayCommand(0.5, JumpToObject(oPC, 1)));
			AssignCommand(object8, DelayCommand(0.5, JumpToObject(oPC, 1)));
			AssignCommand(object1, ActionDoCommand(SetGlobalFadeIn(0.5, 2.0, 0.0, 0.0, 0.0)));
			AssignCommand(object1, ActionStartConversation(oPC, stringParam2, 0, 0, 1, "", "", "", "", "", ""));
		}
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
	ActionPlayAnimation(201, 1.0, 0.0);
	if ((!sub1(OBJECT_SELF, intGLOB_1))) {
		sub2(OBJECT_SELF, intGLOB_1, 1);
		object oKor37_bridge1 = GetObjectByTag("kor37_bridge1", 0);
		object oKor37_bridge2 = GetObjectByTag("kor37_bridge2", 0);
		object oKor37_bridge3 = GetObjectByTag("kor37_bridge3", 0);
		object oKor37_bridge4 = GetObjectByTag("kor37_bridge4", 0);
		if (((((!GetIsDead(oKor37_bridge1)) || (!GetIsDead(oKor37_bridge2))) || (!GetIsDead(oKor37_bridge3))) || (!GetIsDead(oKor37_bridge4)))) {
			SetGlobalFadeOut(0.1, 1.0, 0.0, 0.0, 0.0);
			if (GetIsObjectValid(oKor37_bridge1)) {
				CancelCombat(oKor37_bridge1);
				AssignCommand(oKor37_bridge1, ClearAllEffects());
				AssignCommand(oKor37_bridge1, ClearAllActions());
				ChangeToStandardFaction(oKor37_bridge1, 5);
			}
			if (GetIsObjectValid(oKor37_bridge2)) {
				CancelCombat(oKor37_bridge2);
				AssignCommand(oKor37_bridge2, ClearAllEffects());
				AssignCommand(oKor37_bridge2, ClearAllActions());
				ChangeToStandardFaction(oKor37_bridge2, 5);
			}
			if (GetIsObjectValid(oKor37_bridge3)) {
				CancelCombat(oKor37_bridge3);
				AssignCommand(oKor37_bridge3, ClearAllEffects());
				AssignCommand(oKor37_bridge3, ClearAllActions());
				ChangeToStandardFaction(oKor37_bridge3, 5);
			}
			if (GetIsObjectValid(oKor37_bridge4)) {
				CancelCombat(oKor37_bridge4);
				AssignCommand(oKor37_bridge4, ClearAllEffects());
				AssignCommand(oKor37_bridge4, ClearAllActions());
				ChangeToStandardFaction(oKor37_bridge4, 5);
			}
			SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
			sub3("kor37_leverscene", "", OBJECT_INVALID);
		}
	}
}

