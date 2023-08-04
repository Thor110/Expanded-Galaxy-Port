//:: k_pdan_jedi19
/*
    Sets DAN_ZHARH_DONE to FALSE (to show that the player
    must again defeat the shielded droid) and
    DAN_ZHARD_DONE to FALSE (to show that the player has
    another chance to defeat Zhar).
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

void main()
{
    SetGlobalBoolean("DAN_ZHARH_DONE", FALSE);
    SetGlobalBoolean("DAN_ZHARD_DONE", FALSE);
}
