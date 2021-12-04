//:: k_con_classsame
/*
    checks to see if pc has same class
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
            return TRUE;
        }
    }
	return FALSE;
}


