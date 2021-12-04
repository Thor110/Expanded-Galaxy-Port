//::///////////////////////////////////////////////
//:: Conversation
//:: k_pkas_jaarfreed
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Jaarak has been freed.
*/
//:://////////////////////////////////////////////
//:: Created By: John Winski
//:: Created On: August 2, 2002
//:://////////////////////////////////////////////
#include "k_inc_kas"

int StartingConditional()
{
    if (GetJaarakFreeGlobal() == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
