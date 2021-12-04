//:: k_pdan_romance03
/*
    Sets DAN_ESTATE_DONE to TRUE to show that the player
    has been allowed to enter the Sandral Estate.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

void main()
{
    SetGlobalBoolean("DAN_ESTATE_DONE", TRUE);
}

