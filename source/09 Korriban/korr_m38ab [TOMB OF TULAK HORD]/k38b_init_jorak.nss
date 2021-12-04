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
void sub6();
void sub5(string stringParam1, string stringParam2, object objectParam3);
void sub4(object objectParam1, int intParam2, int intParam3);
void sub3(int intParam1);
int sub2(object objectParam1, int intParam2);
int sub1();

void sub6() {
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

void sub5(string stringParam1, string stringParam2, object objectParam3) {
	object object1 = GetObjectByTag(stringParam1, 0);
	object oPC = GetFirstPC();
	sub6();
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

void sub4(object objectParam1, int intParam2, int intParam3) {
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

void sub3(int intParam1) {
	sub4(OBJECT_SELF, intGLOB_1, intParam1);
}

int sub2(object objectParam1, int intParam2) {
	int nLocalBool;
	if ((((intParam2 >= 0) && (intParam2 <= 19)) && GetIsObjectValid(objectParam1))) {
		nLocalBool = GetLocalBoolean(objectParam1, intParam2);
		if ((nLocalBool > 0)) {
			return 1;
		}
	}
	return 0;
}

int sub1() {
	return sub2(OBJECT_SELF, intGLOB_1);
}

void main() {
	object oNPC = GetPartyMemberByIndex(0);
	object object3 = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	object oPC = GetFirstPC();
	object oK38b_way_gaspc = GetObjectByTag("k38b_way_gaspc", 0);
	location location1 = GetLocation(oK38b_way_gaspc);
	effect efVisual = EffectVisualEffect(3006, 0);
	object oK38b_way_gas1 = GetObjectByTag("k38b_way_gas1", 0);
	object oK38b_way_gas2 = GetObjectByTag("k38b_way_gas2", 0);
	object oKor38b_jorakuln = GetObjectByTag("kor38b_jorakuln", 0);
	if (((GetEnteringObject() == oNPC) && (sub1() == 0))) {
		sub3(1);
		ApplyEffectAtLocation(0, efVisual, location1, 0.0);
		AssignCommand(object3, ActionMoveToObject(oK38b_way_gas1, 0, 1.0));
		DelayCommand(1.0, AssignCommand(object5, ActionMoveToObject(oK38b_way_gas2, 0, 1.0)));
		AssignCommand(oNPC, PlayAnimation(116, 1.0, 10.0));
		DelayCommand(1.0, AssignCommand(object3, PlayAnimation(116, 1.0, 10.0)));
		DelayCommand(2.0, AssignCommand(object5, PlayAnimation(116, 1.0, 10.0)));
		if ((oNPC == oPC)) {
			sub5("kor38b_jorakuln", "", OBJECT_INVALID);
		}
		else {
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			SetGlobalFadeIn(2.0, 2.0, 0.0, 0.0, 0.0);
			SetPartyLeader(0xFFFFFFFF);
			object3 = GetPartyMemberByIndex(1);
			object5 = GetPartyMemberByIndex(2);
			AssignCommand(oPC, ClearAllActions());
			AssignCommand(oKor38b_jorakuln, ClearAllActions());
			CancelCombat(oPC);
			AssignCommand(oPC, DelayCommand(1.0, JumpToObject(oK38b_way_gaspc, 1)));
			AssignCommand(object3, DelayCommand(1.5, JumpToObject(oPC, 1)));
			AssignCommand(object5, DelayCommand(1.5, JumpToObject(oPC, 1)));
			NoClicksFor(1.4);
			AssignCommand(oKor38b_jorakuln, DelayCommand(1.2, ActionStartConversation(oPC, "", 0, 0, 1, "", "", "", "", "", "")));
		}
	}
}

