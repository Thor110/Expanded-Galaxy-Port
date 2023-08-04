//:: k_ren_starland
/*
     Landing on Star Forge sequence
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

//#include "k_inc_debug"
//#include "k_inc_stunt"

void main()
{
    //ST_PlayStarForgeLanding();
    SetGlobalNumber("K_CURRENT_PLANET", 50);
    StartNewModule("ebo_m41aa", "", "43");
}
