// Globals
	int intGLOB_10 = 9;
	int intGLOB_12 = 11;
	int intGLOB_13 = 12;
	int intGLOB_14 = 13;
	int intGLOB_15 = 14;
	int intGLOB_16 = 15;
	int intGLOB_17 = 16;
	int intGLOB_18 = 17;
	int intGLOB_19 = 18;
	int intGLOB_20 = 19;
	string stringGLOB_1 = "end_trask";
// Prototypes
object sub8(int intParam1);
void sub7(object objectParam1, location locationParam2);
void sub6();
void sub5(object objectParam1, object objectParam2, object objectParam3);
object sub4();
void sub3(object objectParam1, int intParam2, int intParam3);
int sub2(object objectParam1, int intParam2);
int sub1();

object sub8(int intParam1) {
	return GetObjectByTag(("end01_sceneobj0" + IntToString(intParam1)), 0);
}

void sub7(object objectParam1, location locationParam2) {
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

void sub5(object objectParam1, object objectParam2, object objectParam3) {
	object oNPC = GetPartyMemberByIndex(0);
	object object3 = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	sub6();
	if (GetIsObjectValid(oNPC)) {
		sub7(oNPC, GetLocation(objectParam1));
		AssignCommand(oNPC, SetFacing(GetFacing(objectParam1)));
	}
	if (GetIsObjectValid(object3)) {
		sub7(object3, GetLocation(objectParam2));
		DelayCommand(0.3, AssignCommand(object3, SetFacing(GetFacing(objectParam2))));
	}
	if (GetIsObjectValid(object5)) {
		sub7(object5, GetLocation(objectParam3));
		DelayCommand(0.3, AssignCommand(object5, SetFacing(GetFacing(objectParam3))));
	}
}

object sub4() {
	return GetObjectByTag(stringGLOB_1, 0);
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
	int int1;
	if ((sub2(OBJECT_SELF, intGLOB_10) == 0)) {//9
		int1 = 1;
		sub3(OBJECT_SELF, intGLOB_10, 1);
	}
	return int1;
}

void main() {
	object oPC = GetFirstPC();
	if (sub1()) {
		SetPartyLeader(0xFFFFFFFF);
		ExecuteScript("k_pman_npcstop", sub4(), 0xFFFFFFFF);
		SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
		DelayCommand(0.5, SetGlobalFadeIn(0.0, 0.5, 0.0, 0.0, 0.0));
		sub5(GetObjectByTag("wp_end_room3_1", 0), GetObjectByTag("wp_end_room3_2", 0), OBJECT_INVALID);
		NoClicksFor(0.4);
    
    object oSoldier = GetObjectByTag("end_soldier2", 0);
    ChangeToStandardFaction(oSoldier, 4);
    ActionDoCommand(SetMinOneHP(oSoldier, 0));
    //ChangeToStandardFaction(GetObjectByTag("end_sith2"), 1);
    //ChangeToStandardFaction(GetObjectByTag("end_sith3"), 1);
    //AssignCommand(oEnd_sith2, CutsceneAttack(oEnd_sith2, 239, 1, 40));
    //AssignCommand(oEnd_sith3, CutsceneAttack(oEnd_sith3, 239, 1, 0));

    DelayCommand(0.2, AssignCommand(GetObjectByTag("end_trask"), ActionStartConversation(oPC, "end_room3", 0, 0, 1, "", "", "", "", "", "")));
   }
}
