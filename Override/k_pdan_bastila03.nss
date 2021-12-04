//:: k_pdan_bastila03
/*
    Checks to see if DAN_BASTILA_ZONE is 3. This determines
    the conversation Bastila starts. In this case she talks
    about how to treat Ahlan Matale. This message will not
    repeat since the trigger will destroy itself afterwards
    or check DAN_AHLAN_DONE to see if it has already been
    mentioned (which is set at the same time as
    DAN_BASTILA_ZONE).
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("DAN_BASTILA_ZONE") == 3);
    if (iResult)
        SetGlobalNumber("DAN_BASTILA_ZONE", 0);

    return iResult;
}

