// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

#include "k_inc_utility"

void main() {
	object oMalak = GetObjectByTag("sta_45darthMalak", 0);
	if (UT_GetTalkedToBooleanFlag(OBJECT_SELF) == FALSE)
	{
		UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
		ActionStartConversation(GetLastUsedBy(), "", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE);
	}
}
