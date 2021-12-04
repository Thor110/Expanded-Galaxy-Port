//:: k_act_hk47simul
/*
     HK-47 Starts the star
     fighter simulation
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

void main()
{
    SetGlobalBoolean("K_HK47_SIMULATION", TRUE);
    DelayCommand(0.5, StartNewModule("m12ab"));
}
