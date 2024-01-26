//:: k_con_issmug
/*
    checks to see if pc is a smuggler
*/
//:: Created By:  Jason Booth
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    return(GetLevelByClass(CLASS_TYPE_JEDICONSULAR,GetPCSpeaker()));
}
