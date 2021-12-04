//::///////////////////////////////////////////////
//:: Conversation
//:: k_pkas_jaardead
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Jaarak is dead.
*/
//:://////////////////////////////////////////////
//:: Created By: John Winski
//:: Created On: August 2, 2002
//:://////////////////////////////////////////////
#include "k_inc_kas"

int StartingConditional()
{
    if (GetJaarakDeadGlobal() == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
