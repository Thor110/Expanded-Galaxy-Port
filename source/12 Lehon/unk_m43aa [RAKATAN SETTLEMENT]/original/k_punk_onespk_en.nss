// Globals
/*
	int intGLOB_11 = 10;
// Prototypes
void sub4();
void sub3(string stringParam1, string stringParam2, object objectParam3);
void sub2(object objectParam1, int intParam2);
int sub1(object objectParam1);

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

void sub2(object objectParam1, int intParam2) {
	if (GetIsObjectValid(objectParam1)) {
		if (((intParam2 == 1) || (intParam2 == 0))) {
			SetLocalBoolean(objectParam1, intGLOB_11, intParam2);
		}
	}
}

int sub1(object objectParam1) {
	int nLocalBool;
	if (GetIsObjectValid(objectParam1)) {
		nLocalBool = GetLocalBoolean(objectParam1, intGLOB_11);
		if ((nLocalBool > 0)) {
			return 1;
		}
	}
	return 0;
}
*/
#include "k_inc_utility"

void main() {
	object oEntering = GetEnteringObject();
	object oUnk43_theone = GetObjectByTag("unk43_theone", 0);
	if ((GetIsPC(oEntering)/* && (!sub1(OBJECT_SELF))*/)) {//ignores sub1 for now
		HoldWorldFadeInForDialog();
		//sub2(OBJECT_SELF, 1);
    UT_SetTalkedToBooleanFlag(OBJECT_SELF, 1);//acts as sub2
		SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
		SetGlobalFadeIn(1.5, 1.5, 0.0, 0.0, 0.0);
		NoClicksFor(1.2);
		//DelayCommand(1.0, sub3(GetTag(oUnk43_theone), "", OBJECT_INVALID));
    AssignCommand(oUnk43_theone, ActionStartConversation(GetFirstPC(), "unk43_theone", 0, 0, 1, "", "", "", "", "", ""));//acts as sub3
	}
}

