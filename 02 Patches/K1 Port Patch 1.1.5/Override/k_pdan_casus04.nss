//:: k_pdan_casus04
/*
    Sets DAN_ESTATE_DONE to TRUE (meaning that the player
    has been allowed to enter the Sandral Estate) and
    DAN_ESTATEC_DONE to TRUE (meaning that the player
    was allowed to enter because they mentioned Casus).
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

void main()
{
    SetGlobalBoolean("DAN_ESTATE_DONE", TRUE);
    SetGlobalBoolean("DAN_ESTATEC_DONE", TRUE);
}
