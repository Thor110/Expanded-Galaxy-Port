//:: k_swg_bastmovie
/*
     Goes to a rendered movie
*/
//:: Created By: Cori May
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
void main()
{
    if(!GetGlobalBoolean("STA_BAST_MOVIE"))
    {
        SetGlobalBoolean("STA_BAST_MOVIE",TRUE);
        DelayCommand(0.5,StartNewModule("STUNT_51a","","51"));
    }
}
