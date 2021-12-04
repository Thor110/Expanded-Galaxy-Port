//:: k_ptat_talktanis
/*
    Sets the NPC talk to state to
    true.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_tat"

void main()
{
    UT_SetTalkedToBooleanFlag(OBJECT_SELF);
    SetTalkTanisGlobal(TRUE);
}
