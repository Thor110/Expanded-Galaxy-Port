//:: k_hmis_zaalbar
/*
    Checks if player on Kashyyyk and if Zaalbar is Chuundar's prisoner
*/
//:: Created By:  Drew K
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"


int StartingConditional()
{
    int iResult;

    iResult = GetGlobalBoolean("kas_ZaalbarPris")==TRUE
    && GetGlobalNumber("K_Current_Planet") ==20;

    return iResult;
}
