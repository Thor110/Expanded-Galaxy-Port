//::///////////////////////////////////////////////
//:: Conversation
//:: k_pkas_jaarakblt
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    The player has found out that the bolts
    found on Rorwoor's body belong to Jaarak.
*/
//:://////////////////////////////////////////////
//:: Created By: John Winski
//:: Created On: August 2, 2002
//:://////////////////////////////////////////////
#include "k_inc_kas"

int StartingConditional()
{
    if (GetJaarakBoltsGlobal() == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
