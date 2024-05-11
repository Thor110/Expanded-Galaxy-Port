// Globals
	int intGLOB_3 = 2;
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
	int intGLOB_149 = 0;
	int intGLOB_150 = 1;
	int intGLOB_151 = 2;
	int intGLOB_152 = 3;
	int intGLOB_153 = 4;
	int intGLOB_154 = 5;
	int intGLOB_168 = 19;
	int intGLOB_170 = 21;
	int intGLOB_173 = 29;
// Prototypes
int sub9();
void sub8(int intParam1);
void sub7(object objectParam1, int intParam2, int intParam3);
void sub6(int intParam1);
void sub5();
int sub4(object objectParam1, int intParam2);
object sub3();
int sub2();
int sub1();

int sub9() {
	int int1 = 0;
	object oPC = GetFirstPC();
	if (((GetIsObjectValid(GetItemInSlot(4, oPC)) || GetIsObjectValid(GetItemInSlot(5, oPC))) || GetIsObjectValid(GetItemInSlot(1, oPC)))) {
		int1 = 1;
	}
	return int1;
}

void sub8(int intParam1) {
	SetGlobalNumber("END_TRASK_DLG", intParam1);
}

void sub7(object objectParam1, int intParam2, int intParam3) {
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

void sub6(int intParam1) {
	sub7(sub3(), intGLOB_3, intParam1);
}

void sub5() {
	object object1 = sub3();
	if ((GetPartyMemberByIndex(0) == object1)) {
		SetPartyLeader(0xFFFFFFFF);
	}
	NoClicksFor(0.5);
	DelayCommand(0.1, SignalEvent(object1, EventUserDefined(50)));
}

int sub4(object objectParam1, int intParam2) {
	int nLocalBool;
	if ((((intParam2 >= 0) && (intParam2 <= 19)) && GetIsObjectValid(objectParam1))) {
		nLocalBool = GetLocalBoolean(objectParam1, intParam2);
		if ((nLocalBool > 0)) {
			return 1;
		}
	}
	return 0;
}

object sub3() {
	return GetObjectByTag(stringGLOB_1, 0);
}

int sub2() {
	return sub4(sub3(), intGLOB_3);
}

int sub1() {
	return GetGlobalNumber("END_TRASK_DLG");
}

void main() {
	SetCommandable(1, OBJECT_SELF);
	int int1 = GetUserDefinedEventNumber();
	int int3 = sub1();
	switch (int1) {
		case 50:
      //SetGlobalNumber("End_TraskTalk",2);
			ClearAllActions();
			ActionStartConversation(GetFirstPC(), "", 0, 0, 1, "", "", "", "", "", "");
			break;
		case 100:
			if (((((((((int3 == intGLOB_149) || (int3 == intGLOB_151)) || (int3 == intGLOB_152)) || (int3 == intGLOB_154)) || (int3 == intGLOB_168)) || (int3 == intGLOB_170)) || (int3 == intGLOB_173)) && sub2())) {
				sub5();
			}
			sub6(0);
			break;
		case 110:
			if ((int3 == intGLOB_151)) {
				sub8(intGLOB_150);
				sub5();
			}
			break;
		case 200:
			if (sub9()) {
				sub8(intGLOB_153);
				ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "");
			}
			break;
		case 300:
			ClearAllActions();
			ActionStartConversation(GetFirstPC(), "end_cut01", 0, 0, 1, "", "", "", "", "", "");
			break;
		case 400:
			ActionWait(1.0);
			ActionMoveToObject(GetObjectByTag("end_wp_traskdie", 0), 1, 1.0);
			ActionDoCommand(SignalEvent(GetObjectByTag("end01_sceneobj03", 0), EventUserDefined(0)));
			break;
		case 500:
			RemovePartyMember(0);
			RemoveAvailableNPC(0);
			{
				object object6 = CreateItemOnObject("g_w_shortswrd01", OBJECT_SELF, 1);
				ClearAllActions();
				ActionUnequipItem(GetItemInSlot(4, OBJECT_SELF), 0);
				ActionEquipItem(object6, 4, 1);
				ActionForceMoveToObject(GetObjectByTag("end_wp_traskdie2", 0), 1, 1.0, 3.0);
			}
			break;
		case 600:
			{
				object oEnd_bandon = GetObjectByTag("end_bandon", 0);
				ChangeToStandardFaction(OBJECT_SELF, 2);
				ChangeToStandardFaction(oEnd_bandon, 4);
				ActionMoveToObject(GetObjectByTag("wp_room8_03", 0), 1, 1.0);
				ActionDoCommand(SignalEvent(GetObjectByTag("end_door07", 0), EventUserDefined(0)));
				ActionPlayAnimation(19, 1.0, 10.0);
			}
			break;
		case 1005:
			if ((GetTag(GetLastHostileActor(OBJECT_SELF)) == "end_droid03")) {
				ApplyEffectToObject(0, EffectDeath(0, 1), OBJECT_SELF, 0.0);
				RemovePartyMember(0);
				RemoveAvailableNPC(0);
			}
			break;
		case 1007:
			SignalEvent(GetObjectByTag("end_droid03", 0), EventUserDefined(10));
			break;
	}
}

