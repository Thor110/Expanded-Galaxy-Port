#include "k_inc_utility"

void main() {
	object oEntering = GetEnteringObject();
	object oUnk43_theone = GetObjectByTag("unk43_theone", 0);
	if (((((IsObjectPartyMember(oEntering) == 1) && (UT_GetTalkedToBooleanFlag(OBJECT_SELF) == 0)) && (GetGlobalBoolean("UNK_BLACKHOSTILE") == 1)) && (GetIsObjectValid(GetObjectByTag("unk43_theone", 0)) == 1))) {
		UT_SetTalkedToBooleanFlag(OBJECT_SELF, 1);
		UT_SetTalkedToBooleanFlag(GetObjectByTag("unk43_onespk", 0), 1);
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

