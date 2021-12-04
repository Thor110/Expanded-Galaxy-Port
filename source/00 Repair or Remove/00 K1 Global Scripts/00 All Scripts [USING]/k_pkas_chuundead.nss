//::///////////////////////////////////////////////
//:: Conversation
//:: k_pkas_chuundead
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Chuundar has been killed by the player.
*/
//:://////////////////////////////////////////////
//:: Created By: John Winski
//:: Created On: August 2, 2002
//:://////////////////////////////////////////////
#include "k_inc_kas"

int StartingConditional()
{
    if (GetChuundarDeadGlobal() == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
