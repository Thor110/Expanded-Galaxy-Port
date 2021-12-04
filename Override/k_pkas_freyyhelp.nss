//::///////////////////////////////////////////////
//:: Conversation
//:: k_pkas_freyyhelp
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Freyyr has been helped by the player.
*/
//:://////////////////////////////////////////////
//:: Created By: John Winski
//:: Created On: July 31, 2002
//:://////////////////////////////////////////////
#include "k_inc_kas"

int StartingConditional()
{
    if (GetHelpedFreyyrGlobal() == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
