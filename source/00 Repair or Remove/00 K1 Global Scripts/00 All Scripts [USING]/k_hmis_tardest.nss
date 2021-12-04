//:: k_hmis_TarDest
/*
    Checks if Mis_has talked about Taris being destroyed
*/
//:: Created By:  Drew K
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"


int StartingConditional()
{
    int iResult;

    iResult = GetGlobalBoolean("Tar_Destroyed")==TRUE &&
              GetGlobalBoolean("Mission_Taris")==FALSE;
    return iResult;
}


