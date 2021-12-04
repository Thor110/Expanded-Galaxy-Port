//:: k_ren_taris01
/*
     STUNT_06 is run with a cover from
     Render 5
*/
//:: Created By: 
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_stunt"

void main()
{
    //Set the transit variable to null so the transit system is renewed for each jump between planets.
    //In this case the Galaxy Map is never used and therefore I must hardcode the removal.
    SetGlobalString("K_LAST_MODULE", "NO_MODULE");
    ST_PlayTarisEscape();
}


