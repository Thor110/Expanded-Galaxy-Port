//:: k_pdan_romance30
/*
    Sets DAN_HATE_DONE is set to FALSE to show that
    Rahasia no longer hates the player.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

void main()
{
    SetGlobalBoolean("DAN_HATE_DONE", FALSE);
}

