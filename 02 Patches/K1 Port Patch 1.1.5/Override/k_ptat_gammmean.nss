//:: k_ptat_gammmean
/*
     The player has not been ambushed or has bribed the Gammoreans.
     Random.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_tat"

int StartingConditional()
{
    if (GetGammoreanGoneGlobal() == FALSE &&
        GetIsObjectValid(GetPCSpeaker()) == FALSE &&
        Random(3) == 0)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
