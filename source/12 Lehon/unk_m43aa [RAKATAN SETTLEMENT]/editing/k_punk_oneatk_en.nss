// Globals
/*
	int intGLOB_11 = 10;
// Prototypes
void sub2(object objectParam1, int intParam2);
int sub1(object objectParam1);

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
  //StartNewModule("ebo_m12aa");

	object oEntering = GetEnteringObject();
	object oUnk43_theone = GetObjectByTag("unk43_theone", 0);
	//if (((((IsObjectPartyMember(oEntering) == 1) && (sub1(OBJECT_SELF) == 0)) && (GetGlobalBoolean("UNK_BLACKHOSTILE") == 1)) && (GetIsObjectValid(GetObjectByTag("unk43_theone", 0)) == 1))) {
		//sub2(OBJECT_SELF, 1);
		//sub2(GetObjectByTag("unk43_onespk", 0), 1);
	if (((((GetIsPartyLeader(oEntering) == 1) && (UT_GetTalkedToBooleanFlag(OBJECT_SELF) == 0)) && (GetGlobalBoolean("UNK_BLACKHOSTILE") == 1)) && (GetIsObjectValid(GetObjectByTag("unk43_theone", 0)) == 1))) {
    //second condition ( if the talked to flag is equals to 0 ) acts as sub1
		UT_SetTalkedToBooleanFlag(OBJECT_SELF, 1);//acts as sub2
		UT_SetTalkedToBooleanFlag(GetObjectByTag("unk43_onespk", 0), 1);//acts as sub2
		SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
		SetPartyLeader((-1));
		ChangeToStandardFaction(oUnk43_theone, 5);
		ChangeToStandardFaction(GetObjectByTag("unk43_rancor1", 0), 5);
		ChangeToStandardFaction(GetObjectByTag("unk43_rancor2", 0), 5);
		ChangeToStandardFaction(GetObjectByTag("unk43_rancor3", 0), 5);
		ChangeToStandardFaction(GetObjectByTag("unk43_rancor4", 0), 5);
		CancelCombat(GetPartyMemberByIndex(0));
		CancelCombat(GetPartyMemberByIndex(1));
		CancelCombat(GetPartyMemberByIndex(2));
		CancelCombat(oUnk43_theone);
		AssignCommand(oUnk43_theone, ActionDoCommand(ActionStartConversation(GetPCSpeaker(), "unk43_battle", 0, 0, 1, "", "", "", "", "", "")));
	}
}
