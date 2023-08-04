//::///////////////////////////////////////////////
//:: Conversation
//:: k_pkas_freyydead
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Freyyr has been killed by the player.
*/
//:://////////////////////////////////////////////
//:: Created By: John Winski
//:: Created On: July 31, 2002
//:://////////////////////////////////////////////
#include "k_inc_kas"

int StartingConditional()
{
    if (GetFreyyrDeadGlobal() == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
