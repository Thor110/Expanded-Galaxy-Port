//:: k_hjuh_p28
/*
    If Juhani is talked to in the Rakatan temple
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    string sArea = GetName(GetArea(OBJECT_SELF));
    if ((sArea == "unk_m44aa") || (sArea == "unk_m44ab"))
    {
        return TRUE;
    }
    return FALSE;
}
