//:: k_con_classdiff
/*
    checks to see if pc is different class
*/
//:: Created By:  Jason Booth
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int nIdx, nClass;

    for(nIdx = 1; nIdx < 3; nIdx++)
    {
        nClass = GetClassByPosition(nIdx, GetPCSpeaker());
        if(GetLevelByClass(nClass) > 0)
        {
            return FALSE;
        }
    }
     return TRUE;
}

