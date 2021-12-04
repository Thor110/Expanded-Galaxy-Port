//:: k_hmis_MisAngry
/*
    Checks if Mis_GriffAngry is true
    (Mission hates her brother forever)
*/
//:: Created By:  Drew K
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"


int StartingConditional()
{
    int iResult;

    iResult = GetGlobalBoolean("Mis_GriffAngry")==TRUE;
    return iResult;
}
