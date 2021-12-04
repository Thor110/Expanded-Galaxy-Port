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
	int intGLOB_28 = 24;

// Prototypes
void sub3();
void sub2(string stringParam1, string stringParam2, object objectParam3);
int sub1();

void sub3() {
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

void sub2(string stringParam1, string stringParam2, object objectParam3) {
	object object1 = GetObjectByTag(stringParam1, 0);
	object oPC = GetFirstPC();
	sub3();
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

int sub1() {
	object object1 = GetInventoryDisturbItem();
	string string1 = GetTag(object1);
	if (((((((((((((((((((string1 == "G_w_StunGren01") || (string1 == "g_w_adhsvgren001")) || (string1 == "g_w_fraggren01")) || (string1 == "G_w_SonicGren01")) || (string1 == "G_w_ThermlDet01")) || (string1 == "G_W_FIREGREN001")) || (string1 == "G_I_TRAPKIT002")) || (string1 == "G_I_TRAPKIT005")) || (string1 == "G_I_TRAPKIT011")) || (string1 == "G_I_TRAPKIT008")) || (string1 == "G_I_TRAPKIT003")) || (string1 == "G_I_TRAPKIT006")) || (string1 == "G_I_TRAPKIT012")) || (string1 == "G_I_TRAPKIT009")) || (string1 == "G_I_TRAPKIT001")) || (string1 == "G_I_TRAPKIT004")) || (string1 == "G_I_TRAPKIT010")) || (string1 == "G_I_TRAPKIT007"))) {
		return 1;
	}
	else {
		return 0;
	}
}

void main() {
	object oG_W_FIREGREN001 = GetObjectByTag("G_W_FIREGREN001", 0);
	object object3 = GetInventoryDisturbItem();
	if (((GetInventoryDisturbType() == 0) && sub1())) {
		ChangeFactionByFaction(1, 5);
		DestroyObject(object3, 0.0, 0, 0.0);
		PauseGame(0);
		sub2("kor37_firescene", "", OBJECT_INVALID);
	}
}

