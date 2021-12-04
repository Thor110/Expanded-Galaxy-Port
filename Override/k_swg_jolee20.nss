//:: k_swg_jolee20
/*
    If Jolee is talked to in the Rakatan temple
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    string sArea = GetName(GetArea(OBJECT_SELF));
    if (sArea == "unk_m44aa")
    {
        return TRUE;
    }
    return FALSE;
}
